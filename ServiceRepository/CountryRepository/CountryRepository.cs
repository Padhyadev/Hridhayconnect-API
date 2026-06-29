using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Microsoft.Data.SqlClient;
using System.Data;

namespace Hridhayconnect.ServiceRepository.CountryRepository
{
    public class CountryRepository : ICountryRepository
    {
        public async Task<object> GetAllCountry(PagingRequest request)
        {
            try
            {
                var oParams = new List<SqlParameter>()
                {
                    new SqlParameter("@CountryId", DBNull.Value),
                    new SqlParameter("@Search", request.Search),
                    new SqlParameter("@Start", request.Start),
                    new SqlParameter("@Length", request.Length),
                    new SqlParameter("@SortColumnIndex", request.SortColumnIndex),
                    new SqlParameter("@SortDirection", request.SortDirection)
                };

                DataSet ds = DataContext.ExecuteStoredProcedure_DataSet("SP_Country_Get", oParams);

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

        public async Task<Country?> GetCountryById(long id)
        {
            try
            {
                Country? country = null;

                var oParams = new List<SqlParameter>()
                {
                    new SqlParameter("@CountryId", id)
                };

                DataTable dt = DataContext.ExecuteStoredProcedure_DataTable("SP_Country_Get", oParams);

                if (dt.Rows.Count > 0)
                {
                    DataRow dr = dt.Rows[0];

                    country = new Country()
                    {
                        CountryId = Convert.ToInt64(dr["CountryId"]),
                        CountryName = dr["CountryName"]?.ToString(),
                        CountryCode = dr["CountryCode"]?.ToString(),
                        IsActive = Convert.ToBoolean(dr["IsActive"])
                    };
                }

                return await Task.FromResult(country);
            }
            catch
            {
                throw;
            }
        }

        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveCountry(Country country)
        {
            try
            {
                List<SqlParameter> oParams = new()
                {
                    new SqlParameter("@CountryId", country.CountryId),
                    new SqlParameter("@CountryName", country.CountryName),
                    new SqlParameter("@CountryCode", country.CountryCode ?? (object)DBNull.Value),
                    new SqlParameter("@IsActive", country.IsActive),
                    new SqlParameter("@OperatedBy", AppHttpContextAccessor.CustomerId)
                };

                var result = DataContext.ExecuteStoredProcedure("SP_Country_Save", oParams, true);

                return await Task.FromResult(result);
            }
            catch
            {
                throw;
            }
        }

        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeleteCountry(long countryId)
        {
            try
            {
                List<SqlParameter> oParams = new()
                {
                    new SqlParameter("@CountryId", countryId),
                    new SqlParameter("@OperatedBy", AppHttpContextAccessor.CustomerId)
                };

                var result = DataContext.ExecuteStoredProcedure("SP_Country_Delete", oParams, true);

                return await Task.FromResult(result);
            }
            catch
            {
                throw;
            }
        }
    }
}
