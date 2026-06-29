using Hridhayconnect.Infra;
using Hridhayconnect.Models;

namespace Hridhayconnect.ServiceRepository.CountryRepository
{
    public interface ICountryRepository
    {
        Task<object> GetAllCountry(PagingRequest request);

        Task<Country?> GetCountryById(long id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveCountry(Country country);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeleteCountry(long countryId);
    }
}
