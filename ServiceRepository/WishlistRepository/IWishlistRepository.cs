using Hridhayconnect.Infra;
using Hridhayconnect.Models;

namespace Hridhayconnect.ServiceRepository.WishlistRepository
{
    public interface IWishlistRepository
    {
        Task<object> GetAllWishlist();

        Task<Wishlist?> GetWishlistById(int id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> AddWishlist(Wishlist model);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> RemoveWishlist(int id);
    }
}
