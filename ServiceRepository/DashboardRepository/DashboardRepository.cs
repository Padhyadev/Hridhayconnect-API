using Hridhayconnect.Infra;
using Microsoft.Data.SqlClient;
using System.Data;

namespace Hridhayconnect.ServiceRepository.DashboardRepository
{
    public class DashboardRepository : IDashboardRepository
    {
        public async Task<object> GetCustomerDashboard()
        {
            var CustomerId = AppHttpContextAccessor.JwtUserId;
            var oParams = new List<SqlParameter>()
            {
                new SqlParameter("@CustomerId", CustomerId)
            };

            DataSet ds = DataContext.ExecuteStoredProcedure_DataSet("SP_CustomerDashboard_Get", oParams);

            var table1 = new List<Dictionary<string, object>>();
            var table2 = new List<Dictionary<string, object>>();
            var table3 = new List<Dictionary<string, object>>();
            var table4 = new List<Dictionary<string, object>>();

            if (ds.Tables.Count > 0)
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

            if (ds.Tables.Count > 1)
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
            if (ds.Tables.Count > 2)
            {
                foreach (DataRow row in ds.Tables[2].Rows)
                {
                    var dict = new Dictionary<string, object>();

                    foreach (DataColumn col in ds.Tables[2].Columns)
                    {
                        dict[col.ColumnName] = row[col];
                    }

                    table3.Add(dict);
                }
            }
            if (ds.Tables.Count > 3)
            {
                foreach (DataRow row in ds.Tables[3].Rows)
                {
                    var dict = new Dictionary<string, object>();

                    foreach (DataColumn col in ds.Tables[3].Columns)
                    {
                        dict[col.ColumnName] = row[col];
                    }

                    table3.Add(dict);
                }
            }
            var result = new
            {
                table1 = table1,
                table2 = table2,
                table3 = table3,
                table4 = table4
            };

            return await Task.FromResult(result);
        }
    }
}
