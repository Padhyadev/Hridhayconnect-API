using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Hridhayconnect.ServiceRepository.ContactUsRepository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace Hridhayconnect.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ContactUsController : ControllerBase
    {
        private readonly IContactUsRepository _repository;
        private readonly ApiResponseModel CommonViewModel = new();

        public ContactUsController(IContactUsRepository repository)
        {
            _repository = repository;
        }

        [HttpPost("[Action]")]
        public async Task<IActionResult> GetAll(PagingRequest request)
        {
            try
            {
                var data = await _repository.GetAllContactUs(request);

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
                var data = await _repository.GetContactUsById(id);

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
                    CommonViewModel.Message = "Enquiry not found";
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
        public async Task<IActionResult> Save(ContactUs contactUs)
        {
            try
            {
                // Name Validation
                if (string.IsNullOrWhiteSpace(contactUs.Name))
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.StatusCode = ResponseStatusCode.Error;
                    CommonViewModel.Message = "Please enter Name.";
                    return Ok(CommonViewModel);
                }

                // Email Validation
                if (string.IsNullOrWhiteSpace(contactUs.Email))
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.StatusCode = ResponseStatusCode.Error;
                    CommonViewModel.Message = "Please enter Email.";
                    return Ok(CommonViewModel);
                }

                if (!ValidateField.IsValidEmail(contactUs.Email))
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.StatusCode = ResponseStatusCode.Error;
                    CommonViewModel.Message = "Invalid Email format.";
                    return Ok(CommonViewModel);
                }

                // Mobile Number Validation
                if (string.IsNullOrWhiteSpace(contactUs.MobileNumber))
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.StatusCode = ResponseStatusCode.Error;
                    CommonViewModel.Message = "Please enter Mobile Number.";
                    return Ok(CommonViewModel);
                }

                if (!System.Text.RegularExpressions.Regex.IsMatch(contactUs.MobileNumber, @"^\d{10}$"))
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.StatusCode = ResponseStatusCode.Error;
                    CommonViewModel.Message = "Mobile Number must contain exactly 10 digits.";
                    return Ok(CommonViewModel);
                }

                //// Subject Validation
                //if (string.IsNullOrWhiteSpace(contactUs.Subject))
                //{
                //    CommonViewModel.IsSuccess = false;
                //    CommonViewModel.StatusCode = ResponseStatusCode.Error;
                //    CommonViewModel.Message = "Please enter Subject.";
                //    return Ok(CommonViewModel);
                //}

                //// Message Validation
                //if (string.IsNullOrWhiteSpace(contactUs.Message))
                //{
                //    CommonViewModel.IsSuccess = false;
                //    CommonViewModel.StatusCode = ResponseStatusCode.Error;
                //    CommonViewModel.Message = "Please enter Message.";
                //    return Ok(CommonViewModel);
                //}

                var result = await _repository.SaveContactUs(contactUs);

                CommonViewModel.IsSuccess = result.IsSuccess;
                CommonViewModel.StatusCode = result.IsSuccess
                    ? ResponseStatusCode.Success
                    : ResponseStatusCode.Error;
                CommonViewModel.Message = result.Message;
                CommonViewModel.IsConfirm = true;
                CommonViewModel.Data = result.Id;

                // Send email after successful save
                if (result.IsSuccess)
                {
                    await Common.SendEmailwithAttachment(
     "Thank You for Contacting Us",
     contactUs.Email,
     true,
     "",
     "contactus",
     JsonConvert.SerializeObject(new
     {
         name = contactUs.Name,
         email = contactUs.Email,
         mobilenumber = contactUs.MobileNumber,
         subject = contactUs.Subject,
         message = contactUs.Message
     })
 );
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
        public async Task<IActionResult> Delete(long contactId)
        {
            try
            {
                var result = await _repository.DeleteContactUs(contactId);

                CommonViewModel.IsSuccess = result.IsSuccess;
                CommonViewModel.StatusCode = result.IsSuccess
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
