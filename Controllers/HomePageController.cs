using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Hridhayconnect.ServiceRepository.HomePageRepository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Hridhayconnect.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HomePageController : ControllerBase
    {
        private readonly IHomePageRepository _repository;
        private readonly ApiResponseModel CommonViewModel = new();

        public HomePageController(IHomePageRepository repository)
        {
            _repository = repository;
        }

        [HttpGet("[Action]")]
        // into Trending Products ReferId 16-16 => first si ProductId second is Variant ID
        public async Task<IActionResult> GetAll()
        {
            try
            {
                var data = await _repository.GetAll();

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

        [HttpGet("[Action]")]
        public async Task<IActionResult> GetById(long id)
        {
            try
            {
                var data = await _repository.GetById(id);

                if (data != null)
                {
                    CommonViewModel.IsSuccess = true;
                    CommonViewModel.StatusCode = ResponseStatusCode.Success;
                    CommonViewModel.Message = "Data retrieved successfully";
                    CommonViewModel.Data = data;
                }
                else
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.StatusCode = ResponseStatusCode.NotFound;
                    CommonViewModel.Message = "Record not found";
                }
            }
            catch (Exception ex)
            {
                CommonViewModel.IsSuccess = false;
                CommonViewModel.StatusCode = ResponseStatusCode.Error;
                CommonViewModel.Message = ex.Message;
            }

            return Ok(CommonViewModel);
        }

        // If Image not chnage not send into Playload
        // Here all image save Delete other image Pending
        [HttpPost("[Action]")]
        //==> pending 1.Trending Products,2.New Arrivals
        public async Task<IActionResult> Save([FromForm] HomePageComponent model)
        {
            try
            {
                var (IsSuccess, Message, Id, Extra) =
                    await _repository.Save(model);

                CommonViewModel.IsSuccess = IsSuccess;
                CommonViewModel.StatusCode = IsSuccess
                    ? ResponseStatusCode.Success
                    : ResponseStatusCode.Error;

                CommonViewModel.Message = Message;
                CommonViewModel.Data = Id;
            }
            catch (Exception ex)
            {
                CommonViewModel.IsSuccess = false;
                CommonViewModel.StatusCode = ResponseStatusCode.Error;
                CommonViewModel.Message = ex.Message;
            }

            return Ok(CommonViewModel);
        }

        [HttpDelete("[Action]")]
        public async Task<IActionResult> Delete(long id)
        {
            try
            {
                var (IsSuccess, Message, Id, Extra) =
                    await _repository.Delete(id);

                CommonViewModel.IsSuccess = IsSuccess;
                CommonViewModel.StatusCode = IsSuccess
                    ? ResponseStatusCode.Success
                    : ResponseStatusCode.Error;

                CommonViewModel.Message = Message;
                CommonViewModel.Data = Id;
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