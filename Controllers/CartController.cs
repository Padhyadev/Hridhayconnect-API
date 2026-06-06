using Hridhayconnect.DTO;
using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Hridhayconnect.ServiceRepository.CartRepository;
using Hridhayconnect.ServiceRepository.OrdersRepository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace Hridhayconnect.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CartController : ControllerBase
    {
        private readonly IConfiguration _configuration;
        private readonly ICartRepository _repository;
        private readonly IOrdersRepository _orderrepository;
        private readonly ApiResponseModel CommonViewModel = new();
        public CartController(ICartRepository repository,IOrdersRepository ordersRepository)
        {
            _repository = repository;
            _orderrepository = ordersRepository;
        }

        [HttpPost("[Action]")]
   
  //"customerId": 27,
  //"productId": 33,
  //"variantId": 151,
  //"quantity": -1
  //Check
        public async Task<IActionResult> SaveCart([FromBody] CartRequest obj)
        {
            try
            {


                var (IsSuccess, Message, Id, Data) = await _repository.SaveCart(obj);

                CommonViewModel.IsSuccess = IsSuccess;
                CommonViewModel.StatusCode = IsSuccess ? ResponseStatusCode.Success : ResponseStatusCode.Error;
                CommonViewModel.Message = Message;
                CommonViewModel.Data = Data;
            }
            catch (Exception ex)
            {
                CommonViewModel.IsSuccess = false;
                CommonViewModel.StatusCode = ResponseStatusCode.Error;
                CommonViewModel.Message = ex.Message;
            }

            return Ok(CommonViewModel);
        }

        [HttpDelete("[Action]")]
       //check
        public async Task<IActionResult> RemoveCart([FromBody] CartRequest obj)
        {
            try
            {
                var (IsSuccess, Id) = await _repository.RemoveCart(obj);

                CommonViewModel.IsSuccess = IsSuccess;
                CommonViewModel.StatusCode = IsSuccess ? ResponseStatusCode.Success : ResponseStatusCode.Error;
                CommonViewModel.Message = IsSuccess.ToString();
                CommonViewModel.Data = Id;
            }
            catch (Exception ex)
            {
                CommonViewModel.IsSuccess = false;
                CommonViewModel.StatusCode = ResponseStatusCode.Error;
                CommonViewModel.Message = ex.Message;
            }

            return Ok(CommonViewModel);
        }
        [HttpPost("[Action]")]
        //        "customerId": 27,
        //"couponCode": null,
        //"selectedOfferId": null,
        //"removeOfferId": null and get first Table cart Datailes second table Offers    
        public async Task<IActionResult> ApplyOffersToCart(OfferRequest obj)
        {
            try
            {
                var data = await _repository.ApplyOffersToCart(obj);

                CommonViewModel.IsSuccess = true;
                CommonViewModel.StatusCode = ResponseStatusCode.Success;
                CommonViewModel.Message = "Data retrieved successfully";
                CommonViewModel.Data = data;
            }
            catch (Exception ex)
            {
                CommonViewModel.IsSuccess = false;
                CommonViewModel.StatusCode = ResponseStatusCode.Error;
                CommonViewModel.Message = ex.Message;
            }

            return Ok(CommonViewModel);
        }
        [HttpPost("[Action]")]
        //check it
        public async Task<IActionResult> CheckOut(int customerId, int createdBy, int CustomerAddressId, decimal usedCoins,decimal coinDiscountAmount)
        {
            try
            {
                var (IsSuccess, data) = await _repository.Checkout(customerId, createdBy,CustomerAddressId,usedCoins,coinDiscountAmount);

                if (IsSuccess)
                {
                    dynamic result = data;

                    int orderId = Convert.ToInt32(result.Items[0]["OrderId"]);
                    string orderNumber = Convert.ToString(result.Items[0]["OrderNumber"]);
                   // string email = Convert.ToString(result.Items[0]["Email"]);
                   // string productNames = Convert.ToString(result.Items[0]["ProductNames"]);

                    // Use anywhere
                    var orderData = await _orderrepository.GetOrderById(orderId);

                    var newStatus = orderData.OrderStatusName;

                    // Product Names
                    //string productNames = "";
                    //string ProductVariant = "";
                    //int quantity = 0;
                    //decimal unitPrice = 0;
                    //decimal totalPrice = 0;

                    //if (orderData.ListOrderItems != null && orderData.ListOrderItems.Any())
                    //{
                    //    productNames = string.Join(", ",orderData.ListOrderItems.Select(x => x.ProductName));
                    //    ProductVariant = string.Join(", ", orderData.ListOrderItems.Select(x => x.VariantAttributes));
                    //    quantity = int.Join(", ", orderData.ListOrderItems.Select(x => x.Quantity));
                    //    unitPrice = int.Join(", ", orderData.ListOrderItems.Select(x => x.UnitPrice));
                    //    totalPrice = int.Join(", ", orderData.ListOrderItems.Select(x => x.TotalPrice));

                    //}
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

                    // TODO:
                    // Get Customer Email from Order/Customer table
                    string customerEmail = orderData.CustomerEmail;
                    string customerName = orderData.CustomerName;
                    decimal? TotalAmount = orderData.TotalAmount;
                    decimal? DiscountAmount = orderData.DiscountAmount;
                    decimal? CoinDiscountAmount = orderData.CoinDiscountAmount;
                    decimal? FinalAmount = orderData.FinalAmount;

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
          finalamount = FinalAmount
      })
  );

                }
                //if (IsSuccess == true)
                //{

                //    var data = await _repository.GetOrderById(Convert.ToInt32(id));


                //    // Get latest status name from LOV
                //    var newStatus = data.OrderStatusName;

                //    // Product Names
                //    string productNames = "";

                //    if (data.ListOrderItems != null && data.ListOrderItems.Any())
                //    {
                //        productNames = string.Join(", ",
                //            data.ListOrderItems.Select(x => x.ProductName));
                //    }

                //    // TODO:
                //    // Get Customer Email from Order/Customer table
                //    string customerEmail = data.CustomerEmail;
                //    string customerName = data.CustomerName;

                //    await Common.SendEmail(
                //        $"Order Status Updated - {data.OrderNumber}",
                //        customerEmail,
                //        true,
                //        "",
                //        "order_status_change",
                //        JsonConvert.SerializeObject(new
                //        {
                //            customername = customerName,
                //            orderno = data.OrderNumber,
                //            productname = productNames,
                //            status = newStatus
                //        })
                //    );




                //}
                CommonViewModel.IsSuccess = true;
                CommonViewModel.StatusCode = ResponseStatusCode.Success;
                CommonViewModel.Message = IsSuccess.ToString();
                CommonViewModel.Data = data;
            }
            catch (Exception ex)
            {
                CommonViewModel.IsSuccess = false;
                CommonViewModel.StatusCode = ResponseStatusCode.Error;
                CommonViewModel.Message = ex.Message;
            }

            return Ok(CommonViewModel);
        }
    }
}
