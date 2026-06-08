using Hridhayconnect.Models;

namespace Hridhayconnect.ServiceRepository.HomePageRepository
{
    public interface IHomePageRepository
    {
        /// <summary>
        /// Get all Home Page Components
        /// </summary>
        Task<object> GetAll();

        /// <summary>
        /// Get Home Page Component By Id
        /// </summary>
        Task<HomePageComponent?> GetById(long id);


        /// <summary>
        /// Save Home Page Component
        /// </summary>
        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)>
            Save(HomePageComponent model);

        /// <summary>
        /// Delete Home Page Component
        /// </summary>
        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)>
            Delete(long id);
    }
}
