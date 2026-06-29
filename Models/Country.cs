using Hridhayconnect.Infra;

namespace Hridhayconnect.Models
{
    public class Country : EntityBase
    {
        public long CountryId { get; set; }

        public string? CountryName { get; set; }

        public string? CountryCode { get; set; }

        public bool? IsActive { get; set; }
        public bool? IsDeleted { get; set; }
    }
}
