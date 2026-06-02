using Hridhayconnect.Infra;
using System.ComponentModel.DataAnnotations.Schema;

namespace Hridhayconnect.Models
{
    public class Inquiries : EntityBase
    {
        public int? InquiryId { get; set; }
        public int? UserId { get; set; }
        public int? ProductId { get; set; }
        public string ProductName { get; set; }
        public string Subject { get; set; }
        public string Message { get; set; }
        public string Status { get; set; }
        public string Status_Desc { get; set; }
        public DateTime? Inquiry_Date { get; set; }
        public string OldStatus_Desc { get; set; }
        public string NewStatus_Desc { get; set; }
        public string OldStatus { get; set; }
        public string NewStatus { get; set; }
        public string Remarks { get; set; }
        public DateTime? ReplyDate { get; set; }
   
        public string? ReplyDate_Text { get; set; }
        public string Inquiry_By { get; set; }
        public string ReplyBy { get; set; }
        public string ReplyBy_Text { get; set; }
        public string Name { get; set; }
        public string PhoneNo { get; set; }
        public string Email { get; set; }

        // Extra Add
        public bool IsActive { get; set; }
        [NotMapped] public virtual string CreatedDate_Text { get; set; }
    }

    public class Reviews : EntityBase
    {
        public int? ProductId { get; set; }
        public int? UserId { get; set; }

        public int? Rating { get; set; }
        public string ReviewText { get; set; }
        public bool? IsApproved { get; set; }
        public bool IsActive { get; set; }

        [NotMapped] public string ProductName { get; set; }

        [NotMapped] public string UserName { get; set; }
    }
}
