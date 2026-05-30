using System.ComponentModel.DataAnnotations.Schema;

namespace Hridhayconnect.Infra
{
    public class EntityBase
    {
        public virtual int Id { get; set; }
        [NotMapped]
        public long? CreatedBy { get; set; }
        [NotMapped]

        public DateTime? CreatedDate { get; set; }
        [NotMapped]

        public long? LastModifiedBy { get; set; }

        [NotMapped]

        public DateTime? LastModifiedDate { get; set; }

       


    }
}
