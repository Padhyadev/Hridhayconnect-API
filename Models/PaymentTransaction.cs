namespace Hridhayconnect.Models
{
    public class PaymentTransaction
    {
        public int OrderId { get; set; }
        public int Id { get; set; }

        public string? PaymentGateway { get; set; }

        public string? RazorpayOrderId { get; set; }

        public string? RazorpayPaymentId { get; set; }

        public string? RazorpaySignature { get; set; }

        public decimal Amount { get; set; }

        public string? Currency { get; set; }

        public string? PaymentStatus { get; set; }

        public string? PaymentResponseLog { get; set; }
    }
}
