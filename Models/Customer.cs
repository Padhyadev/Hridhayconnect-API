using Hridhayconnect.Infra;
using System.ComponentModel.DataAnnotations.Schema;

namespace Hridhayconnect.Models
{
    public class Customer : EntityBase
    {
        public int Id { get; set; }
        public long? CountryId { get; set; }
        public long? StateId { get; set; }

        public int CustomerId { get; set; }

        public string FirstName { get; set; } = string.Empty;
        public string? LastName { get; set; }

        public string Email { get; set; } = string.Empty;
        public string MobileNo { get; set; } = string.Empty;

        public string? Password { get; set; }
        public string? ConformpasswordPassword { get; set; }
        public bool IsPassword_Reset { get; set; }

        public DateTime? DateOfBirth { get; set; }
        public string? Gender { get; set; }

        public string FullName => $"{FirstName} {LastName}".Trim();


        public string AddressLine1 { get; set; } = string.Empty;
        public string? AddressLine2 { get; set; }

        public string City { get; set; } = string.Empty;
        public string State { get; set; } = string.Empty;

        public string PostalCode { get; set; } = string.Empty;
        public string Country { get; set; } = string.Empty;
        public string AddressType { get; set; } = string.Empty;
        public string? AlternativeMobileNo { get; set; }
        public string? CustomerName { get; set; }
        public string? ReferralCode { get; set; } // New add

        //commont form vishal
        //[NotMapped] public List<CustomerAddress>? AddressList { get; set; }
        //[NotMapped] public List<CustomerCart>? CartList { get; set; }
        public bool IsActive { get; set; }
        public bool? IsDeleted { get; set; }

    }
}
