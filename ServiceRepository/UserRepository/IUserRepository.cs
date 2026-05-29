
using Hridhayconnect.Infra;
using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using JewelryStore.Infra;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Hridhayconnect.ServiceRepository.UserRepository
{
    public interface IUserRepository
    {
        //Task<PagedResult<Users>> GetAllUsers(int start, int length, string sortColumn, string sortColumnDir, string searchValue);
        //Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> AddOrUpdateUser(Users role);
        //Task<Users?> GetUserById(long id);
        //Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeletebyUserId(long id);

        Task<object> GetAllUser(PagingRequest request);

        Task<User?> GetUserById(int id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveUser(User user);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeleteUser(long id);






        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> ResetPasswordByUsername(string username);
        Task<JsonResult> ForgetPassword(string username);

        Task<LoginResult?> ForgotPassword_GenerateOTP(string email);
        Task<LoginResult?> ForgotPassword_VerifyOTP(string email, int otp);
        Task<LoginResult?> ForgotPassword_ResetPassword(string email, string newPassword);
    }
}
