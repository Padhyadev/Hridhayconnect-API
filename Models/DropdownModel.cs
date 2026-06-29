namespace Hridhayconnect.Models
{
    public class Dropdownname
    {
        public long Id { get; set; }
        public string? Name { get; set; }

    }
    public class Lov_Master
    {
        public string? Code { get; set; }
        public string? Name { get; set; }

    }
    public class CustomerAddressViewModel
    {
        public int Id { get; set; }
        public int CustomerId { get; set; }

        public string? AddressLine1 { get; set; }
        public string? AddressLine2 { get; set; }

        public string? City { get; set; }
        public string? PostalCode { get; set; }

        public bool IsDefault { get; set; }

        public string? MobileNo { get; set; }
        public string? AlternativeMobileNo { get; set; }

        public string? CustomerName { get; set; }

        public string? CountryName { get; set; }
        public string? StateName { get; set; }
    }
}
