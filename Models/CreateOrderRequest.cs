namespace Hridhayconnect.Models
{
    public class CreateOrderRequest
    {
        public decimal Amount { get; set; }
    }

    public class VerifyPaymentRequest
    {
        // Razorpay Response
        public string RazorpayOrderId { get; set; } = string.Empty;
        public string RazorpayPaymentId { get; set; } = string.Empty;
        public string RazorpaySignature { get; set; } = string.Empty;

        // Existing Checkout Parameters
        public int CustomerId { get; set; }
        public int CustomerAddressId { get; set; }
        public int CreatedBy { get; set; }
        public string PaymentMode { get; set; }

        public decimal UsedCoins { get; set; }
        public decimal CoinDiscountAmount { get; set; }
        public decimal DeliveryFee { get; set; }

        // Optional
        //public int PaymentMode { get; set; }
    }
}
