using Hridhayconnect.Infra;
using System.ComponentModel.DataAnnotations.Schema;
using Hridhayconnect.Infra;

namespace Hridhayconnect.Models
{
    public class Role : EntityBase
    {
        public long Id { get; set; }
        public string? RoleName { get; set; }
        public bool IsActive { get; set; }
        [NotMapped]
        public bool? IsDeleted { get; set; }
        public string Description { get; set; }
        //public bool? IsAdmin { get; set; }
        public string SelectedMenu { get; set; }
        public string? SelectedMenu_Names { get; set; }
    }
}
