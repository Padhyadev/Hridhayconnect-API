namespace Hridhayconnect.Models
{
    public class RewardHistoryPagingRequest
    {
        public int? customerId { get; set; }
        public string? TransactionType { get; set; }

        public string? EntryType { get; set; }

        public int Start { get; set; } = 0;

        public int Length { get; set; } = 25;

        public int SortColumnIndex { get; set; } = 0;

        public string SortDirection { get; set; } = "DESC";
    }

    public class RewardSettings
    {
        public int Id { get; set; }

        public decimal SignupCoins { get; set; }

        public decimal LoginCoins { get; set; }

        public decimal ReferralCoins { get; set; }

        public decimal ReferralJoinCoins { get; set; }

        public decimal CoinToRupeeRate { get; set; }

        public decimal MaxCoinUsagePercent { get; set; }

        public bool IsActive { get; set; }

        public int? CreatedBy { get; set; }

        public DateTime? CreatedDate { get; set; }

        public int? LastModifiedBy { get; set; }

        public DateTime? LastModifiedDate { get; set; }
    }
    
   
}
