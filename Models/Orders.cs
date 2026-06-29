using Hridhayconnect.Infra;
using System.ComponentModel.DataAnnotations.Schema;

namespace Hridhayconnect.Models
{
    public class Orders : EntityBase
    {
        public int? UserId { get; set; }
        public string OrderNumber { get; set; }
        public int No_Of_Items { get; set; }
        public DateTime? OrderDate { get; set; }
        public decimal? TotalAmount { get; set; }
        public decimal? DiscountAmount { get; set; }
        public decimal? FinalAmount { get; set; }
        public decimal? CoinDiscountAmount { get; set; }
        public decimal? DeliveryFee { get; set; }

        public string OrderStatus { get; set; }

        public string PaymentStatus { get; set; }
        public bool IsActive { get; set; }

        public List<OrderItems> ListOrderItems { get; set; }
        [NotMapped] public string? OrderStatusName { get; set; }
       [NotMapped] public string? CustomerName { get; set; } // for Email

        [NotMapped] public string? CustomerEmail { get; set; } //// for Email
    }

    public class OrderItems : EntityBase
    {
        public int? OrderId { get; set; }
        public int? VariantId { get; set; }
        public int? ProductId { get; set; }
        public string? VariantName { get; set; }
        public string? VariantAttributes { get; set; }
        public string? ProductName { get; set; }
        public int? Quantity { get; set; }

        public decimal? UnitPrice { get; set; }
        public decimal? TotalPrice { get; set; }
        public bool IsActive { get; set; }
    }
}
