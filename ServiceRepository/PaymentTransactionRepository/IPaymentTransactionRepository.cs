using Hridhayconnect.Models;

namespace Hridhayconnect.ServiceRepository.PaymentTransactionRepository
{
    public interface IPaymentTransactionRepository
    {
        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SavePaymentTransaction(PaymentTransaction payment);

        Task<PaymentTransaction?> GetPaymentTransactionByOrderId(int orderId);

        Task<(bool IsSuccess, string Message)> UpdatePaymentStatus(
    int paymentTransactionId,
    string paymentStatus);


    }
}
