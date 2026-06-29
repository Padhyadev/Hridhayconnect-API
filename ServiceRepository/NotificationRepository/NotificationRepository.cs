using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Microsoft.Data.SqlClient;
using System.Data;

namespace Hridhayconnect.ServiceRepository.NotificationRepository
{
    public class NotificationRepository : INotificationRepository
    {
        public async Task<object> GetAllNotification(PagingRequest request)
        {
            try
            {
                var oParams = new List<SqlParameter>()
                {
                    new SqlParameter("@Id", DBNull.Value),
                    new SqlParameter("@CustomerId", AppHttpContextAccessor.CustomerId),
                    new SqlParameter("@Search", request.Search),
                    new SqlParameter("@Start", request.Start),
                    new SqlParameter("@Length", request.Length),
                    new SqlParameter("@SortColumnIndex", request.SortColumnIndex),
                    new SqlParameter("@SortDirection", request.SortDirection)
                };

                DataSet ds = DataContext.ExecuteStoredProcedure_DataSet("SP_Notification_Get", oParams);

                var table1 = new List<Dictionary<string, object>>();
                var table2 = new List<Dictionary<string, object>>();

                if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
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

                if (ds != null && ds.Tables.Count > 1 && ds.Tables[1].Rows.Count > 0)
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
                    table1 = table1,
                    table2 = table2
                };

                return await Task.FromResult(result);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public async Task<Notification?> GetNotificationById(int id)
        {
            try
            {
                Notification? notification = null;

                var oParams = new List<SqlParameter>()
                {
                    new SqlParameter("@Id", id)
                };

                DataTable dt = DataContext.ExecuteStoredProcedure_DataTable("SP_Notification_Get", oParams);

                if (dt.Rows.Count > 0)
                {
                    DataRow dr = dt.Rows[0];

                    notification = new Notification()
                    {
                        Id = Convert.ToInt32(dr["Id"]),
                        Message = dr["Message"]?.ToString(),
                        CreatedDate = dr["CreatedDate"] != DBNull.Value
                                        ? Convert.ToDateTime(dr["CreatedDate"])
                                        : null
                    };
                }

                return await Task.FromResult(notification);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveNotification(Notification notification)
        {
            try
            {
                List<SqlParameter> oParams = new()
                {
                    new SqlParameter("@Id", notification.Id),
                    new SqlParameter("@CustomerId", notification.CustomerId),
                    new SqlParameter("@Title", notification.Title),
                    new SqlParameter("@Message", notification.Message),
                    new SqlParameter("@OperatedBy", AppHttpContextAccessor.CustomerId)
                };

                var result = DataContext.ExecuteStoredProcedure("SP_Notification_Save", oParams, true);

                return await Task.FromResult(result);
            }
            catch (Exception)
            {
                throw;
            }
        }

        // New for Read
        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)>
    ReadNotification(int id)
        {
            try
            {
                List<SqlParameter> oParams = new()
        {
            new SqlParameter("@Id", id),
            new SqlParameter("@CustomerId", AppHttpContextAccessor.CustomerId),
            new SqlParameter("@Ids", DBNull.Value),
            new SqlParameter("@Mode", "READ"),
            new SqlParameter("@OperatedBy", AppHttpContextAccessor.CustomerId)
        };

                var result = DataContext.ExecuteStoredProcedure(
                    "SP_Notification_Master",
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
    ReadAllNotification()
        {
            try
            {
                List<SqlParameter> oParams = new()
        {
            new SqlParameter("@Id", 0),
            new SqlParameter("@CustomerId", AppHttpContextAccessor.CustomerId),
            new SqlParameter("@Ids", DBNull.Value),
            new SqlParameter("@Mode", "READALL"),
            new SqlParameter("@OperatedBy", AppHttpContextAccessor.CustomerId)
        };

                var result = DataContext.ExecuteStoredProcedure(
                    "SP_Notification_Master",
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
    DeleteNotification(int id)
        {
            try
            {
                List<SqlParameter> oParams = new()
        {
            new SqlParameter("@Id", id),
            new SqlParameter("@CustomerId", AppHttpContextAccessor.CustomerId),
            new SqlParameter("@Ids", DBNull.Value),
            new SqlParameter("@Mode", "DELETE"),
            new SqlParameter("@OperatedBy", AppHttpContextAccessor.CustomerId)
        };

                var result = DataContext.ExecuteStoredProcedure(
                    "SP_Notification_Master",
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
    BulkDeleteNotification(string ids)
        {
            try
            {
                List<SqlParameter> oParams = new()
        {
            new SqlParameter("@Id", 0),
            new SqlParameter("@CustomerId", AppHttpContextAccessor.CustomerId),
            new SqlParameter("@Ids", ids),
            new SqlParameter("@Mode", "BULKDELETE"),
            new SqlParameter("@OperatedBy", AppHttpContextAccessor.CustomerId)
        };

                var result = DataContext.ExecuteStoredProcedure(
                    "SP_Notification_Master",
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
