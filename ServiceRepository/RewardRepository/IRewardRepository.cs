using Hridhayconnect.Infra;
using Hridhayconnect.Models;

namespace Hridhayconnect.ServiceRepository.RewardRepository
{
    public interface IRewardRepository
    {
        Task<object> GetRewardHistory(RewardHistoryPagingRequest request);

        //Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveRewardSettings(RewardSettings obj);

        Task<object> GetAll();

        Task<RewardSettings?> GetById(int id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> Save(RewardSettings obj);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> AddRewardCoins(int customerId,decimal coins, string remarks);
    }
}
