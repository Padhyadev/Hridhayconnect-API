using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace Hridhayconnect.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HomepageImageController : ControllerBase
    {
        private readonly IWebHostEnvironment _env;

        public HomepageImageController(IWebHostEnvironment env)
        {
            _env = env;
        }

        [HttpGet("[Action]")]
        public IActionResult GetAll()
        {
            var response = new ApiResponseModel();
            try
            {
                string folderPath = Path.Combine(_env.WebRootPath, "HomepageImage");
                var imageUrls = new List<string>();

                if (Directory.Exists(folderPath))
                {
                    string baseUrl = $"{Request.Scheme}://{Request.Host}{Request.PathBase}";
                    var files = Directory.GetFiles(folderPath);

                    var allowedExtensions = new[] { ".jpg", ".jpeg", ".png", ".webp", ".gif" };

                    foreach (var file in files)
                    {
                        var ext = Path.GetExtension(file).ToLowerInvariant();
                        if (allowedExtensions.Contains(ext))
                        {
                            var fileName = Path.GetFileName(file);
                            var fileUrl = $"{baseUrl}/HomepageImage/{fileName}";
                            imageUrls.Add(fileUrl);
                        }
                    }
                }

                response.IsSuccess = true;
                response.StatusCode = ResponseStatusCode.Success;
                response.Message = "Data retrieved successfully";
                response.Data = imageUrls;
            }
            catch (Exception ex)
            {
                response.IsSuccess = false;
                response.StatusCode = ResponseStatusCode.Error;
                response.Message = ex.Message;
            }

            return Ok(response);
        }
    }
}
