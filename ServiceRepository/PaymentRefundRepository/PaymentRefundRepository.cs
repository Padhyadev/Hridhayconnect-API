using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Microsoft.Data.SqlClient;

namespace Hridhayconnect.ServiceRepository.PaymentRefundRepository
{
    public interface IPaymentRefundRepository
    {
        Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveRefund(PaymentRefund refund);
    }

    public class PaymentRefundRepository : IPaymentRefundRepository
    {
        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SaveRefund(PaymentRefund refund)
        {
            try
            {
                List<SqlParameter> oParams = new()
                {
                    new SqlParameter("@PaymentTransactionId", refund.PaymentTransactionId),
                    new SqlParameter("@RazorpayRefundId", refund.RazorpayRefundId),
                    new SqlParameter("@RefundAmount", refund.RefundAmount),
                    new SqlParameter("@RefundStatus", refund.RefundStatus),
                    new SqlParameter("@RefundReason", refund.RefundReason),
                    new SqlParameter("@RefundResponseLog", refund.RefundResponseLog ?? (object)DBNull.Value),
                    new SqlParameter("@RefundDate", refund.RefundDate),
                    new SqlParameter("@OperatedBy", AppHttpContextAccessor.CustomerId)
                };

                var result = DataContext.ExecuteStoredProcedure(
                    "SP_PaymentRefund_Save",
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
