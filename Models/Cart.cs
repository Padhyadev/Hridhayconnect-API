using Hridhayconnect.Infra;

namespace Hridhayconnect.Models
{
    public class Cart : EntityBase
    {
        public int? UserId { get; set; }
        public int? VariantId { get; set; }
        public int? Quantity { get; set; }
    }

    public class Coupons : EntityBase
    {
        public string CouponCode { get; set; }
        public string DiscountType { get; set; }
        public decimal? DiscountValue { get; set; }
        public decimal? MinimumOrderAmount { get; set; }
        public DateTime? ExpiryDate { get; set; }
        public int? UsageLimit { get; set; }
        public bool IsActive { get; set; }
    }
}
