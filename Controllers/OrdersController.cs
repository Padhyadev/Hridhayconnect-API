using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Hridhayconnect.ServiceRepository.OrdersRepository;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Newtonsoft.Json;
using System.Data;

namespace Hridhayconnect.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    // pending For Admin Panal
    public class OrdersController : ControllerBase
    {
        private readonly IOrdersRepository _repository;
        private readonly ApiResponseModel CommonViewModel = new();

        public OrdersController(IOrdersRepository repository)
        {
            _repository = repository;
        }

        [HttpPost("[Action]")]
        public async Task<IActionResult> GetAll(PagingRequest request)
        {
            try
            {
                var data = await _repository.GetAllOrders(request);

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
                var data = await _repository.GetOrderById(id);

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
                    CommonViewModel.Message = "Order not found";
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

        [HttpGet("[Action]")]
        public async Task<IActionResult> GetOrderNumber()
        {
            try
            {
                var data = await _repository.GetOrderNumber();

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
                    CommonViewModel.Message = "Order not found";
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
        public async Task<IActionResult> Save(Orders obj)
        {
            try
            {
               
                if (obj.ListOrderItems == null || !obj.ListOrderItems.Any())
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.Message = "Please select at least one product.";

                    return Ok(CommonViewModel);

                }

                // Remove empty rows if needed
                var validItems = obj.ListOrderItems
                    .Where(x => x != null && x.VariantId > 0)
                    .ToList();

                if (!validItems.Any())
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.Message = "Please select at least one product.";

                    return Ok(CommonViewModel);
                }

                // Check duplicate VariantId
                var duplicateVariants = validItems.GroupBy(x => x.VariantId).Where(g => g.Count() > 1).Select(g => g.Key).ToList();

                if (duplicateVariants.Any())
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.Message = "Same product cannot be added more than once.";
                    return Ok(CommonViewModel);
                }
                var (IsSuccess, Message, Id, Extra) = await _repository.SaveOrder(obj);
                if (obj.Id > 0)
                {
                    var data = await _repository.GetOrderById(obj.Id);

                    if (obj.OrderStatus != data.OrderStatus)
                    {
                        // Get latest status name from LOV
                        var newStatus = obj.OrderStatusName;

                        // Product Names
                        string productNames = "";

                        if (data.ListOrderItems != null && data.ListOrderItems.Any())
                        {
                            productNames = string.Join(", ",
                                data.ListOrderItems.Select(x => x.ProductName));
                        }

                        // TODO:
                        // Get Customer Email from Order/Customer table
                        string customerEmail = data.CustomerEmail;
                        string customerName = data.CustomerName;

                        await Common.SendEmail(
                            $"Order Status Updated - {data.OrderNumber}",
                            customerEmail,
                            true,
                            "",
                            "order_status_change",
                            JsonConvert.SerializeObject(new
                            {
                                customername = customerName,
                                orderno = data.OrderNumber,
                                productname = productNames,
                                status = newStatus
                            })
                        );
                    }



                }
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

        [HttpDelete("[Action]")]
        public async Task<IActionResult> Delete(long id)
        {
            try
            {
                var (IsSuccess, Message, Id, Extra) = await _repository.DeleteOrder(id);

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
        public async Task<IActionResult> UpdateStatus(List<int> ids, string status)
        {
            try
            {
                if (ids == null || !ids.Any())
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.Message = "Please select at least one order.";

                    return Ok(CommonViewModel);
                }

                var (IsSuccess, Message, Id, Extra) = await _repository.UpdateStatus(ids, status);

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
        public async Task<IActionResult> UpdateChnageStatus(int id, string status)
        {
            try
            {
                if (id == null)
                {
                    CommonViewModel.IsSuccess = false;
                    CommonViewModel.Message = "Please select at least one order.";

                    return Ok(CommonViewModel);
                }

                var (IsSuccess, Message, Id, Extra) = await _repository.UpdateStatusNew(id, status);
                if (IsSuccess == true && Id > 0)
                {
                    var data = await _repository.GetOrderById(Convert.ToInt32(id));

                    
                        // Get latest status name from LOV
                        var newStatus = data.OrderStatusName;

                        // Product Names
                        string productNames = "";

                        if (data.ListOrderItems != null && data.ListOrderItems.Any())
                        {
                            productNames = string.Join(", ",
                                data.ListOrderItems.Select(x => x.ProductName));
                        }

                        // TODO:
                        // Get Customer Email from Order/Customer table
                        string customerEmail = data.CustomerEmail;
                        string customerName = data.CustomerName;

                        await Common.SendEmail(
                            $"Order Status Updated - {data.OrderNumber}",
                            customerEmail,
                            true,
                            "",
                            "order_status_change",
                            JsonConvert.SerializeObject(new
                            {
                                customername = customerName,
                                orderno = data.OrderNumber,
                                productname = productNames,
                                status = newStatus
                            })
                        );
                    



                }
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
