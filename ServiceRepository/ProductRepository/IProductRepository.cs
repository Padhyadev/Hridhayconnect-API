using Hridhayconnect.DTO;
using Hridhayconnect.Models;

namespace Hridhayconnect.ServiceRepository.ProductRepository
{
    public interface IProductRepository
    {
        Task<object> GetAllProduct(ProductPagingRequest request);

        Task<Product?> GetProductById(int id);
        Task<List<DropdownModel?>> GetCategory_Dropdown();
        Task<List<DropdownModel?>> GetAttributeValues();

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveProduct(Product product);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeleteProduct(long id);
    }
}
