using Hridhayconnect.Infra;
using Hridhayconnect.Models;

namespace Hridhayconnect.ServiceRepository.CategoryRepository
{
    public interface ICategoryRepository
    {
        Task<object> GetAllCategory(PagingRequest request);

        Task<Category?> GetCategoryById(int id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveCategory(Category category);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeleteCategory(long id);
    }
}
