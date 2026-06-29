using Hridhayconnect.Infra;

namespace Hridhayconnect.Models
{
    public class State : EntityBase
    {
        public long StateId { get; set; }

        public long CountryId { get; set; }

        public string? CountryName { get; set; }

        public string? StateName { get; set; }

        public string? StateCode { get; set; }

        public bool IsActive { get; set; }
    }
}
