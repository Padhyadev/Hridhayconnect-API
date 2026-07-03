namespace Hridhayconnect.Models
{
    public class ContactUs
    {
        public int ContactId { get; set; }

        public string Name { get; set; }
        public string Email { get; set; }
        public string MobileNumber { get; set; }
        public string Subject { get; set; }
        public string Message { get; set; }

        public long? CreatedBy { get; set; }
        public DateTime? CreatedDate { get; set; }
        public long? LastModifiedBy { get; set; }
        public DateTime? LastModifiedDate { get; set; }

        public bool? IsActive { get; set; }
        public bool? IsDeleted { get; set; }
    }
}
