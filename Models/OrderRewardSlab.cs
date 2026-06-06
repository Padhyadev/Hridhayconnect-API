namespace Hridhayconnect.Models
{
    public class OrderRewardSlab
    {
        public long Id { get; set; }

        public decimal? MinPurchaseAmount { get; set; }

        public decimal? MaxPurchaseAmount { get; set; }

        public decimal? RewardCoins { get; set; }

        public bool IsActive { get; set; }

        public long CreatedBy { get; set; }

        public DateTime CreatedDate { get; set; }

        public long? LastModifiedBy { get; set; }

        public DateTime? LastModifiedDate { get; set; }
    }
}
