using Hridhayconnect.Infra;
using System.ComponentModel.DataAnnotations.Schema;

namespace Hridhayconnect.Models
{
    public class User : EntityBase
    {
        public long Id { get; set; }
        //public string? UserName { get; set; }
        //public string? Password { get; set; }
        //public bool? IsActive { get; set; }
        //public bool? IsDeleted { get; set; }
        //public string? Email { get; set; }
        //public string? MobileNumber { get; set; }

        //[NotMapped]
        //public long? RoleId { get; set; } // NEW 
        //[NotMapped]
        //public string? Rolename { get; set; }


        public string FirstName { get; set; }
        public string LastName { get; set; }

        public string UserName { get; set; }
        public string Password { get; set; }

        public int? RoleId { get; set; }

        public string Fullname { get { return (!string.IsNullOrEmpty(FirstName) ? FirstName : "") + (!string.IsNullOrEmpty(LastName) ? " " + LastName : ""); } }
        public string RoleName { get; set; }

        public bool IsPassword_Reset { get; set; }
        public bool IsActive { get; set; }
        public bool? IsDeleted { get; set; }
    }
}
