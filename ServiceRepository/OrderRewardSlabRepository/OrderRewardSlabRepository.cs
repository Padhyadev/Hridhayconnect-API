using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Microsoft.Data.SqlClient;
using System.Data;

namespace Hridhayconnect.ServiceRepository.OrderRewardSlabRepository
{
    public class OrderRewardSlabRepository : IOrderRewardSlabRepository
    {
        public async Task<object> GetAll(PagingRequest request)
        {
            try
            {
                var oParams = new List<SqlParameter>()
            {
                new SqlParameter("@Id",DBNull.Value),
                new SqlParameter("@Search", request.Search),
                new SqlParameter("@Start", request.Start),
                new SqlParameter("@Length", request.Length),
                new SqlParameter("@SortColumnIndex", request.SortColumnIndex),
                new SqlParameter("@SortDirection", request.SortDirection)
            };

                DataSet ds = DataContext.ExecuteStoredProcedure_DataSet(
                    "SP_OrderRewardSlab_Get",
                    oParams);

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

                var result = new
                {
                    table1,
                    table2
                };

                return await Task.FromResult(result);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public async Task<OrderRewardSlab?> GetById(long id)
        {
            try
            {
                OrderRewardSlab? obj = null;

                var oParams = new List<SqlParameter>()
            {
                new SqlParameter("@Id", id)
            };

                DataTable dt =
                    DataContext.ExecuteStoredProcedure_DataTable(
                        "SP_OrderRewardSlab_Get",
                        oParams);

                if (dt.Rows.Count > 0)
                {
                    DataRow dr = dt.Rows[0];

                    obj = new OrderRewardSlab()
                    {
                        Id = Convert.ToInt64(dr["Id"]),
                        MinPurchaseAmount = Convert.ToDecimal(dr["MinPurchaseAmount"]),
                        MaxPurchaseAmount = Convert.ToDecimal(dr["MaxPurchaseAmount"]),
                        RewardCoins = Convert.ToDecimal(dr["RewardCoins"]),
                        IsActive = Convert.ToBoolean(dr["IsActive"])
                    };
                }

                return await Task.FromResult(obj);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> Save(OrderRewardSlab obj)
        {
            try
            {
                List<SqlParameter> oParams = new();

                oParams.Add(new SqlParameter("@Id", obj.Id));
                oParams.Add(new SqlParameter("@MinPurchaseAmount", obj.MinPurchaseAmount));
                oParams.Add(new SqlParameter("@MaxPurchaseAmount", obj.MaxPurchaseAmount));
                oParams.Add(new SqlParameter("@IsActive", obj.IsActive));
                oParams.Add(new SqlParameter("@RewardCoins", obj.RewardCoins));

                oParams.Add(new SqlParameter("@Mode", "SAVE"));

                oParams.Add(
                    new SqlParameter(
                        "@OperatedBy",
                        AppHttpContextAccessor.JwtUserId));

                var result = DataContext.ExecuteStoredProcedure(
                    "SP_OrderRewardSlab_Save",
                    oParams,
                    true);

                return await Task.FromResult(result);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> Delete(long id)
        {
            try
            {
                List<SqlParameter> oParams = new()
            {
                new SqlParameter("@Id", id),
                new SqlParameter("@Mode", "DELETE"),
                new SqlParameter("@OperatedBy", AppHttpContextAccessor.JwtUserId)
            };

                var result = DataContext.ExecuteStoredProcedure(
                    "SP_OrderRewardSlab_Save",
                    oParams,
                    true);

                return await Task.FromResult(result);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
