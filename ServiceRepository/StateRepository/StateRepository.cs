using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Microsoft.Data.SqlClient;
using System.Data;

namespace Hridhayconnect.ServiceRepository.StateRepository
{
    public class StateRepository : IStateRepository
    {
        public async Task<object> GetAllState(PagingRequest request)
        {
            try
            {
                var oParams = new List<SqlParameter>()
                {
                    new SqlParameter("@StateId", DBNull.Value),
                    new SqlParameter("@Search", request.Search),
                    new SqlParameter("@Start", request.Start),
                    new SqlParameter("@Length", request.Length),
                    new SqlParameter("@SortColumnIndex", request.SortColumnIndex),
                    new SqlParameter("@SortDirection", request.SortDirection)
                };

                DataSet ds = DataContext.ExecuteStoredProcedure_DataSet("SP_State_Get", oParams);

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

        public async Task<State?> GetStateById(long id)
        {
            try
            {
                State? state = null;

                var oParams = new List<SqlParameter>()
                {
                    new SqlParameter("@StateId", id)
                };

                DataTable dt = DataContext.ExecuteStoredProcedure_DataTable("SP_State_Get", oParams);

                if (dt.Rows.Count > 0)
                {
                    DataRow dr = dt.Rows[0];

                    state = new State()
                    {
                        StateId = Convert.ToInt64(dr["StateId"]),
                        CountryId = Convert.ToInt64(dr["CountryId"]),
                        CountryName = dr["CountryName"]?.ToString(),
                        StateName = dr["StateName"]?.ToString(),
                        StateCode = dr["StateCode"]?.ToString(),
                        IsActive = Convert.ToBoolean(dr["IsActive"])
                    };
                }

                return await Task.FromResult(state);
            }
            catch
            {
                throw;
            }
        }

        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveState(State state)
        {
            try
            {
                List<SqlParameter> oParams = new()
                {
                    new SqlParameter("@StateId", state.StateId),
                    new SqlParameter("@CountryId", state.CountryId),
                    new SqlParameter("@StateName", state.StateName),
                    new SqlParameter("@StateCode", state.StateCode ?? (object)DBNull.Value),
                    new SqlParameter("@IsActive", state.IsActive),
                    new SqlParameter("@OperatedBy", AppHttpContextAccessor.CustomerId)
                };

                var result = DataContext.ExecuteStoredProcedure("SP_State_Save", oParams, true);

                return await Task.FromResult(result);
            }
            catch
            {
                throw;
            }
        }

        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeleteState(long stateId)
        {
            try
            {
                List<SqlParameter> oParams = new()
                {
                    new SqlParameter("@StateId", stateId),
                    new SqlParameter("@OperatedBy", AppHttpContextAccessor.CustomerId)
                };

                var result = DataContext.ExecuteStoredProcedure("SP_State_Delete", oParams, true);

                return await Task.FromResult(result);
            }
            catch
            {
                throw;
            }
        }

        //public async Task<List<CommonDropdownModel>> GetStateCombo(long countryId)
        //{
        //    try
        //    {
        //        var oParams = new List<SqlParameter>()
        //        {
        //            new SqlParameter("@CountryId", countryId)
        //        };

        //        DataTable dt = DataContext.ExecuteStoredProcedure_DataTable("SP_State_Combo", oParams);

        //        List<CommonDropdownModel> data = new();

        //        foreach (DataRow dr in dt.Rows)
        //        {
        //            data.Add(new CommonDropdownModel
        //            {
        //                Value = Convert.ToInt64(dr["Value"]),
        //                Text = dr["Text"].ToString()
        //            });
        //        }

        //        return await Task.FromResult(data);
        //    }
        //    catch
        //    {
        //        throw;
        //    }
        //}
    }
}
