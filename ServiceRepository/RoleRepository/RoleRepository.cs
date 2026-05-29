using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using JewelryStore.Infra;
using Microsoft.Data.SqlClient;
using System.Data;

namespace Hridhayconnect.ServiceRepository.RoleRepository
{
    public class RoleRepository : IRoleRepository
    {
        private readonly DataContextDB _context;
        private readonly IRepositoryBase<Role> _repositoryBase;

        public RoleRepository(DataContextDB context,
                              IRepositoryBase<Role> repositoryBase)
        {
            _context = context;
            _repositoryBase = repositoryBase;
        }

        public async Task<object> GetAllRoles(PagingRequest request)
        {
            var oParams = new List<SqlParameter>()
            {
                new SqlParameter("@Id", DBNull.Value),
                new SqlParameter("@Search", request.Search),
                new SqlParameter("@Start", request.Start),
                new SqlParameter("@Length", request.Length),
                new SqlParameter("@SortColumnIndex", request.SortColumnIndex),
                new SqlParameter("@SortDirection", request.SortDirection)
            };

            DataSet ds = DataContext.ExecuteStoredProcedure_DataSet("SP_Roles_Get", oParams);

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

        public async Task<Role?> GetRoleById(long id)
        {
            Role? role = null;

            var oParams = new List<SqlParameter>()
            {
                new SqlParameter("@Id", id)
            };

            DataTable dt = DataContext.ExecuteStoredProcedure_DataTable(
                "SP_Roles_Get",
                oParams);

            if (dt.Rows.Count > 0)
            {
                var dr = dt.Rows[0];

                role = new Role
                {
                    Id = Convert.ToInt32(dr["Id"]),
                    RoleName = dr["RoleName"]?.ToString(),
                    Description = dr["Description"]?.ToString(),
                    SelectedMenu = dr["SelectedMenu"]?.ToString(),
                    IsActive = Convert.ToBoolean(dr["IsActive"])
                };
            }

            return await Task.FromResult(role);
        }

        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveRole(Role role)
        {
            List<SqlParameter> oParams = new()
            {
                new SqlParameter("Id", role.Id),
                new SqlParameter("RoleName", role.RoleName),
                new SqlParameter("Description",
                    string.IsNullOrEmpty(role.Description)
                    ? DBNull.Value
                    : role.Description),

                new SqlParameter("SelectedMenu",
                    string.IsNullOrEmpty(role.SelectedMenu)
                    ? DBNull.Value
                    : role.SelectedMenu),

                new SqlParameter("IsActive", role.IsActive ? 1 : 0),

                new SqlParameter("Mode", "SAVE"),
                new SqlParameter("OperatedBy", AppHttpContextAccessor.JwtUserId)
            };

            var result = DataContext.ExecuteStoredProcedure(
                "SP_Roles_Save",
                oParams,
                true);

            return await Task.FromResult(result);
        }

        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeleteRole(long id)
        {
            List<SqlParameter> oParams = new()
            {
                new SqlParameter("Id", id),
                new SqlParameter("Mode", "DELETE"),
                new SqlParameter("OperatedBy", AppHttpContextAccessor.JwtUserId)
            };

            var result = DataContext.ExecuteStoredProcedure(
                "SP_Roles_Save",
                oParams,
                true);

            return await Task.FromResult(result);
        }
    }
}