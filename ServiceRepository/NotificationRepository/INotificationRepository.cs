using Hridhayconnect.Infra;
using Hridhayconnect.Models;

namespace Hridhayconnect.ServiceRepository.NotificationRepository
{
    public interface INotificationRepository
    {
        Task<object> GetAllNotification(PagingRequest request);

        Task<Notification?> GetNotificationById(int id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveNotification(Notification notification);

        // New
        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> ReadNotification(int id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> ReadAllNotification();

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeleteNotification(int id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> BulkDeleteNotification(string ids);
    }
}
