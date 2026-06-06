using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Hridhayconnect.ServiceRepository.OrderRewardSlabRepository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Hridhayconnect.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OrderRewardSlabController : ControllerBase
    {
        private readonly IOrderRewardSlabRepository _repository;

        private readonly ApiResponseModel CommonViewModel = new();

        public OrderRewardSlabController(
            IOrderRewardSlabRepository repository)
        {
            _repository = repository;
        }

        [HttpPost("[Action]")]
        public async Task<IActionResult> GetAll( PagingRequest request)
        {
            try
            {
                var data = await _repository.GetAll(request);

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

        [HttpPost("[Action]")]
        public async Task<IActionResult> Save([FromBody] OrderRewardSlab obj)
        {
            try
            {
                if (obj.MinPurchaseAmount == null)
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.Message = "Please Enter Minimum purchase amount.";
                    return Ok(CommonViewModel);
                }
                if ( obj.MinPurchaseAmount < 0)
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.Message = "Minimum purchase amount cannot be negative.";
                    return Ok(CommonViewModel);
                }

                if (obj.MaxPurchaseAmount == null )
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.Message = "Please Enter Maximum purchase amount.";
                    return Ok(CommonViewModel);
                }
                if (obj.MaxPurchaseAmount <= 0)
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.Message = "Maximum purchase amount must be greater than 0.";
                    return Ok(CommonViewModel);
                }

                if (obj.RewardCoins == null )
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.Message = "Please Enter Reward coin.";
                    return Ok(CommonViewModel);
                }
                if ( obj.RewardCoins <= 0)
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.Message = "Reward coins must be greater than 0.";
                    return Ok(CommonViewModel);
                }

                if (obj.MinPurchaseAmount >= obj.MaxPurchaseAmount)
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.Message = "Maximum purchase amount must be greater than minimum purchase amount.";
                    return Ok(CommonViewModel);
                }

                var result = await _repository.Save(obj);

                CommonViewModel.IsSuccess = result.IsSuccess;
                CommonViewModel.StatusCode =
                    result.IsSuccess
                    ? ResponseStatusCode.Success
                    : ResponseStatusCode.Error;

                CommonViewModel.Message = result.Message;
                CommonViewModel.Data = result.Id;
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
                var result = await _repository.Delete(id);

                CommonViewModel.IsSuccess = result.IsSuccess;
                CommonViewModel.StatusCode =
                    result.IsSuccess
                    ? ResponseStatusCode.Success
                    : ResponseStatusCode.Error;

                CommonViewModel.Message = result.Message;
                CommonViewModel.Data = result.Id;
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
