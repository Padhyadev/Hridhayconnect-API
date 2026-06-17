using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Microsoft.Data.SqlClient;
using System.Data;

namespace Hridhayconnect.ServiceRepository.RewardRepository
{
    public class RewardRepository : IRewardRepository
    {
        public async Task<object> GetRewardHistory(RewardHistoryPagingRequest request,int? customerId)
        {
            try
            {
                var oParams = new List<SqlParameter>()
                {
                    new SqlParameter("@CustomerId", customerId),
                    new SqlParameter("@TransactionType",
                        string.IsNullOrWhiteSpace(request.TransactionType)
                        ? DBNull.Value
                        : request.TransactionType),

                    new SqlParameter("@EntryType",
                        string.IsNullOrWhiteSpace(request.EntryType)
                        ? DBNull.Value
                        : request.EntryType),

                    new SqlParameter("@Start", request.Start),
                    new SqlParameter("@Length", request.Length),
                    new SqlParameter("@SortColumnIndex", request.SortColumnIndex),
                    new SqlParameter("@SortDirection", request.SortDirection)
                };

                DataSet ds = DataContext.ExecuteStoredProcedure_DataSet(
                    "SP_RewardHistory_Get",
                    oParams);

                var table1 = new List<Dictionary<string, object>>();
                var table2 = new List<Dictionary<string, object>>();

                // Counts
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

                // Data
                if (ds != null && ds.Tables.Count > 1)
                {
                    foreach (DataRow row in ds.Tables[1].Rows)
                    {
                        var dict = new Dictionary<string, object>();

                        foreach (DataColumn col in ds.Tables[1].Columns)
                        {
                            dict[col.ColumnName] =
                                row[col] == DBNull.Value
                                ? null
                                : row[col];
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

        public async Task<object> GetAll()
        {
            try
            {
                DataTable dt =
                    DataContext.ExecuteStoredProcedure_DataTable(
                        "SP_RewardSettings_Get",
                        new List<SqlParameter>());

                var data = new List<Dictionary<string, object>>();

                foreach (DataRow row in dt.Rows)
                {
                    var dict = new Dictionary<string, object>();

                    foreach (DataColumn col in dt.Columns)
                    {
                        dict[col.ColumnName] =
                            row[col] == DBNull.Value ? null : row[col];
                    }

                    data.Add(dict);
                }

                return await Task.FromResult(data);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public async Task<RewardSettings?> GetById(int id)
        {
            try
            {
                RewardSettings? obj = null;

                List<SqlParameter> oParams = new()
                {
                    new SqlParameter("@Id", id)
                };

                DataTable dt =
                    DataContext.ExecuteStoredProcedure_DataTable(
                        "SP_RewardSettings_Get",
                        oParams);

                if (dt.Rows.Count > 0)
                {
                    DataRow dr = dt.Rows[0];

                    obj = new RewardSettings
                    {
                        Id = Convert.ToInt32(dr["Id"]),
                        SignupCoins = Convert.ToDecimal(dr["SignupCoins"]),
                        LoginCoins = Convert.ToDecimal(dr["LoginCoins"]),
                        ReferralCoins = Convert.ToDecimal(dr["ReferralCoins"]),
                        ReferralJoinCoins = Convert.ToDecimal(dr["ReferralJoinCoins"]),
                        CoinToRupeeRate = Convert.ToDecimal(dr["CoinToRupeeRate"]),
                        MaxCoinUsagePercent = Convert.ToDecimal(dr["MaxCoinUsagePercent"]),
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

        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> Save(RewardSettings obj)
        {
            try
            {
                List<SqlParameter> oParams = new()
                {
                    new SqlParameter("@Id", obj.Id),
                    new SqlParameter("@SignupCoins", obj.SignupCoins),
                    new SqlParameter("@LoginCoins", obj.LoginCoins),
                    new SqlParameter("@ReferralCoins", obj.ReferralCoins),
                    new SqlParameter("@ReferralJoinCoins", obj.ReferralJoinCoins),
                    new SqlParameter("@CoinToRupeeRate", obj.CoinToRupeeRate),
                    new SqlParameter("@MaxCoinUsagePercent", obj.MaxCoinUsagePercent),
                    new SqlParameter("@IsActive", obj.IsActive),
                    new SqlParameter("@OperatedBy", AppHttpContextAccessor.JwtUserId)
                };

                var result =
                    DataContext.ExecuteStoredProcedure(
                        "SP_RewardSettings_Save",
                        oParams,
                        true);

                return await Task.FromResult(result);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> AddRewardCoins(
    int customerId,
    decimal coins,
    string remarks)
        {
            try
            {
                List<SqlParameter> oParams = new()
        {
            new SqlParameter("@CustomerId", customerId),
            new SqlParameter("@Coins", coins),
            new SqlParameter("@Remarks", remarks ?? (object)DBNull.Value),
            new SqlParameter("@CreatedBy", AppHttpContextAccessor.JwtUserId)
        };

                return await Task.Run(() =>
                    DataContext.ExecuteStoredProcedure(
                        "SP_Reward_Add",
                        oParams,
                        true
                    )
                );
            }
            catch (Exception ex)
            {
                return (false, ex.Message, 0, new List<string>());
            }
        }
    }
}
