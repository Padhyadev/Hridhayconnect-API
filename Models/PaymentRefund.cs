namespace Hridhayconnect.Models
{
    public class PaymentRefund
    {
        public int Id { get; set; }

        public int PaymentTransactionId { get; set; }

        public string RazorpayRefundId { get; set; } = string.Empty;

        public decimal RefundAmount { get; set; }

        public string RefundStatus { get; set; } = string.Empty;

        public string RefundReason { get; set; } = string.Empty;

        public string? RefundResponseLog { get; set; }

        public DateTime RefundDate { get; set; }
    }
}
