

using Hridhayconnect.Infra;
using Hridhayconnect.Models;

namespace Hridhayconnect.ServiceRepository.RoleRepository
{
    public interface IRoleRepository
    {
        Task<object> GetAllRoles(PagingRequest request);

        Task<Role?> GetRoleById(long id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveRole(Role role);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeleteRole(long id);
    }
}
