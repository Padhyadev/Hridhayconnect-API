using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Microsoft.Data.SqlClient;
using System.Data;

namespace Hridhayconnect.ServiceRepository.WishlistRepository
{
    public class WishlistRepository : IWishlistRepository
    {

      //  public async Task<object> GetAllWishlist(PagingRequestTDO request)
        public async Task<object> GetAllWishlist()
        {
            //try
            //{
            //    var oParams = new List<SqlParameter>()
            //    {
            //       new SqlParameter("@Id", DBNull.Value),
            //       new SqlParameter("@CustomerId", request.Id),
            //       new SqlParameter("@Search", request.Search ?? (object)DBNull.Value),
            //       new SqlParameter("@Start", request.Start),
            //       new SqlParameter("@Length", request.Length),
            //       new SqlParameter("@SortColumnIndex", request.SortColumnIndex),
            //       new SqlParameter("@SortDirection", request.SortDirection)
            //    };


            //    DataSet ds = DataContext.ExecuteStoredProcedure_DataSet("SP_Wishlist_List", oParams);

            //    var table1 = new List<Dictionary<string, object>>();
            //    var table2 = new List<Dictionary<string, object>>();

            //    if (ds != null && ds.Tables.Count > 0)
            //    {
            //        foreach (DataRow row in ds.Tables[0].Rows)
            //        {
            //            var dict = new Dictionary<string, object>();

            //            foreach (DataColumn col in ds.Tables[0].Columns)
            //            {
            //                dict[col.ColumnName] = row[col];
            //            }

            //            table1.Add(dict);
            //        }
            //    }

            //    if (ds != null && ds.Tables.Count > 1)
            //    {
            //        foreach (DataRow row in ds.Tables[1].Rows)
            //        {
            //            var dict = new Dictionary<string, object>();

            //            foreach (DataColumn col in ds.Tables[1].Columns)
            //            {
            //                dict[col.ColumnName] = row[col];
            //            }

            //            table2.Add(dict);
            //        }
            //    }

            //    return await Task.FromResult(new
            //    {
            //        table1,
            //        table2
            //    });
            //}
            //catch
            //{
            //    throw;
            //}


            try
            {
                var oParams = new List<SqlParameter>()
                {

                   new SqlParameter("@CustomerId", AppHttpContextAccessor.CustomerId)

                };


                DataSet ds = DataContext.ExecuteStoredProcedure_DataSet("SP_Wishlist_List_New", oParams);

                var table1 = new List<Dictionary<string, object>>();
                var table2 = new List<Dictionary<string, object>>();

                if (ds != null && ds.Tables.Count > 0)
                {
                    foreach (DataRow row in ds.Tables[0].Rows)
                    {
                        var dict = new Dictionary<string, object>();

                        foreach (DataColumn col in ds.Tables[0].Columns)
                        {
                            dict[col.ColumnName] = row[col];
                        }

                        table1.Add(dict);
                    }
                }

                if (ds != null && ds.Tables.Count > 1)
                {
                    foreach (DataRow row in ds.Tables[1].Rows)
                    {
                        var dict = new Dictionary<string, object>();

                        foreach (DataColumn col in ds.Tables[1].Columns)
                        {
                            dict[col.ColumnName] = row[col];
                        }

                        table2.Add(dict);
                    }
                }

                return await Task.FromResult(new
                {
                    table1,
                    table2
                });
            }
            catch
            {
                throw;
            }
        }

        public async Task<Wishlist?> GetWishlistById(int id)
        {
            try
            {
                Wishlist? wishlist = null;

                var oParams = new List<SqlParameter>()
            {
                new SqlParameter("@Id", id),
                new SqlParameter("@CustomerId", AppHttpContextAccessor.CustomerId)
            };

                DataTable dt = DataContext.ExecuteStoredProcedure_DataTable("SP_Wishlist_List", oParams);

                if (dt.Rows.Count > 0)
                {
                    DataRow dr = dt.Rows[0];

                    wishlist = new Wishlist()
                    {
                        Id = Convert.ToInt32(dr["Id"]),
                        CustomerId = Convert.ToInt32(dr["CustomerId"]),
                        ProductId = Convert.ToInt32(dr["ProductId"]),
                        VariantId = dr["VariantId"] != DBNull.Value
                            ? Convert.ToInt32(dr["VariantId"])
                            : null,
                        CreatedDate = Convert.ToDateTime(dr["CreatedDate"])
                    };
                }

                return await Task.FromResult(wishlist);
            }
            catch
            {
                throw;
            }
        }

        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> AddWishlist(Wishlist model)
        {
            try
            {
                List<SqlParameter> oParams = new()
            {
                new SqlParameter("@CustomerId", model.CustomerId),
                new SqlParameter("@ProductId", model.ProductId),
                new SqlParameter("@VariantId", model.VariantId ?? (object)DBNull.Value),
                new SqlParameter("@PackingType",string.IsNullOrWhiteSpace(model.PackingType)? (object)DBNull.Value: model.PackingType),
                new SqlParameter("@Operated_By", AppHttpContextAccessor.CustomerId),
                new SqlParameter("@Action", "INSERT")
            };

                var result = DataContext.ExecuteStoredProcedure("SP_Wishlist_Save", oParams, true);

                return await Task.FromResult(result);
            }
            catch
            {
                throw;
            }
        }

        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> RemoveWishlist(int id)
        {
            try
            {
                List<SqlParameter> oParams = new()
            {
                new SqlParameter("@CustomerId", AppHttpContextAccessor.CustomerId),
                new SqlParameter("@Id", id),
                new SqlParameter("@Operated_By", AppHttpContextAccessor.CustomerId),
                new SqlParameter("@Action", "REMOVE")
            };

                var result = DataContext.ExecuteStoredProcedure("SP_Wishlist_Save", oParams, true);

                return await Task.FromResult(result);
            }
            catch
            {
                throw;
            }
        }


    }
}
