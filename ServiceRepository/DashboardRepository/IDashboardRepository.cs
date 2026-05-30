using Hridhayconnect.DTO;

namespace Hridhayconnect.ServiceRepository.DashboardRepository
{
    public interface IDashboardRepository
    {
        Task<object> GetCustomerDashboard();
    }
}
