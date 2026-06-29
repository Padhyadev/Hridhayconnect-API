using Hridhayconnect.Infra;
using Hridhayconnect.Models;

namespace Hridhayconnect.ServiceRepository.CustomerRepository
{
    public interface ICustomerRepository 
    {
        Task<object> GetAllCustomer(ReviewPagingRequest request);

        Task<Customer?> GetCustomerById(int id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> AddOrUpdateCustomeradress(Customer customer);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> RemoveCustomerAddress(long id);
        //Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveCategory(Category category);

        //Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeleteCategory(long id);
        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> ChangeDefaultAddress(int CustomerAddressId);
    }
}
