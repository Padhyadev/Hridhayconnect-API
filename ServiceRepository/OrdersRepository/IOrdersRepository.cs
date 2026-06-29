using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using OfficeOpenXml.Style;

namespace Hridhayconnect.ServiceRepository.OrdersRepository
{
    public interface IOrdersRepository
    {
        //   Task<List<Product>> GetAllProduct(PagingRequest request);
        Task<object> GetAllOrders(PagingRequest request);

        Task<Orders?> GetOrderById(int id);
        Task<Orders?> GetOrderNumber();

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveOrder(Orders product);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeleteOrder(long id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> UpdateStatus(List<int> ids, string status);
        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> UpdateStatusNew(int Id, string status, string? reason = null); 
    }
}
