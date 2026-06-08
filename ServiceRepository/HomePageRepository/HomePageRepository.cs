using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Microsoft.Data.SqlClient;
using System.Data;

namespace Hridhayconnect.ServiceRepository.HomePageRepository
{
    public class HomePageRepository : IHomePageRepository
    {
        public async Task<object> GetAll()
        {
            try
            {
                DataSet ds = DataContext.ExecuteStoredProcedure_DataSet(
                    "SP_HomePageComponent_Get");

                var result = new List<HomePageComponent>();

                if (ds != null &&
                    ds.Tables.Count > 0 &&
                    ds.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        result.Add(new HomePageComponent()
                        {
                            Id = Convert.ToInt64(dr["Id"]),
                            Name = dr["Name"]?.ToString(),
                            Key = dr["Key"]?.ToString(),
                            Type = dr["Type"]?.ToString(),
                            DisplayOrder = Convert.ToInt32(dr["DisplayOrder"]),
                            IsActive = Convert.ToBoolean(dr["IsActive"])
                        });
                    }
                }

                return await Task.FromResult(result);
            }
            catch
            {
                throw;
            }
        }

        public async Task<HomePageComponent?> GetById(long id)
        {
            try
            {
                HomePageComponent? obj = null;

                List<SqlParameter> oParams = new()
                {
                    new SqlParameter("@Id", id)
                };

                DataSet ds = DataContext.ExecuteStoredProcedure_DataSet(
                    "SP_HomePageComponent_Get",
                    oParams);

                if (ds != null && ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        DataRow dr = ds.Tables[0].Rows[0];

                        obj = new HomePageComponent()
                        {
                            Id = Convert.ToInt64(dr["Id"]),
                            Name = dr["Name"]?.ToString(),
                            Key = dr["Key"]?.ToString(),
                            Type = dr["Type"]?.ToString(),
                            DisplayOrder = Convert.ToInt32(dr["DisplayOrder"]),
                            IsActive = Convert.ToBoolean(dr["IsActive"]),
                            Items = new List<HomePageComponentItem>()
                        };

                        if (ds.Tables.Count > 1 &&
                            ds.Tables[1].Rows.Count > 0)
                        {
                            foreach (DataRow row in ds.Tables[1].Rows)
                            {
                                obj.Items.Add(new HomePageComponentItem()
                                {
                                    Id = Convert.ToInt64(row["Id"]),
                                    Title = row["Title"]?.ToString(),
                                    Subtitle = row["Subtitle"]?.ToString(),
                                    ImagePath = row["ImagePath"]?.ToString(),
                                    RedirectUrl = row["RedirectUrl"]?.ToString(),
                                    RefId = row["RefId"]?.ToString(),
                                    DisplayOrder = Convert.ToInt32(row["DisplayOrder"]),
                                    IsActive = Convert.ToBoolean(row["IsActive"])
                                });
                            }
                        }
                    }
                }

                return await Task.FromResult(obj);
            }
            catch
            {
                throw;
            }
        }

        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)>
            Save(HomePageComponent model)
        {
            try
            {
                string uploadFolder = Path.Combine(
                    AppHttpContextAccessor.WebRootPath,
                    "Uploads",
                    "HomePage");

                List<string> items = new();

                if (model.Items != null && model.Type == "Banner")
                {
                    //foreach (var item in model.Items)
                    //{
                    //    string image = "-";

                    //    // upload only if user selected a new image
                    //    if (item.ImageFile != null && item.ImageFile.Length > 0)
                    //    {
                    //        image = await FileUploadService.UploadImageAsync(
                    //            item.ImageFile,
                    //            uploadFolder);
                    //    }

                    //    items.Add(
                    //        $"{item.Id}|{item.Title}|{item.Subtitle}|{image}|{item.DisplayOrder}|{(item.IsActive ? 1 : 0)}");
                    //}
                    foreach (var item in model.Items)
                    {
                        string image = "-";

                        if (item.ImageFile != null && item.ImageFile.Length > 0)
                        {
                            // Existing record
                            if (item.Id > 0)
                            {

                                var dt = DataContext.ExecuteQuery(
                                    $"SELECT ImagePath FROM HomePageComponentItem WHERE Id = {item.Id}");

                                if (dt != null && dt.Rows.Count > 0)
                                {
                                    string oldImage = dt.Rows[0]["ImagePath"]?.ToString();

                                    if (!string.IsNullOrWhiteSpace(oldImage))
                                    {
                                        string oldFilePath = Path.Combine(
                                            AppHttpContextAccessor.WebRootPath,
                                            oldImage.TrimStart('/')
                                                    .Replace("/", Path.DirectorySeparatorChar.ToString()));

                                        if (File.Exists(oldFilePath))
                                        {
                                            try
                                            {
                                                File.Delete(oldFilePath);
                                            }
                                            catch
                                            {
                                                // optional logging
                                            }
                                        }
                                    }
                                }
                            }

                            image = await FileUploadService.UploadImageAsync(
                                item.ImageFile,
                                uploadFolder);
                        }

                        items.Add(
                            $"{item.Id}|{item.Title}|{item.Subtitle}|{image}|{item.DisplayOrder}|{(item.IsActive ? 1 : 0)}");
                    }
                }

                string itemString = string.Join("</i><i>", items);

                List<SqlParameter> oParams = new()
                {
                    new SqlParameter("Id", model.Id),
                    new SqlParameter("Key", model.Key ?? ""),
                    new SqlParameter("Name", model.Name ?? ""),
                    new SqlParameter("Type", model.Type ?? ""),
                    new SqlParameter("IsActive", model.IsActive ? 1 : 0),
                    new SqlParameter("Items", itemString),
                    new SqlParameter("RefId", model.RefId ?? ""),
                    new SqlParameter("ItemId", model.ItemId),

                    new SqlParameter("Mode", "SAVE"),
                    new SqlParameter("OperatedBy", AppHttpContextAccessor.JwtUserId)
                };

                var result = DataContext.ExecuteStoredProcedure(
                    "SP_HomePageComponent_Save",
                    oParams,
                    true);

                return await Task.FromResult(result);
            }
            catch
            {
                throw;
            }
        }

        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)>
            Delete(long id)
        {
            try
            {
                List<SqlParameter> oParams = new()
                {
                    new SqlParameter("Id", id),
                    new SqlParameter("Mode", "DELETE"),
                    new SqlParameter("OperatedBy", AppHttpContextAccessor.JwtUserId)
                };

                var result = DataContext.ExecuteStoredProcedure(
                    "SP_HomePageComponent_Save",
                    oParams,
                    true);

                return await Task.FromResult(result);
            }
            catch
            {
                throw;
            }
        }
    }
}
