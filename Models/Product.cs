using Hridhayconnect.Infra;

namespace Hridhayconnect.Models
{
    public class Product : EntityBase
    {
        public int? CategoryId { get; set; }
        public string ProductName { get; set; }
        public string CategoryName { get; set; }
        public string ProductDescription { get; set; }
        public string SKU { get; set; }
        public string? ImagePath { get; set; }
        public decimal? Price { get; set; }
        public List<ProductImages>? ProductImages { get; set; }
        public List<ProductVariantMapping>? ProductVariantMapping { get; set; }
        public bool IsActive { get; set; } // Extra Add
    }

    public class ProductImages : EntityBase
    {
        public int? ProductId { get; set; }
        public int? VariantId { get; set; }
        public string? ImagePath { get; set; }
        public bool IsPrimary { get; set; }
        public bool IsRemove { get; set; }
        public IFormFile? ImageFile { get; set; }
    }

    public class ProductVariantMapping : EntityBase
    {
        public int? ProductId { get; set; }
        public string? SKU { get; set; }
        public decimal? Price { get; set; }
        public int? StockQuantity { get; set; }
        public string? ImagePath { get; set; }
        public IFormFile? ImageFile { get; set; }
        public bool IsRemove_Image { get; set; }
        public string? VariantAttributes { get; set; }
        public int? AvailableStock { get; set; }
        public int? ReservedStock { get; set; }

        public int? TotalStock { get; set; }

        public List<ProductVariantDetails>? ProductVariantDetails { get; set; }
    }

    public class ProductVariantDetails : EntityBase
    {
        public int? VariantId { get; set; }
        public int? AttributeId { get; set; }
        public string? AttributeName { get; set; }
        public int? AttributeValueId { get; set; }
        public string? AttributeValueName { get; set; }
    }
    public class AdminSaveProductRequest
    {
        public int Id { get; set; }

        public string ProductName { get; set; }

        public int CategoryId { get; set; }

        public string ProductDescription { get; set; }

        public decimal Price { get; set; }

        public List<IFormFile>? ProductImages { get; set; }
    }
}
