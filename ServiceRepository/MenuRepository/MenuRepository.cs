using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Microsoft.Data.SqlClient;
using System.Data;

namespace Hridhayconnect.ServiceRepository.MenuRepository
{
    public class MenuRepository : IMenuRepository

    {
        private readonly DataContextDB _context;
        private readonly IRepositoryBase<Menu> _repositoryBase;

        public MenuRepository(
            DataContextDB context,
            IRepositoryBase<Menu> repositoryBase)
        {
            _context = context;
            _repositoryBase = repositoryBase;
        }

        public async Task<object> GetAllMenu(PagingRequest request)
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

            DataSet ds =
                DataContext.ExecuteStoredProcedure_DataSet(
                    "SP_Menus_Get",
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

            return await Task.FromResult(new
            {
                table1,
                table2
            });
        }

        public async Task<Menu?> GetMenuById(long id)
        {
            Menu? menu = null;

            var oParams = new List<SqlParameter>()
            {
                new SqlParameter("@Id", id)
            };

            DataTable dt =
                DataContext.ExecuteStoredProcedure_DataTable(
                    "SP_Menus_Get",
                    oParams);

            if (dt.Rows.Count > 0)
            {
                var dr = dt.Rows[0];

                menu = new Menu
                {
                    Id = Convert.ToInt32(dr["Id"]),
                    ParentId = Convert.ToInt32(dr["ParentId"]),
                    Area = dr["Area"]?.ToString(),
                    Controller = dr["Controller"]?.ToString(),
                    Name = dr["Name"]?.ToString(),
                    Url = dr["Url"]?.ToString(),
                    DisplayOrder = Convert.ToInt32(dr["DisplayOrder"]),
                    IsActive = Convert.ToBoolean(dr["IsActive"])
                };
            }

            return await Task.FromResult(menu);
        }

        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)>
            SaveMenu(Menu menu)
        {
            List<SqlParameter> oParams = new()
            {
                new SqlParameter("Id", menu.Id),
                new SqlParameter("ParentId", menu.ParentId),
                new SqlParameter("Area", (object?)menu.Area ?? DBNull.Value),
                new SqlParameter("Controller", (object?)menu.Controller ?? DBNull.Value),
                new SqlParameter("Name", (object?)menu.Name ?? DBNull.Value),
                new SqlParameter("Url", (object?)menu.Url ?? DBNull.Value),
                new SqlParameter("DisplayOrder", menu.DisplayOrder),
                new SqlParameter("IsActive", menu.IsActive ? 1 : 0),

                new SqlParameter("Mode", "SAVE"),
                new SqlParameter("OperatedBy", AppHttpContextAccessor.JwtUserId)
            };

            var result =
                DataContext.ExecuteStoredProcedure(
                    "SP_Menus_Save",
                    oParams,
                    true);

            return await Task.FromResult(result);
        }

        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)>
            DeleteMenu(long id)
        {
            List<SqlParameter> oParams = new()
            {
                new SqlParameter("Id", id),
                new SqlParameter("Mode", "DELETE"),
                new SqlParameter("OperatedBy", AppHttpContextAccessor.JwtUserId)
            };

            var result =
                DataContext.ExecuteStoredProcedure(
                    "SP_Menus_Save",
                    oParams,
                    true);

            return await Task.FromResult(result);
        }
    }
    //{
    //    private readonly DataContextDB _context;
    //    private readonly IRepositoryBase<Menu> _repositoryBase;

    //    public MenuRepository(DataContextDB context, IRepositoryBase<Menu> repositoryBase)
    //    {
    //        _context = context;
    //        _repositoryBase = repositoryBase;
    //    }

    //    public async Task<PagedResult<Menu>> GetAllMenu(
    //        int start, int length, string sortColumn, string sortColumnDir, string searchValue)
    //    {
    //        try
    //        {
    //            SqlParameter[] parameters = null;

    //            var pagedResult = _repositoryBase.ExecuteWithPagination(
    //                "SP_Menu_Get",
    //                parameters,
    //                start,
    //                length,
    //                sortColumn,
    //                sortColumnDir,
    //                searchValue
    //            );

    //            return await Task.FromResult(pagedResult);
    //        }
    //        catch (Exception ex)
    //        {
    //            throw ex;
    //        }
    //    }

    //    public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> AddOrUpdateMenu(Menu menu)
    //    {
    //        try
    //        {


    //            List<SqlParameter> parameters = new()
    //            {
    //                new SqlParameter("Id", menu.Id),
    //                new SqlParameter("ParentId", menu.ParentId),
    //                new SqlParameter("Area", (object?)menu.Area ?? DBNull.Value),
    //                new SqlParameter("Controller", (object?)menu.Controller ?? DBNull.Value),
    //                new SqlParameter("Url", (object?)menu.Url ?? DBNull.Value),
    //                new SqlParameter("Name", (object?)menu.Name ?? DBNull.Value),
    //                new SqlParameter("Icon", (object?)menu.Icon ?? DBNull.Value),
    //                new SqlParameter("DisplayOrder", (object?)menu.DisplayOrder ?? DBNull.Value),
    //                new SqlParameter("IsSuperAdmin", (object?)menu.IsSuperAdmin ?? DBNull.Value),
    //                new SqlParameter("IsAdmin", (object?)menu.IsAdmin ?? DBNull.Value),
    //                new SqlParameter("Operated_By", AppHttpContextAccessor.JwtUserId),
    //                new SqlParameter("Action", menu.Id == 0 ? "INSERT" : "UPDATE")
    //            };

    //          var result = _repositoryBase.ExecuteStoredProcedurenew("SP_Menu_Save", parameters,true);

    //            return await Task.FromResult(result);
    //        }
    //        catch (Exception ex)
    //        {
    //            throw ex;
    //        }
    //    }

    //    public async Task<Menu?> GetMenuById(long id)
    //    {
    //        try
    //        {
    //            var parameters = new[]
    //            {
    //     new SqlParameter("@Id", id)
    // };

    //            var result = _repositoryBase.ExecuteSingle(
    //                "SP_Menu_Get",
    //                parameters
    //            );

    //            return await Task.FromResult(result);
    //        }
    //        catch (Exception ex)
    //        {
    //            throw ex;
    //        }

    //    }

    //    public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeleteByMenuId(long id)
    //    {
    //        try
    //        {

    //            List<SqlParameter> parameters = new()
    //            {
    //                new SqlParameter("Id", id),
    //                new SqlParameter("Operated_By", AppHttpContextAccessor.JwtUserId)
    //            };

    //            var result = _repositoryBase.ExecuteStoredProcedurenew("sp_Menu_Delete", parameters,true);

    //            return await Task.FromResult(result);
    //        }
    //        catch (Exception ex)
    //        {
    //            throw ex;
    //        }
    //    }
    //}

}
