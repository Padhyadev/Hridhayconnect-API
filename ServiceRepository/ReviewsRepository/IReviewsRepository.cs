using Hridhayconnect.Infra;
using Hridhayconnect.Models;

namespace Hridhayconnect.ServiceRepository.ReviewsRepository
{
    public interface IReviewsRepository
    {
        Task<object> GetAllReviews(ReviewPagingRequest request);

        Task<Reviews?> GetReviewsById(int id);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveReview(Reviews obj);

        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> DeleteReview(long id);
    }
}
