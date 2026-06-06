using Hridhayconnect.Infra;
using Hridhayconnect.Models;

namespace Hridhayconnect.ServiceRepository.OrderRewardSlabRepository
{
    public interface IOrderRewardSlabRepository
    {
        Task<object> GetAll(PagingRequest request);

        Task<OrderRewardSlab?> GetById(long id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> Save(OrderRewardSlab obj);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> Delete(long id);
    }
}
