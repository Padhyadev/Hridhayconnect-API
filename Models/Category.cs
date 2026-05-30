using Hridhayconnect.Infra;

namespace Hridhayconnect.Models
{
    public class Category : EntityBase
    {
        public string CategoryName { get; set; }
        public string? ParentCategoryName { get; set; }
        public string? ImagePath { get; set; }
        public string SKU { get; set; }
        public int? ParentCategoryId { get; set; }
        public bool ImagePath_Remove { get; set; }
        public IFormFile? ImageFile { get; set; }
        public bool IsActive { get; set; }
    }
}
