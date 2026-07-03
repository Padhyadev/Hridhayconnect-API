using Hridhayconnect.Infra;
using Hridhayconnect.Models;
using Microsoft.Data.SqlClient;
using System.Data;

namespace Hridhayconnect.ServiceRepository.PaymentTransactionRepository
{
    public class PaymentTransactionRepository : IPaymentTransactionRepository
    {
        public async Task<(bool IsSuccess, string Message, long Id, List<string> Extra)> SavePaymentTransaction(PaymentTransaction payment)
        {
            try
            {
                List<SqlParameter> oParams = new()
                {
                    new SqlParameter("@OrderId", payment.OrderId),
                    new SqlParameter("@PaymentGateway", payment.PaymentGateway),
                    new SqlParameter("@RazorpayOrderId", payment.RazorpayOrderId),
                    new SqlParameter("@RazorpayPaymentId", payment.RazorpayPaymentId),
                    new SqlParameter("@RazorpaySignature", payment.RazorpaySignature),
                    new SqlParameter("@Amount", payment.Amount),
                    new SqlParameter("@Currency", payment.Currency),
                    new SqlParameter("@PaymentStatus", payment.PaymentStatus),
                    new SqlParameter("@PaymentResponseLog", payment.PaymentResponseLog ?? (object)DBNull.Value),
                    new SqlParameter("@OperatedBy", AppHttpContextAccessor.CustomerId)
                };

                var result = DataContext.ExecuteStoredProcedure(
                    "SP_PaymentTransaction_Save",
                    oParams,
                    true);

                return await Task.FromResult(result);
            }
            catch
            {
                throw;
            }
        }


        public async Task<PaymentTransaction?> GetPaymentTransactionByOrderId(int orderId)
        {
            try
            {
                List<SqlParameter> oParams = new()
        {
            new SqlParameter("@OrderId", orderId)
        };

                var data = DataContext.ExecuteStoredProcedure_DataTable(
                    "SP_PaymentTransaction_GetByOrderId",
                    oParams);

                if (data == null || data.Rows.Count == 0)
                    return null;

                DataRow row = data.Rows[0];

                return await Task.FromResult(new PaymentTransaction
                {
                    Id = Convert.ToInt32(row["Id"]),
                    OrderId = Convert.ToInt32(row["OrderId"]),
                    PaymentGateway = Convert.ToString(row["PaymentGateway"]),
                    RazorpayOrderId = Convert.ToString(row["RazorpayOrderId"]),
                    RazorpayPaymentId = Convert.ToString(row["RazorpayPaymentId"]),
                    RazorpaySignature = Convert.ToString(row["RazorpaySignature"]),
                    Amount = Convert.ToDecimal(row["Amount"]),
                    Currency = Convert.ToString(row["Currency"]),
                    PaymentStatus = Convert.ToString(row["PaymentStatus"])
                });
            }
            catch
            {
                throw;
            }
        }

        public async Task<(bool IsSuccess, string Message)> UpdatePaymentStatus(
    int paymentTransactionId,
    string paymentStatus)
        {
            try
            {
                List<SqlParameter> oParams = new()
        {
            new SqlParameter("@Id", paymentTransactionId),
            new SqlParameter("@PaymentStatus", paymentStatus),
            new SqlParameter("@OperatedBy", AppHttpContextAccessor.CustomerId)
        };

                var result = DataContext.ExecuteStoredProcedure(
                    "SP_PaymentTransaction_UpdateStatus",
                    oParams,
                    true);

                return await Task.FromResult((result.IsSuccess, result.Message));
            }
            catch
            {
                throw;
            }
        }
    }

}
