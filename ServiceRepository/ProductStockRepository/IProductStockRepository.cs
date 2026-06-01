using Hridhayconnect.Infra;
using Hridhayconnect.Models;

namespace Hridhayconnect.ServiceRepository.ProductStockRepository
{
    public interface IProductStockRepository
    {
        Task<object> GetAllProductStock(PagingRequest request);

        Task<object> GetStockHistory(JsonParameters request);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> AdjustStock(ProductStockHistory obj);

    }
}
