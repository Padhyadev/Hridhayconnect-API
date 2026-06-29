using Hridhayconnect.Infra;
using Hridhayconnect.Models;

namespace Hridhayconnect.ServiceRepository.StateRepository
{
    public interface IStateRepository
    {
        Task<object> GetAllState(PagingRequest request);

        Task<State?> GetStateById(long id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveState(State state);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeleteState(long stateId);
        //Task<List<CommonDropdownModel>> GetStateCombo(long countryId);
    }
}
