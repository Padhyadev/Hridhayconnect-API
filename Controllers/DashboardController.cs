using Hridhayconnect.Infra;
using Hridhayconnect.ServiceRepository.DashboardRepository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Hridhayconnect.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DashboardController : ControllerBase
    {
        private readonly IDashboardRepository _repository;
        private readonly ApiResponseModel CommonViewModel = new();
        public DashboardController(IDashboardRepository repository)
        {
            _repository = repository;
        }
   // not Using 
        [HttpPost("[Action]")]
        public async Task<IActionResult> GetCustomerDashboard()
        {
            try
            {
                var data = await _repository.GetCustomerDashboard();

                CommonViewModel.IsSuccess = true;
                CommonViewModel.StatusCode = ResponseStatusCode.Success;
                CommonViewModel.Message = "Data retrieved successfully";
                CommonViewModel.Data = data;
            }
            catch (Exception ex)
            {
                CommonViewModel.IsSuccess = false;
                CommonViewModel.StatusCode = ResponseStatusCode.Error;
                CommonViewModel.Message = ex.Message;
            }

            return Ok(CommonViewModel);
        }
    }
}
