using Hridhayconnect.Infra;

namespace Hridhayconnect.Models
{
    public class Notification : EntityBase
    {
        public int CustomerId { get; set; }

        public string? Title { get; set; }

        public string? Message { get; set; }

        public bool IsRead { get; set; }
    }
}
