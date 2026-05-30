using Hridhayconnect.Infra;
using Hridhayconnect.Models;

namespace Hridhayconnect.ServiceRepository.MenuRepository
{
    public interface IMenuRepository
    {
        Task<object> GetAllMenu(PagingRequest request);

        Task<Menu?> GetMenuById(long id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveMenu(Menu menu);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeleteMenu(long id);
    }
}
