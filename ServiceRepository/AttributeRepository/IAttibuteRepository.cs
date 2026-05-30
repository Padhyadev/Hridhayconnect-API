using Hridhayconnect.Infra;
using Attribute = Hridhayconnect.Models.Attribute;
namespace Hridhayconnect.ServiceRepository.AttributeRepository
{
    public interface IAttibuteRepository
    {
        Task<object> GetAllAttribute(PagingRequest request);

        Task<Attribute?> GetAttributeById(int id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveAttribute(Attribute obj);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeleteAttribute(long id, long operatedBy);
    }
}
