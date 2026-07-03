using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Microsoft.Data.SqlClient;
using System.Data;

namespace Hridhayconnect.ServiceRepository.ContactUsRepository
{
    public class ContactUsRepository : IContactUsRepository
    {
        public async Task<object> GetAllContactUs(PagingRequest request)
        {
            var oParams = new List<SqlParameter>()
    {
        new("@ContactId", DBNull.Value),
        new("@Search", request.Search),
        new("@Start", request.Start),
        new("@Length", request.Length),
        new("@SortColumnIndex", request.SortColumnIndex),
        new("@SortDirection", request.SortDirection)
    };

            DataSet ds = DataContext.ExecuteStoredProcedure_DataSet("SP_ContactUs_Get", oParams);

            var table1 = new List<Dictionary<string, object>>();
            var table2 = new List<Dictionary<string, object>>();

            if (ds.Tables.Count > 0)
            {
                foreach (DataRow row in ds.Tables[0].Rows)
                {
                    var dict = new Dictionary<string, object>();

                    foreach (DataColumn col in ds.Tables[0].Columns)
                        dict[col.ColumnName] = row[col];

                    table1.Add(dict);
                }
            }

            if (ds.Tables.Count > 1)
            {
                foreach (DataRow row in ds.Tables[1].Rows)
                {
                    var dict = new Dictionary<string, object>();

                    foreach (DataColumn col in ds.Tables[1].Columns)
                        dict[col.ColumnName] = row[col];

                    table2.Add(dict);
                }
            }

            return new
            {
                table1,
                table2
            };
        }

        public async Task<ContactUs?> GetContactUsById(long id)
        {
            ContactUs? contact = null;

            var oParams = new List<SqlParameter>()
    {
        new("@ContactId", id)
    };

            DataTable dt = DataContext.ExecuteStoredProcedure_DataTable("SP_ContactUs_Get", oParams);

            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];

                contact = new ContactUs()
                {
                    ContactId = (int)Convert.ToInt64(dr["ContactId"]),
                    Name = dr["Name"]?.ToString(),
                    Email = dr["Email"]?.ToString(),
                    MobileNumber = dr["MobileNumber"]?.ToString(),
                    Subject = dr["Subject"]?.ToString(),
                    Message = dr["Message"]?.ToString(),
                    IsActive = Convert.ToBoolean(dr["IsActive"])
                };
            }

            return contact;
        }

        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveContactUs(ContactUs contact)
        {
            List<SqlParameter> oParams = new()
    {
        new("@ContactId", contact.ContactId),
        new("@Name", contact.Name),
        new("@Email", contact.Email),
        new("@MobileNumber", contact.MobileNumber),
        new("@Subject", contact.Subject),
        new("@Message", contact.Message),
        new("@IsActive", contact.IsActive),
        new("@OperatedBy", AppHttpContextAccessor.CustomerId)
    };

            var result = DataContext.ExecuteStoredProcedure("SP_ContactUs_Save", oParams, true);

            return result;
        }

        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeleteContactUs(long contactId)
        {
            List<SqlParameter> oParams = new()
    {
        new("@ContactId", contactId),
        new("@OperatedBy", AppHttpContextAccessor.CustomerId)
    };

            var result = DataContext.ExecuteStoredProcedure("SP_ContactUs_Delete", oParams, true);

            return result;
        }
    }
}
