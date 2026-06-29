using Hridhayconnect.Infra;

namespace Hridhayconnect.Models
{
    public class Wishlist : EntityBase
    {
        public int CustomerId { get; set; }

        public int ProductId { get; set; }

        public int? VariantId { get; set; }

        // public string? Action { get; set; }

        public string? PackingType { get; set; }

        public DateTime? CreatedDate { get; set; }
    }
}
