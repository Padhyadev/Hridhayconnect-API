using Hridhayconnect.Infra;
using Hridhayconnect.ServiceRepository.AttributeRepository;
using Hridhayconnect.ServiceRepository.CartRepository;
using Hridhayconnect.ServiceRepository.CategoryRepository;
using Hridhayconnect.ServiceRepository.ChangePasswordRepository;
using Hridhayconnect.ServiceRepository.ContactUsRepository;
using Hridhayconnect.ServiceRepository.CountryRepository;
using Hridhayconnect.ServiceRepository.CouponRepository;
using Hridhayconnect.ServiceRepository.CustomerRepository;
using Hridhayconnect.ServiceRepository.DashboardRepository;
using Hridhayconnect.ServiceRepository.HomePageRepository;
using Hridhayconnect.ServiceRepository.HomeRepository;
using Hridhayconnect.ServiceRepository.InquiryRepository;
using Hridhayconnect.ServiceRepository.LovRepository;
using Hridhayconnect.ServiceRepository.MenuAccessRepository;
using Hridhayconnect.ServiceRepository.MenuRepository;
using Hridhayconnect.ServiceRepository.NotificationRepository;
using Hridhayconnect.ServiceRepository.OrderRewardSlabRepository;
using Hridhayconnect.ServiceRepository.OrdersRepository;
using Hridhayconnect.ServiceRepository.PaymentRefundRepository;
using Hridhayconnect.ServiceRepository.PaymentTransactionRepository;
using Hridhayconnect.ServiceRepository.ProductRepository;
using Hridhayconnect.ServiceRepository.ProductStockRepository;
using Hridhayconnect.ServiceRepository.ReviewsRepository;
using Hridhayconnect.ServiceRepository.RewardRepository;
using Hridhayconnect.ServiceRepository.RoleRepository;
using Hridhayconnect.ServiceRepository.StateRepository;
using Hridhayconnect.ServiceRepository.UserRepository;
using Hridhayconnect.ServiceRepository.WishlistRepository;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.DataProtection;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using System.Text;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

//for CROS_Po
builder.Services.AddCors(options =>
{
    options.AddPolicy("CorsPolicy", builder =>
    {
          builder.AllowAnyOrigin()
       // builder.WithOrigins("http://localhost:3000")
                 .AllowAnyMethod()
               .AllowAnyHeader();
    });
});
builder.Services.AddHttpClient();
builder.Services.AddHttpContextAccessor();
builder.Services.AddDataProtection();
builder.Services.AddDbContext<DataContextDB>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DataConnection")));

builder.Services.Configure<JwtSettings>(builder.Configuration.GetSection("JwtSettings"));
var jwtSettings = builder.Configuration.GetSection("JwtSettings").Get<JwtSettings>();
var key = Encoding.ASCII.GetBytes(jwtSettings.Key);

builder.Services.AddAuthentication(options =>
{
    options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
    options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
})
.AddJwtBearer(options =>
{
    options.TokenValidationParameters = new TokenValidationParameters
    {
        ValidateIssuer = true,
        ValidateAudience = true,
        ValidateLifetime = true,
        ValidateIssuerSigningKey = true,
        ValidIssuer = jwtSettings.Issuer,
        ValidAudience = jwtSettings.Audience,
        IssuerSigningKey = new SymmetricSecurityKey(key),
        ClockSkew = TimeSpan.Zero //For Removie extra 5 Minutes
    };
});

builder.Services.AddSwaggerGen(c =>
{
    c.SwaggerDoc("v1", new OpenApiInfo
    {
        Title = "Hridhayconnect API",
        Version = "v1"
    });

    c.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
    {
        Name = "Authorization",
        Type = SecuritySchemeType.Http,
        Scheme = "Bearer",
        BearerFormat = "JWT",
        In = ParameterLocation.Header,
        Description = "Enter 'Bearer' [space] and then your valid token.\nExample: Bearer abcdef12345"
    });

    c.AddSecurityRequirement(new OpenApiSecurityRequirement
    {
        {
            new OpenApiSecurityScheme
            {
                Reference = new OpenApiReference
                {
                    Type = ReferenceType.SecurityScheme,
                    Id = "Bearer"
                }
            },
            Array.Empty<string>()
        }
    });
});





builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();

builder.Services.AddScoped(typeof(IRepositoryBase<>), typeof(RepositoryBase<>));
builder.Services.AddScoped<IUserRepository, UserRepository>();
builder.Services.AddScoped<IRoleRepository, RoleRepository>();
builder.Services.AddScoped<IMenuRepository, MenuRepository>();
builder.Services.AddScoped<IMenuAccessRepo, MenuAccessRepo>();
builder.Services.AddScoped<IChangePasswordRepository, ChangePasswordRepository>();
builder.Services.AddScoped<ILovRepository, LovRepository>();
builder.Services.AddScoped<IAttibuteRepository,AttributeRepository>();
builder.Services.AddScoped<IHomeRepository,HomeRepository>();
builder.Services.AddScoped<ICartRepository,CartRepository>();
builder.Services.AddScoped<ICategoryRepository,CategoryRepository>();
builder.Services.AddScoped<ICouponRepository,CouponRepository>();
builder.Services.AddScoped<ICustomerRepository,CustomerRepository>();
builder.Services.AddScoped<IDashboardRepository,DashboardRepository>();
builder.Services.AddScoped<IInquiryRepository,InquiryRepository>();
builder.Services.AddScoped<IOrdersRepository,OrdersRepository>();
builder.Services.AddScoped<IProductRepository,ProductRepository>();
builder.Services.AddScoped<IProductStockRepository,ProductStockRepository>();
builder.Services.AddScoped<IReviewsRepository,ReviewsRepository>();
builder.Services.AddScoped<INotificationRepository, NotificationRepository>();
builder.Services.AddScoped<IRewardRepository, RewardRepository>();
builder.Services.AddScoped<IOrderRewardSlabRepository, OrderRewardSlabRepository>();
builder.Services.AddScoped<IHomePageRepository, HomePageRepository>();
builder.Services.AddScoped<IHomePageRepository, HomePageRepository>();
builder.Services.AddScoped<ValidationService>();
builder.Services.AddScoped<ICountryRepository, CountryRepository>();
builder.Services.AddScoped<IStateRepository, StateRepository>();
builder.Services.AddScoped<IWishlistRepository, WishlistRepository>();

// New add for RefundPayment
builder.Services.AddScoped<IPaymentTransactionRepository, PaymentTransactionRepository>();
builder.Services.AddScoped<IPaymentRefundRepository, PaymentRefundRepository>();


builder.Services.AddScoped<IContactUsRepository,ContactUsRepository>();


//builder.Services.AddSwaggerGen();

var app = builder.Build();

AppHttpContextAccessor.Configure(
    app.Services.GetRequiredService<IHttpContextAccessor>(),
    app.Services.GetRequiredService<IHostEnvironment>(),
    app.Services.GetRequiredService<IWebHostEnvironment>(),
    app.Services.GetRequiredService<IDataProtectionProvider>(),
    app.Configuration,
    app.Services.GetRequiredService<IHttpClientFactory>()
);


// Configure the HTTP request pipeline.
//if (app.Environment.IsDevelopment())
//{
//    app.UseSwagger();
//    app.UseSwaggerUI();
//}
//app.UseSwagger();

//app.UseSwaggerUI(c =>
//{
//    c.SwaggerEndpoint("/swagger/v1/swagger.json", "Hridhayconnect API V1");
//});

//app.MapGet("/", () => Results.Redirect("/swagger")); 
app.UseSwagger();

app.UseSwaggerUI(c =>
{
    c.SwaggerEndpoint("/swagger/v1/swagger.json", "Hridhayconnect API V1");
    c.RoutePrefix = "swagger"; // https://localhost:7103/swagger
});

app.MapGet("/", (HttpContext context) =>
{
    return Results.Redirect($"{context.Request.Scheme}://{context.Request.Host}/swagger");
});
app.UseStaticFiles();
app.UseHttpsRedirection();
app.UseCors("CorsPolicy");
//app.UseAuthorization();
app.UseAuthentication();
app.UseAuthorization();

app.MapGet("/health", () => Results.Ok("OK")); // new add simple liveness probe
app.MapControllers();

app.Run();
