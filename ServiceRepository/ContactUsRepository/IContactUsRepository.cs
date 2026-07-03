using Hridhayconnect.Infra;
using Hridhayconnect.Models;

namespace Hridhayconnect.ServiceRepository.ContactUsRepository
{
    public interface IContactUsRepository
    {
        Task<object> GetAllContactUs(PagingRequest request);

        Task<ContactUs?> GetContactUsById(long id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveContactUs(ContactUs contactUs);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeleteContactUs(long contactId);
    }
}
