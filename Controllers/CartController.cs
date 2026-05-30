using Hridhayconnect.DTO;
using Hridhayconnect.Infra;
using Hridhayconnect.ServiceRepository.CartRepository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Hridhayconnect.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CartController : ControllerBase
    {
        private readonly IConfiguration _configuration;
        private readonly ICartRepository _repository;
        private readonly ApiResponseModel CommonViewModel = new();
        public CartController(ICartRepository repository)
        {
            _repository = repository;
        }

        [HttpPost("[Action]")]
   
  //"customerId": 27,
  //"productId": 33,
  //"variantId": 151,
  //"quantity": -1
  //Check
        public async Task<IActionResult> SaveCart([FromBody] CartRequest obj)
        {
            try
            {


                var (IsSuccess, Message, Id, Data) = await _repository.SaveCart(obj);

                CommonViewModel.IsSuccess = IsSuccess;
                CommonViewModel.StatusCode = IsSuccess ? ResponseStatusCode.Success : ResponseStatusCode.Error;
                CommonViewModel.Message = Message;
                CommonViewModel.Data = Data;
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
       //check
        public async Task<IActionResult> RemoveCart([FromBody] CartRequest obj)
        {
            try
            {
                var (IsSuccess, Id) = await _repository.RemoveCart(obj);

                CommonViewModel.IsSuccess = IsSuccess;
                CommonViewModel.StatusCode = IsSuccess ? ResponseStatusCode.Success : ResponseStatusCode.Error;
                CommonViewModel.Message = IsSuccess.ToString();
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
        [HttpPost("[Action]")]
        //        "customerId": 27,
        //"couponCode": null,
        //"selectedOfferId": null,
        //"removeOfferId": null and get first Table cart Datailes second table Offers    
        public async Task<IActionResult> ApplyOffersToCart(OfferRequest obj)
        {
            try
            {
                var data = await _repository.ApplyOffersToCart(obj);

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
        //check it
        public async Task<IActionResult> CheckOut(int customerId, int createdBy)
        {
            try
            {
                var (IsSuccess, data) = await _repository.Checkout(customerId, createdBy);

                CommonViewModel.IsSuccess = true;
                CommonViewModel.StatusCode = ResponseStatusCode.Success;
                CommonViewModel.Message = IsSuccess.ToString();
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
