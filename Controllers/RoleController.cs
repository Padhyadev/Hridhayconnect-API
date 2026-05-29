
using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Hridhayconnect.ServiceRepository.RoleRepository;
using JewelryStore.Infra;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Hridhayconnect.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize]
    public class RoleController : ControllerBase
    {

        private readonly IRoleRepository _roleRepository;
        private readonly CommonViewModel CommonViewModel = new();
        private readonly ValidationService _validation;

        public RoleController(IRoleRepository roleService, ValidationService validation)
        {
            _roleRepository = roleService;
            _validation = validation;
        }
        [HttpPost("[Action]")]
        public async Task<IActionResult> GetAll(PagingRequest request)
        {
            try
            {
                CommonViewModel.Data =
                    await _roleRepository.GetAllRoles(request);

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
        public async Task<IActionResult> Add(Role role)
        {
            try
            {
                var roleName =
                    _validation.ValidateRequired(role.RoleName, "Role Name");

                if (!roleName.IsSuccess)
                    return Ok(roleName);

                var selectedMenu =
                    _validation.ValidateRequired(role.SelectedMenu, "Menu");

                if (!selectedMenu.IsSuccess)
                    return Ok(selectedMenu);

                var (IsSuccess, Message, Id, Extra)
                    = await _roleRepository.SaveRole(role);

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
                var data = await _roleRepository.GetRoleById(id);

                CommonViewModel.IsSuccess = data != null;
                CommonViewModel.StatusCode =
                    data != null
                        ? ResponseStatusCode.Success
                        : ResponseStatusCode.NotFound;

                CommonViewModel.Message =
                    data != null
                        ? "Data retrieved successfully"
                        : "Role not found";

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
                    = await _roleRepository.DeleteRole(id);

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
