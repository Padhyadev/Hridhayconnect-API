using Hridhayconnect.Infra;

namespace Hridhayconnect.Models
{
    public class Attribute : EntityBase
    {
        public string Name { get; set; }
        public string DisplayName { get; set; }
        public string Values { get; set; }
        public string Values_Ids { get; set; }
        public bool? IsDeleted { get; set; }
        public bool IsActive { get; set; }
    }
}
