using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Hridhayconnect.ServiceRepository.CustomerRepository;
using Hridhayconnect.ServiceRepository.HomeRepository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Text.RegularExpressions;

namespace Hridhayconnect.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CustomerController : ControllerBase
    {
        private readonly ICustomerRepository _repository;
        private readonly IHomeRepository _repositoryHome;
        private readonly ApiResponseModel CommonViewModel = new();

        public CustomerController(ICustomerRepository repository,IHomeRepository homeRepository)
        {
            _repository = repository;
            _repositoryHome = homeRepository;
        }

        // When pass customer Id Here we get 5 Tables SP_Customer_Get
        //1. Customer basic Information
        //2.Customer Adress
        //3.Customer cart Datailes 
        //4.Customer Oder Listing
        //5.Customer Order datiles
        [HttpPost("[Action]")]
        public async Task<IActionResult> GetAll(ReviewPagingRequest request)
        {
            try
            {
                var data = await _repository.GetAllCustomer(request);

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
        public async Task<IActionResult> GetById(int id)
        {
            try
            {
                var data = await _repository.GetCustomerById(id);

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
                    CommonViewModel.Message = "Customer not found";
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

        [HttpPost("[Action]")]
        //PASS ADRESS TYPE HOME OR SHIPPING
        public async Task<IActionResult> Save(Customer customer)
        {
            try
            {

                
                    if (customer.CustomerId <= 0)
                    {
                        CommonViewModel.Message = "Customer is required";
                        CommonViewModel.IsSuccess = false;
                        CommonViewModel.IsConfirm = true;
                        CommonViewModel.StatusCode = ResponseStatusCode.Error;
                        return Ok(CommonViewModel);
                    }

                    if (customer.CountryId <= 0)
                    {
                        CommonViewModel.Message = "Country is required";
                        CommonViewModel.IsSuccess = false;
                        CommonViewModel.IsConfirm = true;
                        CommonViewModel.StatusCode = ResponseStatusCode.Error;
                        return Ok(CommonViewModel);
                    }

                    if (customer.StateId <= 0)
                    {
                        CommonViewModel.Message = "State is required";
                        CommonViewModel.IsSuccess = false;
                        CommonViewModel.IsConfirm = true;
                        CommonViewModel.StatusCode = ResponseStatusCode.Error;
                        return Ok(CommonViewModel);
                    }

                    if (string.IsNullOrWhiteSpace(customer.AddressLine1))
                    {
                        CommonViewModel.Message = "Address Line 1 is required";
                        CommonViewModel.IsSuccess = false;
                        CommonViewModel.IsConfirm = true;
                        CommonViewModel.StatusCode = ResponseStatusCode.Error;
                        return Ok(CommonViewModel);
                    }
                    if (!Regex.IsMatch(customer.AddressLine1, @"^[A-Za-z0-9\s,./\-]+$"))
                    {
                        CommonViewModel.Message = "Address Line 1 contains invalid characters";
                        CommonViewModel.IsSuccess = false;
                        CommonViewModel.IsConfirm = true;
                        CommonViewModel.StatusCode = ResponseStatusCode.Error;
                        return Ok(CommonViewModel);
                    }


                    if (string.IsNullOrWhiteSpace(customer.City))
                    {
                        CommonViewModel.Message = "City is required";
                        CommonViewModel.IsSuccess = false;
                        CommonViewModel.IsConfirm = true;
                        CommonViewModel.StatusCode = ResponseStatusCode.Error;
                        return Ok(CommonViewModel);
                    }
                    if (!Regex.IsMatch(customer.City, @"^[A-Za-z\s]+$"))
                    {
                        CommonViewModel.Message = "City can contain only letters and spaces";
                        CommonViewModel.IsSuccess = false;
                        CommonViewModel.IsConfirm = true;
                        CommonViewModel.StatusCode = ResponseStatusCode.Error;
                        return Ok(CommonViewModel);
                    }

                    if (string.IsNullOrWhiteSpace(customer.PostalCode))
                    {
                        CommonViewModel.Message = "Postal Code is required";
                        CommonViewModel.IsSuccess = false;
                        CommonViewModel.IsConfirm = true;
                        CommonViewModel.StatusCode = ResponseStatusCode.Error;
                        return Ok(CommonViewModel);
                    }

                    if (customer.PostalCode.Length != 6 || !customer.PostalCode.All(char.IsDigit))
                    {
                        CommonViewModel.Message = "Postal Code must be 6 digits";
                        CommonViewModel.IsSuccess = false;
                        CommonViewModel.IsConfirm = true;
                        CommonViewModel.StatusCode = ResponseStatusCode.Error;
                        return Ok(CommonViewModel);
                    }

                    if (string.IsNullOrWhiteSpace(customer.MobileNo))
                    {
                        CommonViewModel.Message = "Mobile Number is required";
                        CommonViewModel.IsSuccess = false;
                        CommonViewModel.IsConfirm = true;
                        CommonViewModel.StatusCode = ResponseStatusCode.Error;
                        return Ok(CommonViewModel);
                    }

                    if (customer.MobileNo.Length != 10 || !customer.MobileNo.All(char.IsDigit))
                    {
                        CommonViewModel.Message = "Mobile Number must be 10 digits";
                        CommonViewModel.IsSuccess = false;
                        CommonViewModel.IsConfirm = true;
                        CommonViewModel.StatusCode = ResponseStatusCode.Error;
                        return Ok(CommonViewModel);
                    }

                    if (!string.IsNullOrWhiteSpace(customer.AlternativeMobileNo))
                    {
                        if (customer.AlternativeMobileNo.Length != 10 || !customer.AlternativeMobileNo.All(char.IsDigit))
                        {
                            CommonViewModel.Message = "Alternative Mobile Number must be 10 digits";
                            CommonViewModel.IsSuccess = false;
                            CommonViewModel.IsConfirm = true;
                            CommonViewModel.StatusCode = ResponseStatusCode.Error;
                            return Ok(CommonViewModel);
                        }
                    }


                    var (IsSuccess, Message, Id, Extra) = await _repository.AddOrUpdateCustomeradress(customer);

                    CommonViewModel.IsSuccess = IsSuccess;
                    CommonViewModel.StatusCode = IsSuccess ? ResponseStatusCode.Success : ResponseStatusCode.Error;
                    CommonViewModel.IsConfirm = true;
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

        [HttpPost("[Action]")]
        //PASS ADRESS TYPE HOME OR SHIPPING
        public async Task<IActionResult> UpdateProfile(Customer customer)
        {
            try
            {
               
                    if (string.IsNullOrWhiteSpace(customer.FirstName))
                    {
                        CommonViewModel.Message = "FirstName is required";
                        CommonViewModel.IsSuccess = false;
                        CommonViewModel.IsConfirm = true;
                        CommonViewModel.StatusCode = ResponseStatusCode.Error;
                        return Ok(CommonViewModel);
                    }
                    if (string.IsNullOrWhiteSpace(customer.LastName))
                    {
                        CommonViewModel.Message = "LastName is required";
                        CommonViewModel.IsSuccess = false;
                        CommonViewModel.IsConfirm = true;
                        CommonViewModel.StatusCode = ResponseStatusCode.Error;
                        return Ok(CommonViewModel);
                    }
                    if (string.IsNullOrWhiteSpace(customer.Email))
                    {
                        CommonViewModel.Message = "Email is required";
                        CommonViewModel.IsSuccess = false;
                        CommonViewModel.IsConfirm = true;
                        CommonViewModel.StatusCode = ResponseStatusCode.Error;
                        return Ok(CommonViewModel);
                    }
                    if (string.IsNullOrWhiteSpace(customer.MobileNo))
                    {
                        CommonViewModel.Message = "Mobile Number is required";
                        CommonViewModel.IsSuccess = false;
                        CommonViewModel.IsConfirm = true;
                        CommonViewModel.StatusCode = ResponseStatusCode.Error;
                        return Ok(CommonViewModel);
                    }

                    if (customer.MobileNo.Length != 10 || !customer.MobileNo.All(char.IsDigit))
                    {
                        CommonViewModel.Message = "Mobile Number must be 10 digits";
                        CommonViewModel.IsSuccess = false;
                        CommonViewModel.IsConfirm = true;
                        CommonViewModel.StatusCode = ResponseStatusCode.Error;
                        return Ok(CommonViewModel);
                    }

                    if (!string.IsNullOrWhiteSpace(customer.AlternativeMobileNo))
                    {
                        if (customer.AlternativeMobileNo.Length != 10 || !customer.AlternativeMobileNo.All(char.IsDigit))
                        {
                            CommonViewModel.Message = "Alternative Mobile Number must be 10 digits";
                            CommonViewModel.IsSuccess = false;
                            CommonViewModel.IsConfirm = true;
                            CommonViewModel.StatusCode = ResponseStatusCode.Error;
                            return Ok(CommonViewModel);
                        }
                    }
                


                var (IsSuccess, Message, Id, Extra) = await _repositoryHome.Register(customer);

                CommonViewModel.IsSuccess = IsSuccess;
                CommonViewModel.StatusCode = IsSuccess ? ResponseStatusCode.Success : ResponseStatusCode.Error;
                CommonViewModel.IsConfirm = true;
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
                var (IsSuccess, Message, Id, Extra) = await _repository.RemoveCustomerAddress(id);

                CommonViewModel.IsSuccess = IsSuccess;
                CommonViewModel.StatusCode = IsSuccess ? ResponseStatusCode.Success : ResponseStatusCode.Error;
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

        [HttpPost("[Action]")]
        public async Task<IActionResult> ChangeDefaultAddress(int CustomerAddressId)
        {
            try
            {
                var (IsSuccess, Message, Id, Extra) = await _repository.ChangeDefaultAddress(CustomerAddressId);

                CommonViewModel.IsSuccess = IsSuccess;
                CommonViewModel.StatusCode = IsSuccess ? ResponseStatusCode.Success : ResponseStatusCode.Error;
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
