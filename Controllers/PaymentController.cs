using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Hridhayconnect.ServiceRepository.CartRepository;
using Hridhayconnect.ServiceRepository.OrdersRepository;
using Hridhayconnect.ServiceRepository.PaymentRefundRepository;
using Hridhayconnect.ServiceRepository.PaymentTransactionRepository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Razorpay.Api;
using System.Security.Cryptography;
using System.Text;

namespace Hridhayconnect.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PaymentController : ControllerBase
    {
        private readonly IConfiguration _configuration;
        private readonly ICartRepository _repository;
        private readonly IOrdersRepository _orderrepository;
        private readonly IPaymentRefundRepository _paymentRefundRepository;
        private readonly IPaymentTransactionRepository _paymentRepository;
        private readonly ApiResponseModel CommonViewModel = new();

        public PaymentController(IConfiguration configuration,
            ICartRepository Repository,
            IOrdersRepository ordersRepository,
            IPaymentTransactionRepository paymentRepository,
            IPaymentRefundRepository paymentRefundRepository
            )


        {
            _configuration = configuration;
            _repository = Repository;
            _orderrepository = ordersRepository;
            _paymentRepository = paymentRepository;
            _paymentRefundRepository = paymentRefundRepository;
        }

        [HttpPost("create-order")]
        public IActionResult CreateOrder([FromBody] CreateOrderRequest request)
        {
            try
            {
                RazorpayClient client = new RazorpayClient(
                    _configuration["Razorpay:Key"],
                    _configuration["Razorpay:Secret"]);

                Dictionary<string, object> options = new Dictionary<string, object>();

                options.Add("amount", Convert.ToInt32(request.Amount * 100));
                options.Add("currency", "INR");
                options.Add("receipt", Guid.NewGuid().ToString());

                Order order = client.Order.Create(options);

                return Ok(new
                {
                    Success = true,
                    RazorpayOrderId = order.Attributes["id"]?.ToString(),
                    Amount = Convert.ToInt32(order.Attributes["amount"]),
                    Currency = order.Attributes["currency"]?.ToString(),
                    Receipt = order.Attributes["receipt"]?.ToString()
                });
            }
            catch (Exception ex)
            {
                return BadRequest(new
                {
                    Success = false,
                    Message = ex.Message
                });
            }
        }

        [HttpPost("verify")]
        public async Task<IActionResult> VerifyPayment([FromBody] VerifyPaymentRequest request)
        {
            try
            {
                // 1. Verify Razorpay Signature

                var secret = _configuration["Razorpay:Secret"];

                var payload = $"{request.RazorpayOrderId}|{request.RazorpayPaymentId}";

                using var hmac = new HMACSHA256(Encoding.UTF8.GetBytes(secret));

                var hash = hmac.ComputeHash(Encoding.UTF8.GetBytes(payload));

                var generatedSignature = BitConverter
                    .ToString(hash)
                    .Replace("-", "")
                    .ToLower();

                if (generatedSignature != request.RazorpaySignature.ToLower())
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.StatusCode = ResponseStatusCode.Error;
                    CommonViewModel.Message = "Payment verification failed.";

                    return Ok(CommonViewModel);
                }

                // 2. Payment Verified

                var (IsSuccess, data) = await _repository.Checkout(
                    request.CustomerId,
                    request.CreatedBy,
                    request.CustomerAddressId,
                    request.UsedCoins,
                    request.CoinDiscountAmount,
                    request.DeliveryFee,
                    request.PaymentMode);


                if (IsSuccess)
                {
                    dynamic result = data;

                    int orderId = Convert.ToInt32(result.Items[0]["OrderId"]);
                    string orderNumber = Convert.ToString(result.Items[0]["OrderNumber"]);

                    var orderData = await _orderrepository.GetOrderById(orderId);

                    await _paymentRepository.SavePaymentTransaction(new PaymentTransaction
                    {
                        OrderId = orderId,
                        PaymentGateway = "Razorpay",
                        RazorpayOrderId = request.RazorpayOrderId,
                        RazorpayPaymentId = request.RazorpayPaymentId,
                        RazorpaySignature = request.RazorpaySignature,
                        Amount = orderData.FinalAmount ?? 0,
                        Currency = "INR",
                        PaymentStatus = "1",
                        PaymentResponseLog = JsonConvert.SerializeObject(request)
                    });

                    var newStatus = orderData.OrderStatusName;

                    string productRows = "";
                    int srNo = 1;

                    foreach (var item in orderData.ListOrderItems)
                    {
                        productRows += $@"
<div style='margin-bottom:15px;padding:10px;border-bottom:1px solid #ddd;'>
    <div><strong>{srNo}. {item.ProductName}</strong></div>
    <div><strong>Product Variant:</strong> {item.VariantAttributes}</div>
    <div><strong>Qty:</strong> {item.Quantity}</div>
    <div><strong>Unit Price:</strong> ₹ {item.UnitPrice:N2}</div>
    <div><strong>Total:</strong> ₹ {item.TotalPrice:N2}</div>
</div>";

                        srNo++;
                    }

                    string customerEmail = orderData.CustomerEmail;
                    string customerName = orderData.CustomerName;

                    decimal? TotalAmount = orderData.TotalAmount;
                    decimal? DiscountAmount = orderData.DiscountAmount;
                    decimal? CoinDiscountAmount = orderData.CoinDiscountAmount;
                    decimal? FinalAmount = orderData.FinalAmount;
                    decimal? DeliveryFee = orderData.DeliveryFee;

                    await Common.SendEmailwithAttachment(
                        $"Order Status Updated - {orderData.OrderNumber}",
                        customerEmail,
                        true,
                        "",
                        "order_placed",
                        JsonConvert.SerializeObject(new
                        {
                            customername = customerName,
                            orderno = orderNumber,
                            status = newStatus,
                            productrows = productRows,
                            totalamount = TotalAmount,
                            discountamount = DiscountAmount,
                            coindiscountamount = CoinDiscountAmount,
                            deliveryfee = DeliveryFee,
                            finalamount = FinalAmount
                        }));
                }

                CommonViewModel.IsSuccess = true;
                CommonViewModel.StatusCode = ResponseStatusCode.Success;
                CommonViewModel.Message = IsSuccess.ToString();
                CommonViewModel.Data = data;

                return Ok(CommonViewModel);
            }
            catch (Exception ex)
            {
                CommonViewModel.IsSuccess = false;
                CommonViewModel.StatusCode = ResponseStatusCode.Error;
                CommonViewModel.Message = ex.Message;

                return Ok(CommonViewModel);
            }
        }

        [HttpPost("refund")]
        public async Task<IActionResult> Refund([FromBody] RefundRequest request)
        {
            try
            {
                var payment = await _paymentRepository
                    .GetPaymentTransactionByOrderId(request.OrderId);

                if (payment == null)
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.StatusCode = ResponseStatusCode.Error;
                    CommonViewModel.Message = "Payment not found.";

                    return Ok(CommonViewModel);
                }

                RazorpayClient client = new RazorpayClient(
                    _configuration["Razorpay:Key"],
                    _configuration["Razorpay:Secret"]);

                Payment razorPayment = client.Payment.Fetch(payment.RazorpayPaymentId);

                Dictionary<string, object> options = new();

                options.Add("amount",
                    Convert.ToInt32(request.RefundAmount * 100));

                Refund refund = razorPayment.Refund(options);

                Console.WriteLine(refund.Attributes.ToString());

                await _paymentRefundRepository.SaveRefund(new PaymentRefund
                {
                    PaymentTransactionId = payment.Id,

                    RazorpayRefundId = refund.Attributes["id"]?.ToString(),

                    RefundAmount = request.RefundAmount,

                    RefundStatus = refund.Attributes["status"]?.ToString(),

                    RefundReason = request.RefundReason,

                    RefundResponseLog = refund.Attributes.ToString(),

                    RefundDate = DateTime.Now
                });

                await _paymentRepository.UpdatePaymentStatus(
                    payment.Id,
                    "Refunded");

                CommonViewModel.IsSuccess = true;
                CommonViewModel.StatusCode = ResponseStatusCode.Success;
                CommonViewModel.Message = "Refund Successful.";

                CommonViewModel.Data = refund.Attributes;

                return Ok(CommonViewModel);
            }
            catch (Exception ex)
            {
                CommonViewModel.IsSuccess = false;
                CommonViewModel.StatusCode = ResponseStatusCode.Error;
                CommonViewModel.Message = ex.Message;

                return Ok(CommonViewModel);
            }
        }
    }
}
