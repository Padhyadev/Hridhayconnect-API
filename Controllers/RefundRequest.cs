namespace Hridhayconnect.Controllers
{
    public class RefundRequest
    {
        public int OrderId { get; set; }

        public decimal RefundAmount { get; set; }

        public string RefundReason { get; set; } = string.Empty;
    }
}
