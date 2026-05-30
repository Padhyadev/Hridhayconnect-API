namespace Hridhayconnect.Infra
{
    public class CommonViewModel
    {
        public bool IsSuccess { get; set; } = false;
        public bool IsConfirm { get; set; } = false;
        public int StatusCode { get; set; } = ResponseStatusCode.Error;
        //  public string? Status { get; set; }
        public string? Message { get; set; }
        public object? Data { get; set; }

    }
    public class ApiResponseModel
    {
        public int StatusCode { get; set; }
        public string Message { get; set; }
        public bool IsSuccess { get; set; }

        public dynamic Data { get; set; }
        public dynamic Data1 { get; set; }
        public dynamic Data2 { get; set; }
        public dynamic Data3 { get; set; }
        public dynamic Data4 { get; set; }
        public dynamic Data5 { get; set; }


        public ApiResponseModel()
        {
            Message = ResponseStatusMessage.Error;
            IsSuccess = false;
            StatusCode = ResponseStatusCode.Error;

            Data = null;
            Data1 = null;
            Data2 = null;
            Data3 = null;
            Data4 = null;
            Data5 = null;
        }
    }
}
