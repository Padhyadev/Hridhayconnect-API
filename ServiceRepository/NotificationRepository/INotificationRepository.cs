using Hridhayconnect.Infra;
using Hridhayconnect.Models;

namespace Hridhayconnect.ServiceRepository.NotificationRepository
{
    public interface INotificationRepository
    {
        Task<object> GetAllNotification(PagingRequest request);

        Task<Notification?> GetNotificationById(int id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveNotification(Notification notification);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> ReadNotification(long id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> ReadAllNotification(long customerId);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeleteNotification(long id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> BulkDeleteNotification(string ids);
    }
}
