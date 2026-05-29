using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Hridhayconnect.ServiceRepository.MenuRepository;
using JewelryStore.Infra;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;


namespace Hridhayconnect.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize]
    public class MenuController : ControllerBase
    {
        private readonly IMenuRepository _menuRepository;
        private readonly CommonViewModel CommonViewModel = new();
        private readonly ValidationService _validation;

        public MenuController(IMenuRepository menuRepository, ValidationService validation)
        {
            _menuRepository = menuRepository;
            _validation = validation;
        }

        [HttpPost("[Action]")]
        public async Task<IActionResult> GetAll(PagingRequest request)
        {
            try
            {
                CommonViewModel.Data =
                    await _menuRepository.GetAllMenu(request);

                CommonViewModel.IsSuccess = true;
                CommonViewModel.StatusCode = ResponseStatusCode.Success;
                CommonViewModel.Message = "Data retrieved successfully";
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
        public async Task<IActionResult> Add(Menu menu)
        {
            try
            {
                var validation =
                    _validation.ValidateRequired(menu.Name, "Menu Name");

                if (!validation.IsSuccess)
                    return Ok(validation);

                var (IsSuccess, Message, Id, Extra)
                    = await _menuRepository.SaveMenu(menu);

                CommonViewModel.IsSuccess = IsSuccess;
                CommonViewModel.IsConfirm = true;
                CommonViewModel.StatusCode =
                    IsSuccess
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

        [HttpGet("[Action]")]
        public async Task<IActionResult> GetById(long id)
        {
            try
            {
                var data = await _menuRepository.GetMenuById(id);

                CommonViewModel.IsSuccess = data != null;
                CommonViewModel.StatusCode =
                    data != null
                        ? ResponseStatusCode.Success
                        : ResponseStatusCode.NotFound;

                CommonViewModel.Message =
                    data != null
                        ? "Data retrieved successfully"
                        : "Menu not found";

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

        [HttpDelete("[Action]")]
        public async Task<IActionResult> Delete(long id)
        {
            try
            {
                var (IsSuccess, Message, Id, Extra)
                    = await _menuRepository.DeleteMenu(id);

                CommonViewModel.IsSuccess = IsSuccess;
                CommonViewModel.IsConfirm = true;
                CommonViewModel.StatusCode =
                    IsSuccess
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

