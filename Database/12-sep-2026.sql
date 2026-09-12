USE [padhyacl_HridhayConnect]
GO
/****** Object:  View [dbo].[VW_Products]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_Products]
AS
SELECT TOP (100) PERCENT X.Id AS ProductId, X.ProductDescription, PVM.Id AS VarientId, X.ProductName, C.Id AS CategoryId, C.CategoryName, C.ParentCategoryId, STRING_AGG(AV.Value, ', ') AS VariantAttributeValues_Only, 
                  STRING_AGG(A.Name + ' : ' + AV.Value, ', ') AS VariantAttributes, PVM.SKU, PVM.Price, PI.ImagePath, ISNULL(PS.TotalAvailableStock, 0) AS TotalAvailableStock
FROM     dbo.Products AS X LEFT OUTER JOIN
                  dbo.Category AS C ON C.Id = X.CategoryId INNER JOIN
                  dbo.ProductVariantMapping AS PVM ON PVM.ProductId = X.Id LEFT OUTER JOIN
                  dbo.ProductVariantDetails AS PVD ON PVD.VariantId = PVM.Id LEFT OUTER JOIN
                  dbo.Attribute AS A ON A.Id = PVD.AttributeId LEFT OUTER JOIN
                  dbo.AttributeValue AS AV ON AV.Id = PVD.AttributeValueId LEFT OUTER JOIN
                  dbo.ProductImages AS PI ON PI.ProductId = X.Id AND PI.VariantId = PVM.Id LEFT OUTER JOIN
                      (SELECT VariantId, SUM(ISNULL(AvailableStock, 0)) - SUM(ISNULL(ReservedStock, 0)) AS TotalAvailableStock
                       FROM      dbo.ProductStock
                       GROUP BY VariantId) AS PS ON PS.VariantId = PVM.Id
WHERE  (X.IsActive = 1) AND (PVM.IsActive = 1) AND (C.IsActive = 1) AND (X.IsDeleted = 0)
GROUP BY X.Id, X.ProductName, X.ProductDescription, C.Id, C.CategoryName, PVM.Id, PVM.ProductId, PVM.SKU, PVM.Price, PI.ImagePath, PS.TotalAvailableStock, C.ParentCategoryId
ORDER BY X.ProductName, C.CategoryName

GO
/****** Object:  Table [dbo].[Attribute]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attribute](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__Attribut__3214EC078348DF99] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttributeValue]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributeValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AttributeId] [int] NULL,
	[Value] [nvarchar](150) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[VariantId] [int] NULL,
	[Quantity] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](150) NOT NULL,
	[ParentCategoryId] [int] NOT NULL,
	[ImagePath] [nvarchar](500) NULL,
	[SKU] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__Category__3214EC07F470A8FF] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Collection]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collection](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[ParentCollectionId] [bigint] NULL,
	[Description] [nvarchar](max) NULL,
	[BannerImage] [nvarchar](500) NULL,
	[Priority] [char](1) NULL,
	[DisplayOrder] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CollectionMapping]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CollectionMapping](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CollectionId] [bigint] NOT NULL,
	[ReferenceId] [bigint] NOT NULL,
	[ReferenceType] [varchar](20) NOT NULL,
	[DisplayOrder] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactUs]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUs](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[MobileNumber] [nvarchar](20) NOT NULL,
	[Subject] [nvarchar](255) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [bigint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](100) NOT NULL,
	[CountryCode] [varchar](10) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [bigint] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coupons]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coupons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CouponCode] [nvarchar](50) NULL,
	[DiscountType] [nvarchar](20) NULL,
	[DiscountValue] [decimal](18, 2) NULL,
	[MinimumOrderAmount] [decimal](18, 2) NULL,
	[ExpiryDate] [datetime] NULL,
	[UsageLimit] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Coupons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NOT NULL,
	[MobileNo] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](500) NULL,
	[DateOfBirth] [date] NULL,
	[Gender] [nvarchar](20) NULL,
	[AddressLine1] [nvarchar](200) NULL,
	[AddressLine2] [nvarchar](200) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[Country] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[RewardCoins] [int] NOT NULL,
	[ReferralCode] [varchar](50) NULL,
	[ReferredByCustomerId] [int] NULL,
 CONSTRAINT [PK__Customer__3214EC0730886038] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerAddress]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAddress](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[AddressLine1] [nvarchar](200) NOT NULL,
	[AddressLine2] [nvarchar](200) NULL,
	[City] [nvarchar](100) NOT NULL,
	[State] [nvarchar](100) NOT NULL,
	[PostalCode] [nvarchar](20) NOT NULL,
	[Country] [nvarchar](100) NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[AddressType] [nvarchar](50) NULL,
	[MobileNo] [varchar](15) NULL,
	[AlternativeMobileNo] [varchar](15) NULL,
	[CustomerName] [nvarchar](100) NULL,
	[CountryId] [bigint] NULL,
	[StateId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerCart]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerCart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[ProductId] [int] NULL,
	[VariantId] [int] NULL,
	[AttributeId] [varchar](max) NULL,
	[Quantity] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[PackingType] [varchar](20) NULL,
 CONSTRAINT [PK__Customer__3214EC07BBC128C3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForgetPassword]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForgetPassword](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](256) NOT NULL,
	[OTP] [nvarchar](10) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ExpiryDate] [datetime] NULL,
	[IsUsed] [bit] NOT NULL,
 CONSTRAINT [PK__ForgetPa__3214EC07FF297A4A] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomePageComponent]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomePageComponent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [varchar](100) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__HomePage__3214EC07CB66197D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomePageComponentItem]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomePageComponentItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ComponentId] [int] NULL,
	[Title] [varchar](200) NULL,
	[Subtitle] [varchar](200) NULL,
	[Description] [varchar](max) NULL,
	[ImagePath] [varchar](500) NULL,
	[RedirectUrl] [varchar](500) NULL,
	[RefId] [varchar](500) NULL,
	[RefType] [varchar](50) NULL,
	[DisplayOrder] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inquiries]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inquiries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[ProductId] [int] NULL,
	[Name] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[PhoneNo] [varchar](10) NULL,
	[Subject] [nvarchar](200) NULL,
	[Message] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[Inquiry_Date] [datetime2](7) NULL,
	[AdminReply] [nvarchar](max) NULL,
	[Replied_Date] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Inquiries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InquiryReplies]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InquiryReplies](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[InquiryId] [bigint] NULL,
	[ReplyBy] [bigint] NULL,
	[ReplyMessage] [nvarchar](max) NULL,
	[ReplyDate] [datetime2](7) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InquiryStatusHistory]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InquiryStatusHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[InquiryId] [bigint] NOT NULL,
	[OldStatus] [nvarchar](20) NULL,
	[NewStatus] [nvarchar](20) NULL,
	[Remarks] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOV_MASTER]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOV_MASTER](
	[LOV_Column] [nvarchar](max) NOT NULL,
	[LOV_Code] [nvarchar](max) NOT NULL,
	[LOV_Desc] [nvarchar](max) NOT NULL,
	[DisplayOrder] [int] NULL,
	[CreatedBy] [bigint] NULL,
	[LastModifiedBy] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedDate] [datetime] NULL,
	[Display_Text] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NOT NULL,
	[Area] [nvarchar](100) NULL,
	[Controller] [nvarchar](100) NULL,
	[Url] [nvarchar](250) NULL,
	[Name] [nvarchar](150) NULL,
	[Icon] [nvarchar](150) NULL,
	[DisplayOrder] [int] NULL,
	[SuperAdmin] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotificationMaster]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Title] [varchar](200) NOT NULL,
	[Message] [varchar](max) NOT NULL,
	[IsRead] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfferApplicability]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferApplicability](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OfferId] [bigint] NULL,
	[ProductId] [bigint] NULL,
	[VariantId] [bigint] NULL,
	[CategoryId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfferBenefits]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferBenefits](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OfferId] [bigint] NULL,
	[BenefitType] [varchar](50) NULL,
	[Value] [decimal](18, 2) NULL,
	[FreeProductId] [bigint] NULL,
	[FreeQty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfferConditions]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferConditions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OfferId] [bigint] NULL,
	[ConditionType] [varchar](50) NULL,
	[ConditionValue] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OfferName] [nvarchar](200) NULL,
	[OfferType] [varchar](50) NULL,
	[DiscountType] [varchar](20) NULL,
	[DiscountValue] [decimal](18, 2) NULL,
	[MaxDiscountAmount] [decimal](18, 2) NULL,
	[MinOrderAmount] [decimal](18, 2) NULL,
	[MinQty] [int] NULL,
	[IsCouponRequired] [bit] NULL,
	[CouponCode] [nvarchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[MaxUsage] [int] NULL,
	[PerUserUsage] [int] NULL,
	[IsFirstOrderOnly] [bit] NULL,
	[IsAutoApply] [bit] NULL,
	[IsPrimeOnly] [bit] NULL,
	[AllowWithOtherOffers] [bit] NULL,
	[Priority] [int] NULL,
	[Remarks] [nvarchar](1000) NULL,
	[ApplyOnly_Category] [nvarchar](500) NULL,
	[ApplyOnly_Product] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__Offers__3214EC07B4785A29] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OfferUsage]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OfferUsage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OfferId] [int] NOT NULL,
	[RefType] [nvarchar](10) NOT NULL,
	[RefId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[UsedDate] [datetime] NOT NULL,
	[FinalDiscount] [decimal](18, 2) NULL,
 CONSTRAINT [PK__OfferUsa__3214EC07C007C3B1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDeliveryStatus]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDeliveryStatus](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[NewStatus] [nvarchar](50) NOT NULL,
	[Remarks] [nvarchar](500) NULL,
	[StatusDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [bigint] NULL,
	[LastModifiedDate] [datetime] NULL,
	[OldStatus] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NULL,
	[VariantId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderRewardSlab]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderRewardSlab](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MinPurchaseAmount] [decimal](18, 2) NULL,
	[MaxPurchaseAmount] [decimal](18, 2) NULL,
	[RewardCoins] [decimal](18, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [bigint] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[OrderNumber] [nvarchar](50) NULL,
	[OrderDate] [datetime2](7) NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[DiscountAmount] [decimal](18, 2) NULL,
	[FinalAmount] [decimal](18, 2) NULL,
	[OrderStatus] [nvarchar](50) NULL,
	[PaymentStatus] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[CustomerAddressId] [int] NULL,
	[UsedCoins] [int] NULL,
	[CoinDiscountAmount] [decimal](18, 2) NULL,
	[IsCoinRefunded] [bit] NOT NULL,
	[DeliveryFee] [decimal](18, 2) NOT NULL,
	[PaymentMode] [nvarchar](50) NULL,
	[AddressLine1] [nvarchar](200) NULL,
	[AddressLine2] [nvarchar](200) NULL,
	[City] [nvarchar](100) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[MobileNo] [nvarchar](15) NULL,
	[AlternativeMobileNo] [nvarchar](15) NULL,
	[CountryId] [bigint] NULL,
	[StateId] [bigint] NULL,
	[CancelledDate] [datetime] NULL,
	[CancelReason] [nvarchar](500) NULL,
	[ReturnedDate] [datetime] NULL,
	[ReturnReason] [nvarchar](500) NULL,
	[CancelRequestDate] [datetime] NULL,
	[CancelRequestReason] [varchar](500) NULL,
	[CancelRejectedDate] [datetime] NULL,
	[CancelRejectedReason] [varchar](500) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentRefund]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentRefund](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PaymentTransactionId] [int] NOT NULL,
	[RazorpayRefundId] [nvarchar](100) NULL,
	[RefundAmount] [decimal](18, 2) NOT NULL,
	[RefundStatus] [nvarchar](50) NOT NULL,
	[RefundReason] [nvarchar](500) NULL,
	[RefundResponseLog] [nvarchar](max) NULL,
	[RefundDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentTransaction]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTransaction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[PaymentGateway] [nvarchar](50) NOT NULL,
	[RazorpayOrderId] [nvarchar](100) NULL,
	[RazorpayPaymentId] [nvarchar](100) NULL,
	[RazorpaySignature] [nvarchar](255) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Currency] [nvarchar](10) NOT NULL,
	[PaymentStatus] [nvarchar](50) NOT NULL,
	[PaymentResponseLog] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[VariantId] [int] NOT NULL,
	[ImagePath] [nvarchar](500) NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__ProductI__3214EC0750FC14FC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPriceHistory]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPriceHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[VariantId] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[ProductName] [nvarchar](200) NULL,
	[ProductDescription] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductStock]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductStock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[VariantId] [int] NOT NULL,
	[AvailableStock] [int] NOT NULL,
	[ReservedStock] [int] NOT NULL,
	[TotalStock]  AS ([AvailableStock]-[ReservedStock]),
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductStockHistory]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductStockHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[VariantId] [int] NOT NULL,
	[ChangeType] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ReferenceId] [int] NULL,
	[ReferenceType] [nvarchar](50) NULL,
	[Remarks] [nvarchar](200) NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductVariantDetails]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductVariantDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VariantId] [int] NULL,
	[AttributeId] [int] NULL,
	[AttributeValueId] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductVariantMapping]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductVariantMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[SKU] [nvarchar](100) NULL,
	[Price] [decimal](18, 2) NULL,
	[StockQuantity] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[DiscountPercent] [decimal](5, 2) NULL,
	[SellPrice] [decimal](18, 2) NULL,
	[IsPercentagePricing] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RazorpayWebhookLog]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RazorpayWebhookLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventName] [nvarchar](100) NULL,
	[RazorpayRefundId] [nvarchar](100) NULL,
	[RazorpayPaymentId] [nvarchar](100) NULL,
	[Payload] [nvarchar](max) NULL,
	[Processed] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [bigint] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[UserId] [int] NULL,
	[Rating] [int] NULL,
	[ReviewText] [nvarchar](max) NULL,
	[IsApproved] [bit] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reward]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reward](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[RewardType] [varchar](50) NOT NULL,
	[Coins] [decimal](18, 2) NOT NULL,
	[ReferenceCustomerId] [int] NULL,
	[Remarks] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[RemainingBalance] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RewardSettings]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RewardSettings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SignupCoins] [decimal](18, 2) NOT NULL,
	[LoginCoins] [decimal](18, 2) NOT NULL,
	[ReferralCoins] [decimal](18, 2) NOT NULL,
	[ReferralJoinCoins] [decimal](18, 2) NOT NULL,
	[CoinToRupeeRate] [decimal](18, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[MaxCoinUsagePercent] [decimal](5, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RewardUsageHistory]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RewardUsageHistory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[UsedCoins] [decimal](18, 2) NOT NULL,
	[CoinAmount] [decimal](18, 2) NOT NULL,
	[Remarks] [nvarchar](500) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[RemainingBalance] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolePermissions]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePermissions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[ActionId] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryId] [bigint] NOT NULL,
	[StateName] [varchar](100) NOT NULL,
	[StateCode] [varchar](10) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [bigint] NULL,
	[LastModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_ForgetPassword]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_ForgetPassword](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](256) NOT NULL,
	[OTP] [nvarchar](10) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ExpiryDate] [datetime] NULL,
	[IsUsed] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[UserName] [nvarchar](150) NULL,
	[Password] [nvarchar](255) NULL,
	[RoleId] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[Email] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishlistCustomer]    Script Date: 12-Sep-26 10:53:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishlistCustomer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[ProductId] [int] NULL,
	[VariantId] [int] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[PackingType] [varchar](20) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Attribute] ON 
GO
INSERT [dbo].[Attribute] ([Id], [Name], [DisplayName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, N'No Variant', N'No Variant', 1, 0, 1, CAST(N'2026-06-16T17:34:26.270' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Attribute] ([Id], [Name], [DisplayName], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, N'Weight', N'Weight', 1, 0, 1, CAST(N'2026-06-16T20:28:32.120' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Attribute] OFF
GO
SET IDENTITY_INSERT [dbo].[AttributeValue] ON 
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 12, N'18K Gold', 0, 1, 1, CAST(N'2026-03-13T15:53:55.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, 12, N'22K Gold', 0, 1, 1, CAST(N'2026-03-13T15:53:55.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, 12, N'Platinum', 0, 1, 1, CAST(N'2026-03-13T15:53:55.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (62, 12, N'No Variant', 1, 0, 1, CAST(N'2026-06-16T17:34:26.277' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (63, 13, N'100', 1, 0, 1, CAST(N'2026-06-16T20:28:32.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (64, 13, N'200', 1, 0, 1, CAST(N'2026-06-16T20:28:32.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (65, 14, N'Pouch', 0, 1, 1, CAST(N'2026-06-16T20:41:50.963' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (66, 14, N'Bottle', 0, 1, 1, CAST(N'2026-06-16T20:41:50.963' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[AttributeValue] ([Id], [AttributeId], [Value], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (67, 13, N'50g', 1, 0, 1, CAST(N'2026-06-17T14:43:41.507' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[AttributeValue] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategoryId], [ImagePath], [SKU], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (15, N'Home Made Soap', 0, N'/Uploads/Category/eea03f10-88e0-4470-a002-5dd2e173a7be.webp', NULL, 1, 0, 0, CAST(N'2026-06-16T12:09:20.590' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategoryId], [ImagePath], [SKU], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (16, N'Home Made Hair Oil', 0, N'/Uploads/Category/9354f2d4-0a46-4571-9eda-93c34402453c.webp', NULL, 1, 0, 0, CAST(N'2026-06-16T15:36:03.520' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategoryId], [ImagePath], [SKU], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (17, N'Mukhwas', 0, N'/Uploads/Category/9f626862-6ea5-4871-9e25-366df7f90368.jpg', N'-mukhwas', 1, 0, 0, CAST(N'2026-06-16T20:35:44.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategoryId], [ImagePath], [SKU], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (18, N'Tea Masala', 0, N'/Uploads/Category/5c8fd71a-346b-4639-b50a-2a003bbdc379.webp', NULL, 1, 0, 2, CAST(N'2026-06-17T14:48:39.667' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [CategoryName], [ParentCategoryId], [ImagePath], [SKU], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (20, N'Hridhay Special', 0, NULL, NULL, 1, 0, 2, CAST(N'2026-06-25T12:22:51.410' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[ContactUs] ON 
GO
INSERT [dbo].[ContactUs] ([ContactId], [Name], [Email], [MobileNumber], [Subject], [Message], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [IsActive], [IsDeleted]) VALUES (1, N'Gami Vishal', N'vmgami2001@gmail.com', N'9521469528', N'For Inquery', N'Normal Testing', 0, CAST(N'2026-07-01T23:42:16.840' AS DateTime), 0, CAST(N'2026-07-01T23:42:16.840' AS DateTime), 1, 0)
GO
INSERT [dbo].[ContactUs] ([ContactId], [Name], [Email], [MobileNumber], [Subject], [Message], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [IsActive], [IsDeleted]) VALUES (2, N'vishal gami', N'dfddfddsdfd@gmail.com', N'9555555555', N'', N'', 27, CAST(N'2026-07-02T00:10:16.520' AS DateTime), 27, CAST(N'2026-07-02T00:10:16.520' AS DateTime), 1, 0)
GO
INSERT [dbo].[ContactUs] ([ContactId], [Name], [Email], [MobileNumber], [Subject], [Message], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [IsActive], [IsDeleted]) VALUES (3, N'Mr.Gami', N'vmgami2001@gmail.com', N'9510212154', N'', N'', 27, CAST(N'2026-07-02T09:33:26.370' AS DateTime), 27, CAST(N'2026-07-02T09:33:26.370' AS DateTime), 1, 0)
GO
INSERT [dbo].[ContactUs] ([ContactId], [Name], [Email], [MobileNumber], [Subject], [Message], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [IsActive], [IsDeleted]) VALUES (4, N'Mr.Gami', N'vmgami2001@gmail.com', N'9510212154', N'', N'', 0, CAST(N'2026-07-02T15:14:05.467' AS DateTime), 0, CAST(N'2026-07-02T15:14:05.467' AS DateTime), 1, 0)
GO
INSERT [dbo].[ContactUs] ([ContactId], [Name], [Email], [MobileNumber], [Subject], [Message], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [IsActive], [IsDeleted]) VALUES (5, N'Mr.Gami', N'vmgami2001@gmail.com', N'9510212154', N'Hellow', N'Demo', 0, CAST(N'2026-07-02T15:17:43.493' AS DateTime), 0, CAST(N'2026-07-02T15:17:43.493' AS DateTime), 1, 0)
GO
INSERT [dbo].[ContactUs] ([ContactId], [Name], [Email], [MobileNumber], [Subject], [Message], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [IsActive], [IsDeleted]) VALUES (6, N'Mr.Gami', N'vmgami2001@gmail.com', N'9510212154', N'Hellow', N'', 0, CAST(N'2026-07-02T15:24:49.670' AS DateTime), 0, CAST(N'2026-07-02T15:24:49.670' AS DateTime), 1, 0)
GO
SET IDENTITY_INSERT [dbo].[ContactUs] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 
GO
INSERT [dbo].[Country] ([CountryId], [CountryName], [CountryCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, N'India', N'IN', 1, 0, 1, CAST(N'2026-06-20T14:31:42.827' AS DateTime), 0, CAST(N'2026-06-20T15:22:56.063' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Coupons] ON 
GO
INSERT [dbo].[Coupons] ([Id], [CouponCode], [DiscountType], [DiscountValue], [MinimumOrderAmount], [ExpiryDate], [UsageLimit], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, N'1001', N'Flat', CAST(250.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), CAST(N'2026-06-29T00:00:00.000' AS DateTime), 1, 1, 0, 2, CAST(N'2026-03-10T19:01:40.257' AS DateTime), 2, CAST(N'2026-05-30T14:40:06.360' AS DateTime))
GO
INSERT [dbo].[Coupons] ([Id], [CouponCode], [DiscountType], [DiscountValue], [MinimumOrderAmount], [ExpiryDate], [UsageLimit], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, N'CP-1', N'Flat', CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(N'2026-03-31T00:00:00.000' AS DateTime), 30, 0, 1, 2, CAST(N'2026-03-13T14:02:06.540' AS DateTime), 2, CAST(N'2026-03-13T14:03:07.420' AS DateTime))
GO
INSERT [dbo].[Coupons] ([Id], [CouponCode], [DiscountType], [DiscountValue], [MinimumOrderAmount], [ExpiryDate], [UsageLimit], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, N'1002', N'Flat', CAST(1000.00 AS Decimal(18, 2)), CAST(12000.00 AS Decimal(18, 2)), CAST(N'2026-03-28T00:00:00.000' AS DateTime), 120, 1, 0, 2, CAST(N'2026-03-13T14:03:03.227' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Coupons] ([Id], [CouponCode], [DiscountType], [DiscountValue], [MinimumOrderAmount], [ExpiryDate], [UsageLimit], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, N'CP-1', N'Flat', CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(N'2026-03-25T00:00:00.000' AS DateTime), 24, 1, 0, 0, CAST(N'2026-03-13T18:38:48.587' AS DateTime), 0, CAST(N'2026-03-13T18:40:22.733' AS DateTime))
GO
INSERT [dbo].[Coupons] ([Id], [CouponCode], [DiscountType], [DiscountValue], [MinimumOrderAmount], [ExpiryDate], [UsageLimit], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, N'Testing', N'FLAT', CAST(100.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(N'2026-06-30T09:11:04.197' AS DateTime), 10, 0, 1, 0, CAST(N'2026-05-30T14:44:33.117' AS DateTime), 0, CAST(N'2026-05-30T14:44:59.663' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Coupons] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (1, N'Amit', N'Sharma', N'amit.sharma@gmail.com', N'9876543210', N'pOOKQSM/foM=', CAST(N'1992-05-12' AS Date), N'1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), NULL, NULL, 0, N'HRD000001', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (2, N'Priya', N'Mehta', N'priya.mehta@gmail.com', N'9898765432', N'pOOKQSM/foM=', CAST(N'1995-08-21' AS Date), N'2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), NULL, NULL, 0, N'HRD000002', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (3, N'Rahul', N'Verma', N'rahul.verma@gmail.com', N'9823456789', N'pOOKQSM/foM=', CAST(N'1990-03-15' AS Date), N'1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), NULL, NULL, 0, N'HRD000003', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (4, N'Vijay', N'Viajy', N'vijay@gmail.com', N'9182734650', N'pOOKQSM/foM=', CAST(N'1993-11-09' AS Date), N'2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), 4, CAST(N'2026-04-07T11:01:29.780' AS DateTime), 0, N'HRD000004', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (5, N'Arjun', N'Patel', N'arjun.patel@gmail.com', N'9865432109', N'pOOKQSM/foM=', CAST(N'1991-07-18' AS Date), N'1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), NULL, NULL, 0, N'HRD000005', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (6, N'Sneha', N'Reddy', N'sneha.reddy@gmail.com', N'9845678901', N'pOOKQSM/foM=', CAST(N'1996-04-27' AS Date), N'2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), NULL, NULL, 0, N'HRD000006', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (7, N'Vikram', N'Singh', N'vikram.singh@gmail.com', N'9871234567', N'pOOKQSM/foM=', CAST(N'1989-12-05' AS Date), N'1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), NULL, NULL, 0, N'HRD000007', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (8, N'Ananya', N'Iyer', N'ananya.iyer@gmail.com', N'9834567890', N'pOOKQSM/foM=', CAST(N'1997-09-14' AS Date), N'2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), NULL, NULL, 0, N'HRD000008', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (9, N'Rohan', N'Desai', N'rohan.desai@gmail.com', N'9819876543', N'pOOKQSM/foM=', CAST(N'1994-01-30' AS Date), N'1', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), NULL, NULL, 0, N'HRD000009', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (10, N'Kavya', N'Nair', N'kavya.nair@gmail.com', N'9891234567', N'pOOKQSM/foM=', CAST(N'1998-06-11' AS Date), N'2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, CAST(N'2026-03-13T16:12:26.337' AS DateTime), NULL, NULL, 0, N'HRD000010', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (11, N'Elizabeth', N'Beasley', N'gonupovesa@example.com', N'+1 (513) 323-9283', N'k5wV61ccalc=', CAST(N'2001-11-13' AS Date), N'undefined', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, CAST(N'2026-03-14T09:44:51.463' AS DateTime), 2, CAST(N'2026-03-14T10:17:49.943' AS DateTime), 0, N'HRD000011', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (12, N'Chiquita', N'Murray', N'zecu@example.com', N'+1 (386) 592-7651', NULL, CAST(N'1981-05-07' AS Date), N'undefined', N'89 Fabien Street', NULL, N'Phoenix', N'Dolores impedit soluta inventore laboris voluptatibus ex amet voluptas placeat velit autem impedit', N'Assumenda nisi sunt', N'Suscipit quis illum est libero', 0, 1, 2, CAST(N'2026-03-14T10:11:49.013' AS DateTime), 2, CAST(N'2026-03-14T10:17:41.330' AS DateTime), 0, N'HRD000012', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (13, N'Marah', N'Joyner', N'qohosav@example.com', N'+1 (442) 121-4497', NULL, CAST(N'1998-12-09' AS Date), N'F', N'15 Milton Parkway', N'Number 15', N'Minneapolis', N'Consectetur', N'Dolore cillum sit s', N'Et explicabo', 0, 1, 2, CAST(N'2026-03-18T09:25:15.227' AS DateTime), 2, CAST(N'2026-03-18T09:26:10.017' AS DateTime), 0, N'HRD000013', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (14, N'Kaval', N'Patel', N'kavalp377@gmail.com', N'9974249254', N'XD/PADfNCm2KEz5awFK9yg==', CAST(N'1995-06-15' AS Date), N'1', N'123, ABC Street', N'Near XYZ Circle', N'Ahmedabad', N'Gujarat', N'380001', N'India', 1, 0, 0, CAST(N'2026-03-18T14:00:35.093' AS DateTime), NULL, CAST(N'2026-03-20T16:31:12.787' AS DateTime), 0, N'HRD000014', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (15, N'Janvi', N'Patel', N'janvi@gmail.com', N'', N'XD/PADfNCm2KEz5awFK9yg==', NULL, N'1', N'', N'', N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-03-18T14:35:26.723' AS DateTime), NULL, NULL, 0, N'HRD000015', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (16, N'vishal', N'gami', N'vishal@gamil.com', N'1234567890', N'k5wV61ccalc=', NULL, N'1', N'Test Address', N'', N'Ahmedabad', N'Gujarat', N'380001', N'India', 1, 0, 0, CAST(N'2026-03-18T16:11:16.750' AS DateTime), NULL, NULL, 0, N'HRD000016', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (18, N'Rakesh', N'Patel', N'rakesh@gmail.com', N'', N'bxGgZmaiCY90lM78MFwvhg==', CAST(N'1998-05-15' AS Date), N'1', N'123 Main Street', N'Near Market Area', N'Ahmedabad', N'Gujarat', N'380001', N'India', 1, 0, 0, CAST(N'2026-03-19T17:30:17.970' AS DateTime), NULL, NULL, 0, N'HRD000018', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (19, N'Jignesh', N'Patel', N'', N'9456778901', N'bxGgZmaiCY90lM78MFwvhg==', CAST(N'1998-05-15' AS Date), N'1', N'123 Main Street', N'Near Market Area', N'Ahmedabad', N'Gujarat', N'380001', N'India', 1, 0, 0, CAST(N'2026-03-19T17:31:36.480' AS DateTime), NULL, NULL, 0, N'HRD000019', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (20, N'kamlesh', N'Patel', N'kamlesh@gmail.com', N'9456778902', N'bxGgZmaiCY90lM78MFwvhg==', CAST(N'1998-05-15' AS Date), N'1', N'123 Main Street', N'Near Market Area', N'Ahmedabad', N'Gujarat', N'380001', N'India', 1, 0, 0, CAST(N'2026-03-19T17:33:04.967' AS DateTime), NULL, NULL, 0, N'HRD000020', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (21, N'Vishal', N'Gami', N'vishal@gmail.com', N'', N'cN47iCxGCQMUSOvz95BccQ==', CAST(N'1998-05-15' AS Date), N'1', N'123 Main Street', N'Near Market Area', N'Ahmedabad', N'Gujarat', N'380001', N'India', 1, 0, 0, CAST(N'2026-03-19T17:57:42.950' AS DateTime), NULL, NULL, 0, N'HRD000021', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (22, N'Vishal', N'Gami', N'vishal123@gmail.com', N'', N'cN47iCxGCQMUSOvz95BccQ==', NULL, N'1', N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-03-19T19:02:33.680' AS DateTime), NULL, NULL, 0, N'HRD000022', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (23, N'GHK', N'JKJK', N'vmgami@gmail.com', N'8968686868', N'kzvagHDvzDqTZR7iHpoSTA==', NULL, N'1', N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-03-20T10:54:25.800' AS DateTime), NULL, NULL, 0, N'HRD000023', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (24, N'Parth', N'Parth', N'admin@gmail.com', N'3645215852', N'tYgbcGc9HM0=', NULL, N'1', N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-03-20T10:59:34.570' AS DateTime), NULL, NULL, 0, N'HRD000024', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (25, N'sdfvfsdvsd', N'sdfsdfsf', N'vgdgv@gmail.com', N'5214585256', N'c4tIb2fuwGg=', NULL, N'1', N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-03-20T11:06:24.377' AS DateTime), NULL, NULL, 0, N'HRD000025', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (26, N'Sagar', N'Sharma', N'vsiahl@gmail.com', N'9510212154', N'B+SmGHVXsQE=', NULL, N'1', N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-03-20T11:07:19.773' AS DateTime), NULL, NULL, 0, N'HRD000026', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (27, N'vishal', N'Gami', N'vmgami2001@gmail.com', N'9510212121', N'B+SmGHVXsQE=', NULL, N'1', N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-03-20T14:52:27.170' AS DateTime), 0, CAST(N'2026-06-24T17:23:26.673' AS DateTime), 24, N'HRD000027', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (28, N'Akshay', N'Jani', N'akshayjani9397@gmail.com', N'8155030904', N'IND8V8eAAAc=', NULL, N'1', N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-04-02T11:03:13.877' AS DateTime), NULL, NULL, 0, N'HRD000028', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (29, N'fsddsfsd', N'asccdasc', N'dguvfdgf@gmail.com', N'', N'P2jlr+/7Sm8=', NULL, N'1', N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-04-02T15:15:26.913' AS DateTime), NULL, NULL, 0, N'HRD000029', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (30, N'GHNBGHNG', N'RTGHFHFGH', N'vfvdfv@gmail.com', N'1456453645', N'P2jlr+/7Sm8=', NULL, N'1', N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-04-02T15:22:45.040' AS DateTime), NULL, NULL, 0, N'HRD000030', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (31, N'TestingF', N'TestingL', N'vmgami333@gmail.com', N'9999999999', N'gyCu4yUUyh1aTv1IQ+uNow==', CAST(N'2026-05-30' AS Date), N'1', N'GandhiNagar', N'string', N'string', N'string', N'string', N'string', 1, 0, 0, CAST(N'2026-05-30T11:18:39.213' AS DateTime), NULL, NULL, 0, N'HRD000031', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (32, N'TestingF', N'TestingL', N'vmgami33@gmail.com', N'8888888888', N'GgBGEA+CEMQ8I/dmaqkQ0A==', CAST(N'2026-05-30' AS Date), N'1', N'GandhiNagar', N'string', N'string', N'string', N'string', N'string', 1, 0, 0, CAST(N'2026-05-30T11:20:19.790' AS DateTime), NULL, NULL, 0, N'HRD000032', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (34, N'gami', N'vishal', N'vmgamitesting@gmail.com', N'9898366398', N'B+SmGHVXsQE=', CAST(N'2026-06-04' AS Date), N'1', N'Gandhinagar', N'Sector-14', N'Gandhinagar', N'Gujrat', N'364524', N'India', 1, 0, 0, CAST(N'2026-06-04T11:26:51.570' AS DateTime), NULL, NULL, 700, N'HRD000034', 27)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (35, N'gami234', N'vishal234', N'vmgamitesting567@gmail.com', N'9898368888', N'B+SmGHVXsQE=', CAST(N'2026-06-04' AS Date), N'1', N'Gandhinagar', N'Sector-14', N'Gandhinagar', N'Gujrat', N'364524', N'India', 1, 0, 0, CAST(N'2026-06-04T11:31:09.713' AS DateTime), NULL, NULL, 500, N'HRD000035', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (36, N'vishal', N'gami', N'vmgami1999@gmail.com', N'9876543244', N'B+SmGHVXsQE=', CAST(N'2026-06-20' AS Date), N'1', N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-06-20T16:50:28.960' AS DateTime), NULL, NULL, 500, N'HRD000036', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (37, N'vishal', N'Gami', N'vmgami3333@gmail.com', N'9654145214', N'fQDZdqwtTxpqUPGol3xA7g==', CAST(N'2026-06-01' AS Date), N'1', N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-06-20T18:06:04.990' AS DateTime), NULL, NULL, 500, N'HRD000037', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (38, N'KAVAL', N'PATEL', N'kavalpatel1999@gmail.com', N'9658745122', N'XD/PADfNCm2KEz5awFK9yg==', CAST(N'1999-06-15' AS Date), N'1', N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-06-26T09:19:00.647' AS DateTime), NULL, NULL, 500, N'HRD000038', NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [MobileNo], [Password], [DateOfBirth], [Gender], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RewardCoins], [ReferralCode], [ReferredByCustomerId]) VALUES (39, N'Vishal', N'Gami', N'vmgami33333@gmail.com', N'9510212158', N'J7SU5TcmWsv3QK4T9Gv/iA==', CAST(N'2001-02-20' AS Date), N'1', N'', NULL, N'', N'', N'', N'', 1, 0, 0, CAST(N'2026-08-18T15:04:30.510' AS DateTime), NULL, NULL, 500, N'HRD000039', NULL)
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerAddress] ON 
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (1, 1, N'House 1 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400001', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (2, 2, N'House 2 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400002', N'India', 1, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (3, 3, N'House 3 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400003', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (4, 4, N'House 4 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400004', N'India', 1, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (5, 5, N'House 5 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400005', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (6, 6, N'House 6 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400006', N'India', 1, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (7, 7, N'House 7 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400007', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (8, 8, N'House 8 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400008', N'India', 1, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (9, 9, N'House 9 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400009', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (10, 10, N'House 10 MG Road', NULL, N'Mumbai', N'Maharashtra', N'400010', N'India', 1, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (11, 1, N'Flat 1 Residency', NULL, N'Pune', N'Maharashtra', N'411001', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (12, 2, N'Flat 2 Residency', NULL, N'Pune', N'Maharashtra', N'411002', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (13, 3, N'Flat 3 Residency', NULL, N'Pune', N'Maharashtra', N'411003', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (14, 4, N'Flat 4 Residency', NULL, N'Pune', N'Maharashtra', N'411004', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (15, 5, N'Flat 5 Residency', NULL, N'Pune', N'Maharashtra', N'411005', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (16, 6, N'Flat 6 Residency', NULL, N'Pune', N'Maharashtra', N'411006', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (17, 7, N'Flat 7 Residency', NULL, N'Pune', N'Maharashtra', N'411007', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (18, 8, N'Flat 8 Residency', NULL, N'Pune', N'Maharashtra', N'411008', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (19, 9, N'Flat 9 Residency', NULL, N'Pune', N'Maharashtra', N'411009', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (20, 10, N'Flat 10 Residency', NULL, N'Pune', N'Maharashtra', N'411010', N'India', 0, 1, 0, 1, CAST(N'2026-03-13T16:12:47.653' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (21, 11, N'', NULL, N'', N'', N'0', N'', 1, 1, 0, 0, CAST(N'2026-03-14T09:44:51.463' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (28, 27, N'Gandhinagar', N'Sector-14', N'Gandhinagar', N'Gujrat', N'678956', N'India', 0, 1, 0, 27, CAST(N'2026-04-03T14:19:06.917' AS DateTime), 0, CAST(N'2026-06-03T12:09:02.490' AS DateTime), N'HOME', N'1234567890', N'0987654321', NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (29, 27, N'Ahemdabad ,Bapunagar', NULL, N'Ahemdabad', N'', N'654585', N'', 0, 1, 0, 27, CAST(N'2026-04-03T14:21:56.783' AS DateTime), 27, CAST(N'2026-06-22T19:27:26.683' AS DateTime), N'SHIPPING', N'9876543210', NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (32, 27, N'Ahemdabad ,Bapunagar', NULL, N'Ahemdabad', N'', N'654585', N'', 1, 1, 0, 27, CAST(N'2026-06-03T11:46:20.583' AS DateTime), 27, CAST(N'2026-06-22T19:27:26.683' AS DateTime), N'SHIPPING', N'9876543210', NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (33, 27, N'Ahemdabad ,Bapunagar', NULL, N'Ahemdabad', N'', N'654585', N'', 0, 1, 0, 0, CAST(N'2026-06-03T11:58:34.943' AS DateTime), 27, CAST(N'2026-06-22T19:27:26.683' AS DateTime), N'SHIPPING', N'9876543210', NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (36, 27, N'Ahemdabad ,Bapunagar', NULL, N'Ahemdabad', N'', N'654585', N'', 0, 1, 0, 27, CAST(N'2026-06-22T09:24:20.713' AS DateTime), 27, CAST(N'2026-06-22T19:27:26.683' AS DateTime), N'SHIPPING', N'9876543210', NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (37, 27, N'Ahemdabad ,Bapunagar', NULL, N'Ahemdabad', N'', N'654585', N'', 0, 1, 0, 27, CAST(N'2026-06-22T09:26:45.667' AS DateTime), 27, CAST(N'2026-06-22T19:27:26.683' AS DateTime), N'SHIPPING', N'9876543210', NULL, NULL, 1, 7)
GO
INSERT [dbo].[CustomerAddress] ([Id], [CustomerId], [AddressLine1], [AddressLine2], [City], [State], [PostalCode], [Country], [IsDefault], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [AddressType], [MobileNo], [AlternativeMobileNo], [CustomerName], [CountryId], [StateId]) VALUES (38, 39, N'ahemdabad', N'', N'Ahemdabad', N'', N'380061', N'', 1, 1, 0, 39, CAST(N'2026-08-18T15:45:53.303' AS DateTime), NULL, NULL, N'SHIPPING', N'9510212154', N'', NULL, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[CustomerAddress] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomerCart] ON 
GO
INSERT [dbo].[CustomerCart] ([Id], [CustomerId], [ProductId], [VariantId], [AttributeId], [Quantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [PackingType]) VALUES (49, 27, 61, 196, NULL, 1, 1, 0, 27, CAST(N'2026-07-02T22:50:47.603' AS DateTime), NULL, NULL, N'Bottle')
GO
INSERT [dbo].[CustomerCart] ([Id], [CustomerId], [ProductId], [VariantId], [AttributeId], [Quantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [PackingType]) VALUES (50, 27, 54, 187, NULL, 1, 1, 0, 27, CAST(N'2026-07-03T09:34:24.300' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[CustomerCart] ([Id], [CustomerId], [ProductId], [VariantId], [AttributeId], [Quantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [PackingType]) VALUES (51, 27, 64, 201, NULL, 2, 1, 0, 27, CAST(N'2026-07-03T10:28:59.420' AS DateTime), NULL, CAST(N'2026-07-03T10:30:01.880' AS DateTime), NULL)
GO
INSERT [dbo].[CustomerCart] ([Id], [CustomerId], [ProductId], [VariantId], [AttributeId], [Quantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [PackingType]) VALUES (52, 39, 59, 191, NULL, 1, 1, 0, 39, CAST(N'2026-08-18T15:04:47.797' AS DateTime), NULL, NULL, N'Pouch')
GO
INSERT [dbo].[CustomerCart] ([Id], [CustomerId], [ProductId], [VariantId], [AttributeId], [Quantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [PackingType]) VALUES (53, 39, 61, 195, NULL, 1, 1, 0, 39, CAST(N'2026-08-18T15:04:48.427' AS DateTime), NULL, NULL, N'Pouch')
GO
INSERT [dbo].[CustomerCart] ([Id], [CustomerId], [ProductId], [VariantId], [AttributeId], [Quantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [PackingType]) VALUES (54, 39, 60, 193, NULL, 1, 1, 0, 39, CAST(N'2026-08-18T15:45:28.660' AS DateTime), NULL, NULL, N'Pouch')
GO
SET IDENTITY_INSERT [dbo].[CustomerCart] OFF
GO
SET IDENTITY_INSERT [dbo].[ForgetPassword] ON 
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (1, N'kavalp377@gmail.com', N'412392', CAST(N'2026-03-19T12:38:15.013' AS DateTime), CAST(N'2026-03-19T12:48:15.013' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (2, N'kavalp377@gmail.com', N'393766', CAST(N'2026-03-19T12:55:44.220' AS DateTime), CAST(N'2026-03-19T13:05:44.220' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (3, N'kavalp377@gmail.com', N'517465', CAST(N'2026-03-19T12:56:35.353' AS DateTime), CAST(N'2026-03-19T13:06:35.353' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (4, N'kavalp377@gmail.com', N'982274', CAST(N'2026-03-19T12:57:51.400' AS DateTime), CAST(N'2026-03-19T13:07:51.400' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (5, N'kavalp377@gmail.com', N'743337', CAST(N'2026-03-19T13:17:05.720' AS DateTime), CAST(N'2026-03-19T13:27:05.720' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (6, N'kavalp377@gmail.com', N'705181', CAST(N'2026-03-19T13:21:25.280' AS DateTime), CAST(N'2026-03-19T13:31:25.280' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (7, N'kavalp377@gmail.com', N'758323', CAST(N'2026-03-19T13:21:43.580' AS DateTime), CAST(N'2026-03-19T13:31:43.580' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (8, N'vmgami2001@gmail.com', N'501164', CAST(N'2026-03-20T14:54:05.937' AS DateTime), CAST(N'2026-03-20T15:04:05.937' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (9, N'vmgami2001@gmail.com', N'376033', CAST(N'2026-03-20T14:56:59.037' AS DateTime), CAST(N'2026-03-20T15:06:59.037' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (10, N'vmgami2001@gmail.com', N'179457', CAST(N'2026-03-20T14:58:05.670' AS DateTime), CAST(N'2026-03-20T15:08:05.670' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (11, N'vmgami2001@gmail.com', N'251804', CAST(N'2026-03-20T14:58:31.857' AS DateTime), CAST(N'2026-03-20T15:08:31.857' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (12, N'vmgami2001@gmail.com', N'175686', CAST(N'2026-03-20T14:58:35.727' AS DateTime), CAST(N'2026-03-20T15:08:35.727' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (13, N'kavalp377@gmail.com', N'794325', CAST(N'2026-03-20T14:59:15.617' AS DateTime), CAST(N'2026-03-20T15:09:15.617' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (14, N'kavalp377@gmail.com', N'770412', CAST(N'2026-03-20T15:04:20.137' AS DateTime), CAST(N'2026-03-20T15:14:20.137' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (15, N'kavalp377@gmail.com', N'192540', CAST(N'2026-03-20T15:07:56.913' AS DateTime), CAST(N'2026-03-20T15:17:56.913' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (16, N'kavalp377@gmail.com', N'315582', CAST(N'2026-03-20T15:09:22.390' AS DateTime), CAST(N'2026-03-20T15:19:22.390' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (17, N'vmgami2001@gmail.com', N'515676', CAST(N'2026-03-20T15:11:10.320' AS DateTime), CAST(N'2026-03-20T15:21:10.320' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (18, N'vmgami2001@gmail.com', N'264448', CAST(N'2026-03-20T15:20:58.860' AS DateTime), CAST(N'2026-03-20T15:30:58.860' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (19, N'vmgami2001@gmail.com', N'798826', CAST(N'2026-03-20T15:25:42.667' AS DateTime), CAST(N'2026-03-20T15:35:42.667' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (20, N'vmgami2001@gmail.com', N'350193', CAST(N'2026-03-20T15:28:46.727' AS DateTime), CAST(N'2026-03-20T15:38:46.727' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (21, N'kavalp377@gmail.com', N'935123', CAST(N'2026-03-20T16:32:03.257' AS DateTime), CAST(N'2026-03-20T16:42:03.257' AS DateTime), 0)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (22, N'vmgami2001@gmail.com', N'520713', CAST(N'2026-03-30T12:25:08.030' AS DateTime), CAST(N'2026-03-30T12:35:08.030' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (23, N'vmgami2001@gmail.com', N'690962', CAST(N'2026-03-31T16:25:47.660' AS DateTime), CAST(N'2026-03-31T16:35:47.660' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (24, N'vmgami2001@gmail.com', N'816550', CAST(N'2026-03-31T16:28:33.120' AS DateTime), CAST(N'2026-03-31T16:38:33.120' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (25, N'vmgami2001@gmail.com', N'439258', CAST(N'2026-04-01T11:44:52.510' AS DateTime), CAST(N'2026-04-01T11:54:52.510' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (26, N'vmgami2001@gmail.com', N'199580', CAST(N'2026-04-01T11:45:45.533' AS DateTime), CAST(N'2026-04-01T11:55:45.533' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (27, N'vmgami2001@gmail.com', N'901327', CAST(N'2026-04-01T11:46:47.383' AS DateTime), CAST(N'2026-04-01T11:56:47.383' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (28, N'vmgami2001@gmail.com', N'779251', CAST(N'2026-04-06T18:19:03.643' AS DateTime), CAST(N'2026-04-06T18:29:03.643' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (29, N'vmgami2001@gmail.com', N'919024', CAST(N'2026-04-06T18:28:39.340' AS DateTime), CAST(N'2026-04-06T18:38:39.340' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (30, N'vmgami2001@gmail.com', N'906146', CAST(N'2026-04-06T18:29:32.230' AS DateTime), CAST(N'2026-04-06T18:39:32.230' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (31, N'vmgami2001@gmail.com', N'833212', CAST(N'2026-04-06T18:32:55.563' AS DateTime), CAST(N'2026-04-06T18:42:55.563' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (32, N'vmgami2001@gmail.com', N'958922', CAST(N'2026-05-30T11:20:51.297' AS DateTime), CAST(N'2026-05-30T11:30:51.297' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (33, N'vmgami2001@gmail.com', N'333903', CAST(N'2026-06-02T07:36:57.083' AS DateTime), CAST(N'2026-06-02T07:46:57.083' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (34, N'vmgami2001@gmail.com', N'557769', CAST(N'2026-06-02T07:52:55.247' AS DateTime), CAST(N'2026-06-02T08:02:55.247' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (35, N'vmgami2001@gmail.com', N'806324', CAST(N'2026-06-02T08:01:16.330' AS DateTime), CAST(N'2026-06-02T08:11:16.330' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (36, N'vmgami2001@gmail.com', N'301144', CAST(N'2026-06-02T08:01:37.643' AS DateTime), CAST(N'2026-06-02T08:11:37.643' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (37, N'vmgami2001@gmail.com', N'830960', CAST(N'2026-06-02T08:05:10.957' AS DateTime), CAST(N'2026-06-02T08:15:10.957' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (38, N'vmgami2001@gmail.com', N'852887', CAST(N'2026-06-02T08:06:02.390' AS DateTime), CAST(N'2026-06-02T08:16:02.390' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (39, N'vmgami2001@gmail.com', N'396980', CAST(N'2026-06-02T08:06:59.643' AS DateTime), CAST(N'2026-06-02T08:16:59.643' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (40, N'vmgami2001@gmail.com', N'126379', CAST(N'2026-06-02T09:17:55.820' AS DateTime), CAST(N'2026-06-02T09:27:55.820' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (41, N'vmgami2001@gmail.com', N'896953', CAST(N'2026-06-02T09:19:49.723' AS DateTime), CAST(N'2026-06-02T09:29:49.723' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (42, N'vmgami2001@gmail.com', N'169499', CAST(N'2026-06-02T09:21:18.680' AS DateTime), CAST(N'2026-06-02T09:31:18.680' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (43, N'vmgami2001@gmail.com', N'284595', CAST(N'2026-06-02T09:42:16.873' AS DateTime), CAST(N'2026-06-02T09:52:16.873' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (44, N'vmgami2001@gmail.com', N'609438', CAST(N'2026-06-02T09:43:41.333' AS DateTime), CAST(N'2026-06-02T09:53:41.333' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (45, N'vmgami2001@gmail.com', N'346353', CAST(N'2026-06-02T09:53:36.627' AS DateTime), CAST(N'2026-06-02T10:03:36.627' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (46, N'vmgami2001@gmail.com', N'982024', CAST(N'2026-06-05T18:06:45.203' AS DateTime), CAST(N'2026-06-05T18:16:45.203' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (47, N'vmgami2001@gmail.com', N'746876', CAST(N'2026-06-05T18:19:14.213' AS DateTime), CAST(N'2026-06-05T18:29:14.213' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (10046, N'vmgami2001@gmail.com', N'799477', CAST(N'2026-06-06T09:38:11.007' AS DateTime), CAST(N'2026-06-06T09:48:11.007' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (10047, N'vmgami2001@gmail.com', N'721965', CAST(N'2026-06-06T09:53:12.410' AS DateTime), CAST(N'2026-06-06T10:03:12.410' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (10048, N'vmgami2001@gmail.com', N'134832', CAST(N'2026-06-06T09:56:14.593' AS DateTime), CAST(N'2026-06-06T10:06:14.593' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (10049, N'vmgami2001@gmail.com', N'519573', CAST(N'2026-06-06T09:56:49.060' AS DateTime), CAST(N'2026-06-06T10:06:49.060' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (10050, N'vmgami2001@gmail.com', N'987244', CAST(N'2026-06-06T13:32:33.520' AS DateTime), CAST(N'2026-06-06T13:42:33.520' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (10051, N'vmgami2001@gmail.com', N'632456', CAST(N'2026-06-06T13:33:18.697' AS DateTime), CAST(N'2026-06-06T13:43:18.697' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (10052, N'vmgami2001@gmail.com', N'346696', CAST(N'2026-06-06T13:35:38.410' AS DateTime), CAST(N'2026-06-06T13:45:38.410' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (10053, N'vmgami2001@gmail.com', N'283690', CAST(N'2026-06-22T11:37:04.653' AS DateTime), CAST(N'2026-06-22T11:47:04.653' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (10054, N'vmgami2001@gmail.com', N'672649', CAST(N'2026-06-22T11:50:56.487' AS DateTime), CAST(N'2026-06-22T12:00:56.487' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (10055, N'vmgami2001@gmail.com', N'271110', CAST(N'2026-06-22T11:52:24.780' AS DateTime), CAST(N'2026-06-22T12:02:24.780' AS DateTime), 1)
GO
INSERT [dbo].[ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (10056, N'vmgami2001@gmail.com', N'952635', CAST(N'2026-06-22T12:05:42.683' AS DateTime), CAST(N'2026-06-22T12:15:42.683' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[ForgetPassword] OFF
GO
SET IDENTITY_INSERT [dbo].[HomePageComponent] ON 
GO
INSERT [dbo].[HomePageComponent] ([Id], [Key], [Name], [Type], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, N'Hero', N'Hero Banner', N'Banner', 1, 0, 1, 1, CAST(N'2026-03-18T12:56:52.783' AS DateTime), 0, CAST(N'2026-06-06T18:02:22.530' AS DateTime))
GO
INSERT [dbo].[HomePageComponent] ([Id], [Key], [Name], [Type], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, N'Category', N'Category Section', N'Category', 2, 1, 0, 1, CAST(N'2026-03-18T12:56:52.783' AS DateTime), 0, CAST(N'2026-06-18T13:09:21.760' AS DateTime))
GO
INSERT [dbo].[HomePageComponent] ([Id], [Key], [Name], [Type], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, N'Trending', N'Trending Products', N'Product', 3, 1, 0, 1, CAST(N'2026-03-18T12:56:52.783' AS DateTime), 0, CAST(N'2026-06-18T13:39:50.403' AS DateTime))
GO
INSERT [dbo].[HomePageComponent] ([Id], [Key], [Name], [Type], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, N'NewArrival', N'New Arrivals', N'Product', 4, 1, 0, 1, CAST(N'2026-03-18T12:56:52.783' AS DateTime), 0, CAST(N'2026-06-18T14:08:36.210' AS DateTime))
GO
INSERT [dbo].[HomePageComponent] ([Id], [Key], [Name], [Type], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, N'Featured', N'Featured Products', N'Product', 5, 1, 0, 1, CAST(N'2026-03-18T12:56:52.783' AS DateTime), 0, CAST(N'2026-06-18T14:16:06.527' AS DateTime))
GO
INSERT [dbo].[HomePageComponent] ([Id], [Key], [Name], [Type], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, N'BestSellers', N'Best Sellers', N'Product', 6, 1, 0, 1, CAST(N'2026-03-18T12:56:52.783' AS DateTime), 0, CAST(N'2026-06-18T14:15:09.007' AS DateTime))
GO
INSERT [dbo].[HomePageComponent] ([Id], [Key], [Name], [Type], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, N'Sale', N'Sale Products', N'Product', 7, 1, 0, 1, CAST(N'2026-03-18T12:56:52.783' AS DateTime), 2, CAST(N'2026-06-06T18:17:40.987' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[HomePageComponent] OFF
GO
SET IDENTITY_INSERT [dbo].[HomePageComponentItem] ON 
GO
INSERT [dbo].[HomePageComponentItem] ([Id], [ComponentId], [Title], [Subtitle], [Description], [ImagePath], [RedirectUrl], [RefId], [RefType], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 1, N'Demo 1 from Devloper', N'SubDemo', NULL, N'/Uploads/HomePage/a75d6fbc-7aab-4e1a-95c2-8d5944b4bc7f.png', N'/offers', NULL, N'Banner', 1, 0, 1, 1, CAST(N'2026-03-18T12:59:37.903' AS DateTime), 0, CAST(N'2026-06-06T18:02:22.593' AS DateTime))
GO
INSERT [dbo].[HomePageComponentItem] ([Id], [ComponentId], [Title], [Subtitle], [Description], [ImagePath], [RedirectUrl], [RefId], [RefType], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, 2, N'Top Categories', NULL, NULL, NULL, NULL, N'15,16,17,18', N'Category', NULL, 1, 0, 1, CAST(N'2026-03-18T12:59:37.903' AS DateTime), 0, CAST(N'2026-06-18T13:09:21.763' AS DateTime))
GO
INSERT [dbo].[HomePageComponentItem] ([Id], [ComponentId], [Title], [Subtitle], [Description], [ImagePath], [RedirectUrl], [RefId], [RefType], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, 3, N'Trending Products', NULL, NULL, NULL, NULL, N'66-206,64-200,55-188,56-189,57-190,63-199,60-194', N'Product', NULL, 1, 0, 1, CAST(N'2026-03-18T12:59:37.903' AS DateTime), 0, CAST(N'2026-06-18T13:39:50.423' AS DateTime))
GO
INSERT [dbo].[HomePageComponentItem] ([Id], [ComponentId], [Title], [Subtitle], [Description], [ImagePath], [RedirectUrl], [RefId], [RefType], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 4, N'New Arrivals', NULL, NULL, NULL, NULL, N'54-187,59-192,60-193,60-194,61-195,62-197,62-198,64-201,66-206', N'Product', NULL, 1, 0, 1, CAST(N'2026-03-18T12:59:37.903' AS DateTime), 0, CAST(N'2026-06-18T14:08:36.213' AS DateTime))
GO
INSERT [dbo].[HomePageComponentItem] ([Id], [ComponentId], [Title], [Subtitle], [Description], [ImagePath], [RedirectUrl], [RefId], [RefType], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 5, N'Featured Products', NULL, NULL, NULL, NULL, N'55-188,56-189,57-190,59-192,60-193,62-198,63-199,64-200,66-206', N'Product', NULL, 1, 0, 1, CAST(N'2026-03-18T12:59:37.903' AS DateTime), 0, CAST(N'2026-06-18T14:16:06.530' AS DateTime))
GO
INSERT [dbo].[HomePageComponentItem] ([Id], [ComponentId], [Title], [Subtitle], [Description], [ImagePath], [RedirectUrl], [RefId], [RefType], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, 6, N'Best Sellers', NULL, NULL, NULL, NULL, N'59-192,64-200,55-188,56-189,60-193,63-199,61-195', N'Product', NULL, 1, 0, 1, CAST(N'2026-03-18T12:59:37.903' AS DateTime), 0, CAST(N'2026-06-18T14:15:09.007' AS DateTime))
GO
INSERT [dbo].[HomePageComponentItem] ([Id], [ComponentId], [Title], [Subtitle], [Description], [ImagePath], [RedirectUrl], [RefId], [RefType], [DisplayOrder], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (19, 7, N'On-Sale Products', NULL, NULL, NULL, NULL, N'59-192,64-200,55-188,56-189,60-193,63-199,61-196', N'Product', NULL, 1, 0, 0, CAST(N'2026-06-18T14:48:34.973' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[HomePageComponentItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Inquiries] ON 
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 2, 102, NULL, NULL, NULL, N'Subject-1', N'How is your product', N'REP', CAST(N'2026-03-13T00:00:00.0000000' AS DateTime2), N'Yes , Blue is not available, Black , Brown and Yellow is available ', CAST(N'2026-03-16T16:37:48.6033333' AS DateTime2), 1, 1, 2, CAST(N'2026-03-13T14:05:25.503' AS DateTime), 0, CAST(N'2026-03-16T16:41:47.347' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, 0, 0, NULL, NULL, NULL, N'Product Availability', N'Is this product available in black color?', N'INP', CAST(N'2026-03-16T16:30:00.0000000' AS DateTime2), N'', CAST(N'2026-03-16T16:51:51.7300000' AS DateTime2), 0, 0, 0, CAST(N'2026-03-16T16:13:17.057' AS DateTime), 2, CAST(N'2026-03-16T16:51:51.730' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, 0, 0, NULL, NULL, NULL, N'Product Availability 1', N'Is this product available in blue color?', N'PEND', CAST(N'2026-03-16T16:20:00.0000000' AS DateTime2), NULL, NULL, 0, 0, 0, CAST(N'2026-03-16T16:26:41.510' AS DateTime), 0, CAST(N'2026-03-16T16:26:41.510' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, 0, 0, NULL, NULL, NULL, N'Product Availability 1', N'Is this product available in blue color?', N'PEND', CAST(N'2026-03-16T16:20:00.0000000' AS DateTime2), NULL, NULL, 0, 0, 0, CAST(N'2026-03-16T16:27:11.163' AS DateTime), 0, CAST(N'2026-03-16T16:27:11.163' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (9, 0, 0, NULL, NULL, NULL, N'Product Availability 1', N'Is this product available in blue color?', N'PEND', CAST(N'2026-03-16T16:20:00.0000000' AS DateTime2), NULL, NULL, 0, 0, 0, CAST(N'2026-03-16T16:28:35.843' AS DateTime), 0, CAST(N'2026-03-16T16:28:35.843' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, 0, 0, NULL, NULL, NULL, N'Product Availability-3', N'Is this product available in green color?', N'PEND', CAST(N'2026-03-16T11:30:00.0000000' AS DateTime2), NULL, NULL, 0, 0, 0, CAST(N'2026-03-16T16:55:26.157' AS DateTime), 0, CAST(N'2026-03-16T16:55:26.157' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (11, 2, 1, NULL, NULL, NULL, N'Product Inquiry', N'Is this Product Available', N'PEND', CAST(N'2026-03-16T00:00:00.0000000' AS DateTime2), NULL, NULL, 0, 1, 2, CAST(N'2026-03-16T16:56:24.317' AS DateTime), 2, CAST(N'2026-03-16T16:56:29.823' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, 0, 0, N'Kaval Patel', N'kaval@example.com', N'9876543210', N'Product Availability', N'Is this necklace available in 22K?', N'INP', CAST(N'2026-03-19T00:00:00.0000000' AS DateTime2), N'', CAST(N'2026-05-30T18:40:35.3866667' AS DateTime2), 0, 0, 0, CAST(N'2026-03-19T18:12:25.577' AS DateTime), 2, CAST(N'2026-05-30T18:40:35.387' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, 0, 1, NULL, NULL, N'', N'Testing', N'Demo testing', N'PEND', CAST(N'2026-05-30T00:00:00.0000000' AS DateTime2), N'Testing', CAST(N'2026-05-30T16:36:35.7100000' AS DateTime2), 0, 0, 0, CAST(N'2026-05-30T16:29:58.697' AS DateTime), 0, CAST(N'2026-05-30T16:36:35.710' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (14, 27, 1, N'string', N'vmgami2001@gmail.com', N'9645125485', N'testing for devloper', N'message testing', N'COMP', CAST(N'2026-05-30T12:49:16.0566667' AS DateTime2), N'', CAST(N'2026-05-30T18:38:21.1933333' AS DateTime2), 1, 0, 27, CAST(N'2026-05-30T18:24:11.130' AS DateTime), 2, CAST(N'2026-05-30T18:38:21.193' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (15, 27, 1, N'Gami Vishal', N'vmgami2001@gmail.com', N'9645125485', N'testing for devloper', N'message testing', N'COMP', CAST(N'2026-05-30T12:49:16.0566667' AS DateTime2), N'Testing', CAST(N'2026-05-30T18:39:51.8333333' AS DateTime2), 0, 1, 27, CAST(N'2026-05-30T18:30:17.790' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.690' AS DateTime))
GO
INSERT [dbo].[Inquiries] ([Id], [UserId], [ProductId], [Name], [Email], [PhoneNo], [Subject], [Message], [Status], [Inquiry_Date], [AdminReply], [Replied_Date], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (16, 27, 33, N'string', N'vmgami2001@gmail.com', N'9545125458', N'Testing', N'Testing for demo', N'PEND', CAST(N'2026-06-06T09:02:25.2933333' AS DateTime2), NULL, NULL, 1, 0, 27, CAST(N'2026-06-06T14:36:29.623' AS DateTime), 27, CAST(N'2026-06-06T14:36:29.623' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Inquiries] OFF
GO
SET IDENTITY_INSERT [dbo].[InquiryReplies] ON 
GO
INSERT [dbo].[InquiryReplies] ([Id], [InquiryId], [ReplyBy], [ReplyMessage], [ReplyDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 5, 0, N'Yes , Blue is not available, Black , Brown and Yellow is available ', CAST(N'2026-03-16T16:37:48.6033333' AS DateTime2), 1, 0, 0, CAST(N'2026-03-16T16:37:48.603' AS DateTime), 0, CAST(N'2026-03-16T16:37:48.603' AS DateTime))
GO
INSERT [dbo].[InquiryReplies] ([Id], [InquiryId], [ReplyBy], [ReplyMessage], [ReplyDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 13, 0, N'first reply', CAST(N'2026-05-30T16:31:55.3366667' AS DateTime2), 1, 0, 0, CAST(N'2026-05-30T16:31:55.337' AS DateTime), 0, CAST(N'2026-05-30T16:31:55.337' AS DateTime))
GO
INSERT [dbo].[InquiryReplies] ([Id], [InquiryId], [ReplyBy], [ReplyMessage], [ReplyDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, 14, 2, N'testing demo', CAST(N'2026-05-30T18:27:08.4933333' AS DateTime2), 1, 0, 2, CAST(N'2026-05-30T18:27:08.493' AS DateTime), 2, CAST(N'2026-05-30T18:27:08.493' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[InquiryReplies] OFF
GO
SET IDENTITY_INSERT [dbo].[InquiryStatusHistory] ON 
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, 5, N'NA', N'PEND', NULL, 0, 1, 2, CAST(N'2026-03-13T14:05:25.503' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, 6, N'NA', N'PEND', NULL, 0, 1, 0, CAST(N'2026-03-16T16:13:17.073' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (9, 7, N'NA', N'PEND', NULL, 0, 1, 0, CAST(N'2026-03-16T16:26:41.510' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, 8, N'NA', N'PEND', NULL, 0, 1, 0, CAST(N'2026-03-16T16:27:11.163' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (11, 9, N'NA', N'PEND', NULL, 0, 1, 0, CAST(N'2026-03-16T16:28:35.843' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, 5, N'PEND', N'INP', N'', 0, 1, 0, CAST(N'2026-03-16T16:36:21.850' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, 5, N'INP', N'REP', N'Yes , Blue is not available, Black , Brown and Yellow is available ', 0, 1, 0, CAST(N'2026-03-16T16:37:48.603' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (14, 6, N'PEND', N'INP', N'', 0, 1, 0, CAST(N'2026-03-16T16:42:24.620' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (15, 6, N'INP', N'INP', N'', 0, 1, 2, CAST(N'2026-03-16T16:42:56.770' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (16, 6, N'INP', N'INP', N'', 0, 1, 2, CAST(N'2026-03-16T16:51:51.730' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (17, 10, N'NA', N'PEND', NULL, 0, 1, 0, CAST(N'2026-03-16T16:55:26.157' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (18, 11, N'NA', N'PEND', NULL, 0, 1, 2, CAST(N'2026-03-16T16:56:24.317' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (19, 12, N'NA', N'PEND', NULL, 0, 1, 0, CAST(N'2026-03-19T18:12:25.590' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (20, 0, NULL, N'INP', N'', 0, 1, 0, CAST(N'2026-03-19T18:14:32.270' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (21, 13, N'NA', N'PEND', NULL, 0, 1, 0, CAST(N'2026-05-30T16:29:58.697' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (22, 13, N'PEND', N'REP', N'first reply', 0, 1, 0, CAST(N'2026-05-30T16:31:55.337' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (23, 13, N'REP', N'PEND', N'Testing', 0, 1, 0, CAST(N'2026-05-30T16:36:35.710' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (24, 14, N'NA', N'PEND', NULL, 0, 1, 27, CAST(N'2026-05-30T18:24:11.130' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (25, 14, N'PEND', N'REP', N'testing demo', 0, 1, 2, CAST(N'2026-05-30T18:27:08.493' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (26, 15, N'NA', N'PEND', NULL, 0, 1, 27, CAST(N'2026-05-30T18:30:17.803' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (27, 12, N'PEND', N'INP', N'Demo for 104', 0, 1, 0, CAST(N'2026-05-30T18:31:46.340' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (28, 12, N'INP', N'INP', N'', 0, 1, 0, CAST(N'2026-05-30T18:32:29.397' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (29, 14, N'REP', N'INP', N'Process demo', 0, 1, 2, CAST(N'2026-05-30T18:33:28.327' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (30, 15, N'PEND', N'INP', N'', 0, 1, 0, CAST(N'2026-05-30T18:35:24.190' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (31, 15, N'INP', N'INP', N'id 15', 0, 1, 0, CAST(N'2026-05-30T18:36:17.803' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (32, 15, N'INP', N'INP', N'Put into Process', 0, 1, 0, CAST(N'2026-05-30T18:37:26.643' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (33, 14, N'INP', N'COMP', N'', 0, 1, 2, CAST(N'2026-05-30T18:38:21.193' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (34, 15, N'INP', N'COMP', N'', 0, 1, 0, CAST(N'2026-05-30T18:39:28.003' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (35, 15, N'COMP', N'COMP', N'Testing', 0, 1, 0, CAST(N'2026-05-30T18:39:51.833' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (36, 12, N'INP', N'INP', N'', 0, 1, 2, CAST(N'2026-05-30T18:40:35.387' AS DateTime), 27, CAST(N'2026-05-30T18:46:21.703' AS DateTime))
GO
INSERT [dbo].[InquiryStatusHistory] ([Id], [InquiryId], [OldStatus], [NewStatus], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (37, 16, N'NA', N'PEND', NULL, 1, 0, 27, CAST(N'2026-06-06T14:36:29.870' AS DateTime), 27, CAST(N'2026-06-06T14:36:29.870' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[InquiryStatusHistory] OFF
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'OrderStatus', N'1', N'Order Placed', 1, 1, NULL, 1, 0, CAST(N'2026-06-02T10:12:52.957' AS DateTime), NULL, N'Order Status')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'OrderStatus', N'2', N'Order Confirmed', 1, 1, NULL, 1, 0, CAST(N'2026-06-02T10:19:23.617' AS DateTime), NULL, N'Order Status')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'OrderStatus', N'3', N'Processing', 1, 1, NULL, 1, 0, CAST(N'2026-06-02T10:19:36.557' AS DateTime), NULL, N'Order Status')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'OrderStatus', N'4', N'Packed', 1, 1, NULL, 1, 0, CAST(N'2026-06-02T10:19:44.740' AS DateTime), NULL, N'Order Status')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'OrderStatus', N'5', N'Shipped', 1, 1, NULL, 1, 0, CAST(N'2026-06-02T10:19:54.953' AS DateTime), NULL, N'Order Status')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'OrderStatus', N'6', N'Out For Delivery', 1, 1, NULL, 1, 0, CAST(N'2026-06-02T10:20:01.473' AS DateTime), NULL, N'Order Status')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'PaymentStatus', N'1', N'Pending', 1, 0, NULL, 1, 0, CAST(N'2026-07-01T14:05:20.513' AS DateTime), NULL, N'OrderPaymentStatus')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'OrderStatus', N'7', N'Delivered', 2, 0, NULL, 1, 0, CAST(N'2026-06-03T15:29:10.560' AS DateTime), NULL, N'Order Status')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'OrderStatus', N'8', N'Cancelled', 3, 0, NULL, 1, 0, CAST(N'2026-06-03T15:30:14.157' AS DateTime), NULL, N'Order Status')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'OrderStatus', N'9', N'Returned', 9, 0, NULL, 1, 0, CAST(N'2026-06-03T15:32:36.603' AS DateTime), NULL, N'Order Status')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'OrderStatus', N'10', N'Refund Initiated', 10, 0, NULL, 1, 0, CAST(N'2026-06-03T15:32:55.257' AS DateTime), NULL, N'Order Status')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'OrderStatus', N'11', N'Refunded', 11, 0, NULL, 1, 0, CAST(N'2026-06-03T15:33:10.273' AS DateTime), NULL, N'Order Status')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'Gender', N'1', N'Male', 1, 1, NULL, 1, 0, CAST(N'2026-06-20T17:43:06.997' AS DateTime), NULL, N'Gender')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'Gender', N'2', N'Female', 2, 1, NULL, 1, 0, CAST(N'2026-06-20T17:43:06.997' AS DateTime), NULL, N'Gender')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'PaymentMode', N'1', N'Cash On Delivery', 1, NULL, NULL, 1, 0, CAST(N'2026-06-22T14:22:42.963' AS DateTime), NULL, N'PaymentMode')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'PaymentMode', N'2', N'UPI', 2, NULL, NULL, 1, 0, CAST(N'2026-06-22T14:22:42.963' AS DateTime), NULL, N'PaymentMode')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'PaymentMode', N'3', N'Card', 3, NULL, NULL, 1, 0, CAST(N'2026-06-22T14:22:42.963' AS DateTime), NULL, N'PaymentMode')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'PaymentMode', N'4', N'Net Banking', 4, NULL, NULL, 1, 0, CAST(N'2026-06-22T14:22:42.963' AS DateTime), NULL, N'PaymentMode')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'OrderStatus', N'12', N'Cancel Request', 12, 27, NULL, 1, 0, CAST(N'2026-06-24T17:43:45.390' AS DateTime), NULL, N'Order Status')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'OrderStatus', N'13', N'Cancel Request Rejected', 13, 27, NULL, 1, 0, CAST(N'2026-06-24T17:43:45.390' AS DateTime), NULL, N'Order Status')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'PaymentStatus', N'2', N'Complete', 2, 0, NULL, 1, 0, CAST(N'2026-07-01T14:05:29.307' AS DateTime), NULL, N'OrderPaymentStatus')
GO
INSERT [dbo].[LOV_MASTER] ([LOV_Column], [LOV_Code], [LOV_Desc], [DisplayOrder], [CreatedBy], [LastModifiedBy], [IsActive], [IsDeleted], [CreatedDate], [LastModifiedDate], [Display_Text]) VALUES (N'PaymentStatus', N'3', N'Refund Successfully', 3, 0, NULL, 1, 0, CAST(N'2026-07-01T14:05:42.980' AS DateTime), NULL, N'OrderPaymentStatus')
GO
SET IDENTITY_INSERT [dbo].[Menus] ON 
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 0, NULL, NULL, NULL, N'Configuration', NULL, 1, N'1', 1, 0, 1, NULL, 1, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, 1, N'Admin', N'User', NULL, N'User', NULL, 2, N'1', 1, 0, 1, NULL, 1, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, 1, N'Admin', N'Role', NULL, N'Role', NULL, 3, N'1', 1, 0, 1, NULL, 1, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 1, N'Admin', N'Access', NULL, N'Access', NULL, 4, N'1', 0, 1, 1, NULL, 2, CAST(N'2026-03-06T13:08:50.873' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 1, N'Admin', N'Menu', NULL, N'Menu', NULL, 5, N'1', 1, 0, 1, NULL, 1, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, 0, NULL, N'Test', NULL, N'Test', NULL, 0, NULL, 0, 1, 2, CAST(N'2026-03-05T10:22:50.367' AS DateTime), 2, CAST(N'2026-03-06T13:12:50.217' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, 1, NULL, NULL, NULL, N'Test', NULL, 0, NULL, 0, 1, 2, CAST(N'2026-03-06T13:13:21.290' AS DateTime), 2, CAST(N'2026-03-06T13:13:27.330' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, 1, NULL, N'Z', NULL, N'Test', NULL, 0, NULL, 0, 1, 2, CAST(N'2026-03-06T13:15:22.820' AS DateTime), 2, CAST(N'2026-03-06T13:15:37.987' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (9, 0, N'Admin', N'Category', NULL, N'Category', NULL, 0, NULL, 1, 0, 2, CAST(N'2026-03-09T10:13:56.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, 0, N'Admin', N'Orders', NULL, N'Orders', NULL, 0, NULL, 1, 0, 2, CAST(N'2026-03-09T18:47:23.010' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (11, 0, N'Admin', N'Product', NULL, N'Product', NULL, 0, NULL, 1, 0, 0, CAST(N'2026-03-10T16:17:58.263' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, 0, N'Admin', N'Inquiry', NULL, N'Inquiry', NULL, 0, NULL, 1, 0, 2, CAST(N'2026-03-10T18:43:42.410' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, 0, N'admin', N'Attribute', NULL, N'Attribute', NULL, 0, NULL, 1, 0, 2, CAST(N'2026-03-10T18:59:09.573' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (14, 0, N'admin', N'Coupons', NULL, N'Coupon', NULL, 0, NULL, 1, 0, 2, CAST(N'2026-03-10T18:59:35.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (15, 0, N'admin', N'Reviews', NULL, N'Reviews', NULL, 0, NULL, 1, 0, 2, CAST(N'2026-03-11T12:54:50.067' AS DateTime), 2, CAST(N'2026-03-13T13:09:01.337' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (16, 0, NULL, NULL, NULL, N'Test-1', NULL, 0, NULL, 0, 1, 2, CAST(N'2026-03-13T13:47:36.320' AS DateTime), 2, CAST(N'2026-03-13T13:47:47.200' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (17, 0, NULL, NULL, NULL, N'Test-1', NULL, 0, NULL, 0, 1, 2, CAST(N'2026-03-13T13:47:54.823' AS DateTime), 2, CAST(N'2026-03-13T13:47:59.320' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (18, 1, N'Officia esse ullam q', N'Unde quidem repellen', N'Et neque exercitatio', N'Caldwell Zamora', NULL, 0, NULL, 0, 1, 2, CAST(N'2026-03-13T14:17:01.180' AS DateTime), 2, CAST(N'2026-03-13T14:17:24.570' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (19, 1, N'Error perferendis il', N'Ea aliquid voluptate', N'Deserunt et voluptat', N'Risa Douglas', NULL, 0, NULL, 1, 0, 2, CAST(N'2026-03-13T14:25:05.130' AS DateTime), 2, CAST(N'2026-03-13T14:25:13.240' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (20, 0, N'Admin', N'Customer', NULL, N'Customer', NULL, 0, NULL, 1, 0, 2, CAST(N'2026-03-14T09:31:15.903' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (21, 0, N'Admin', N'ProductStock', NULL, N'Product Stock', NULL, 0, NULL, 1, 0, 2, CAST(N'2026-03-14T11:42:03.777' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (22, 19, N'Consequatur Proiden', N'Consequatur Officii', N'Duis laborum amet d', N'Stacy Sandoval 1', NULL, 1, NULL, 0, 1, 2, CAST(N'2026-03-18T08:54:05.833' AS DateTime), 2, CAST(N'2026-03-18T08:58:16.603' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (23, 0, N'Admin', N'HomePage', NULL, N'Home Page', NULL, 10, NULL, 1, 0, 2, CAST(N'2026-03-19T08:53:09.280' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (24, 0, N'Admin', N'Offer', NULL, N'Offer', NULL, 11, NULL, 1, 0, 2, CAST(N'2026-03-20T12:34:12.897' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (25, 0, N'Testing', N'demo', N'demo', N'demo', NULL, 10, NULL, 0, 1, 2, CAST(N'2026-05-29T22:07:36.110' AS DateTime), 2, CAST(N'2026-05-29T22:07:56.493' AS DateTime))
GO
INSERT [dbo].[Menus] ([Id], [ParentId], [Area], [Controller], [Url], [Name], [Icon], [DisplayOrder], [SuperAdmin], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (26, 0, N'Testing', N'string', N'string', N'string', NULL, 0, NULL, 0, 1, 2, CAST(N'2026-05-30T09:18:35.370' AS DateTime), 2, CAST(N'2026-05-30T09:19:05.213' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Menus] OFF
GO
SET IDENTITY_INSERT [dbo].[NotificationMaster] ON 
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 27, N'Order Status Updated', N'Your order ORD-20260605143933 status has been updated to Order Confirmed.', 1, 0, 2, CAST(N'2026-06-05T14:41:59.237' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, 27, N'Order Status Updated', N'Your order ORD-20260605143933 status has been updated to Processing.', 1, 0, 2, CAST(N'2026-06-05T14:42:08.867' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, 27, N'Order Status Updated', N'Your order ORD-20260605143933 status has been updated to Packed.', 1, 0, 2, CAST(N'2026-06-05T14:42:25.793' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 27, N'Order Status Updated', N'Your order ORD-20260605143933 status has been updated to Shipped.', 1, 0, 2, CAST(N'2026-06-05T14:42:35.010' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 27, N'Order Status Updated', N'Your order ORD-20260605143933 status has been updated to Out For Delivery.', 1, 0, 2, CAST(N'2026-06-05T14:42:43.423' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, 27, N'Reward Coins Added', N'Congratulations! You have earned 500.00 reward coins for Order #ORD-20260605143933.', 1, 0, 2, CAST(N'2026-06-05T14:43:16.897' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, 27, N'Order Status Updated', N'Your order ORD-20260605143933 status has been updated to Delivered.', 1, 0, 2, CAST(N'2026-06-05T14:43:16.900' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, 27, N'Reward Coins Refunded', N'110.00 reward coins have been refunded for Order #ORD-20260605143933', 0, 1, 2, CAST(N'2026-06-05T14:44:49.600' AS DateTime), 27, CAST(N'2026-06-23T11:08:45.690' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (9, 27, N'Reward Coins Reversed', N'500.00 reward coins have been reversed because Order #ORD-20260605143933 was returned.', 0, 1, 2, CAST(N'2026-06-05T14:44:49.600' AS DateTime), 27, CAST(N'2026-06-23T11:08:45.690' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, 27, N'Order Status Updated', N'Your order ORD-20260605143933 status has been updated to Returned.', 1, 0, 2, CAST(N'2026-06-05T14:44:49.603' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (11, 27, N'Order Status Updated', N'Your order ORD-20260605150426 status has been updated to Order Confirmed.', 1, 0, 2, CAST(N'2026-06-05T15:10:34.933' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, 27, N'Order Placed Successfully', N'Your order ORD-20260605154050 has been placed successfully. Products: Infinity Charm Bracelet', 1, 0, 27, CAST(N'2026-06-05T15:40:51.260' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, 27, N'Order Placed Successfully', N'Your order ORD-20260605160848 has been placed successfully. Products: Infinity Charm Bracelet', 1, 0, 27, CAST(N'2026-06-05T16:08:49.067' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (14, 27, N'Order Placed Successfully', N'Your order ORD-20260605161055 has been placed successfully. Products: Infinity Charm Bracelet', 1, 0, 27, CAST(N'2026-06-05T16:10:55.817' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (15, 27, N'Order Placed Successfully', N'Your order ORD-20260605161444 has been placed successfully. Products: Infinity Charm Bracelet', 1, 0, 27, CAST(N'2026-06-05T16:14:45.030' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (16, 27, N'Reward Coins Added From Admin', N'You have received 90.00 reward coins from Admin. Reason: For you order from our site', 1, 0, 2, CAST(N'2026-06-05T16:34:04.070' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (17, 27, N'Order Status Updated', N'Your order ORD-20260605161444 status has been updated to Order Confirmed.', 1, 0, 0, CAST(N'2026-06-05T17:57:41.240' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (18, 27, N'Order Status Updated', N'Your order ORD-20260605161444 status has been updated to Processing.', 1, 0, 0, CAST(N'2026-06-05T18:01:21.880' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1012, 27, N'Order Placed Successfully', N'Your order ORD-20260606133016 has been placed successfully. Products: Infinity Charm Bracelet', 1, 0, 24, CAST(N'2026-06-06T13:30:19.920' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1013, 27, N'Order Placed Successfully', N'Your order ORD-20260606133942 has been placed successfully. Products: Infinity Charm Bracelet', 1, 0, 27, CAST(N'2026-06-06T13:39:43.460' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1014, 27, N'Order Placed Successfully', N'Your order ORD-20260606135954 has been placed successfully. Products: Infinity Charm Bracelet, Infinity Charm Bracelet', 1, 0, 27, CAST(N'2026-06-06T13:59:55.267' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1015, 27, N'Order Placed Successfully', N'Your order ORD-20260606141258 has been placed successfully. Products: Infinity Charm Bracelet, Infinity Charm Bracelet', 1, 0, 27, CAST(N'2026-06-06T14:12:58.360' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1016, 27, N'Order Status Updated', N'Your order ORD-20260606141258 status has been updated to Order Confirmed.', 1, 0, 0, CAST(N'2026-06-06T14:21:16.823' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1017, 27, N'Order Placed Successfully', N'Your order ORD-20260606142508 has been placed successfully. Products: Infinity Charm Bracelet', 1, 0, 27, CAST(N'2026-06-06T14:25:10.073' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1018, 27, N'Order Placed Successfully', N'Your order ORD-20260617103527 has been placed successfully. Products: Infinity Charm Bracelet', 1, 0, 0, CAST(N'2026-06-17T10:35:28.510' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1019, 27, N'Order Placed Successfully', N'Your order ORD-20260620192318 has been placed successfully. Products: Dil Khush', 1, 0, 0, CAST(N'2026-06-20T19:23:30.617' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1020, 27, N'Order Placed Successfully', N'Your order ORD-20260622112419 has been placed successfully. Products: Chocolate Mukhwas, Tea Masala', 1, 1, 0, CAST(N'2026-06-22T11:24:19.927' AS DateTime), 27, CAST(N'2026-06-23T12:45:44.093' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1021, 27, N'Order Placed Successfully', N'Your order ORD-20260622140013 has been placed successfully. Products: Neem Aloe Fresh, Digest, Tea Masala', 1, 0, 0, CAST(N'2026-06-22T14:00:14.433' AS DateTime), 27, CAST(N'2026-06-23T12:03:30.803' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1022, 27, N'Order Placed Successfully', N'Your order ORD-20260622140350 has been placed successfully. Products: Dhana Dal, Keshvedaam oil', 1, 1, 0, CAST(N'2026-06-22T14:03:50.833' AS DateTime), 27, CAST(N'2026-06-23T18:18:57.787' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1026, 27, N'Order Status Updated', N'Your order ORD-20260622140013 status has been updated to Order Confirmed.', 1, 1, 2, CAST(N'2026-06-22T15:44:56.770' AS DateTime), 27, CAST(N'2026-06-23T12:45:25.690' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1027, 27, N'Reward Coins Refunded', N'60.00 reward coins have been refunded for Order #ORD-20260622140350', 1, 1, 27, CAST(N'2026-06-22T17:36:33.603' AS DateTime), 27, CAST(N'2026-06-23T18:18:50.160' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1028, 27, N'Order Status Updated', N'Your order ORD-20260622140350 status has been updated to Cancelled.', 1, 1, 27, CAST(N'2026-06-22T17:36:33.617' AS DateTime), 27, CAST(N'2026-06-23T18:18:42.867' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1029, 27, N'Order Placed Successfully', N'Your order ORD-20260623140655 has been placed successfully. Products: Kesudo Radiance Soap', 1, 0, 0, CAST(N'2026-06-23T14:06:55.997' AS DateTime), 27, CAST(N'2026-06-23T14:21:38.740' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1030, 27, N'Order Placed Successfully', N'Your order ORD-20260625084200 has been placed successfully. Products: Beet Radiance, Chocolate Mukhwas, Keshvedaam oil', 1, 0, 0, CAST(N'2026-06-25T08:42:03.080' AS DateTime), 27, CAST(N'2026-07-02T08:52:38.160' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1031, 27, N'Order Status Updated', N'Your order ORD-20260625084200 status has been updated to Cancel Request.', 0, 0, 0, CAST(N'2026-06-25T09:02:48.040' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1032, 27, N'Order Status Updated', N'Your order ORD-20260625084200 status has been updated to Cancelled.', 0, 0, 2, CAST(N'2026-06-25T09:25:32.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1033, 27, N'Order Status Updated', N'Your order ORD-20260625084200 status has been updated to Cancelled.', 0, 0, 2, CAST(N'2026-06-25T12:18:36.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1034, 27, N'Order Placed Successfully', N'Your order ORD-20260625155449 has been placed successfully. Products: Tea Masala', 0, 0, 27, CAST(N'2026-06-25T15:54:50.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1035, 27, N'Order Placed Successfully', N'Your order ORD-20260625165112 has been placed successfully. Products: Tea Masala', 0, 0, 27, CAST(N'2026-06-25T16:51:12.673' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1036, 27, N'Order Placed Successfully', N'Your order ORD-20260625165523 has been placed successfully. Products: Tea Masala', 0, 0, 27, CAST(N'2026-06-25T16:55:23.560' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1037, 27, N'Order Placed Successfully', N'Your order ORD-20260625174907 has been placed successfully. Products: Tea Masala', 0, 0, 27, CAST(N'2026-06-25T17:49:07.133' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1038, 27, N'Order Placed Successfully', N'Your order ORD-20260625175031 has been placed successfully. Products: Tea Masala', 0, 0, 27, CAST(N'2026-06-25T17:50:31.033' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1039, 27, N'Order Placed Successfully', N'Your order ORD-20260629150453 has been placed successfully. Products: Beet Radiance, Dil Khush', 0, 0, 27, CAST(N'2026-06-29T15:04:54.390' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1040, 27, N'Order Placed Successfully', N'Your order ORD-20260629152812 has been placed successfully. Products: Neem Aloe Fresh', 0, 0, 27, CAST(N'2026-06-29T15:28:12.973' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1041, 27, N'Order Placed Successfully', N'Your order ORD-20260629155417 has been placed successfully. Products: Beet Radiance', 0, 0, 0, CAST(N'2026-06-29T15:54:17.550' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1042, 27, N'Order Placed Successfully', N'Your order ORD-20260629155804 has been placed successfully. Products: Beet Radiance', 0, 0, 0, CAST(N'2026-06-29T15:58:04.803' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1043, 27, N'Order Placed Successfully', N'Your order ORD-20260629162625 has been placed successfully. Products: Beet Radiance', 0, 0, 27, CAST(N'2026-06-29T16:26:25.353' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1044, 27, N'Order Placed Successfully', N'Your order ORD-20260629164725 has been placed successfully. Products: Beet Radiance', 0, 0, 27, CAST(N'2026-06-29T16:47:25.180' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1045, 27, N'Order Placed Successfully', N'Your order ORD-20260629174453 has been placed successfully. Products: Beet Radiance', 0, 0, 0, CAST(N'2026-06-29T17:44:53.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1046, 27, N'Order Placed Successfully', N'Your order ORD-20260629175930 has been placed successfully. Products: Glow Craft Detan', 1, 0, 0, CAST(N'2026-06-29T17:59:30.103' AS DateTime), 27, CAST(N'2026-07-02T08:52:41.720' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1047, 27, N'Order Placed Successfully', N'Your order ORD-20260629180603 has been placed successfully. Products: Digest, Dil Khush, Keshvedaam oil', 1, 0, 0, CAST(N'2026-06-29T18:06:03.430' AS DateTime), 27, CAST(N'2026-07-02T08:52:45.067' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1048, 27, N'Order Placed Successfully', N'Your order ORD-20260629190012 has been placed successfully. Products: Neem Aloe Fresh', 0, 0, 27, CAST(N'2026-06-29T19:00:12.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1049, 27, N'Order Placed Successfully', N'Your order ORD-20260629195244 has been placed successfully. Products: Digest', 1, 0, 0, CAST(N'2026-06-29T19:52:44.870' AS DateTime), 27, CAST(N'2026-07-02T08:52:51.273' AS DateTime))
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1050, 27, N'Order Placed Successfully', N'Your order ORD-20260701091643 has been placed successfully. Products: Glow Craft Detan', 0, 0, 27, CAST(N'2026-07-01T09:16:43.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1051, 27, N'Order Placed Successfully', N'Your order ORD-20260701120713 has been placed successfully. Products: Glow Craft Detan', 0, 0, 0, CAST(N'2026-07-01T12:07:13.207' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1052, 27, N'Order Placed Successfully', N'Your order ORD-20260701143442 has been placed successfully. Products: Rice & Potato Bliss', 0, 0, 27, CAST(N'2026-07-01T14:34:42.013' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1053, 27, N'Order Placed Successfully', N'Your order ORD-20260701145812 has been placed successfully. Products: Neem Aloe Fresh', 0, 0, 27, CAST(N'2026-07-01T14:58:12.723' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1054, 27, N'Order Placed Successfully', N'Your order ORD-20260701162754 has been placed successfully. Products: Digest', 0, 0, 27, CAST(N'2026-07-01T16:27:54.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1055, 27, N'Order Placed Successfully', N'Your order ORD-20260701190210 has been placed successfully. Products: Digest', 0, 0, 27, CAST(N'2026-07-01T19:02:10.797' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1056, 27, N'Order Placed Successfully', N'Your order ORD-20260702104415 has been placed successfully. Products: Neem Aloe Fresh', 0, 0, 27, CAST(N'2026-07-02T10:44:15.290' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1057, 27, N'Order Placed Successfully', N'Your order ORD-20260702112123 has been placed successfully. Products: Neem Aloe Fresh', 0, 0, 27, CAST(N'2026-07-02T11:21:23.837' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1058, 27, N'Order Placed Successfully', N'Your order ORD-20260702113338 has been placed successfully. Products: Glow Craft Detan', 0, 0, 27, CAST(N'2026-07-02T11:33:38.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[NotificationMaster] ([Id], [CustomerId], [Title], [Message], [IsRead], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1059, 27, N'Order Placed Successfully', N'Your order ORD-20260702142139 has been placed successfully. Products: Rice & Potato Bliss', 0, 0, 27, CAST(N'2026-07-02T14:21:39.413' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[NotificationMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Offers] ON 
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, N'Flat ?2000 Off Above 50K', N'ORDER', N'FLAT', CAST(2000.00 AS Decimal(18, 2)), NULL, CAST(50000.00 AS Decimal(18, 2)), NULL, 0, NULL, CAST(N'2026-03-11T19:00:27.773' AS DateTime), CAST(N'2026-06-30T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 1, 0, 1, 1, N'Cart discount', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, N'15% Off Bracelets', N'CATEGORY', N'PERCENT', CAST(15.00 AS Decimal(18, 2)), CAST(8000.00 AS Decimal(18, 2)), NULL, NULL, 0, NULL, CAST(N'2026-03-16T19:00:27.773' AS DateTime), CAST(N'2026-06-30T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, 1, 2, N'Bracelet offer', N'11,12', NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, N'?5000 Off Premium Products', N'PRODUCT', N'FLAT', CAST(5000.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0, NULL, CAST(N'2026-03-16T19:00:27.773' AS DateTime), CAST(N'2026-06-30T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, 0, 3, N'Premium products', NULL, N'35,36,37', 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, N'10% Mixed Offer', N'MIXED', N'PERCENT', CAST(10.00 AS Decimal(18, 2)), CAST(6000.00 AS Decimal(18, 2)), NULL, NULL, 0, NULL, CAST(N'2026-03-16T19:00:27.773' AS DateTime), CAST(N'2026-06-30T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, 1, 4, N'Mixed', N'8,9', N'25,26,30', 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, N'FIRST25 Coupon', N'ORDER', N'PERCENT', CAST(25.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), NULL, NULL, 1, N'FIRST25', CAST(N'2026-03-20T19:00:27.773' AS DateTime), CAST(N'2026-08-20T19:00:27.773' AS DateTime), NULL, NULL, 1000, 1, 1, 0, 0, 0, 1, N'First order coupon', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, N'Wedding Combo Offer', N'COMBO', N'PERCENT', CAST(20.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(80000.00 AS Decimal(18, 2)), 2, 0, NULL, CAST(N'2026-03-16T19:00:27.773' AS DateTime), CAST(N'2026-08-20T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, N'Wedding set', N'11,9', NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, N'Weekend Flash 25%', N'TIME', N'PERCENT', CAST(25.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), NULL, NULL, 0, NULL, CAST(N'2026-03-20T19:00:27.773' AS DateTime), CAST(N'2026-08-20T19:00:27.773' AS DateTime), CAST(N'08:00:00' AS Time), CAST(N'23:59:00' AS Time), NULL, 1, 0, 0, 0, 1, 1, N'Weekend sale', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, N'Diwali 30% OFF', N'ORDER', N'PERCENT', CAST(30.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), NULL, 1, N'DIWALI30', CAST(N'2026-03-19T19:00:27.773' AS DateTime), CAST(N'2026-08-20T19:00:27.773' AS DateTime), NULL, NULL, 500, 5, 0, 0, 0, 0, 1, N'Festival', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (9, N'Buy 3 Get 10%', N'QTY', N'PERCENT', CAST(10.00 AS Decimal(18, 2)), CAST(8000.00 AS Decimal(18, 2)), NULL, 3, 0, NULL, CAST(N'2026-03-11T19:00:27.773' AS DateTime), CAST(N'2026-08-20T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, 1, 2, N'Bulk', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, N'Prime Extra 5%', N'ORDER', N'PERCENT', CAST(5.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), NULL, NULL, 0, NULL, CAST(N'2026-03-20T19:00:27.773' AS DateTime), CAST(N'2026-08-20T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 1, 1, 3, N'Prime', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (11, N'First Order ?2500 OFF', N'ORDER', N'FLAT', CAST(2500.00 AS Decimal(18, 2)), NULL, CAST(20000.00 AS Decimal(18, 2)), NULL, 0, NULL, CAST(N'2026-03-20T19:00:27.773' AS DateTime), CAST(N'2026-06-30T19:00:27.773' AS DateTime), NULL, NULL, NULL, 1, 1, 0, 0, 0, 1, N'New users', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, N'?7000 Off Above 1L', N'ORDER', N'FLAT', CAST(7000.00 AS Decimal(18, 2)), NULL, CAST(100000.00 AS Decimal(18, 2)), NULL, 0, NULL, CAST(N'2026-03-20T19:00:27.773' AS DateTime), CAST(N'2026-06-30T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, 0, 2, N'High cart', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, N'20% OFF Earrings', N'CATEGORY', N'PERCENT', CAST(20.00 AS Decimal(18, 2)), CAST(7000.00 AS Decimal(18, 2)), NULL, NULL, 0, NULL, CAST(N'2026-03-19T19:00:27.773' AS DateTime), CAST(N'2026-06-30T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, 1, 2, N'Earrings', N'8,9', NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (14, N'Limited ?1000 OFF', N'ORDER', N'FLAT', CAST(148.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0, NULL, CAST(N'2026-03-20T19:00:27.773' AS DateTime), CAST(N'2026-07-30T19:00:27.773' AS DateTime), NULL, NULL, 50, 5, 0, 0, 0, 0, 1, N'Limited usage', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Offers] ([Id], [OfferName], [OfferType], [DiscountType], [DiscountValue], [MaxDiscountAmount], [MinOrderAmount], [MinQty], [IsCouponRequired], [CouponCode], [StartDate], [EndDate], [StartTime], [EndTime], [MaxUsage], [PerUserUsage], [IsFirstOrderOnly], [IsAutoApply], [IsPrimeOnly], [AllowWithOtherOffers], [Priority], [Remarks], [ApplyOnly_Category], [ApplyOnly_Product], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (15, N'Extra 2% Stackable', N'ORDER', N'PERCENT', CAST(2.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), NULL, NULL, 0, NULL, CAST(N'2026-03-20T19:00:27.773' AS DateTime), CAST(N'2026-08-20T19:00:27.773' AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, 1, 5, N'Stackable', NULL, NULL, 1, 0, 1, CAST(N'2026-03-21T19:00:27.773' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Offers] OFF
GO
SET IDENTITY_INSERT [dbo].[OfferUsage] ON 
GO
INSERT [dbo].[OfferUsage] ([Id], [OfferId], [RefType], [RefId], [CustomerId], [UsedDate], [FinalDiscount]) VALUES (2, 9, N'ORDER', 5, 27, CAST(N'2026-07-01T09:16:43.093' AS DateTime), CAST(266.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OfferUsage] ([Id], [OfferId], [RefType], [RefId], [CustomerId], [UsedDate], [FinalDiscount]) VALUES (3, 9, N'ORDER', 6, 27, CAST(N'2026-07-01T12:07:13.213' AS DateTime), CAST(44.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[OfferUsage] ([Id], [OfferId], [RefType], [RefId], [CustomerId], [UsedDate], [FinalDiscount]) VALUES (10, 10, N'ORDER', 7, 27, CAST(N'2026-07-01T14:34:42.020' AS DateTime), CAST(8.90 AS Decimal(18, 2)))
GO
INSERT [dbo].[OfferUsage] ([Id], [OfferId], [RefType], [RefId], [CustomerId], [UsedDate], [FinalDiscount]) VALUES (11, 10, N'ORDER', 8, 27, CAST(N'2026-07-01T14:58:12.727' AS DateTime), CAST(3.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[OfferUsage] ([Id], [OfferId], [RefType], [RefId], [CustomerId], [UsedDate], [FinalDiscount]) VALUES (14, 14, N'ORDER', 9, 27, CAST(N'2026-07-01T16:27:54.720' AS DateTime), CAST(179.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OfferUsage] ([Id], [OfferId], [RefType], [RefId], [CustomerId], [UsedDate], [FinalDiscount]) VALUES (17, 10, N'ORDER', 10, 27, CAST(N'2026-07-01T19:02:10.797' AS DateTime), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OfferUsage] ([Id], [OfferId], [RefType], [RefId], [CustomerId], [UsedDate], [FinalDiscount]) VALUES (18, 14, N'ORDER', 14, 27, CAST(N'2026-07-02T14:21:39.420' AS DateTime), CAST(148.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[OfferUsage] ([Id], [OfferId], [RefType], [RefId], [CustomerId], [UsedDate], [FinalDiscount]) VALUES (19, 15, N'CART', 27, 27, CAST(N'2026-07-03T12:49:12.610' AS DateTime), CAST(16.10 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[OfferUsage] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDeliveryStatus] ON 
GO
INSERT [dbo].[OrderDeliveryStatus] ([Id], [OrderId], [NewStatus], [Remarks], [StatusDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [OldStatus]) VALUES (1, 1, N'1', N'Order Placed Successfully', CAST(N'2026-06-29T17:59:30.103' AS DateTime), 1, 0, 0, CAST(N'2026-06-29T17:59:30.103' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[OrderDeliveryStatus] ([Id], [OrderId], [NewStatus], [Remarks], [StatusDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [OldStatus]) VALUES (2, 2, N'1', N'Order Placed Successfully', CAST(N'2026-06-29T18:06:03.430' AS DateTime), 1, 0, 0, CAST(N'2026-06-29T18:06:03.430' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[OrderDeliveryStatus] ([Id], [OrderId], [NewStatus], [Remarks], [StatusDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [OldStatus]) VALUES (3, 3, N'1', N'Order Placed Successfully', CAST(N'2026-06-29T19:00:12.137' AS DateTime), 1, 0, 27, CAST(N'2026-06-29T19:00:12.137' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[OrderDeliveryStatus] ([Id], [OrderId], [NewStatus], [Remarks], [StatusDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [OldStatus]) VALUES (4, 4, N'1', N'Order Placed Successfully', CAST(N'2026-06-29T19:52:44.870' AS DateTime), 1, 0, 0, CAST(N'2026-06-29T19:52:44.870' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[OrderDeliveryStatus] ([Id], [OrderId], [NewStatus], [Remarks], [StatusDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [OldStatus]) VALUES (5, 5, N'1', N'Order Placed Successfully', CAST(N'2026-07-01T09:16:43.090' AS DateTime), 1, 0, 27, CAST(N'2026-07-01T09:16:43.090' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[OrderDeliveryStatus] ([Id], [OrderId], [NewStatus], [Remarks], [StatusDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [OldStatus]) VALUES (6, 6, N'1', N'Order Placed Successfully', CAST(N'2026-07-01T12:07:13.207' AS DateTime), 1, 0, 0, CAST(N'2026-07-01T12:07:13.207' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[OrderDeliveryStatus] ([Id], [OrderId], [NewStatus], [Remarks], [StatusDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [OldStatus]) VALUES (7, 7, N'1', N'Order Placed Successfully', CAST(N'2026-07-01T14:34:42.013' AS DateTime), 1, 0, 27, CAST(N'2026-07-01T14:34:42.013' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[OrderDeliveryStatus] ([Id], [OrderId], [NewStatus], [Remarks], [StatusDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [OldStatus]) VALUES (8, 8, N'1', N'Order Placed Successfully', CAST(N'2026-07-01T14:58:12.727' AS DateTime), 1, 0, 27, CAST(N'2026-07-01T14:58:12.727' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[OrderDeliveryStatus] ([Id], [OrderId], [NewStatus], [Remarks], [StatusDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [OldStatus]) VALUES (9, 9, N'1', N'Order Placed Successfully', CAST(N'2026-07-01T16:27:54.717' AS DateTime), 1, 0, 27, CAST(N'2026-07-01T16:27:54.717' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[OrderDeliveryStatus] ([Id], [OrderId], [NewStatus], [Remarks], [StatusDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [OldStatus]) VALUES (10, 10, N'1', N'Order Placed Successfully', CAST(N'2026-07-01T19:02:10.797' AS DateTime), 1, 0, 27, CAST(N'2026-07-01T19:02:10.797' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[OrderDeliveryStatus] ([Id], [OrderId], [NewStatus], [Remarks], [StatusDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [OldStatus]) VALUES (11, 11, N'1', N'Order Placed Successfully', CAST(N'2026-07-02T10:44:15.290' AS DateTime), 1, 0, 27, CAST(N'2026-07-02T10:44:15.290' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[OrderDeliveryStatus] ([Id], [OrderId], [NewStatus], [Remarks], [StatusDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [OldStatus]) VALUES (12, 12, N'1', N'Order Placed Successfully', CAST(N'2026-07-02T11:21:23.837' AS DateTime), 1, 0, 27, CAST(N'2026-07-02T11:21:23.837' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[OrderDeliveryStatus] ([Id], [OrderId], [NewStatus], [Remarks], [StatusDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [OldStatus]) VALUES (13, 13, N'1', N'Order Placed Successfully', CAST(N'2026-07-02T11:33:38.223' AS DateTime), 1, 0, 27, CAST(N'2026-07-02T11:33:38.223' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[OrderDeliveryStatus] ([Id], [OrderId], [NewStatus], [Remarks], [StatusDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [OldStatus]) VALUES (14, 14, N'1', N'Order Placed Successfully', CAST(N'2026-07-02T14:21:39.413' AS DateTime), 1, 0, 27, CAST(N'2026-07-02T14:21:39.413' AS DateTime), NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[OrderDeliveryStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 1, 55, 188, 1, CAST(89.00 AS Decimal(18, 2)), CAST(89.00 AS Decimal(18, 2)), 1, 0, 0, CAST(N'2026-06-29T17:59:30.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, 2, 61, 195, 2, CAST(60.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, 0, 0, CAST(N'2026-06-29T18:06:03.427' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, 2, 62, 197, 2, CAST(60.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, 0, 0, CAST(N'2026-06-29T18:06:03.427' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 2, 63, 199, 1, CAST(210.00 AS Decimal(18, 2)), CAST(210.00 AS Decimal(18, 2)), 1, 0, 0, CAST(N'2026-06-29T18:06:03.427' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 3, 56, 189, 1, CAST(70.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-06-29T19:00:12.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, 4, 61, 195, 1, CAST(60.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 1, 0, 0, CAST(N'2026-06-29T19:52:44.867' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, 5, 55, 188, 14, CAST(89.00 AS Decimal(18, 2)), CAST(1246.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-07-01T09:16:43.077' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, 6, 55, 188, 5, CAST(89.00 AS Decimal(18, 2)), CAST(445.00 AS Decimal(18, 2)), 1, 0, 0, CAST(N'2026-07-01T12:07:13.193' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (9, 7, 57, 190, 2, CAST(89.00 AS Decimal(18, 2)), CAST(178.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-07-01T14:34:42.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, 8, 56, 189, 1, CAST(70.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-07-01T14:58:12.723' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (11, 9, 61, 196, 1, CAST(120.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-07-01T16:27:54.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, 10, 61, 195, 1, CAST(60.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-07-01T19:02:10.790' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, 11, 56, 189, 1, CAST(70.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-07-02T10:44:15.277' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (14, 12, 56, 189, 1, CAST(70.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-07-02T11:21:23.837' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (15, 13, 55, 188, 1, CAST(89.00 AS Decimal(18, 2)), CAST(89.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-07-02T11:33:38.223' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderItems] ([Id], [OrderId], [ProductId], [VariantId], [Quantity], [UnitPrice], [TotalPrice], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (16, 14, 57, 190, 1, CAST(89.00 AS Decimal(18, 2)), CAST(89.00 AS Decimal(18, 2)), 1, 0, 27, CAST(N'2026-07-02T14:21:39.400' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderRewardSlab] ON 
GO
INSERT [dbo].[OrderRewardSlab] ([Id], [MinPurchaseAmount], [MaxPurchaseAmount], [RewardCoins], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, CAST(0.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 1, 0, 2, CAST(N'2026-06-05T10:14:24.173' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderRewardSlab] ([Id], [MinPurchaseAmount], [MaxPurchaseAmount], [RewardCoins], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, CAST(501.00 AS Decimal(18, 2)), CAST(600.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), 1, 0, 2, CAST(N'2026-06-05T10:40:48.883' AS DateTime), 2, CAST(N'2026-06-05T10:46:33.300' AS DateTime))
GO
INSERT [dbo].[OrderRewardSlab] ([Id], [MinPurchaseAmount], [MaxPurchaseAmount], [RewardCoins], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, CAST(601.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 1, 0, 2, CAST(N'2026-06-05T10:49:19.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderRewardSlab] ([Id], [MinPurchaseAmount], [MaxPurchaseAmount], [RewardCoins], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, CAST(1001.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 1, 0, 2, CAST(N'2026-06-05T10:49:34.860' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderRewardSlab] ([Id], [MinPurchaseAmount], [MaxPurchaseAmount], [RewardCoins], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, CAST(2001.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), 1, 0, 2, CAST(N'2026-06-05T10:49:54.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderRewardSlab] ([Id], [MinPurchaseAmount], [MaxPurchaseAmount], [RewardCoins], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, CAST(4001.00 AS Decimal(18, 2)), CAST(8000.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, 0, 2, CAST(N'2026-06-05T10:50:17.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderRewardSlab] ([Id], [MinPurchaseAmount], [MaxPurchaseAmount], [RewardCoins], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, CAST(8001.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, 0, 2, CAST(N'2026-06-05T10:50:45.187' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderRewardSlab] ([Id], [MinPurchaseAmount], [MaxPurchaseAmount], [RewardCoins], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, CAST(10001.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(160.00 AS Decimal(18, 2)), 1, 0, 2, CAST(N'2026-06-05T10:51:27.727' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderRewardSlab] ([Id], [MinPurchaseAmount], [MaxPurchaseAmount], [RewardCoins], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (9, CAST(15001.00 AS Decimal(18, 2)), CAST(20000.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, 0, 2, CAST(N'2026-06-05T10:51:54.220' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[OrderRewardSlab] ([Id], [MinPurchaseAmount], [MaxPurchaseAmount], [RewardCoins], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, CAST(20001.00 AS Decimal(18, 2)), CAST(38000.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)), 1, 0, 2, CAST(N'2026-06-05T10:52:25.550' AS DateTime), 2, CAST(N'2026-06-05T11:33:09.577' AS DateTime))
GO
INSERT [dbo].[OrderRewardSlab] ([Id], [MinPurchaseAmount], [MaxPurchaseAmount], [RewardCoins], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (11, CAST(38001.00 AS Decimal(18, 2)), CAST(5000000.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, 0, 2, CAST(N'2026-06-05T11:36:58.520' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[OrderRewardSlab] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [CustomerAddressId], [UsedCoins], [CoinDiscountAmount], [IsCoinRefunded], [DeliveryFee], [PaymentMode], [AddressLine1], [AddressLine2], [City], [PostalCode], [MobileNo], [AlternativeMobileNo], [CountryId], [StateId], [CancelledDate], [CancelReason], [ReturnedDate], [ReturnReason], [CancelRequestDate], [CancelRequestReason], [CancelRejectedDate], [CancelRejectedReason]) VALUES (1, 27, N'ORD-20260629175930', CAST(N'2026-06-29T17:59:30.0900000' AS DateTime2), CAST(89.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(149.00 AS Decimal(18, 2)), N'1', N'1', 1, 0, 0, CAST(N'2026-06-29T17:59:30.090' AS DateTime), NULL, NULL, 32, 0, CAST(0.00 AS Decimal(18, 2)), 0, CAST(60.00 AS Decimal(18, 2)), NULL, N'Ahemdabad ,Bapunagar', NULL, N'Ahemdabad', N'654585', N'9876543210', NULL, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [CustomerAddressId], [UsedCoins], [CoinDiscountAmount], [IsCoinRefunded], [DeliveryFee], [PaymentMode], [AddressLine1], [AddressLine2], [City], [PostalCode], [MobileNo], [AlternativeMobileNo], [CountryId], [StateId], [CancelledDate], [CancelReason], [ReturnedDate], [ReturnReason], [CancelRequestDate], [CancelRequestReason], [CancelRejectedDate], [CancelRejectedReason]) VALUES (2, 27, N'ORD-20260629180603', CAST(N'2026-06-29T18:06:03.4266667' AS DateTime2), CAST(450.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(510.00 AS Decimal(18, 2)), N'1', N'1', 1, 0, 0, CAST(N'2026-06-29T18:06:03.427' AS DateTime), NULL, NULL, 32, 0, CAST(0.00 AS Decimal(18, 2)), 0, CAST(60.00 AS Decimal(18, 2)), NULL, N'Ahemdabad ,Bapunagar', NULL, N'Ahemdabad', N'654585', N'9876543210', NULL, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [CustomerAddressId], [UsedCoins], [CoinDiscountAmount], [IsCoinRefunded], [DeliveryFee], [PaymentMode], [AddressLine1], [AddressLine2], [City], [PostalCode], [MobileNo], [AlternativeMobileNo], [CountryId], [StateId], [CancelledDate], [CancelReason], [ReturnedDate], [ReturnReason], [CancelRequestDate], [CancelRequestReason], [CancelRejectedDate], [CancelRejectedReason]) VALUES (3, 27, N'ORD-20260629190012', CAST(N'2026-06-29T19:00:12.1300000' AS DateTime2), CAST(70.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), N'1', N'1', 1, 0, 27, CAST(N'2026-06-29T19:00:12.130' AS DateTime), NULL, NULL, 0, 0, CAST(0.00 AS Decimal(18, 2)), 0, CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [CustomerAddressId], [UsedCoins], [CoinDiscountAmount], [IsCoinRefunded], [DeliveryFee], [PaymentMode], [AddressLine1], [AddressLine2], [City], [PostalCode], [MobileNo], [AlternativeMobileNo], [CountryId], [StateId], [CancelledDate], [CancelReason], [ReturnedDate], [ReturnReason], [CancelRequestDate], [CancelRequestReason], [CancelRejectedDate], [CancelRejectedReason]) VALUES (4, 27, N'ORD-20260629195244', CAST(N'2026-06-29T19:52:44.8666667' AS DateTime2), CAST(60.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), N'1', N'1', 1, 0, 0, CAST(N'2026-06-29T19:52:44.867' AS DateTime), NULL, NULL, 32, 0, CAST(0.00 AS Decimal(18, 2)), 0, CAST(60.00 AS Decimal(18, 2)), NULL, N'Ahemdabad ,Bapunagar', NULL, N'Ahemdabad', N'654585', N'9876543210', NULL, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [CustomerAddressId], [UsedCoins], [CoinDiscountAmount], [IsCoinRefunded], [DeliveryFee], [PaymentMode], [AddressLine1], [AddressLine2], [City], [PostalCode], [MobileNo], [AlternativeMobileNo], [CountryId], [StateId], [CancelledDate], [CancelReason], [ReturnedDate], [ReturnReason], [CancelRequestDate], [CancelRequestReason], [CancelRejectedDate], [CancelRejectedReason]) VALUES (5, 27, N'ORD-20260701091643', CAST(N'2026-07-01T09:16:43.0766667' AS DateTime2), CAST(1246.00 AS Decimal(18, 2)), CAST(266.00 AS Decimal(18, 2)), CAST(1040.00 AS Decimal(18, 2)), N'1', N'1', 1, 0, 27, CAST(N'2026-07-01T09:16:43.077' AS DateTime), NULL, NULL, 28, 0, CAST(0.00 AS Decimal(18, 2)), 0, CAST(60.00 AS Decimal(18, 2)), NULL, N'Gandhinagar', N'Sector-14', N'Gandhinagar', N'678956', N'1234567890', N'0987654321', 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [CustomerAddressId], [UsedCoins], [CoinDiscountAmount], [IsCoinRefunded], [DeliveryFee], [PaymentMode], [AddressLine1], [AddressLine2], [City], [PostalCode], [MobileNo], [AlternativeMobileNo], [CountryId], [StateId], [CancelledDate], [CancelReason], [ReturnedDate], [ReturnReason], [CancelRequestDate], [CancelRequestReason], [CancelRejectedDate], [CancelRejectedReason]) VALUES (6, 27, N'ORD-20260701120713', CAST(N'2026-07-01T12:07:13.1933333' AS DateTime2), CAST(445.00 AS Decimal(18, 2)), CAST(44.50 AS Decimal(18, 2)), CAST(460.50 AS Decimal(18, 2)), N'1', N'1', 1, 0, 0, CAST(N'2026-07-01T12:07:13.193' AS DateTime), NULL, NULL, 32, 0, CAST(0.00 AS Decimal(18, 2)), 0, CAST(60.00 AS Decimal(18, 2)), NULL, N'Ahemdabad ,Bapunagar', NULL, N'Ahemdabad', N'654585', N'9876543210', NULL, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [CustomerAddressId], [UsedCoins], [CoinDiscountAmount], [IsCoinRefunded], [DeliveryFee], [PaymentMode], [AddressLine1], [AddressLine2], [City], [PostalCode], [MobileNo], [AlternativeMobileNo], [CountryId], [StateId], [CancelledDate], [CancelReason], [ReturnedDate], [ReturnReason], [CancelRequestDate], [CancelRequestReason], [CancelRejectedDate], [CancelRejectedReason]) VALUES (7, 27, N'ORD-20260701143442', CAST(N'2026-07-01T14:34:42.0000000' AS DateTime2), CAST(178.00 AS Decimal(18, 2)), CAST(8.90 AS Decimal(18, 2)), CAST(229.10 AS Decimal(18, 2)), N'1', N'2', 1, 0, 27, CAST(N'2026-07-01T14:34:42.000' AS DateTime), NULL, NULL, 32, 0, CAST(0.00 AS Decimal(18, 2)), 0, CAST(60.00 AS Decimal(18, 2)), NULL, N'Ahemdabad ,Bapunagar', NULL, N'Ahemdabad', N'654585', N'9876543210', NULL, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [CustomerAddressId], [UsedCoins], [CoinDiscountAmount], [IsCoinRefunded], [DeliveryFee], [PaymentMode], [AddressLine1], [AddressLine2], [City], [PostalCode], [MobileNo], [AlternativeMobileNo], [CountryId], [StateId], [CancelledDate], [CancelReason], [ReturnedDate], [ReturnReason], [CancelRequestDate], [CancelRequestReason], [CancelRejectedDate], [CancelRejectedReason]) VALUES (8, 27, N'ORD-20260701145812', CAST(N'2026-07-01T14:58:12.7233333' AS DateTime2), CAST(70.00 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)), CAST(120.50 AS Decimal(18, 2)), N'1', N'2', 1, 0, 27, CAST(N'2026-07-01T14:58:12.723' AS DateTime), NULL, NULL, 32, 60, CAST(6.00 AS Decimal(18, 2)), 0, CAST(60.00 AS Decimal(18, 2)), N'4', N'Ahemdabad ,Bapunagar', NULL, N'Ahemdabad', N'654585', N'9876543210', NULL, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [CustomerAddressId], [UsedCoins], [CoinDiscountAmount], [IsCoinRefunded], [DeliveryFee], [PaymentMode], [AddressLine1], [AddressLine2], [City], [PostalCode], [MobileNo], [AlternativeMobileNo], [CountryId], [StateId], [CancelledDate], [CancelReason], [ReturnedDate], [ReturnReason], [CancelRequestDate], [CancelRequestReason], [CancelRejectedDate], [CancelRejectedReason]) VALUES (9, 27, N'ORD-20260701162754', CAST(N'2026-07-01T16:27:54.7133333' AS DateTime2), CAST(120.00 AS Decimal(18, 2)), CAST(179.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), N'1', N'2', 1, 0, 27, CAST(N'2026-07-01T16:27:54.713' AS DateTime), NULL, NULL, 32, 0, CAST(0.00 AS Decimal(18, 2)), 0, CAST(60.00 AS Decimal(18, 2)), N'2', N'Ahemdabad ,Bapunagar', NULL, N'Ahemdabad', N'654585', N'9876543210', NULL, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [CustomerAddressId], [UsedCoins], [CoinDiscountAmount], [IsCoinRefunded], [DeliveryFee], [PaymentMode], [AddressLine1], [AddressLine2], [City], [PostalCode], [MobileNo], [AlternativeMobileNo], [CountryId], [StateId], [CancelledDate], [CancelReason], [ReturnedDate], [ReturnReason], [CancelRequestDate], [CancelRequestReason], [CancelRejectedDate], [CancelRejectedReason]) VALUES (10, 27, N'ORD-20260701190210', CAST(N'2026-07-01T19:02:10.7900000' AS DateTime2), CAST(60.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), CAST(117.00 AS Decimal(18, 2)), N'1', N'2', 1, 0, 27, CAST(N'2026-07-01T19:02:10.790' AS DateTime), NULL, NULL, 32, 0, CAST(0.00 AS Decimal(18, 2)), 0, CAST(60.00 AS Decimal(18, 2)), N'4', N'Ahemdabad ,Bapunagar', NULL, N'Ahemdabad', N'654585', N'9876543210', NULL, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [CustomerAddressId], [UsedCoins], [CoinDiscountAmount], [IsCoinRefunded], [DeliveryFee], [PaymentMode], [AddressLine1], [AddressLine2], [City], [PostalCode], [MobileNo], [AlternativeMobileNo], [CountryId], [StateId], [CancelledDate], [CancelReason], [ReturnedDate], [ReturnReason], [CancelRequestDate], [CancelRequestReason], [CancelRejectedDate], [CancelRejectedReason]) VALUES (11, 27, N'ORD-20260702104415', CAST(N'2026-07-02T10:44:15.2766667' AS DateTime2), CAST(70.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), N'1', N'2', 1, 0, 27, CAST(N'2026-07-02T10:44:15.277' AS DateTime), NULL, NULL, 32, 0, CAST(0.00 AS Decimal(18, 2)), 0, CAST(60.00 AS Decimal(18, 2)), N'4', N'Ahemdabad ,Bapunagar', NULL, N'Ahemdabad', N'654585', N'9876543210', NULL, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [CustomerAddressId], [UsedCoins], [CoinDiscountAmount], [IsCoinRefunded], [DeliveryFee], [PaymentMode], [AddressLine1], [AddressLine2], [City], [PostalCode], [MobileNo], [AlternativeMobileNo], [CountryId], [StateId], [CancelledDate], [CancelReason], [ReturnedDate], [ReturnReason], [CancelRequestDate], [CancelRequestReason], [CancelRejectedDate], [CancelRejectedReason]) VALUES (12, 27, N'ORD-20260702112123', CAST(N'2026-07-02T11:21:23.8366667' AS DateTime2), CAST(70.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), N'1', N'2', 1, 0, 27, CAST(N'2026-07-02T11:21:23.837' AS DateTime), NULL, NULL, 32, 0, CAST(0.00 AS Decimal(18, 2)), 0, CAST(60.00 AS Decimal(18, 2)), N'4', N'Ahemdabad ,Bapunagar', NULL, N'Ahemdabad', N'654585', N'9876543210', NULL, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [CustomerAddressId], [UsedCoins], [CoinDiscountAmount], [IsCoinRefunded], [DeliveryFee], [PaymentMode], [AddressLine1], [AddressLine2], [City], [PostalCode], [MobileNo], [AlternativeMobileNo], [CountryId], [StateId], [CancelledDate], [CancelReason], [ReturnedDate], [ReturnReason], [CancelRequestDate], [CancelRequestReason], [CancelRejectedDate], [CancelRejectedReason]) VALUES (13, 27, N'ORD-20260702113338', CAST(N'2026-07-02T11:33:38.2233333' AS DateTime2), CAST(89.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(149.00 AS Decimal(18, 2)), N'1', N'2', 1, 0, 27, CAST(N'2026-07-02T11:33:38.223' AS DateTime), NULL, NULL, 32, 0, CAST(0.00 AS Decimal(18, 2)), 0, CAST(60.00 AS Decimal(18, 2)), N'4', N'Ahemdabad ,Bapunagar', NULL, N'Ahemdabad', N'654585', N'9876543210', NULL, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Orders] ([Id], [UserId], [OrderNumber], [OrderDate], [TotalAmount], [DiscountAmount], [FinalAmount], [OrderStatus], [PaymentStatus], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [CustomerAddressId], [UsedCoins], [CoinDiscountAmount], [IsCoinRefunded], [DeliveryFee], [PaymentMode], [AddressLine1], [AddressLine2], [City], [PostalCode], [MobileNo], [AlternativeMobileNo], [CountryId], [StateId], [CancelledDate], [CancelReason], [ReturnedDate], [ReturnReason], [CancelRequestDate], [CancelRequestReason], [CancelRejectedDate], [CancelRejectedReason]) VALUES (14, 27, N'ORD-20260702142139', CAST(N'2026-07-02T14:21:39.4000000' AS DateTime2), CAST(89.00 AS Decimal(18, 2)), CAST(148.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), N'1', N'2', 1, 0, 27, CAST(N'2026-07-02T14:21:39.400' AS DateTime), NULL, NULL, 32, 0, CAST(0.00 AS Decimal(18, 2)), 0, CAST(60.00 AS Decimal(18, 2)), N'2', N'Ahemdabad ,Bapunagar', NULL, N'Ahemdabad', N'654585', N'9876543210', NULL, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentRefund] ON 
GO
INSERT [dbo].[PaymentRefund] ([Id], [PaymentTransactionId], [RazorpayRefundId], [RefundAmount], [RefundStatus], [RefundReason], [RefundResponseLog], [RefundDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 2, N'rfnd_T8VzsTIr3kOclg', CAST(130.00 AS Decimal(18, 2)), N'pending', N'They cancle Order', N'{
  "acquirer_data": {
    "arn": null
  },
  "amount": 13000,
  "base_amount": 13000,
  "batch_id": null,
  "created_at": 1782969315,
  "currency": "INR",
  "entity": "refund",
  "id": "rfnd_T8VzsTIr3kOclg",
  "notes": [],
  "payment_id": "pay_T8VyWAqKwDQVrh",
  "receipt": null,
  "speed_processed": "normal",
  "speed_requested": "normal",
  "status": "pending"
}', CAST(N'2026-07-02T10:45:16.360' AS DateTime), 1, 0, 27, CAST(N'2026-07-02T10:45:16.567' AS DateTime), 27, CAST(N'2026-07-02T10:45:16.567' AS DateTime))
GO
INSERT [dbo].[PaymentRefund] ([Id], [PaymentTransactionId], [RazorpayRefundId], [RefundAmount], [RefundStatus], [RefundReason], [RefundResponseLog], [RefundDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, 3, N'rfnd_T8WhrEDIcZqOsK', CAST(130.00 AS Decimal(18, 2)), N'pending', N'Testing', N'{
  "acquirer_data": {
    "arn": null
  },
  "amount": 13000,
  "base_amount": 13000,
  "batch_id": null,
  "created_at": 1782971813,
  "currency": "INR",
  "entity": "refund",
  "id": "rfnd_T8WhrEDIcZqOsK",
  "notes": [],
  "payment_id": "pay_T8WbiFsejWU3Pw",
  "receipt": null,
  "speed_processed": "normal",
  "speed_requested": "normal",
  "status": "pending"
}', CAST(N'2026-07-02T11:28:56.883' AS DateTime), 1, 0, 0, CAST(N'2026-07-02T11:29:12.223' AS DateTime), 0, CAST(N'2026-07-02T11:29:12.223' AS DateTime))
GO
INSERT [dbo].[PaymentRefund] ([Id], [PaymentTransactionId], [RazorpayRefundId], [RefundAmount], [RefundStatus], [RefundReason], [RefundResponseLog], [RefundDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, 4, N'rfnd_T8WqmNAP12MQB4', CAST(149.00 AS Decimal(18, 2)), N'pending', N'Testing', N'{
  "acquirer_data": {
    "arn": null
  },
  "amount": 14900,
  "base_amount": 14900,
  "batch_id": null,
  "created_at": 1782972320,
  "currency": "INR",
  "entity": "refund",
  "id": "rfnd_T8WqmNAP12MQB4",
  "notes": [],
  "payment_id": "pay_T8WoQMGY61DEuU",
  "receipt": null,
  "speed_processed": "normal",
  "speed_requested": "normal",
  "status": "pending"
}', CAST(N'2026-07-02T11:35:21.547' AS DateTime), 1, 0, 0, CAST(N'2026-07-02T11:35:21.773' AS DateTime), 0, CAST(N'2026-07-02T11:35:21.773' AS DateTime))
GO
INSERT [dbo].[PaymentRefund] ([Id], [PaymentTransactionId], [RazorpayRefundId], [RefundAmount], [RefundStatus], [RefundReason], [RefundResponseLog], [RefundDate], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 5, N'rfnd_T8ZkjpMM6BkUBe', CAST(1.00 AS Decimal(18, 2)), N'processed', N'Devloper Testing', N'{
  "acquirer_data": {
    "rrn": null
  },
  "amount": 100,
  "base_amount": 100,
  "batch_id": null,
  "created_at": 1782982542,
  "currency": "INR",
  "entity": "refund",
  "id": "rfnd_T8ZkjpMM6BkUBe",
  "notes": [],
  "payment_id": "pay_T8ZgAUzBLOgNOH",
  "receipt": null,
  "speed_processed": "normal",
  "speed_requested": "normal",
  "status": "processed"
}', CAST(N'2026-07-02T04:55:42.923' AS DateTime), 1, 0, 27, CAST(N'2026-07-02T14:25:43.027' AS DateTime), 27, CAST(N'2026-07-02T14:25:43.027' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[PaymentRefund] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentTransaction] ON 
GO
INSERT [dbo].[PaymentTransaction] ([Id], [OrderId], [PaymentGateway], [RazorpayOrderId], [RazorpayPaymentId], [RazorpaySignature], [Amount], [Currency], [PaymentStatus], [PaymentResponseLog], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 10, N'Razorpay', N'order_T8Fq7PP84DWxsE', N'pay_T8FvGCrFmE5ArB', N'22a82a2c168c76a57dfd2f73f62495b913f3856fa65ee5a49a9c9c1809e39562', CAST(117.00 AS Decimal(18, 2)), N'INR', N'1', N'{"RazorpayOrderId":"order_T8Fq7PP84DWxsE","RazorpayPaymentId":"pay_T8FvGCrFmE5ArB","RazorpaySignature":"22a82a2c168c76a57dfd2f73f62495b913f3856fa65ee5a49a9c9c1809e39562","CustomerId":27,"CustomerAddressId":32,"CreatedBy":27,"PaymentMode":"4","UsedCoins":0.0,"CoinDiscountAmount":0.0,"DeliveryFee":60.0}', 1, 0, 27, CAST(N'2026-07-01T19:02:12.110' AS DateTime), 27, CAST(N'2026-07-02T10:05:30.217' AS DateTime))
GO
INSERT [dbo].[PaymentTransaction] ([Id], [OrderId], [PaymentGateway], [RazorpayOrderId], [RazorpayPaymentId], [RazorpaySignature], [Amount], [Currency], [PaymentStatus], [PaymentResponseLog], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, 11, N'Razorpay', N'order_T8Vx7R4J9meYjh', N'pay_T8VyWAqKwDQVrh', N'22c45508cc9f8fd80ce7a44df587c0072824c15d949bfd6111ef0c19fa474490', CAST(130.00 AS Decimal(18, 2)), N'INR', N'1', N'{"RazorpayOrderId":"order_T8Vx7R4J9meYjh","RazorpayPaymentId":"pay_T8VyWAqKwDQVrh","RazorpaySignature":"22c45508cc9f8fd80ce7a44df587c0072824c15d949bfd6111ef0c19fa474490","CustomerId":27,"CustomerAddressId":32,"CreatedBy":27,"PaymentMode":"4","UsedCoins":0.0,"CoinDiscountAmount":0.0,"DeliveryFee":60.0}', 1, 0, 0, CAST(N'2026-07-02T10:44:15.727' AS DateTime), 27, CAST(N'2026-07-02T10:45:16.633' AS DateTime))
GO
INSERT [dbo].[PaymentTransaction] ([Id], [OrderId], [PaymentGateway], [RazorpayOrderId], [RazorpayPaymentId], [RazorpaySignature], [Amount], [Currency], [PaymentStatus], [PaymentResponseLog], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, 12, N'Razorpay', N'order_T8WbXULjKukecX', N'pay_T8WbiFsejWU3Pw', N'557376901aa14e717f8cadc83e34ff4263cd00ccd64386e3b08eda1d12310ec8', CAST(130.00 AS Decimal(18, 2)), N'INR', N'1', N'{"RazorpayOrderId":"order_T8WbXULjKukecX","RazorpayPaymentId":"pay_T8WbiFsejWU3Pw","RazorpaySignature":"557376901aa14e717f8cadc83e34ff4263cd00ccd64386e3b08eda1d12310ec8","CustomerId":27,"CustomerAddressId":32,"CreatedBy":27,"PaymentMode":"4","UsedCoins":0.0,"CoinDiscountAmount":0.0,"DeliveryFee":60.0}', 1, 0, 0, CAST(N'2026-07-02T11:21:24.617' AS DateTime), 0, CAST(N'2026-07-02T11:29:12.403' AS DateTime))
GO
INSERT [dbo].[PaymentTransaction] ([Id], [OrderId], [PaymentGateway], [RazorpayOrderId], [RazorpayPaymentId], [RazorpaySignature], [Amount], [Currency], [PaymentStatus], [PaymentResponseLog], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 13, N'Razorpay', N'order_T8WoIoedtNMHIY', N'pay_T8WoQMGY61DEuU', N'686ad8cdb15e79fbe387805602e1482663e4fb760e362b8d4ed8d7eb91ea00bc', CAST(149.00 AS Decimal(18, 2)), N'INR', N'1', N'{"RazorpayOrderId":"order_T8WoIoedtNMHIY","RazorpayPaymentId":"pay_T8WoQMGY61DEuU","RazorpaySignature":"686ad8cdb15e79fbe387805602e1482663e4fb760e362b8d4ed8d7eb91ea00bc","CustomerId":27,"CustomerAddressId":32,"CreatedBy":27,"PaymentMode":"4","UsedCoins":0.0,"CoinDiscountAmount":0.0,"DeliveryFee":60.0}', 1, 0, 0, CAST(N'2026-07-02T11:33:38.470' AS DateTime), 0, CAST(N'2026-07-02T11:35:21.910' AS DateTime))
GO
INSERT [dbo].[PaymentTransaction] ([Id], [OrderId], [PaymentGateway], [RazorpayOrderId], [RazorpayPaymentId], [RazorpaySignature], [Amount], [Currency], [PaymentStatus], [PaymentResponseLog], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 14, N'Razorpay', N'order_T8Zd4tJ8XSHbUD', N'pay_T8ZgAUzBLOgNOH', N'25c480795a7335557434a9bc1eb08b589cb4da49b40d103db5ac7d72843a1fda', CAST(1.00 AS Decimal(18, 2)), N'INR', N'Refunded', N'{"RazorpayOrderId":"order_T8Zd4tJ8XSHbUD","RazorpayPaymentId":"pay_T8ZgAUzBLOgNOH","RazorpaySignature":"25c480795a7335557434a9bc1eb08b589cb4da49b40d103db5ac7d72843a1fda","CustomerId":27,"CustomerAddressId":32,"CreatedBy":27,"PaymentMode":"2","UsedCoins":0.0,"CoinDiscountAmount":0.0,"DeliveryFee":60.0}', 1, 0, 0, CAST(N'2026-07-02T14:21:40.183' AS DateTime), 27, CAST(N'2026-07-02T14:25:43.253' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[PaymentTransaction] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (290, 54, 0, N'/Uploads/Product/d0022268-c686-40d1-a0ab-59f5e148a6e0.webp', 1, 1, 0, 1, CAST(N'2026-06-16T13:07:55.140' AS DateTime), 1, CAST(N'2026-06-16T18:12:20.503' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (292, 55, 0, N'/Uploads/Product/d1848a9d-3e62-4f71-9038-1be1c0aeaaf9.webp', 0, 1, 0, 1, CAST(N'2026-06-16T13:13:55.413' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (293, 56, 0, N'/Uploads/Product/d0c0b49f-b7da-4cab-8aad-f60104ee3cc2.webp', 1, 1, 0, 1, CAST(N'2026-06-16T13:18:17.690' AS DateTime), 1, CAST(N'2026-06-16T18:20:32.457' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (295, 57, 0, N'/Uploads/Product/6a24993c-c151-4594-9637-3ed052227997.webp', 1, 1, 0, 1, CAST(N'2026-06-16T13:40:06.153' AS DateTime), 1, CAST(N'2026-06-16T18:23:29.010' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (297, 54, 0, N'/Uploads/Product/ed431829-f33f-4092-80e0-6e402131849d.webp', 0, 1, 0, 1, CAST(N'2026-06-16T18:12:21.050' AS DateTime), 1, CAST(N'2026-06-16T18:12:21.173' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (299, 55, 0, N'/Uploads/Product/6ff0fa37-b65f-41cf-937c-6156fe725008.webp', 1, 1, 0, 1, CAST(N'2026-06-16T18:17:19.923' AS DateTime), 1, CAST(N'2026-06-16T18:17:19.950' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (300, 56, 0, N'/Uploads/Product/c9bfae68-369a-4cdb-8684-9e2e8c67d1d0.webp', 0, 1, 0, 1, CAST(N'2026-06-16T18:20:34.187' AS DateTime), 1, CAST(N'2026-06-16T18:20:34.203' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (301, 57, 0, N'/Uploads/Product/4d9d4490-d627-409d-9187-21c878da20d9.webp', 0, 1, 0, 1, CAST(N'2026-06-16T18:23:29.270' AS DateTime), 1, CAST(N'2026-06-16T18:23:29.297' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (303, 59, 0, N'/Uploads/Product/7a24773c-c151-8759-9637-3ed052227997.webp', 0, 1, 0, 1, CAST(N'2026-06-16T21:01:10.177' AS DateTime), 1, CAST(N'2026-06-17T08:23:53.677' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (304, 59, 0, N'/Uploads/Product/1628ae79-4717-48e6-95de-0aea9f9956ce.jpg', 1, 1, 0, 1, CAST(N'2026-06-16T22:15:08.230' AS DateTime), 1, CAST(N'2026-06-16T22:15:08.373' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (305, 60, 0, N'/Uploads/Product/e68e9673-4da1-49d2-a110-38a2298f1efe.webp', 1, 1, 0, 1, CAST(N'2026-06-17T08:23:53.293' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (306, 60, 193, N'/Uploads/Product/4a06247f-b5a9-4324-8d72-11fb15936521.webp', 0, 0, 1, 1, CAST(N'2026-06-17T08:23:53.663' AS DateTime), 1, CAST(N'2026-06-17T08:34:56.987' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (307, 60, 191, N'/Uploads/Product/71b049a2-57b1-485c-9686-16e0da19380b.webp', 0, 0, 1, 1, CAST(N'2026-06-17T08:23:53.663' AS DateTime), 1, CAST(N'2026-06-17T08:23:53.677' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (308, 60, 0, N'/Uploads/Product/fc88903b-7581-485a-8cac-2ca9277f4f04.webp', 0, 1, 0, 1, CAST(N'2026-06-17T08:28:19.953' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (309, 60, 194, N'/Uploads/Product/fc88903b-7581-485a-8cac-2ca9277f4f04.webp', 0, 0, 1, 1, CAST(N'2026-06-17T08:28:20.403' AS DateTime), 1, CAST(N'2026-06-17T08:34:56.987' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (313, 61, 0, N'/Uploads/Product/a6336b0a-b3be-4024-9356-f194b000d630.webp', 1, 1, 0, 195196, CAST(N'2026-06-17T08:41:13.540' AS DateTime), 1, CAST(N'2026-06-17T08:41:13.557' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (314, 61, 0, N'/Uploads/Product/51575da0-61a1-493c-8c9f-9f8ba4869cda.webp', 0, 1, 0, 195196, CAST(N'2026-06-17T08:41:13.540' AS DateTime), 1, CAST(N'2026-06-17T08:41:13.557' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (315, 62, 0, N'/Uploads/Product/19150bd7-a173-4f7d-a15c-50d1f5c5508f.webp', 1, 1, 0, 197198, CAST(N'2026-06-17T09:07:43.813' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (316, 62, 0, N'/Uploads/Product/15cb8761-0bd9-4d15-90c6-90c5e6d2cc10.webp', 0, 1, 0, 197198, CAST(N'2026-06-17T09:07:45.373' AS DateTime), 1, CAST(N'2026-06-17T09:07:45.497' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (317, 62, 0, N'/Uploads/Product/fcfe555e-5ce0-4e6c-9734-de64de0d0b39.webp', 0, 1, 0, 197198, CAST(N'2026-06-17T09:07:45.373' AS DateTime), 1, CAST(N'2026-06-17T09:07:45.497' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (318, 63, 0, N'/Uploads/Product/92c00f7b-0d2a-4ae7-b3f7-70e0d3a8e9b1.webp', 1, 1, 0, 199, CAST(N'2026-06-17T14:15:28.737' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (319, 63, 0, N'/Uploads/Product/1a0a172c-edd9-4eba-837b-473dc1b2aefa.webp', 0, 1, 0, 199, CAST(N'2026-06-17T14:15:31.320' AS DateTime), 1, CAST(N'2026-06-17T14:15:31.517' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (320, 64, 0, N'/Uploads/Product/d9b6443e-ba87-4de0-a772-60c69e0fa591.webp', 1, 1, 0, 200201202, CAST(N'2026-06-17T14:56:45.467' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (321, 64, 0, N'/Uploads/Product/4e40b8ff-7313-4ec7-86c8-9dfd47ff2589.webp', 0, 1, 0, 200201202, CAST(N'2026-06-17T14:56:46.047' AS DateTime), 1, CAST(N'2026-06-17T14:56:46.157' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (322, 64, 0, N'/Uploads/Product/2e54cdef-8da4-41f8-8835-b2349ef35f7c.webp', 0, 1, 0, 200201202, CAST(N'2026-06-17T14:56:46.047' AS DateTime), 1, CAST(N'2026-06-17T14:56:46.157' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (324, 65, 0, N'/Uploads/Product/70bd6192-cc25-46f3-b806-ad7218e5ef62.webp', 0, 1, 0, 1, CAST(N'2026-06-17T17:50:25.760' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (325, 65, 0, N'/Uploads/Product/a43ec234-4db0-44b8-bedd-c469fe50026a.webp', 0, 1, 0, 1, CAST(N'2026-06-17T17:50:25.760' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (326, 65, 0, N'/Uploads/Product/e3f7d93d-c78b-4b4e-ab09-1c11adbe4b52.webp', 0, 1, 0, 1, CAST(N'2026-06-17T17:50:25.760' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (327, 65, 203, N'-', 0, 1, 0, 1, CAST(N'2026-06-17T17:50:30.190' AS DateTime), 1, CAST(N'2026-06-17T17:50:30.353' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (328, 65, 0, N'/Uploads/Product/1190986f-b70d-4cf9-bb0b-b9debe073db6.webp', 0, 1, 0, 1, CAST(N'2026-06-17T19:38:20.787' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (329, 65, 0, N'/Uploads/Product/e53c76ec-687d-4d86-96dd-2d1b6bfe7c95.webp', 0, 1, 0, 1, CAST(N'2026-06-17T19:38:20.787' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (330, 65, 0, N'/Uploads/Product/ed431829-f33f-4092-80e0-6e402131849d.webp', 0, 1, 0, 1, CAST(N'2026-06-17T19:38:20.787' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (331, 65, 204, N'-', 0, 1, 0, 1, CAST(N'2026-06-17T19:38:22.213' AS DateTime), 1, CAST(N'2026-06-17T19:38:22.337' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (332, 65, 0, N'/Uploads/Product/4b053fa2-6154-4aea-aa3f-729401e196a4.webp', 0, 1, 0, 1, CAST(N'2026-06-17T20:35:28.293' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (333, 65, 0, N'/Uploads/Product/4d9d4490-d627-409d-9187-21c878da20d9.webp', 0, 1, 0, 1, CAST(N'2026-06-17T20:35:28.293' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (334, 65, 0, N'/Uploads/Product/b87e8a5c-d353-4c2d-87c1-2f3781e8b8dd.webp', 0, 1, 0, 1, CAST(N'2026-06-17T20:35:28.293' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (335, 65, 205, N'-', 0, 1, 0, 1, CAST(N'2026-06-17T20:35:35.977' AS DateTime), 1, CAST(N'2026-06-17T20:35:36.117' AS DateTime))
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (336, 66, 0, N'/Uploads/Product/1e21a140-3c36-49b8-8af3-55383b1ca931.webp', 0, 1, 0, 1, CAST(N'2026-06-17T20:46:39.180' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductImages] ([Id], [ProductId], [VariantId], [ImagePath], [IsPrimary], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (337, 66, 0, N'/Uploads/Product/6f112e92-6ae5-413d-9e83-89bb100e3958.webp', 1, 1, 0, 1, CAST(N'2026-06-17T20:46:39.180' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductPriceHistory] ON 
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (1, 16, 128, CAST(50400.00 AS Decimal(18, 2)), CAST(N'2026-03-19T12:11:33.010' AS DateTime), NULL, 0, CAST(N'2026-03-19T12:11:33.010' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (2, 16, 16, CAST(50100.00 AS Decimal(18, 2)), CAST(N'2026-03-19T12:11:33.020' AS DateTime), CAST(N'2026-03-19T12:12:15.950' AS DateTime), 0, CAST(N'2026-03-19T12:11:33.020' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (3, 16, 56, CAST(50200.00 AS Decimal(18, 2)), CAST(N'2026-03-19T12:11:33.020' AS DateTime), NULL, 0, CAST(N'2026-03-19T12:11:33.020' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (4, 16, 96, CAST(50300.00 AS Decimal(18, 2)), CAST(N'2026-03-19T12:11:33.020' AS DateTime), NULL, 0, CAST(N'2026-03-19T12:11:33.020' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (5, 16, 16, CAST(50500.00 AS Decimal(18, 2)), CAST(N'2026-03-19T12:12:15.950' AS DateTime), NULL, 0, CAST(N'2026-03-19T12:12:15.950' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (6, 46, 160, NULL, CAST(N'2026-03-19T12:35:48.667' AS DateTime), CAST(N'2026-03-19T12:37:34.297' AS DateTime), 0, CAST(N'2026-03-19T12:35:48.667' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (7, 46, 160, NULL, CAST(N'2026-03-19T12:37:34.310' AS DateTime), CAST(N'2026-03-19T12:40:00.390' AS DateTime), 0, CAST(N'2026-03-19T12:37:34.310' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (8, 46, 160, NULL, CAST(N'2026-03-19T12:40:00.407' AS DateTime), CAST(N'2026-03-19T12:43:50.440' AS DateTime), 0, CAST(N'2026-03-19T12:40:00.407' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (9, 46, 160, CAST(100.00 AS Decimal(18, 2)), CAST(N'2026-03-19T12:43:50.440' AS DateTime), NULL, 0, CAST(N'2026-03-19T12:43:50.440' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (10, 46, 167, CAST(0.00 AS Decimal(18, 2)), CAST(N'2026-03-23T18:38:05.880' AS DateTime), CAST(N'2026-03-24T11:47:04.203' AS DateTime), 2, CAST(N'2026-03-23T18:38:05.880' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (11, 3, 141, CAST(37356.00 AS Decimal(18, 2)), CAST(N'2026-03-23T18:39:24.820' AS DateTime), NULL, 2, CAST(N'2026-03-23T18:39:24.820' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (12, 3, 166, CAST(30000.00 AS Decimal(18, 2)), CAST(N'2026-03-23T18:39:24.820' AS DateTime), NULL, 2, CAST(N'2026-03-23T18:39:24.820' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (13, 3, 3, CAST(35311.00 AS Decimal(18, 2)), CAST(N'2026-03-23T18:39:24.820' AS DateTime), NULL, 2, CAST(N'2026-03-23T18:39:24.820' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (14, 3, 43, CAST(37311.00 AS Decimal(18, 2)), CAST(N'2026-03-23T18:39:24.820' AS DateTime), NULL, 2, CAST(N'2026-03-23T18:39:24.820' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (15, 3, 83, CAST(37798.00 AS Decimal(18, 2)), CAST(N'2026-03-23T18:39:24.820' AS DateTime), NULL, 2, CAST(N'2026-03-23T18:39:24.820' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (16, 46, 167, CAST(350.00 AS Decimal(18, 2)), CAST(N'2026-03-24T11:47:04.203' AS DateTime), NULL, 2, CAST(N'2026-03-24T11:47:04.203' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (17, 20, 100, CAST(42381.00 AS Decimal(18, 2)), CAST(N'2026-03-24T18:46:54.170' AS DateTime), NULL, 2, CAST(N'2026-03-24T18:46:54.170' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (18, 20, 130, CAST(39299.00 AS Decimal(18, 2)), CAST(N'2026-03-24T18:46:54.183' AS DateTime), NULL, 2, CAST(N'2026-03-24T18:46:54.183' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (19, 20, 20, CAST(43585.00 AS Decimal(18, 2)), CAST(N'2026-03-24T18:46:54.183' AS DateTime), NULL, 2, CAST(N'2026-03-24T18:46:54.183' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (20, 20, 60, CAST(40556.00 AS Decimal(18, 2)), CAST(N'2026-03-24T18:46:54.183' AS DateTime), NULL, 2, CAST(N'2026-03-24T18:46:54.183' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (21, 36, 116, CAST(40190.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:20:05.550' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:20:05.550' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (22, 36, 138, CAST(43616.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:20:05.550' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:20:05.550' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (23, 36, 152, CAST(40224.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:20:05.550' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:20:05.550' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (24, 36, 36, CAST(36947.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:20:05.550' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:20:05.550' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (25, 36, 76, CAST(42215.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:20:05.550' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:20:05.550' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (26, 30, 110, CAST(42592.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:23:07.927' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:23:07.927' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (27, 30, 135, CAST(36955.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:23:07.927' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:23:07.927' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (28, 30, 150, CAST(45463.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:23:07.927' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:23:07.927' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (29, 30, 30, CAST(38762.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:23:07.937' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:23:07.937' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (30, 30, 70, CAST(38447.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:23:07.937' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:23:07.937' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (31, 9, 143, CAST(45904.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:23:33.580' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:23:33.580' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (32, 9, 49, CAST(37467.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:23:33.580' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:23:33.580' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (33, 9, 89, CAST(40995.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:23:33.580' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:23:33.580' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (34, 9, 9, CAST(38218.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:23:33.580' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:23:33.580' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (35, 28, 108, CAST(44839.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:24:19.323' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:24:19.323' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (36, 28, 134, CAST(36559.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:24:19.323' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:24:19.323' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (37, 28, 28, CAST(42731.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:24:19.323' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:24:19.323' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (38, 28, 68, CAST(41556.00 AS Decimal(18, 2)), CAST(N'2026-03-25T10:24:19.323' AS DateTime), NULL, 2, CAST(N'2026-03-25T10:24:19.323' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (39, 29, 109, CAST(43455.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (40, 29, 29, CAST(41171.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (41, 29, 69, CAST(35075.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:52:58.717' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:52:58.717' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (42, 26, 106, CAST(39450.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:53:54.200' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:53:54.200' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (43, 26, 133, CAST(41566.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:53:54.200' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:53:54.200' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (44, 26, 26, CAST(43972.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:53:54.200' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:53:54.200' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (45, 26, 66, CAST(37025.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:53:54.200' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:53:54.200' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (46, 27, 107, CAST(43815.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (47, 27, 149, CAST(43979.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (48, 27, 27, CAST(41561.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (49, 27, 67, CAST(42783.00 AS Decimal(18, 2)), CAST(N'2026-03-26T12:54:44.677' AS DateTime), NULL, 0, CAST(N'2026-03-26T12:54:44.677' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (50, 37, 117, CAST(44530.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (51, 37, 37, CAST(37155.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (52, 37, 77, CAST(43271.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:04:43.447' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:04:43.447' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (53, 38, 118, CAST(37970.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (54, 38, 139, CAST(37275.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (55, 38, 38, CAST(42449.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (56, 38, 78, CAST(40735.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:05:36.990' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:05:36.990' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (57, 39, 119, CAST(41870.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:06:24.180' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:06:24.180' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (58, 39, 153, CAST(38012.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:06:24.180' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:06:24.180' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (59, 39, 39, CAST(38066.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:06:24.180' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:06:24.180' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (60, 39, 79, CAST(35008.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:06:24.180' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:06:24.180' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (61, 40, 120, CAST(43320.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (62, 40, 140, CAST(41156.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (63, 40, 40, CAST(39549.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (64, 40, 80, CAST(44169.00 AS Decimal(18, 2)), CAST(N'2026-03-26T13:07:21.400' AS DateTime), NULL, 0, CAST(N'2026-03-26T13:07:21.400' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (65, 21, 101, CAST(35504.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:35:08.523' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:35:08.523' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (66, 21, 147, CAST(39722.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:35:08.540' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:35:08.540' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (67, 21, 21, CAST(35070.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:35:08.540' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:35:08.540' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (68, 21, 61, CAST(39009.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:35:08.540' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:35:08.540' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (69, 22, 102, CAST(38808.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:36:12.463' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:36:12.463' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (70, 22, 131, CAST(40056.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:36:12.483' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:36:12.483' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (71, 22, 22, CAST(44116.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:36:12.487' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:36:12.487' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (72, 22, 62, CAST(39671.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:36:12.487' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:36:12.487' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (73, 23, 103, CAST(37088.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:37:17.927' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:37:17.927' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (74, 23, 23, CAST(44420.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:37:17.927' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:37:17.927' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (75, 23, 63, CAST(42363.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:37:17.927' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:37:17.927' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (76, 24, 104, CAST(35436.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (77, 24, 132, CAST(37774.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (78, 24, 148, CAST(41864.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (79, 24, 24, CAST(42833.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (80, 24, 64, CAST(39411.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:39:15.167' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:39:15.167' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (81, 25, 105, CAST(38069.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (82, 25, 25, CAST(38186.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (83, 25, 65, CAST(38520.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:43:47.680' AS DateTime), NULL, 0, CAST(N'2026-03-26T14:43:47.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (84, 47, 168, CAST(1500.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:44:52.657' AS DateTime), NULL, 2, CAST(N'2026-03-26T14:44:52.657' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (85, 48, 169, CAST(1500.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:50:27.910' AS DateTime), NULL, 2, CAST(N'2026-03-26T14:50:27.910' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (86, 48, 170, CAST(1500.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:50:27.910' AS DateTime), NULL, 2, CAST(N'2026-03-26T14:50:27.910' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (87, 49, 171, CAST(1500.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:59:22.603' AS DateTime), NULL, 2, CAST(N'2026-03-26T14:59:22.603' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (88, 49, 172, CAST(1500.00 AS Decimal(18, 2)), CAST(N'2026-03-26T14:59:22.603' AS DateTime), NULL, 2, CAST(N'2026-03-26T14:59:22.603' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (89, 17, 17, CAST(37544.00 AS Decimal(18, 2)), CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (90, 17, 57, CAST(43349.00 AS Decimal(18, 2)), CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (91, 17, 97, CAST(40532.00 AS Decimal(18, 2)), CAST(N'2026-03-26T15:00:42.143' AS DateTime), NULL, 0, CAST(N'2026-03-26T15:00:42.143' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (92, 18, 129, CAST(38588.00 AS Decimal(18, 2)), CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (93, 18, 146, CAST(39551.00 AS Decimal(18, 2)), CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (94, 18, 18, CAST(43478.00 AS Decimal(18, 2)), CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (95, 18, 58, CAST(42999.00 AS Decimal(18, 2)), CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (96, 18, 98, CAST(43987.00 AS Decimal(18, 2)), CAST(N'2026-03-26T15:01:42.223' AS DateTime), NULL, 0, CAST(N'2026-03-26T15:01:42.223' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (97, 11, 11, CAST(38808.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:43:06.873' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:43:06.873' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (98, 11, 51, CAST(35615.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:43:06.873' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:43:06.873' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (99, 11, 91, CAST(41641.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:43:06.873' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:43:06.873' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (100, 12, 12, CAST(39005.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (101, 12, 126, CAST(37165.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (102, 12, 144, CAST(43998.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (103, 12, 52, CAST(39139.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (104, 12, 92, CAST(44358.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:44:01.320' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:44:01.320' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (105, 13, 13, CAST(44674.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (106, 13, 53, CAST(35802.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (107, 13, 93, CAST(35390.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:44:40.840' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:44:40.840' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (108, 14, 127, CAST(37389.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (109, 14, 14, CAST(43736.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (110, 14, 54, CAST(39321.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (111, 14, 94, CAST(41080.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:45:30.207' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:45:30.207' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (112, 15, 145, CAST(39425.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (113, 15, 15, CAST(36200.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (114, 15, 55, CAST(41938.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (115, 15, 95, CAST(36842.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:46:19.527' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:46:19.527' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (116, 6, 123, CAST(42089.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:55:08.650' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:55:08.650' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (117, 6, 142, CAST(42151.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:55:08.650' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:55:08.650' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (118, 6, 46, CAST(40854.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:55:08.650' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:55:08.650' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (119, 6, 6, CAST(37131.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (120, 6, 86, CAST(43586.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:55:08.667' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:55:08.667' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (121, 10, 10, CAST(37474.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:56:00.830' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:56:00.830' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (122, 10, 125, CAST(37169.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:56:00.830' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:56:00.830' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (123, 10, 50, CAST(37942.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (124, 10, 90, CAST(40939.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:56:00.843' AS DateTime), NULL, 0, CAST(N'2026-03-26T16:56:00.843' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (125, 7, 47, CAST(38110.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (126, 7, 7, CAST(44425.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (127, 7, 87, CAST(35633.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:57:49.680' AS DateTime), NULL, 2, CAST(N'2026-03-26T16:57:49.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (128, 8, 124, CAST(41613.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:59:00.680' AS DateTime), NULL, 2, CAST(N'2026-03-26T16:59:00.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (129, 8, 48, CAST(40178.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:59:00.680' AS DateTime), NULL, 2, CAST(N'2026-03-26T16:59:00.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (130, 8, 8, CAST(39320.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:59:00.680' AS DateTime), NULL, 2, CAST(N'2026-03-26T16:59:00.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (131, 8, 88, CAST(40753.00 AS Decimal(18, 2)), CAST(N'2026-03-26T16:59:00.680' AS DateTime), NULL, 2, CAST(N'2026-03-26T16:59:00.680' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (132, 4, 122, CAST(42488.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:08:32.347' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:08:32.347' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (133, 4, 165, CAST(35395.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:08:32.347' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:08:32.347' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (134, 4, 4, CAST(35395.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:08:32.347' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:08:32.347' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (135, 4, 44, CAST(43582.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:08:32.347' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:08:32.347' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (136, 4, 84, CAST(44968.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:08:32.350' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:08:32.350' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (137, 5, 164, CAST(35374.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:09:20.243' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:09:20.243' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (138, 45, 162, CAST(1500.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:09:39.060' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:09:39.060' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (139, 45, 163, CAST(1500.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:09:39.060' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:09:39.060' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (140, 44, 161, CAST(1500.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:10:33.780' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:10:33.780' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (141, 1, 1, CAST(36278.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (142, 1, 41, CAST(43028.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (143, 1, 81, CAST(42159.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:12:54.170' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:12:54.170' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (144, 2, 121, CAST(40217.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (145, 2, 2, CAST(43301.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (146, 2, 42, CAST(35536.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (147, 2, 82, CAST(42935.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:13:43.177' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:13:43.177' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (148, 31, 111, CAST(38168.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (149, 31, 31, CAST(41905.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (150, 31, 71, CAST(37518.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:20:48.640' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:20:48.640' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (151, 32, 112, CAST(41821.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:21:42.497' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:21:42.497' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (152, 32, 136, CAST(37167.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:21:42.497' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:21:42.497' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (153, 32, 32, CAST(44890.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:21:42.497' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:21:42.497' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (154, 32, 72, CAST(36977.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:21:42.497' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:21:42.497' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (155, 33, 113, CAST(42823.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (156, 33, 151, CAST(38221.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (157, 33, 33, CAST(41640.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (158, 33, 73, CAST(35168.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:22:51.657' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:22:51.657' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (159, 34, 114, CAST(44139.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:23:46.237' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:23:46.237' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (160, 34, 137, CAST(40893.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:23:46.237' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:23:46.237' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (161, 34, 34, CAST(37242.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:23:46.253' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:23:46.253' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (162, 34, 74, CAST(44834.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:23:46.253' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:23:46.253' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (163, 35, 115, CAST(44589.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (164, 35, 35, CAST(44716.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (165, 35, 75, CAST(39092.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:24:40.040' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:24:40.040' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (166, 19, 19, CAST(44104.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:26:13.750' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:26:13.750' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (167, 19, 59, CAST(37968.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:26:13.763' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:26:13.763' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (168, 19, 99, CAST(36790.00 AS Decimal(18, 2)), CAST(N'2026-03-26T17:26:13.763' AS DateTime), NULL, 2, CAST(N'2026-03-26T17:26:13.763' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (169, 50, 173, NULL, CAST(N'2026-06-01T15:01:37.043' AS DateTime), NULL, 1, CAST(N'2026-06-01T15:01:37.043' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (170, 51, 174, NULL, CAST(N'2026-06-01T15:06:30.450' AS DateTime), CAST(N'2026-06-01T15:33:11.697' AS DateTime), 1, CAST(N'2026-06-01T15:06:30.450' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (171, 51, 175, NULL, CAST(N'2026-06-01T15:32:35.063' AS DateTime), CAST(N'2026-06-01T15:33:11.697' AS DateTime), 1, CAST(N'2026-06-01T15:32:35.063' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (172, 51, 174, CAST(0.00 AS Decimal(18, 2)), CAST(N'2026-06-01T15:33:11.697' AS DateTime), NULL, 0, CAST(N'2026-06-01T15:33:11.697' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (173, 51, 175, CAST(0.00 AS Decimal(18, 2)), CAST(N'2026-06-01T15:33:11.697' AS DateTime), NULL, 0, CAST(N'2026-06-01T15:33:11.697' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (174, 51, 176, NULL, CAST(N'2026-06-01T15:34:53.600' AS DateTime), NULL, 1, CAST(N'2026-06-01T15:34:53.600' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (175, 52, 177, CAST(250.00 AS Decimal(18, 2)), CAST(N'2026-06-01T15:36:34.113' AS DateTime), NULL, 2, CAST(N'2026-06-01T15:36:34.113' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (176, 53, 178, NULL, CAST(N'2026-06-01T15:39:37.463' AS DateTime), CAST(N'2026-06-01T15:40:07.513' AS DateTime), 1, CAST(N'2026-06-01T15:39:37.463' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (177, 53, 178, CAST(0.00 AS Decimal(18, 2)), CAST(N'2026-06-01T15:40:07.513' AS DateTime), NULL, 2, CAST(N'2026-06-01T15:40:07.513' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (178, 54, 179, CAST(85.00 AS Decimal(18, 2)), CAST(N'2026-06-16T12:47:07.873' AS DateTime), NULL, 1, CAST(N'2026-06-16T12:47:07.873' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (179, 55, 180, CAST(190.00 AS Decimal(18, 2)), CAST(N'2026-06-16T13:13:55.447' AS DateTime), NULL, 1, CAST(N'2026-06-16T13:13:55.447' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (180, 56, 181, CAST(130.00 AS Decimal(18, 2)), CAST(N'2026-06-16T13:18:17.727' AS DateTime), NULL, 1, CAST(N'2026-06-16T13:18:17.727' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (181, 57, 182, CAST(190.00 AS Decimal(18, 2)), CAST(N'2026-06-16T13:19:51.750' AS DateTime), NULL, 1, CAST(N'2026-06-16T13:19:51.750' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (182, 57, 183, NULL, CAST(N'2026-06-16T13:40:06.683' AS DateTime), NULL, 1, CAST(N'2026-06-16T13:40:06.683' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (183, 58, 184, CAST(2500.00 AS Decimal(18, 2)), CAST(N'2026-06-16T15:40:29.707' AS DateTime), NULL, 1, CAST(N'2026-06-16T15:40:29.707' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (184, 54, 185, NULL, CAST(N'2026-06-16T17:56:31.833' AS DateTime), NULL, 1, CAST(N'2026-06-16T17:56:31.833' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (185, 54, 186, NULL, CAST(N'2026-06-16T17:57:53.880' AS DateTime), NULL, 1, CAST(N'2026-06-16T17:57:53.880' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (186, 54, 187, NULL, CAST(N'2026-06-16T18:12:20.720' AS DateTime), NULL, 1, CAST(N'2026-06-16T18:12:20.720' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (187, 55, 188, NULL, CAST(N'2026-06-16T18:17:19.567' AS DateTime), NULL, 1, CAST(N'2026-06-16T18:17:19.567' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (188, 56, 189, NULL, CAST(N'2026-06-16T18:20:33.527' AS DateTime), NULL, 1, CAST(N'2026-06-16T18:20:33.527' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (189, 57, 190, NULL, CAST(N'2026-06-16T18:23:29.070' AS DateTime), NULL, 1, CAST(N'2026-06-16T18:23:29.070' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (190, 59, 191, CAST(60.00 AS Decimal(18, 2)), CAST(N'2026-06-16T21:01:09.863' AS DateTime), NULL, 1, CAST(N'2026-06-16T21:01:09.863' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (191, 59, 192, CAST(120.00 AS Decimal(18, 2)), CAST(N'2026-06-16T22:15:07.883' AS DateTime), NULL, 1, CAST(N'2026-06-16T22:15:07.883' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (192, 60, 193, CAST(120.00 AS Decimal(18, 2)), CAST(N'2026-06-17T08:23:53.587' AS DateTime), CAST(N'2026-06-17T08:28:20.340' AS DateTime), 1, CAST(N'2026-06-17T08:23:53.587' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (193, 60, 191, CAST(60.00 AS Decimal(18, 2)), CAST(N'2026-06-17T08:23:53.590' AS DateTime), NULL, 1, CAST(N'2026-06-17T08:23:53.590' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (194, 60, 194, CAST(120.00 AS Decimal(18, 2)), CAST(N'2026-06-17T08:28:20.240' AS DateTime), NULL, 1, CAST(N'2026-06-17T08:28:20.240' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (195, 60, 193, CAST(60.00 AS Decimal(18, 2)), CAST(N'2026-06-17T08:28:20.340' AS DateTime), NULL, 1, CAST(N'2026-06-17T08:28:20.340' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (196, 61, 195, CAST(60.00 AS Decimal(18, 2)), CAST(N'2026-06-17T08:41:13.387' AS DateTime), NULL, 1, CAST(N'2026-06-17T08:41:13.387' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (197, 61, 196, CAST(120.00 AS Decimal(18, 2)), CAST(N'2026-06-17T08:41:13.407' AS DateTime), NULL, 1, CAST(N'2026-06-17T08:41:13.407' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (198, 62, 197, CAST(60.00 AS Decimal(18, 2)), CAST(N'2026-06-17T09:07:44.950' AS DateTime), NULL, 1, CAST(N'2026-06-17T09:07:44.950' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (199, 62, 198, CAST(120.00 AS Decimal(18, 2)), CAST(N'2026-06-17T09:07:45.190' AS DateTime), NULL, 1, CAST(N'2026-06-17T09:07:45.190' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (200, 63, 199, CAST(210.00 AS Decimal(18, 2)), CAST(N'2026-06-17T14:15:30.953' AS DateTime), NULL, 1, CAST(N'2026-06-17T14:15:30.953' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (201, 64, 200, CAST(80.00 AS Decimal(18, 2)), CAST(N'2026-06-17T14:56:45.753' AS DateTime), NULL, 1, CAST(N'2026-06-17T14:56:45.753' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (202, 64, 201, CAST(300.00 AS Decimal(18, 2)), CAST(N'2026-06-17T14:56:45.760' AS DateTime), NULL, 1, CAST(N'2026-06-17T14:56:45.760' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (203, 64, 202, CAST(180.00 AS Decimal(18, 2)), CAST(N'2026-06-17T14:56:45.760' AS DateTime), NULL, 1, CAST(N'2026-06-17T14:56:45.760' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (204, 65, 203, CAST(80.00 AS Decimal(18, 2)), CAST(N'2026-06-17T17:50:29.487' AS DateTime), NULL, 1, CAST(N'2026-06-17T17:50:29.487' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (205, 65, 204, CAST(80.00 AS Decimal(18, 2)), CAST(N'2026-06-17T19:38:21.620' AS DateTime), NULL, 1, CAST(N'2026-06-17T19:38:21.620' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (206, 65, 205, CAST(80.00 AS Decimal(18, 2)), CAST(N'2026-06-17T20:35:34.487' AS DateTime), NULL, 1, CAST(N'2026-06-17T20:35:34.487' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (207, 66, 206, CAST(130.00 AS Decimal(18, 2)), CAST(N'2026-06-17T20:46:39.887' AS DateTime), NULL, 1, CAST(N'2026-06-17T20:46:39.887' AS DateTime))
GO
INSERT [dbo].[ProductPriceHistory] ([Id], [ProductId], [VariantId], [Price], [StartDate], [EndDate], [CreatedBy], [CreatedDate]) VALUES (208, 67, 207, CAST(1000.00 AS Decimal(18, 2)), CAST(N'2026-06-18T19:15:57.163' AS DateTime), NULL, 1, CAST(N'2026-06-18T19:15:57.163' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ProductPriceHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (54, 15, N'Beet Radiance', N'Beet Radiance handmade beetroot soap from Hridhay Connect – enriched with natural beetroot extracts for glowing skin. A chemical-free, Ayurvedic skincare solution', 1, 0, 1, CAST(N'2026-06-16T12:47:07.840' AS DateTime), 1, CAST(N'2026-06-16T18:12:20.170' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (55, 15, N'Glow Craft Detan', N'Glow Craft Detan Soap by Hridhay Connect – a natural Ayurvedic soap that removes tan, brightens skin, and nourishes with herbal ingredients. Chemical-free skincare', 1, 0, 1, CAST(N'2026-06-16T13:13:55.367' AS DateTime), 1, CAST(N'2026-06-16T18:17:19.070' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (56, 15, N'Neem Aloe Fresh', N'Neem Aloe Fresh handmade Ayurvedic soap by Hridhay Connect – enriched with neem and aloe vera for deep cleansing, hydration, and clear, healthy skin. 100% chemical-free', 1, 0, 1, CAST(N'2026-06-16T13:18:17.293' AS DateTime), 1, CAST(N'2026-06-16T18:20:31.510' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (57, 15, N'Rice & Potato Blis', N'Rice Potato Bliss handmade soap by Hridhay Connect – enriched with rice water and potato extracts for clear, glowing skin. A natural, chemical-free Ayurvedic soap', 1, 0, 1, CAST(N'2026-06-16T13:19:51.197' AS DateTime), 1, CAST(N'2026-06-16T18:23:28.940' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (59, 17, N'Chocolate Mukhwas', N'a delicious blend of rich chocolate and traditional mouth freshener. Made with roasted seeds and cocoa sweetness, it’s the perfect post-meal treat that refreshes your breath and delights your taste buds.', 1, 0, 1, CAST(N'2026-06-16T21:01:07.190' AS DateTime), 1, CAST(N'2026-06-16T22:15:06.113' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (60, 17, N'Dhana Dal', N'Our Dhana Dal Mukhwas is a traditional homemade mouth freshener crafted using premium coriander seeds (dhana dal) and natural aromatic spices. Prepared in small batches at home, it offers a crunchy texture, mild flavor, and refreshing aroma, making it the perfect after-meal digestive and palate cleanser.', 1, 0, 1, CAST(N'2026-06-17T08:23:52.823' AS DateTime), 1, CAST(N'2026-06-17T08:34:56.707' AS DateTime))
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (61, 17, N'Digest', N'Digest Mukhwas by Hridhay Connect – a homemade Ayurvedic mouth freshener crafted with natural ingredients to aid digestion and keep your breath fresh after meals.', 1, 0, 1, CAST(N'2026-06-17T08:41:12.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (62, 17, N'Dil Khush', N'Dil Khush Mukhwas by Hridhay Connect – a traditional homemade Ayurvedic mouth freshener made with natural ingredients for freshness and healthy digestion after meals.', 1, 0, 1, CAST(N'2026-06-17T09:07:42.410' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (63, 16, N'Keshvedaam oil', N'Keshvedaam Ayurvedic Hair Oil by Hridhay Connect – a natural blend for hair growth, scalp nourishment, and hair fall control. 100% chemical-free herbal hair care.', 1, 0, 1, CAST(N'2026-06-17T14:15:22.590' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (64, 18, N'Tea Masala', N'a homemade Ayurvedic blend of natural spices for rich aroma, authentic taste, and health benefits. Perfect for your daily tea.', 1, 0, 1, CAST(N'2026-06-17T14:56:44.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [ProductName], [ProductDescription], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (66, 15, N'Kesudo Radiance Soap', N'Kesudo Radiance handmade Ayurvedic soap by Hridhay Connect – infused with natural kesudo extracts to brighten, nourish, and rejuvenate your skin. 100% chemical-free.', 1, 0, 1, CAST(N'2026-06-17T20:46:38.693' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductStock] ON 
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (161, 54, 187, 10, 2, 0, CAST(N'2026-06-16T19:02:22.060' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (162, 55, 188, 49, 1, 0, CAST(N'2026-06-16T19:02:49.793' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (163, 56, 189, 67, 0, 0, CAST(N'2026-06-16T19:03:11.577' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (164, 57, 190, 79, 0, 0, CAST(N'2026-06-16T19:03:31.957' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (165, 59, 191, 163, 1, 0, CAST(N'2026-06-17T09:17:16.993' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (166, 60, 193, 100, 1, 2, CAST(N'2026-06-17T09:12:37.100' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (167, 61, 195, 95, 1, 2, CAST(N'2026-06-17T09:13:30.120' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (168, 62, 197, 114, 0, 2, CAST(N'2026-06-17T09:14:22.077' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (175, 64, 200, 98, 0, 1, CAST(N'2026-06-17T14:59:22.500' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (176, 64, 201, 120, 3, 1, CAST(N'2026-06-17T15:03:31.520' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (177, 64, 202, 200, 0, 1, CAST(N'2026-06-17T15:04:01.613' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (179, 66, 206, 98, 1, 1, CAST(N'2026-06-17T20:56:51.100' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (170, 59, 192, 50, 0, 1, CAST(N'2026-06-17T09:25:03.377' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (171, 60, 194, 19, 0, 1, CAST(N'2026-06-17T09:25:19.947' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (172, 61, 196, 79, 1, 1, CAST(N'2026-06-17T09:25:33.980' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (173, 62, 198, 60, 0, 1, CAST(N'2026-06-17T09:25:51.443' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (174, 63, 199, 98, 0, 1, CAST(N'2026-06-17T14:24:43.943' AS DateTime))
GO
INSERT [dbo].[ProductStock] ([Id], [ProductId], [VariantId], [AvailableStock], [ReservedStock], [LastModifiedBy], [LastModifiedDate]) VALUES (178, 66, 0, 50, 0, 0, CAST(N'2026-06-17T20:53:41.053' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ProductStock] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductStockHistory] ON 
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (134, 54, 0, N'IN', 10, NULL, NULL, N'string', 0, CAST(N'2026-06-16T13:45:24.850' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (135, 55, 0, N'IN', 55, NULL, NULL, N'string', 0, CAST(N'2026-06-16T13:48:50.230' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (136, 56, 0, N'IN', 56, NULL, NULL, N'string', 0, CAST(N'2026-06-16T13:48:58.030' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (137, 57, 0, N'IN', 57, NULL, NULL, N'string', 0, CAST(N'2026-06-16T13:49:10.223' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (138, 54, 0, N'IN', 10, NULL, NULL, N'string', 0, CAST(N'2026-06-16T19:02:22.073' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (139, 55, 0, N'IN', 15, NULL, NULL, N'string', 0, CAST(N'2026-06-16T19:02:49.797' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (140, 56, 0, N'IN', 20, NULL, NULL, N'string', 0, CAST(N'2026-06-16T19:03:11.583' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (141, 57, 0, N'IN', 25, NULL, NULL, N'string', 0, CAST(N'2026-06-16T19:03:31.960' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (142, 59, 0, N'IN', 50, NULL, NULL, N'string', 2, CAST(N'2026-06-17T09:11:33.783' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (143, 59, 0, N'IN', 25, NULL, NULL, N'string', 2, CAST(N'2026-06-17T09:11:53.523' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (144, 60, 0, N'IN', 40, NULL, NULL, N'string', 2, CAST(N'2026-06-17T09:12:21.050' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (145, 60, 0, N'IN', 60, NULL, NULL, N'string', 2, CAST(N'2026-06-17T09:12:37.100' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (146, 61, 0, N'IN', 30, NULL, NULL, N'string', 2, CAST(N'2026-06-17T09:13:13.850' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (147, 61, 0, N'IN', 70, NULL, NULL, N'string', 2, CAST(N'2026-06-17T09:13:30.123' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (148, 62, 0, N'IN', 20, NULL, NULL, N'string', 2, CAST(N'2026-06-17T09:13:49.527' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (149, 62, 0, N'IN', 20, NULL, NULL, N'string', 2, CAST(N'2026-06-17T09:14:09.257' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (150, 62, 0, N'IN', 80, NULL, NULL, N'string', 2, CAST(N'2026-06-17T09:14:22.077' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (152, 59, 0, N'IN', 80, NULL, NULL, N'string', 2, CAST(N'2026-06-17T09:15:39.180' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (153, 59, 0, N'IN', 10, NULL, NULL, N'', 0, CAST(N'2026-06-17T09:17:17.023' AS DateTime))
GO
INSERT [dbo].[ProductStockHistory] ([Id], [ProductId], [VariantId], [ChangeType], [Quantity], [ReferenceId], [ReferenceType], [Remarks], [LastModifiedBy], [LastModifiedDate]) VALUES (154, 66, 0, N'IN', 50, NULL, NULL, N'', 0, CAST(N'2026-06-17T20:53:41.060' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ProductStockHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductVariantDetails] ON 
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3038, 187, 12, 62, 1, 0, 1, CAST(N'2026-06-16T18:12:20.983' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3039, 188, 12, 62, 1, 0, 1, CAST(N'2026-06-16T18:17:19.690' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3040, 189, 12, 62, 1, 0, 1, CAST(N'2026-06-16T18:20:34.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3041, 190, 12, 62, 1, 0, 1, CAST(N'2026-06-16T18:23:29.160' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3066, 192, 13, 64, 1, 0, 1, CAST(N'2026-06-16T22:15:08.143' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3072, 191, 13, 63, 1, 0, 1, CAST(N'2026-06-17T08:23:53.633' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3082, 193, 13, 63, 1, 0, 1, CAST(N'2026-06-17T08:34:56.923' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3084, 194, 13, 64, 1, 0, 1, CAST(N'2026-06-17T08:34:56.923' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3086, 195, 13, 63, 1, 0, 1, CAST(N'2026-06-17T08:41:13.500' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3088, 196, 13, 64, 1, 0, 1, CAST(N'2026-06-17T08:41:13.500' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3090, 197, 13, 63, 1, 0, 1, CAST(N'2026-06-17T09:07:45.233' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3092, 198, 13, 64, 1, 0, 1, CAST(N'2026-06-17T09:07:45.233' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3094, 199, 12, 62, 1, 0, 1, CAST(N'2026-06-17T14:15:31.263' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3095, 202, 13, 63, 1, 0, 1, CAST(N'2026-06-17T14:56:45.803' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3096, 201, 13, 64, 1, 0, 1, CAST(N'2026-06-17T14:56:45.803' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3097, 200, 13, 67, 1, 0, 1, CAST(N'2026-06-17T14:56:45.803' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3098, 203, 13, 63, 1, 0, 1, CAST(N'2026-06-17T17:50:30.077' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3099, 204, 13, 63, 1, 0, 1, CAST(N'2026-06-17T19:38:22.037' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3100, 205, 13, 63, 1, 0, 1, CAST(N'2026-06-17T20:35:35.940' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ProductVariantDetails] ([Id], [VariantId], [AttributeId], [AttributeValueId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3101, 206, 11, 62, 1, 0, 1, CAST(N'2026-06-17T20:46:40.710' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ProductVariantDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductVariantMapping] ON 
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (187, 54, N'P-101', CAST(160.00 AS Decimal(18, 2)), 0, 1, 0, 1, CAST(N'2026-06-16T18:12:20.700' AS DateTime), NULL, NULL, CAST(47.00 AS Decimal(5, 2)), CAST(85.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (188, 55, N'P-10', CAST(190.00 AS Decimal(18, 2)), 0, 1, 0, 1, CAST(N'2026-06-16T18:17:19.497' AS DateTime), NULL, NULL, CAST(53.00 AS Decimal(5, 2)), CAST(89.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (189, 56, N'P-103', CAST(130.00 AS Decimal(18, 2)), 0, 1, 0, 1, CAST(N'2026-06-16T18:20:33.317' AS DateTime), NULL, NULL, CAST(46.00 AS Decimal(5, 2)), CAST(70.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (190, 57, N'P-104', CAST(190.00 AS Decimal(18, 2)), 0, 1, 0, 1, CAST(N'2026-06-16T18:23:29.057' AS DateTime), NULL, NULL, CAST(53.00 AS Decimal(5, 2)), CAST(89.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (191, 59, N'M-101', CAST(60.00 AS Decimal(18, 2)), NULL, 1, 0, 1, CAST(N'2026-06-16T21:01:09.627' AS DateTime), 1, CAST(N'2026-06-16T22:15:07.743' AS DateTime), CAST(0.00 AS Decimal(5, 2)), CAST(60.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (192, 59, N'M-102', CAST(120.00 AS Decimal(18, 2)), NULL, 1, 0, 1, CAST(N'2026-06-16T22:15:07.780' AS DateTime), NULL, NULL, CAST(0.00 AS Decimal(5, 2)), CAST(120.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (193, 60, N'M-101', CAST(60.00 AS Decimal(18, 2)), NULL, 1, 0, 1, CAST(N'2026-06-17T08:23:53.570' AS DateTime), 1, CAST(N'2026-06-17T08:34:56.880' AS DateTime), CAST(0.00 AS Decimal(5, 2)), CAST(60.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (194, 60, N'', CAST(120.00 AS Decimal(18, 2)), NULL, 1, 0, 1, CAST(N'2026-06-17T08:28:20.047' AS DateTime), 1, CAST(N'2026-06-17T08:34:56.880' AS DateTime), CAST(0.00 AS Decimal(5, 2)), CAST(120.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (195, 61, N'M-102', CAST(60.00 AS Decimal(18, 2)), NULL, 1, 0, 1, CAST(N'2026-06-17T08:41:13.347' AS DateTime), NULL, NULL, CAST(0.00 AS Decimal(5, 2)), CAST(60.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (196, 61, N'', CAST(120.00 AS Decimal(18, 2)), NULL, 1, 0, 1, CAST(N'2026-06-17T08:41:13.357' AS DateTime), NULL, NULL, CAST(0.00 AS Decimal(5, 2)), CAST(120.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (197, 62, N'M-104', CAST(60.00 AS Decimal(18, 2)), NULL, 1, 0, 1, CAST(N'2026-06-17T09:07:44.640' AS DateTime), NULL, NULL, CAST(0.00 AS Decimal(5, 2)), CAST(60.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (198, 62, N'M-105', CAST(120.00 AS Decimal(18, 2)), NULL, 1, 0, 1, CAST(N'2026-06-17T09:07:44.690' AS DateTime), NULL, NULL, CAST(0.00 AS Decimal(5, 2)), CAST(120.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (199, 63, N'O-104', CAST(210.00 AS Decimal(18, 2)), NULL, 1, 0, 1, CAST(N'2026-06-17T14:15:30.687' AS DateTime), NULL, NULL, CAST(0.00 AS Decimal(5, 2)), CAST(210.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (200, 64, N'M-104', CAST(80.00 AS Decimal(18, 2)), NULL, 1, 0, 1, CAST(N'2026-06-17T14:56:45.713' AS DateTime), NULL, NULL, CAST(0.00 AS Decimal(5, 2)), CAST(80.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (201, 64, N'M-105', CAST(300.00 AS Decimal(18, 2)), NULL, 1, 0, 1, CAST(N'2026-06-17T14:56:45.727' AS DateTime), NULL, NULL, CAST(0.00 AS Decimal(5, 2)), CAST(300.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (202, 64, N'M-106', CAST(180.00 AS Decimal(18, 2)), NULL, 1, 0, 1, CAST(N'2026-06-17T14:56:45.730' AS DateTime), NULL, NULL, CAST(0.00 AS Decimal(5, 2)), CAST(180.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (203, 65, N'D-100', CAST(80.00 AS Decimal(18, 2)), NULL, 1, 1, 1, CAST(N'2026-06-17T17:50:28.563' AS DateTime), 1, CAST(N'2026-06-17T20:35:35.677' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (204, 65, N'D-100', CAST(80.00 AS Decimal(18, 2)), NULL, 1, 1, 1, CAST(N'2026-06-17T19:38:21.400' AS DateTime), 1, CAST(N'2026-06-17T20:35:35.677' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (205, 65, N'D-100', CAST(80.00 AS Decimal(18, 2)), NULL, 1, 0, 1, CAST(N'2026-06-17T20:35:30.747' AS DateTime), NULL, NULL, CAST(0.00 AS Decimal(5, 2)), CAST(80.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[ProductVariantMapping] ([Id], [ProductId], [SKU], [Price], [StockQuantity], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [DiscountPercent], [SellPrice], [IsPercentagePricing]) VALUES (206, 66, N'D-100', CAST(130.00 AS Decimal(18, 2)), NULL, 1, 0, 1, CAST(N'2026-06-17T20:46:39.840' AS DateTime), NULL, NULL, CAST(46.00 AS Decimal(5, 2)), CAST(70.00 AS Decimal(18, 2)), 1)
GO
SET IDENTITY_INSERT [dbo].[ProductVariantMapping] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 54, 27, 5, N'Good soap', 1, 1, 0, 0, CAST(N'2026-07-01T16:10:43.127' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, 54, 57, 3, N'Good soap', 1, 1, 0, 0, CAST(N'2026-07-01T15:10:43.127' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, 57, 27, 3, N'Good soap', 1, 1, 0, 0, CAST(N'2026-07-01T15:11:41.823' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 64, 0, 3, N'Good Masala', 0, 1, 0, 0, CAST(N'2026-07-03T09:40:00.320' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [ProductId], [UserId], [Rating], [ReviewText], [IsApproved], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 54, 27, 3, N'Its Really Good', 0, 1, 0, 27, CAST(N'2026-07-03T10:04:40.113' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
SET IDENTITY_INSERT [dbo].[Reward] ON 
GO
INSERT [dbo].[Reward] ([Id], [CustomerId], [RewardType], [Coins], [ReferenceCustomerId], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RemainingBalance]) VALUES (1, 27, N'LOGIN', CAST(10.00 AS Decimal(18, 2)), NULL, N'Daily Login Reward', 1, 0, NULL, CAST(N'2026-06-22T14:04:16.060' AS DateTime), NULL, NULL, 374)
GO
INSERT [dbo].[Reward] ([Id], [CustomerId], [RewardType], [Coins], [ReferenceCustomerId], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RemainingBalance]) VALUES (2, 27, N'ORDER_RETURN', CAST(60.00 AS Decimal(18, 2)), NULL, N'Coins refunded for cancelled order #ORD-20260622140350', 1, 0, 27, CAST(N'2026-06-22T17:36:33.593' AS DateTime), NULL, NULL, 434)
GO
INSERT [dbo].[Reward] ([Id], [CustomerId], [RewardType], [Coins], [ReferenceCustomerId], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RemainingBalance]) VALUES (3, 27, N'LOGIN', CAST(10.00 AS Decimal(18, 2)), NULL, N'Daily Login Reward', 1, 0, NULL, CAST(N'2026-06-23T10:59:49.850' AS DateTime), NULL, NULL, 444)
GO
INSERT [dbo].[Reward] ([Id], [CustomerId], [RewardType], [Coins], [ReferenceCustomerId], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RemainingBalance]) VALUES (4, 27, N'LOGIN', CAST(10.00 AS Decimal(18, 2)), NULL, N'Daily Login Reward', 1, 0, NULL, CAST(N'2026-06-24T10:05:14.963' AS DateTime), NULL, NULL, 34)
GO
INSERT [dbo].[Reward] ([Id], [CustomerId], [RewardType], [Coins], [ReferenceCustomerId], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RemainingBalance]) VALUES (5, 27, N'LOGIN', CAST(10.00 AS Decimal(18, 2)), NULL, N'Daily Login Reward', 1, 0, NULL, CAST(N'2026-06-25T12:24:20.370' AS DateTime), NULL, NULL, 44)
GO
INSERT [dbo].[Reward] ([Id], [CustomerId], [RewardType], [Coins], [ReferenceCustomerId], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RemainingBalance]) VALUES (6, 38, N'SIGNUP', CAST(500.00 AS Decimal(18, 2)), NULL, N'Signup Reward', 1, 0, 0, CAST(N'2026-06-26T09:19:01.250' AS DateTime), NULL, NULL, 500)
GO
INSERT [dbo].[Reward] ([Id], [CustomerId], [RewardType], [Coins], [ReferenceCustomerId], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RemainingBalance]) VALUES (7, 27, N'LOGIN', CAST(10.00 AS Decimal(18, 2)), NULL, N'Daily Login Reward', 1, 0, NULL, CAST(N'2026-06-29T15:02:16.687' AS DateTime), NULL, NULL, 54)
GO
INSERT [dbo].[Reward] ([Id], [CustomerId], [RewardType], [Coins], [ReferenceCustomerId], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RemainingBalance]) VALUES (8, 27, N'LOGIN', CAST(10.00 AS Decimal(18, 2)), NULL, N'Daily Login Reward', 1, 0, NULL, CAST(N'2026-07-01T08:42:57.980' AS DateTime), NULL, NULL, 64)
GO
INSERT [dbo].[Reward] ([Id], [CustomerId], [RewardType], [Coins], [ReferenceCustomerId], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RemainingBalance]) VALUES (9, 27, N'LOGIN', CAST(10.00 AS Decimal(18, 2)), NULL, N'Daily Login Reward', 1, 0, NULL, CAST(N'2026-07-02T08:39:06.707' AS DateTime), NULL, NULL, 14)
GO
INSERT [dbo].[Reward] ([Id], [CustomerId], [RewardType], [Coins], [ReferenceCustomerId], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RemainingBalance]) VALUES (10, 27, N'LOGIN', CAST(10.00 AS Decimal(18, 2)), NULL, N'Daily Login Reward', 1, 0, NULL, CAST(N'2026-07-03T08:41:01.760' AS DateTime), NULL, NULL, 24)
GO
INSERT [dbo].[Reward] ([Id], [CustomerId], [RewardType], [Coins], [ReferenceCustomerId], [Remarks], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [RemainingBalance]) VALUES (11, 39, N'SIGNUP', CAST(500.00 AS Decimal(18, 2)), NULL, N'Signup Reward', 1, 0, 0, CAST(N'2026-08-18T15:04:30.510' AS DateTime), NULL, NULL, 500)
GO
SET IDENTITY_INSERT [dbo].[Reward] OFF
GO
SET IDENTITY_INSERT [dbo].[RewardSettings] ON 
GO
INSERT [dbo].[RewardSettings] ([Id], [SignupCoins], [LoginCoins], [ReferralCoins], [ReferralJoinCoins], [CoinToRupeeRate], [IsActive], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [MaxCoinUsagePercent]) VALUES (1, CAST(500.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 1, 1, CAST(N'2026-06-04T11:11:22.273' AS DateTime), 2, CAST(N'2026-06-05T11:43:16.000' AS DateTime), CAST(30.00 AS Decimal(5, 2)))
GO
SET IDENTITY_INSERT [dbo].[RewardSettings] OFF
GO
SET IDENTITY_INSERT [dbo].[RewardUsageHistory] ON 
GO
INSERT [dbo].[RewardUsageHistory] ([Id], [CustomerId], [OrderId], [UsedCoins], [CoinAmount], [Remarks], [CreatedBy], [CreatedDate], [IsActive], [IsDeleted], [RemainingBalance]) VALUES (1, 27, 2, CAST(60.00 AS Decimal(18, 2)), CAST(60.00 AS Decimal(18, 2)), N'Reward Coin Used During Checkout', 0, CAST(N'2026-06-22T14:03:50.833' AS DateTime), 0, 0, 364)
GO
INSERT [dbo].[RewardUsageHistory] ([Id], [CustomerId], [OrderId], [UsedCoins], [CoinAmount], [Remarks], [CreatedBy], [CreatedDate], [IsActive], [IsDeleted], [RemainingBalance]) VALUES (2, 27, 3, CAST(420.00 AS Decimal(18, 2)), CAST(42.00 AS Decimal(18, 2)), N'Reward Coin Used During Checkout', 0, CAST(N'2026-06-23T14:06:56.007' AS DateTime), 1, 0, 24)
GO
INSERT [dbo].[RewardUsageHistory] ([Id], [CustomerId], [OrderId], [UsedCoins], [CoinAmount], [Remarks], [CreatedBy], [CreatedDate], [IsActive], [IsDeleted], [RemainingBalance]) VALUES (3, 27, 8, CAST(60.00 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), N'Reward Coin Used During Checkout', 27, CAST(N'2026-07-01T14:58:12.723' AS DateTime), 1, 0, 4)
GO
SET IDENTITY_INSERT [dbo].[RewardUsageHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[RolePermissions] ON 
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 1, 1, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, 1, 2, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, 1, 3, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 1, 4, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 1, 5, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (16, 4, 1, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (17, 4, 2, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (18, 4, 3, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (19, 4, 4, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (20, 4, 5, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (21, 5, 1, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (22, 5, 2, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (23, 5, 3, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (24, 5, 4, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (25, 5, 5, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (26, 6, 1, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (27, 6, 2, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (28, 6, 3, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (29, 6, 4, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (30, 6, 5, 1, 0, 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime), 1, CAST(N'2026-02-27T17:02:13.787' AS DateTime))
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (107, 8, 9, 1, 0, 2, CAST(N'2026-03-13T13:08:44.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (108, 8, 10, 1, 0, 2, CAST(N'2026-03-13T13:08:44.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (109, 8, 11, 1, 0, 2, CAST(N'2026-03-13T13:08:44.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (110, 8, 12, 1, 0, 2, CAST(N'2026-03-13T13:08:44.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (111, 8, 13, 1, 0, 2, CAST(N'2026-03-13T13:08:44.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (112, 8, 14, 1, 0, 2, CAST(N'2026-03-13T13:08:44.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (113, 8, 15, 1, 0, 2, CAST(N'2026-03-13T13:08:44.950' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (114, 3, 1, 1, 0, 2, CAST(N'2026-03-13T13:47:15.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (115, 3, 2, 1, 0, 2, CAST(N'2026-03-13T13:47:15.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (116, 3, 3, 1, 0, 2, CAST(N'2026-03-13T13:47:15.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (120, 12, 10, 1, 0, 2, CAST(N'2026-03-13T14:16:42.570' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (121, 12, 11, 1, 0, 2, CAST(N'2026-03-13T14:16:42.570' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (122, 12, 12, 1, 0, 2, CAST(N'2026-03-13T14:16:42.570' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (123, 12, 15, 1, 0, 2, CAST(N'2026-03-13T14:16:42.570' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (130, 13, 9, 1, 0, 2, CAST(N'2026-03-13T14:24:41.513' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (131, 13, 10, 1, 0, 2, CAST(N'2026-03-13T14:24:41.513' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (132, 13, 11, 1, 0, 2, CAST(N'2026-03-13T14:24:41.513' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (133, 13, 12, 1, 0, 2, CAST(N'2026-03-13T14:24:41.513' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (165, 14, 3, 1, 0, 2, CAST(N'2026-03-18T08:53:40.467' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (166, 14, 9, 1, 0, 2, CAST(N'2026-03-18T08:53:40.467' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (167, 14, 11, 1, 0, 2, CAST(N'2026-03-18T08:53:40.467' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (168, 14, 14, 1, 0, 2, CAST(N'2026-03-18T08:53:40.467' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (169, 14, 15, 1, 0, 2, CAST(N'2026-03-18T08:53:40.467' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (170, 14, 19, 1, 0, 2, CAST(N'2026-03-18T08:53:40.467' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (185, 2, 1, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (186, 2, 2, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (187, 2, 3, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (188, 2, 5, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (189, 2, 9, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (190, 2, 10, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (191, 2, 11, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (192, 2, 12, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (193, 2, 13, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (194, 2, 14, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (195, 2, 15, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (196, 2, 20, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (197, 2, 21, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (198, 2, 23, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (199, 2, 24, 1, 0, 2, CAST(N'2026-03-20T12:34:36.883' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (200, 15, 1, 1, 0, 2, CAST(N'2026-05-29T21:17:02.407' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (201, 15, 2, 1, 0, 2, CAST(N'2026-05-29T21:17:02.407' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (202, 15, 3, 1, 0, 2, CAST(N'2026-05-29T21:17:02.407' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (203, 15, 4, 1, 0, 2, CAST(N'2026-05-29T21:17:02.407' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (204, 15, 5, 1, 0, 2, CAST(N'2026-05-29T21:17:02.407' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (205, 18, 1, 1, 0, 2, CAST(N'2026-05-29T21:21:20.733' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (206, 18, 2, 1, 0, 2, CAST(N'2026-05-29T21:21:20.733' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (207, 18, 3, 1, 0, 2, CAST(N'2026-05-29T21:21:20.733' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (208, 18, 4, 1, 0, 2, CAST(N'2026-05-29T21:21:20.733' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (209, 18, 5, 1, 0, 2, CAST(N'2026-05-29T21:21:20.733' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (210, 19, 1, 1, 0, 2, CAST(N'2026-05-29T21:23:22.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (211, 19, 2, 1, 0, 2, CAST(N'2026-05-29T21:23:22.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (212, 19, 3, 1, 0, 2, CAST(N'2026-05-29T21:23:22.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (213, 19, 4, 1, 0, 2, CAST(N'2026-05-29T21:23:22.980' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RolePermissions] ([Id], [RoleId], [ActionId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (214, 19, 5, 1, 0, 2, CAST(N'2026-05-29T21:23:22.980' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[RolePermissions] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, N'Super Admin', N'Full system access', 1, 0, 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, N'Admin', N'Full system access', 1, 0, 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), 2, CAST(N'2026-03-20T12:34:36.870' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, N'Store Manager', N'Test', 1, 0, 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), 2, CAST(N'2026-03-13T13:47:15.660' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, N'Sales Executive', N'Handles sales', 1, 0, 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, N'Inventory Controller', N'Controls stock', 1, 0, 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, N'Customer Support', N'Handles customer issues', 1, 0, 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, N'Test', NULL, 0, 1, 2, CAST(N'2026-03-06T14:05:51.357' AS DateTime), 2, CAST(N'2026-03-06T14:06:09.813' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, N'User', N'User', 0, 1, 2, CAST(N'2026-03-11T16:06:58.280' AS DateTime), 2, CAST(N'2026-03-13T13:41:33.447' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, N'Test-1', NULL, 0, 1, 2, CAST(N'2026-03-13T13:44:12.687' AS DateTime), 2, CAST(N'2026-03-13T13:44:16.810' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, N'September Price', N'Nisi veniam autem e', 0, 1, 2, CAST(N'2026-03-13T14:16:25.067' AS DateTime), 2, CAST(N'2026-03-13T14:16:48.763' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, N'Clark Hodges', N'Facilis corporis ten', 0, 1, 2, CAST(N'2026-03-13T14:23:18.073' AS DateTime), 2, CAST(N'2026-03-13T14:24:46.530' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (14, N'Althea Ball', N'Eligendi qui unde', 0, 1, 2, CAST(N'2026-03-18T08:53:31.047' AS DateTime), 2, CAST(N'2026-03-18T08:53:46.080' AS DateTime))
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (15, N'Testing', N'string', 1, 0, 2, CAST(N'2026-05-29T21:17:02.407' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (18, N'Testing2', N'string', 1, 0, 2, CAST(N'2026-05-29T21:21:20.717' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Roles] ([Id], [RoleName], [Description], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (19, N'Testing3', N'string', 1, 0, 2, CAST(N'2026-05-29T21:23:22.980' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[State] ON 
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (1, 1, N'Andhra Pradesh', N'AP', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (2, 1, N'Arunachal Pradesh', N'AR', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (3, 1, N'Assam', N'AS', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (4, 1, N'Bihar', N'BR', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (5, 1, N'Chhattisgarh', N'CG', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (6, 1, N'Goa', N'GA', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (7, 1, N'Gujarat', N'GJ', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (8, 1, N'Haryana', N'HR', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (9, 1, N'Himachal Pradesh', N'HP', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (10, 1, N'Jharkhand', N'JH', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (11, 1, N'Karnataka', N'KA', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (12, 1, N'Kerala', N'KL', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (13, 1, N'Madhya Pradesh', N'MP', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (14, 1, N'Maharashtra', N'MH', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (15, 1, N'Manipur', N'MN', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (16, 1, N'Meghalaya', N'ML', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (17, 1, N'Mizoram', N'MZ', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (18, 1, N'Nagaland', N'NL', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (19, 1, N'Odisha', N'OD', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (20, 1, N'Punjab', N'PB', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (21, 1, N'Rajasthan', N'RJ', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (22, 1, N'Sikkim', N'SK', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (23, 1, N'Tamil Nadu', N'TN', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (24, 1, N'Telangana', N'TS', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (25, 1, N'Tripura', N'TR', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (26, 1, N'Uttar Pradesh', N'UP', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (27, 1, N'Uttarakhand', N'UK', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (28, 1, N'West Bengal', N'WB', 1, 0, 1, CAST(N'2026-06-20T14:32:25.363' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (29, 1, N'Andaman and Nicobar Islands', N'AN', 1, 0, 1, CAST(N'2026-06-20T14:32:44.707' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (30, 1, N'Chandigarh', N'CH', 1, 0, 1, CAST(N'2026-06-20T14:32:44.707' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (31, 1, N'Dadra and Nagar Haveli and Daman and Diu', N'DN', 1, 0, 1, CAST(N'2026-06-20T14:32:44.707' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (32, 1, N'Delhi', N'DL', 1, 0, 1, CAST(N'2026-06-20T14:32:44.707' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (33, 1, N'Jammu and Kashmir', N'JK', 1, 0, 1, CAST(N'2026-06-20T14:32:44.707' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (34, 1, N'Ladakh', N'LA', 1, 0, 1, CAST(N'2026-06-20T14:32:44.707' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (35, 1, N'Lakshadweep', N'LD', 1, 0, 1, CAST(N'2026-06-20T14:32:44.707' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[State] ([StateId], [CountryId], [StateName], [StateCode], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate]) VALUES (36, 1, N'Puducherry', N'PY', 1, 0, 1, CAST(N'2026-06-20T14:32:44.707' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[State] OFF
GO
SET IDENTITY_INSERT [dbo].[User_ForgetPassword] ON 
GO
INSERT [dbo].[User_ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (1, N'vmgami2001@gmail.com', N'158674', CAST(N'2026-06-02T09:47:23.363' AS DateTime), CAST(N'2026-06-02T09:57:23.363' AS DateTime), 1)
GO
INSERT [dbo].[User_ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (2, N'vmgami2001@gmail.com', N'404083', CAST(N'2026-06-02T09:49:06.313' AS DateTime), CAST(N'2026-06-02T09:59:06.313' AS DateTime), 1)
GO
INSERT [dbo].[User_ForgetPassword] ([Id], [Email], [OTP], [CreatedAt], [ExpiryDate], [IsUsed]) VALUES (3, N'vmgami2001@gmail.com', N'833137', CAST(N'2026-06-02T09:55:20.400' AS DateTime), CAST(N'2026-06-02T10:05:20.400' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[User_ForgetPassword] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (1, N'Super', N'Admin', N'Adnin', N'Zt8+p2PF6g8=', 1, 1, 0, 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (2, N'Admin', N'', N'Admin', N'Zt8+p2PF6g8=', 2, 1, 0, 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.910' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (3, N'Arjun', N'Sharma', N'arjun.sharma@jewelrystore.com', N'k5wV61ccalc=', 5, 1, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (4, N'Riya', N'Patel', N'riya.patel@jewelrystore.com', N'k5wV61ccalc=', 5, 1, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (5, N'Kabir', N'Mehta', N'kabir.mehta@jewelrystore.com', N'k5wV61ccalc=', 4, 1, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (6, N'Sneha', N'Kapoor', N'sneha.kapoor@jewelrystore.com', N'k5wV61ccalc=', 3, 0, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 2, CAST(N'2026-02-28T11:32:31.400' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (7, N'Rahul', N'Reddy', N'rahul.reddy@jewelrystore.com', N'k5wV61ccalc=', 3, 1, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (8, N'Ananya', N'Iyer', N'ananya.iyer@jewelrystore.com', N'k5wV61ccalc=', 5, 1, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (9, N'Vikram', N'Malhotra', N'vikram.malhotra@jewelrystore.com', N'k5wV61ccalc=', 3, 1, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 2, CAST(N'2026-03-13T13:08:24.310' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (10, N'Meera', N'Desai', N'meera.desai@jewelrystore.com', N'k5wV61ccalc=', 4, 1, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (11, N'Aditya', N'Nair', N'aditya.nair@jewelrystore.com', N'k5wV61ccalc=', 3, 1, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (12, N'Priya', N'Verma', N'priya.verma1@jewelrystore.com', N'k5wV61ccalc=', 3, 1, 0, 1, CAST(N'2026-02-27T13:19:35.913' AS DateTime), 2, CAST(N'2026-03-18T08:53:16.463' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (13, N'Kaval', N'Patel', N'Kaval@jewelry.com', N'k5wV61ccalc=', 8, 0, 1, 2, CAST(N'2026-03-11T16:07:28.720' AS DateTime), 2, CAST(N'2026-03-13T13:28:19.227' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (14, NULL, NULL, NULL, NULL, NULL, 0, 1, 2, CAST(N'2026-03-13T13:29:06.733' AS DateTime), 2, CAST(N'2026-03-13T13:34:25.553' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (20, N'Karleigh', N'Trujillo', N'123456', N'k5wV61ccalc=', 3, 0, 1, 2, CAST(N'2026-03-13T14:09:45.257' AS DateTime), 2, CAST(N'2026-03-13T14:16:04.680' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (21, N'Brenden', N'Mann11', N'golovel', N'k5wV61ccalc=', 5, 0, 1, 2, CAST(N'2026-03-13T14:22:15.073' AS DateTime), 2, CAST(N'2026-03-13T14:22:49.550' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (22, N'vishalF', N'gamiF', N'vishalgami', N'O5NaughWAY37lpubJWpqTQ==', 2, 1, 0, 1, CAST(N'2026-05-29T20:52:47.293' AS DateTime), 1, CAST(N'2026-05-29T20:53:33.270' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (23, N'Sagar', N'Solanki', N' sagalsolanki', N'Jg0t8Uvi2GDC2nBlPRfpQA==', 18, 0, 1, 2, CAST(N'2026-05-30T17:00:22.637' AS DateTime), 2, CAST(N'2026-05-30T17:00:36.440' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (24, N'demo101', N'demo102', N'testingdemo', N'7LpC0PTlu9S6waGuESvGgg==', 18, 1, 0, 2, CAST(N'2026-05-30T17:01:33.130' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (25, N'Demo103', N'Demo104', N'testingdemo102', N'7LpC0PTlu9RqX7kDNJ+Mhg==', 19, 0, 1, 2, CAST(N'2026-05-30T17:02:09.413' AS DateTime), 2, CAST(N'2026-05-30T17:02:24.213' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (26, N'gami', N'vishal', N'gamivishal', N'cWvolfLm9cYMt1OkMoU3Xw==', 4, 1, 0, 2, CAST(N'2026-05-30T17:03:38.653' AS DateTime), 2, CAST(N'2026-05-30T17:04:00.103' AS DateTime), NULL)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [UserName], [Password], [RoleId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [Email]) VALUES (27, N'gami', N'vishal', N'gamivishal23', N'cWvolfLm9caKj/DMDP9RAg==', 3, 1, 0, 0, CAST(N'2026-05-30T18:53:10.163' AS DateTime), 2, CAST(N'2026-06-01T17:45:01.347' AS DateTime), N'vmgami2001@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[WishlistCustomer] ON 
GO
INSERT [dbo].[WishlistCustomer] ([Id], [CustomerId], [ProductId], [VariantId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [PackingType]) VALUES (1, 27, 61, 195, 0, 1, 27, CAST(N'2026-06-24T10:39:09.397' AS DateTime), 27, CAST(N'2026-06-24T11:38:01.027' AS DateTime), N'Bottle')
GO
INSERT [dbo].[WishlistCustomer] ([Id], [CustomerId], [ProductId], [VariantId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [PackingType]) VALUES (2, 27, 61, 196, 0, 1, 27, CAST(N'2026-06-24T10:49:04.597' AS DateTime), 27, CAST(N'2026-06-24T11:37:59.827' AS DateTime), N'Bottle')
GO
INSERT [dbo].[WishlistCustomer] ([Id], [CustomerId], [ProductId], [VariantId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [PackingType]) VALUES (3, 27, 66, 206, 0, 1, 27, CAST(N'2026-06-24T11:07:45.290' AS DateTime), 27, CAST(N'2026-06-24T11:37:59.197' AS DateTime), NULL)
GO
INSERT [dbo].[WishlistCustomer] ([Id], [CustomerId], [ProductId], [VariantId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [PackingType]) VALUES (4, 27, 61, 195, 0, 1, 27, CAST(N'2026-06-24T11:38:08.317' AS DateTime), 27, CAST(N'2026-07-02T22:42:22.537' AS DateTime), N'Pouch')
GO
INSERT [dbo].[WishlistCustomer] ([Id], [CustomerId], [ProductId], [VariantId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [PackingType]) VALUES (5, 27, 61, 195, 0, 1, 27, CAST(N'2026-06-24T11:38:14.157' AS DateTime), 27, CAST(N'2026-07-02T22:42:21.883' AS DateTime), N'Bottle')
GO
INSERT [dbo].[WishlistCustomer] ([Id], [CustomerId], [ProductId], [VariantId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [PackingType]) VALUES (6, 27, 61, 196, 0, 1, 27, CAST(N'2026-06-24T11:38:18.707' AS DateTime), 27, CAST(N'2026-07-02T22:42:21.880' AS DateTime), N'Bottle')
GO
INSERT [dbo].[WishlistCustomer] ([Id], [CustomerId], [ProductId], [VariantId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [PackingType]) VALUES (7, 27, 61, 196, 0, 1, 27, CAST(N'2026-06-24T11:38:22.353' AS DateTime), 27, CAST(N'2026-07-02T22:42:20.033' AS DateTime), N'Pouch')
GO
INSERT [dbo].[WishlistCustomer] ([Id], [CustomerId], [ProductId], [VariantId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [PackingType]) VALUES (8, 27, 55, 188, 1, 0, 27, CAST(N'2026-07-02T22:42:42.690' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[WishlistCustomer] ([Id], [CustomerId], [ProductId], [VariantId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [PackingType]) VALUES (9, 27, 61, 195, 0, 1, 27, CAST(N'2026-07-02T22:42:51.463' AS DateTime), 27, CAST(N'2026-07-02T22:50:32.737' AS DateTime), N'Pouch')
GO
INSERT [dbo].[WishlistCustomer] ([Id], [CustomerId], [ProductId], [VariantId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [PackingType]) VALUES (10, 27, 61, 195, 0, 1, 27, CAST(N'2026-07-02T22:49:50.957' AS DateTime), 27, CAST(N'2026-07-02T22:50:31.707' AS DateTime), N'Bottle')
GO
INSERT [dbo].[WishlistCustomer] ([Id], [CustomerId], [ProductId], [VariantId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [PackingType]) VALUES (11, 27, 61, 196, 1, 0, 27, CAST(N'2026-07-02T22:50:52.837' AS DateTime), NULL, NULL, N'Bottle')
GO
INSERT [dbo].[WishlistCustomer] ([Id], [CustomerId], [ProductId], [VariantId], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [PackingType]) VALUES (12, 27, 61, 195, 1, 0, 27, CAST(N'2026-07-02T22:56:14.973' AS DateTime), NULL, NULL, N'Bottle')
GO
SET IDENTITY_INSERT [dbo].[WishlistCustomer] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Roles__8A2B616025F3F6DD]    Script Date: 12-Sep-26 10:53:03 AM ******/
ALTER TABLE [dbo].[Roles] ADD UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__C9F28456A605A653]    Script Date: 12-Sep-26 10:53:03 AM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Attribute] ADD  CONSTRAINT [DF__Attribute__IsAct__73A521EA]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Attribute] ADD  CONSTRAINT [DF__Attribute__IsDel__74994623]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Attribute] ADD  CONSTRAINT [DF__Attribute__Creat__758D6A5C]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[AttributeValue] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AttributeValue] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AttributeValue] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Cart] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Cart] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Cart] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__IsActi__7C3A67EB]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__IsDele__7D2E8C24]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__Create__7E22B05D]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Collection] ADD  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Collection] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Collection] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[CollectionMapping] ADD  DEFAULT ((0)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[ContactUs] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ContactUs] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ContactUs] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Country] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Country] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Coupons] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Coupons] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Coupons] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ((0)) FOR [RewardCoins]
GO
ALTER TABLE [dbo].[ForgetPassword] ADD  CONSTRAINT [DF__ForgetPas__Creat__6A50C1DA]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[ForgetPassword] ADD  CONSTRAINT [DF__ForgetPas__IsUse__6B44E613]  DEFAULT ((0)) FOR [IsUsed]
GO
ALTER TABLE [dbo].[Inquiries] ADD  CONSTRAINT [DF__Inquiries__IsAct__51EF2864]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Inquiries] ADD  CONSTRAINT [DF__Inquiries__IsDel__52E34C9D]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Inquiries] ADD  CONSTRAINT [DF__Inquiries__Creat__53D770D6]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[NotificationMaster] ADD  DEFAULT ((0)) FOR [IsRead]
GO
ALTER TABLE [dbo].[NotificationMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[NotificationMaster] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF__Offers__IsCoupon__2D12A970]  DEFAULT ((0)) FOR [IsCouponRequired]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF__Offers__IsFirstO__2E06CDA9]  DEFAULT ((0)) FOR [IsFirstOrderOnly]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF_Offers_IsPrimeOnly1]  DEFAULT ((0)) FOR [IsAutoApply]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF__Offers__IsPrimeO__2EFAF1E2]  DEFAULT ((0)) FOR [IsPrimeOnly]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF__Offers__AllowWit__2FEF161B]  DEFAULT ((0)) FOR [AllowWithOtherOffers]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF__Offers__Priority__30E33A54]  DEFAULT ((1)) FOR [Priority]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF__Offers__IsActive__31D75E8D]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF__Offers__IsDelete__32CB82C6]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF__Offers__CreatedB__33BFA6FF]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Offers] ADD  CONSTRAINT [DF__Offers__CreatedD__34B3CB38]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[OfferUsage] ADD  CONSTRAINT [DF__OfferUsag__UsedD__6CF8245B]  DEFAULT (getdate()) FOR [UsedDate]
GO
ALTER TABLE [dbo].[OrderDeliveryStatus] ADD  DEFAULT (getdate()) FOR [StatusDate]
GO
ALTER TABLE [dbo].[OrderDeliveryStatus] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[OrderDeliveryStatus] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OrderDeliveryStatus] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF__OrderItem__IsAct__54CB950F]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF__OrderItem__IsDel__55BFB948]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF__OrderItem__Creat__56B3DD81]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[OrderRewardSlab] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[OrderRewardSlab] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OrderRewardSlab] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__IsActive__57A801BA]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__IsDelete__589C25F3]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__CreatedD__59904A2C]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [UsedCoins]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [CoinDiscountAmount]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [IsCoinRefunded]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [DeliveryFee]
GO
ALTER TABLE [dbo].[PaymentRefund] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[PaymentRefund] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[PaymentRefund] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PaymentTransaction] ADD  DEFAULT ('INR') FOR [Currency]
GO
ALTER TABLE [dbo].[PaymentTransaction] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[PaymentTransaction] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[PaymentTransaction] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductImages] ADD  CONSTRAINT [DF__ProductIm__IsAct__0A888742]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProductImages] ADD  CONSTRAINT [DF__ProductIm__IsDel__0B7CAB7B]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ProductImages] ADD  CONSTRAINT [DF__ProductIm__Creat__0C70CFB4]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductPriceHistory] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductStock] ADD  CONSTRAINT [DF__ProductSt__Reser__1EF99443]  DEFAULT ((0)) FOR [ReservedStock]
GO
ALTER TABLE [dbo].[ProductVariantDetails] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProductVariantDetails] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ProductVariantDetails] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductVariantMapping] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProductVariantMapping] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ProductVariantMapping] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductVariantMapping] ADD  DEFAULT ((1)) FOR [IsPercentagePricing]
GO
ALTER TABLE [dbo].[RazorpayWebhookLog] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[RazorpayWebhookLog] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Reviews] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Reviews] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Reviews] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Reward] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Reward] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Reward] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[RewardSettings] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[RewardSettings] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[RewardSettings] ADD  DEFAULT ((0.0)) FOR [MaxCoinUsagePercent]
GO
ALTER TABLE [dbo].[RewardUsageHistory] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[RewardUsageHistory] ADD  CONSTRAINT [DF_RewardUsageHistory_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[RewardUsageHistory] ADD  CONSTRAINT [DF_RewardUsageHistory_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[RolePermissions] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[RolePermissions] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[RolePermissions] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[State] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[State] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  StoredProcedure [dbo].[CheckUserAuthenticationForUserMaster]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[CheckUserAuthenticationForUserMaster]
    @puserid  VARCHAR(50),
    @password VARCHAR(50),
    @response NVARCHAR(200) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Id BIGINT,
            @UserNameDb NVARCHAR(100),
            @PasswordHash NVARCHAR(200),
			 @RoleId BIGINT,
            @RoleName NVARCHAR(100);

    
    IF NOT EXISTS (
        SELECT 1 
        FROM Users
        WHERE UPPER(UserName) = UPPER(@puserid)
          AND UPPER(Password) = UPPER(@password)
          AND IsActive = 1
    )
    BEGIN
        SET @response = 'E|Invalid username or password';
        RETURN;
    END

    -- ✅ Get user details
    SELECT 
        @Id           = Id,
        @UserNameDb   = UserName,
        @PasswordHash = [Password]
    FROM Users
    WHERE UPPER(UserName) = UPPER(@puserid)
      AND IsActive = 1;

	      SELECT 
        @RoleId = R.Id,
        @RoleName = R.Name
    FROM UserRoleMapping UR
    INNER JOIN Roles R ON UR.RoleId = R.Id
    WHERE UR.UserId = @Id AND UR.IsActive = 1;

    -- ✅ Build response: S|Message|UserId|UserName
    SET @response = CONCAT('S|User fetched successfully|', @Id, '|', @UserNameDb,'|', @RoleId, '|', @RoleName);
END
GO
/****** Object:  StoredProcedure [dbo].[SP_AddToCart]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_AddToCart]
(
    @CustomerId INT,
    @ProductId INT,
    @VariantId INT,
    @Quantity INT, @PackingType VARCHAR(20) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @Retry INT = 0, @MaxRetry INT = 3;
	--testing
RetryBlock:

    BEGIN TRY
        BEGIN TRAN;
	
	IF @Quantity < -1 BEGIN SET @Quantity = -1; END

	IF @Quantity > 0
    BEGIN

        DECLARE @AvailableStock INT, @ReservedStock INT;

        /* =====================================================
           STEP 1: INITIAL STOCK CHECK (LOCK)
        ===================================================== */
        SELECT @AvailableStock = AvailableStock, @ReservedStock = ReservedStock
        FROM ProductStock WITH (UPDLOCK, HOLDLOCK)
        WHERE ProductId = @ProductId AND VariantId = @VariantId;

        /* =====================================================
           STEP 2: RELEASE EXPIRED IF NEEDED
        ===================================================== */
        IF (@AvailableStock - @ReservedStock) < @Quantity
        BEGIN
            EXEC dbo.SP_ReleaseExpiredReservations @ProductId = @ProductId, @VariantId = @VariantId, @Quantity = @Quantity;
        END

        /* =====================================================
           STEP 3: RE-CHECK
        ===================================================== */
        SELECT @AvailableStock = AvailableStock, @ReservedStock = ReservedStock
        FROM ProductStock WITH (UPDLOCK, HOLDLOCK)
        WHERE ProductId = @ProductId AND VariantId = @VariantId;

        IF (@AvailableStock - @ReservedStock) < @Quantity
        BEGIN
            ROLLBACK;
            RAISERROR('Insufficient stock available.', 16, 1);
            RETURN;
        END

    END
	
    /* =====================================================
       STEP 4: RESERVE STOCK
    ===================================================== */
    UPDATE ProductStock
    SET ReservedStock = ReservedStock + @Quantity
    WHERE ProductId = @ProductId AND VariantId = @VariantId;

    /* =====================================================
       STEP 5: UPSERT CART
    ===================================================== */

    IF EXISTS ( SELECT 1 FROM CustomerCart 
	WHERE CustomerId = @CustomerId 
	AND ProductId = @ProductId 
	AND VariantId = @VariantId
	  AND ISNULL(PackingType,'') = ISNULL(@PackingType,''))
    BEGIN
        UPDATE CustomerCart
        SET Quantity = Quantity + @Quantity, LastModifiedDate = GETDATE()
        WHERE CustomerId = @CustomerId AND ProductId = @ProductId AND VariantId = @VariantId AND ISNULL(PackingType,'') = ISNULL(@PackingType,'');
    END
    ELSE
    BEGIN
        INSERT INTO CustomerCart (CustomerId, ProductId, VariantId, Quantity, PackingType, CreatedDate,IsActive,IsDeleted,CreatedBy)
        VALUES (@CustomerId, @ProductId, @VariantId, @Quantity, @PackingType, GETDATE(),1,0,@CustomerId);
    END

	DELETE FROM CustomerCart WHERE Quantity <= 0 AND @CustomerId = @CustomerId;

  --EXEC dbo.SP_ApplyOffersToCart @CustomerId = @CustomerId;
    EXEC dbo.SP_GetCart @CustomerId = @CustomerId;
  --  SELECT 
  --      C.Id,
  --      C.ProductId,
  --      C.VariantId,
  --      C.Quantity,
  --      PVM.Price,
  --      (C.Quantity * PVM.Price) AS LineTotal,
  --      ISNULL(C.LastModifiedDate, C.CreatedDate) LastModifiedDate,
		--C.IsActive
  --  FROM CustomerCart C
  --  INNER JOIN ProductVariantMapping PVM ON PVM.Id = C.VariantId
  --  WHERE C.CustomerId = @CustomerId;
  
        COMMIT;
    END TRY
BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK;

        IF ERROR_NUMBER() = 1205 AND @Retry < @MaxRetry
        BEGIN
            SET @Retry += 1;
            WAITFOR DELAY '00:00:00.200';
            GOTO RetryBlock;
        END
		------------Temp add
		DECLARE @T DATETIME2;

SET @T = SYSDATETIME();

EXEC dbo.SP_ReleaseExpiredReservations
    @ProductId = @ProductId,
    @VariantId = @VariantId,
    @Quantity = @Quantity;

PRINT 'SP_ReleaseExpiredReservations = '
      + CAST(DATEDIFF(MILLISECOND,@T,SYSDATETIME()) AS VARCHAR(20));

SET @T = SYSDATETIME();

EXEC dbo.SP_ApplyOffersToCart
    @CustomerId = @CustomerId;

PRINT 'SP_GetCart = '
      + CAST(DATEDIFF(MILLISECOND,@T,SYSDATETIME()) AS VARCHAR(20));
		------------Temp add end
        DECLARE @ErrMsg NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrMsg, 16, 1);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_AddToCart_Offersdemo]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_AddToCart_Offersdemo]
(
    @CustomerId INT,
    @ProductId INT,
    @VariantId INT,
    @Quantity INT, @PackingType VARCHAR(20) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @Retry INT = 0, @MaxRetry INT = 3;
	--testing
RetryBlock:

    BEGIN TRY
        BEGIN TRAN;
	
	IF @Quantity < -1 BEGIN SET @Quantity = -1; END

	IF @Quantity > 0
    BEGIN

        DECLARE @AvailableStock INT, @ReservedStock INT;

        /* =====================================================
           STEP 1: INITIAL STOCK CHECK (LOCK)
        ===================================================== */
        SELECT @AvailableStock = AvailableStock, @ReservedStock = ReservedStock
        FROM ProductStock WITH (UPDLOCK, HOLDLOCK)
        WHERE ProductId = @ProductId AND VariantId = @VariantId;

        /* =====================================================
           STEP 2: RELEASE EXPIRED IF NEEDED
        ===================================================== */
        IF (@AvailableStock - @ReservedStock) < @Quantity
        BEGIN
            EXEC dbo.SP_ReleaseExpiredReservations @ProductId = @ProductId, @VariantId = @VariantId, @Quantity = @Quantity;
        END

        /* =====================================================
           STEP 3: RE-CHECK
        ===================================================== */
        SELECT @AvailableStock = AvailableStock, @ReservedStock = ReservedStock
        FROM ProductStock WITH (UPDLOCK, HOLDLOCK)
        WHERE ProductId = @ProductId AND VariantId = @VariantId;

        IF (@AvailableStock - @ReservedStock) < @Quantity
        BEGIN
            ROLLBACK;
            RAISERROR('Insufficient stock available.', 16, 1);
            RETURN;
        END

    END
	
    /* =====================================================
       STEP 4: RESERVE STOCK
    ===================================================== */
    UPDATE ProductStock
    SET ReservedStock = ReservedStock + @Quantity
    WHERE ProductId = @ProductId AND VariantId = @VariantId;

    /* =====================================================
       STEP 5: UPSERT CART
    ===================================================== */

    IF EXISTS ( SELECT 1 FROM CustomerCart 
	WHERE CustomerId = @CustomerId 
	AND ProductId = @ProductId 
	AND VariantId = @VariantId
	  AND ISNULL(PackingType,'') = ISNULL(@PackingType,''))
    BEGIN
        UPDATE CustomerCart
        SET Quantity = Quantity + @Quantity, LastModifiedDate = GETDATE()
        WHERE CustomerId = @CustomerId AND ProductId = @ProductId AND VariantId = @VariantId AND ISNULL(PackingType,'') = ISNULL(@PackingType,'');
    END
    ELSE
    BEGIN
        INSERT INTO CustomerCart (CustomerId, ProductId, VariantId, Quantity, PackingType, CreatedDate,IsActive,IsDeleted,CreatedBy)
        VALUES (@CustomerId, @ProductId, @VariantId, @Quantity, @PackingType, GETDATE(),1,0,@CustomerId);
    END

	DELETE FROM CustomerCart WHERE Quantity <= 0 AND @CustomerId = @CustomerId;

  EXEC dbo.SP_ApplyOffersToCart_demo @CustomerId = @CustomerId;
   -- EXEC dbo.SP_GetCart @CustomerId = @CustomerId;
  --  SELECT 
  --      C.Id,
  --      C.ProductId,
  --      C.VariantId,
  --      C.Quantity,
  --      PVM.Price,
  --      (C.Quantity * PVM.Price) AS LineTotal,
  --      ISNULL(C.LastModifiedDate, C.CreatedDate) LastModifiedDate,
		--C.IsActive
  --  FROM CustomerCart C
  --  INNER JOIN ProductVariantMapping PVM ON PVM.Id = C.VariantId
  --  WHERE C.CustomerId = @CustomerId;
  
        COMMIT;
    END TRY
BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK;

        IF ERROR_NUMBER() = 1205 AND @Retry < @MaxRetry
        BEGIN
            SET @Retry += 1;
            WAITFOR DELAY '00:00:00.200';
            GOTO RetryBlock;
        END
		------------Temp add
		DECLARE @T DATETIME2;

SET @T = SYSDATETIME();

EXEC dbo.SP_ReleaseExpiredReservations
    @ProductId = @ProductId,
    @VariantId = @VariantId,
    @Quantity = @Quantity;

PRINT 'SP_ReleaseExpiredReservations = '
      + CAST(DATEDIFF(MILLISECOND,@T,SYSDATETIME()) AS VARCHAR(20));

SET @T = SYSDATETIME();

EXEC dbo.SP_ApplyOffersToCart
    @CustomerId = @CustomerId;

PRINT 'SP_GetCart = '
      + CAST(DATEDIFF(MILLISECOND,@T,SYSDATETIME()) AS VARCHAR(20));
		------------Temp add end
        DECLARE @ErrMsg NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrMsg, 16, 1);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ApplyOffersToCart]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ApplyOffersToCart]
(
    @CustomerId INT,
    @CouponCode NVARCHAR(50) = NULL,
    @SelectedOfferId INT = NULL,
    @RemoveOfferId INT = NULL
)
AS
BEGIN
    SET NOCOUNT ON;
	
	DECLARE @Now DATETIME = GETDATE();
	DECLARE @Time TIME = CAST(@Now AS TIME);
	
	IF OBJECT_ID('tempdb..#ProductVariants') IS NOT NULL DROP TABLE #ProductVariants;
	IF OBJECT_ID('tempdb..#CartItems') IS NOT NULL DROP TABLE #CartItems;
	IF OBJECT_ID('tempdb..#CartSummary') IS NOT NULL DROP TABLE #CartSummary;
	IF OBJECT_ID('tempdb..#EligibleOffers') IS NOT NULL DROP TABLE #EligibleOffers;

	SELECT X.Id AS ProductId, X.ProductDescription, PVM.Id AS VariantId, X.ProductName, C.Id AS CategoryId, C.CategoryName,
		STRING_AGG(AV.Value, ', ') AS VariantAttributeValues_Only,
		STRING_AGG(A.Name + ' : ' + AV.Value, ', ') AS VariantAttributes,
		PVM.SKU, PVM.Price, PI.ImagePath, ISNULL(PS.TotalAvailableStock,0) AS TotalAvailableStock	
	INTO #ProductVariants
	FROM Products X
	LEFT JOIN Category C ON C.Id = X.CategoryId
	INNER JOIN ProductVariantMapping PVM ON PVM.ProductId = X.Id
	INNER JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id
	INNER JOIN Attribute A ON A.Id = PVD.AttributeId
	INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
	LEFT JOIN ProductImages PI ON PI.ProductId = X.Id AND PI.VariantId = PVM.Id
	LEFT JOIN (
		SELECT VariantId, SUM(ISNULL(AvailableStock,0)) - SUM(ISNULL(ReservedStock,0)) AS TotalAvailableStock
		FROM ProductStock
		GROUP BY VariantId
	) PS ON PS.VariantId = PVM.Id
	WHERE X.IsActive = 1 AND PVM.IsActive = 1 AND C.IsActive = 1 AND X.IsDeleted = 0
	GROUP BY X.Id, X.ProductName, X.ProductDescription, C.Id, C.CategoryName, PVM.Id, PVM.ProductId, PVM.SKU, PVM.Price, PI.ImagePath, PS.TotalAvailableStock
	
	---------------------------------------------------
	-- 1. CART ITEMS (USING VARIANT PRICE)
	---------------------------------------------------
	SELECT cc.CustomerId, p.ProductName, cc.ProductId, cc.VariantId, p.CategoryId, cc.Quantity, pvm.Price, (cc.Quantity * pvm.Price) AS LineTotal
	INTO #CartItems
	FROM CustomerCart cc
	JOIN ProductVariantMapping pvm ON pvm.Id = cc.VariantId AND pvm.ProductId = cc.ProductId
	JOIN Products p ON p.Id = cc.ProductId
	WHERE cc.CustomerId = @CustomerId and cc.IsActive = 1;

	SELECT C.ProductId, P.ProductName, C.VariantId, P.VariantAttributeValues_Only, C.CategoryId, P.CategoryName, C.Quantity, C.Price, (C.Quantity * C.Price) as Total, P.SKU, P.ImagePath, P.TotalAvailableStock
	FROM #CartItems C
	LEFT JOIN #ProductVariants P ON P.VariantId = C.VariantId AND P.ProductId = C.ProductId AND P.CategoryId = C.CategoryId;
	
	---------------------------------------------------
	-- 2. CART SUMMARY
	---------------------------------------------------
	SELECT CustomerId, SUM(LineTotal) AS CartTotal, SUM(Quantity) AS TotalQty
	INTO #CartSummary FROM #CartItems GROUP BY CustomerId;

    -------------------------------------------------------
    -- 🧹 REMOVE OFFER
    -------------------------------------------------------
    IF @RemoveOfferId IS NOT NULL
    BEGIN
        DELETE FROM OfferUsage
        WHERE OfferId = @RemoveOfferId AND RefType = 'CART' AND CustomerId = @CustomerId;
    END

	---------------------------------------------------
	-- STEP 1: MANUAL MODE CHECK
	---------------------------------------------------
	IF @CouponCode IS NOT NULL OR @SelectedOfferId IS NOT NULL
	BEGIN
		DECLARE @OfferId INT;

		---------------------------------------------------
		-- STEP 2: GET OFFER ID
		---------------------------------------------------
		SELECT @OfferId = Id
		FROM Offers
		WHERE (@SelectedOfferId IS NOT NULL AND Id = @SelectedOfferId) OR (@CouponCode IS NOT NULL AND CouponCode = @CouponCode);

		IF @OfferId IS NULL
		BEGIN
			RAISERROR('Invalid Offer / Coupon',16,1);
			RETURN;
		END

		---------------------------------------------------
		-- STEP 3: CHECK ALREADY APPLIED (CART LEVEL)
		---------------------------------------------------
		IF NOT EXISTS (
			SELECT 1 FROM OfferUsage 
			WHERE OfferId = @OfferId AND RefType = 'CART' AND CustomerId = @CustomerId
		)
		BEGIN

			---------------------------------------------------
			-- STEP 4: VALIDATE ELIGIBILITY
			---------------------------------------------------
			IF EXISTS (
				SELECT 1
				FROM Offers o
				CROSS JOIN #CartSummary cs
				WHERE o.Id = @OfferId
				AND o.IsActive = 1
				AND (o.StartDate IS NULL OR @Now BETWEEN o.StartDate AND ISNULL(o.EndDate,@Now))
				AND (o.StartTime IS NULL OR @Time BETWEEN o.StartTime AND ISNULL(o.EndTime,@Time))
				AND (o.MinOrderAmount IS NULL OR cs.CartTotal >= o.MinOrderAmount)
				AND (o.MinQty IS NULL OR cs.TotalQty >= o.MinQty)
				AND (o.IsFirstOrderOnly = 0 OR NOT EXISTS (SELECT 1 FROM OfferUsage WHERE CustomerId = @CustomerId))
				AND (o.PerUserUsage IS NULL OR (
					SELECT COUNT(*) FROM OfferUsage 
					WHERE OfferId = o.Id AND CustomerId = @CustomerId
				) < o.PerUserUsage)
			)
			BEGIN
				---------------------------------------------------
				-- STEP 5: INSERT INTO OFFER USAGE
				---------------------------------------------------
				INSERT INTO OfferUsage (OfferId, RefType, RefId, CustomerId, UsedDate)
				VALUES (@OfferId, 'CART', @CustomerId, @CustomerId, GETDATE());
			END
			ELSE
			BEGIN
				RAISERROR('Offer not eligible',16,1);
				RETURN;
			END
		END

		---------------------------------------------------
		-- STEP 6: HANDLE EXCLUSIVE OFFER
		---------------------------------------------------
		DECLARE @NewOfferAllow INT = 1;
		SELECT @NewOfferAllow = AllowWithOtherOffers FROM Offers WHERE Id = @OfferId;

		IF @NewOfferAllow = 0
		BEGIN
			DELETE FROM OfferUsage WHERE RefType = 'CART' AND CustomerId = @CustomerId AND OfferId <> @OfferId;
		END
		
		IF @NewOfferAllow = 1
		BEGIN
			DELETE ou FROM OfferUsage ou JOIN Offers o ON o.Id = ou.OfferId
			WHERE ou.RefType = 'CART' AND ou.CustomerId = @CustomerId AND o.AllowWithOtherOffers = 0 AND OfferId <> @OfferId;
		END

	END
	
	---------------------------------------------------
	-- 3. ELIGIBLE OFFERS
	---------------------------------------------------
	SELECT o.*
	INTO #EligibleOffers
	FROM Offers o
	CROSS JOIN #CartSummary cs
	WHERE o.IsActive=1 AND (o.StartDate IS NULL OR @Now BETWEEN o.StartDate AND ISNULL(o.EndDate,@Now)) AND (o.StartTime IS NULL OR @Time BETWEEN o.StartTime AND ISNULL(o.EndTime,@Time))
	AND (o.IsFirstOrderOnly = 0 OR NOT EXISTS (SELECT 1 FROM OfferUsage WHERE CustomerId = @CustomerId))
	AND (o.PerUserUsage IS NULL OR (SELECT COUNT(*) FROM OfferUsage WHERE OfferId = o.Id AND CustomerId = @CustomerId) < o.PerUserUsage)
	AND (o.MinOrderAmount IS NULL OR cs.CartTotal >= o.MinOrderAmount)
	AND (o.MinQty IS NULL OR cs.TotalQty >= o.MinQty);

	---------------------------------------------------
	-- 4. FINAL RESULT (SCOPED DISCOUNT)
	---------------------------------------------------
	SELECT o.Id, o.OfferName, o.OfferType, o.DiscountType, o.DiscountValue, o.Priority, o.IsCouponRequired, cs.CartTotal,o.MaxDiscountAmount,
		FinalDiscount =
		CASE 
			WHEN o.MaxDiscountAmount IS NOT NULL THEN 
				CASE 
					WHEN (
						CASE 
							WHEN o.DiscountType='FLAT' THEN o.DiscountValue
							ELSE (
								CASE 
									WHEN o.ApplyOnly_Product IS NOT NULL THEN (
										SELECT SUM(ci.LineTotal) FROM #CartItems ci
										WHERE CHARINDEX(','+CAST(ci.ProductId AS VARCHAR)+',',','+o.ApplyOnly_Product+',')>0
									)
									WHEN o.ApplyOnly_Category IS NOT NULL THEN (
										SELECT SUM(ci.LineTotal) FROM #CartItems ci
										WHERE CHARINDEX(','+CAST(ci.CategoryId AS VARCHAR)+',',','+o.ApplyOnly_Category+',')>0
									)
									ELSE cs.CartTotal
								END
							) * o.DiscountValue / 100.0
						END
					) > o.MaxDiscountAmount
					THEN o.MaxDiscountAmount
					ELSE (
						CASE 
							WHEN o.DiscountType='FLAT' THEN o.DiscountValue
							ELSE (
								CASE 
									WHEN o.ApplyOnly_Product IS NOT NULL THEN (
										SELECT SUM(ci.LineTotal) FROM #CartItems ci
										WHERE CHARINDEX(','+CAST(ci.ProductId AS VARCHAR)+',',','+o.ApplyOnly_Product+',')>0
									)
									WHEN o.ApplyOnly_Category IS NOT NULL THEN (
										SELECT SUM(ci.LineTotal) FROM #CartItems ci
										WHERE CHARINDEX(','+CAST(ci.CategoryId AS VARCHAR)+',',','+o.ApplyOnly_Category+',')>0
									)
									ELSE cs.CartTotal
								END
							) * o.DiscountValue / 100.0
						END
					)
				END
			ELSE (
				CASE 
					WHEN o.DiscountType='FLAT' THEN o.DiscountValue
					ELSE (
						CASE 
							WHEN o.ApplyOnly_Product IS NOT NULL THEN (
								SELECT SUM(ci.LineTotal) FROM #CartItems ci
								WHERE CHARINDEX(','+CAST(ci.ProductId AS VARCHAR)+',',','+o.ApplyOnly_Product+',')>0
							)
							WHEN o.ApplyOnly_Category IS NOT NULL THEN (
								SELECT SUM(ci.LineTotal) FROM #CartItems ci
								WHERE CHARINDEX(','+CAST(ci.CategoryId AS VARCHAR)+',',','+o.ApplyOnly_Category+',')>0
							)
							ELSE cs.CartTotal
						END
					) * o.DiscountValue / 100.0
				END
			)
		END,
			CASE 
				WHEN EXISTS (
					SELECT 1 FROM OfferUsage OU
					WHERE OU.OfferId = o.Id AND OU.RefId = @CustomerId AND OU.RefType = 'CART'
				)
				THEN 1 ELSE 0
			END AS IsAlreadyApplied
	FROM #EligibleOffers o
	CROSS JOIN #CartSummary cs

	ORDER BY FinalDiscount DESC, o.Priority ASC;
		
	---------------------------------------------------
	-- 5. APPLY CART OFFERS
	---------------------------------------------------
	SELECT o.*
	FROM OfferUsage ou
	JOIN Offers o ON o.Id = ou.OfferId
	WHERE ou.RefType = 'CART'
	 and o.IsActive = 1
	and ou.customerid = @CustomerId;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ApplyOffersToCart_demo]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ApplyOffersToCart_demo]
(
    @CustomerId INT,
    @CouponCode NVARCHAR(50) = NULL,
    @SelectedOfferId INT = NULL,
    @RemoveOfferId INT = NULL
)
AS
BEGIN
    SET NOCOUNT ON;
	
	DECLARE @Now DATETIME = GETDATE();
	DECLARE @Time TIME = CAST(@Now AS TIME);
	
	IF OBJECT_ID('tempdb..#ProductVariants') IS NOT NULL DROP TABLE #ProductVariants;
	IF OBJECT_ID('tempdb..#CartItems') IS NOT NULL DROP TABLE #CartItems;
	IF OBJECT_ID('tempdb..#CartSummary') IS NOT NULL DROP TABLE #CartSummary;
	IF OBJECT_ID('tempdb..#EligibleOffers') IS NOT NULL DROP TABLE #EligibleOffers;

	SELECT X.Id AS ProductId, X.ProductDescription, PVM.Id AS VariantId, X.ProductName, C.Id AS CategoryId, C.CategoryName,
		STRING_AGG(AV.Value, ', ') AS VariantAttributeValues_Only,
		STRING_AGG(AV.Id, ', ') AS VariantAttributeValues_ID,-- New add for cart
		STRING_AGG(A.Name + ' : ' + AV.Value, ', ') AS VariantAttributes,
		PVM.SKU, PVM.SellPrice, PI.ImagePath, ISNULL(PS.TotalAvailableStock,0) AS TotalAvailableStock	
	INTO #ProductVariants
	FROM Products X
	LEFT JOIN Category C ON C.Id = X.CategoryId
	INNER JOIN ProductVariantMapping PVM ON PVM.ProductId = X.Id
	INNER JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id
	INNER JOIN Attribute A ON A.Id = PVD.AttributeId
	INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
	LEFT JOIN ProductImages PI ON PI.ProductId = X.Id AND PI.IsPrimary=1
	LEFT JOIN (
		SELECT VariantId, SUM(ISNULL(AvailableStock,0)) - SUM(ISNULL(ReservedStock,0)) AS TotalAvailableStock
		FROM ProductStock
		GROUP BY VariantId
	) PS ON PS.VariantId = PVM.Id
	WHERE X.IsActive = 1 AND PVM.IsActive = 1 AND C.IsActive = 1 AND X.IsDeleted = 0
	GROUP BY X.Id, X.ProductName, X.ProductDescription, C.Id, C.CategoryName, PVM.Id, PVM.ProductId, PVM.SKU, PVM.SellPrice, PI.ImagePath, PS.TotalAvailableStock
	
	---------------------------------------------------
	-- 1. CART ITEMS (USING VARIANT PRICE)
	---------------------------------------------------
	SELECT cc.CustomerId, p.ProductName, cc.ProductId,    pv.VariantAttributeValues_ID,   cc.VariantId, p.CategoryId, cc.Quantity, pvm.SellPrice, (cc.Quantity * pvm.SellPrice) AS LineTotal
	INTO #CartItems
	FROM CustomerCart cc
	JOIN ProductVariantMapping pvm ON pvm.Id = cc.VariantId AND pvm.ProductId = cc.ProductId
	JOIN Products p ON p.Id = cc.ProductId

	LEFT JOIN #ProductVariants pv ON pv.ProductId = cc.ProductId AND pv.VariantId = cc.VariantId -- New For 

	WHERE cc.CustomerId = @CustomerId and cc.IsActive = 1;

	-- First table
	SELECT C.ProductId, P.ProductName, C.VariantId, P.VariantAttributeValues_Only,  C.VariantAttributeValues_ID, C.CategoryId, P.CategoryName, C.Quantity, C.SellPrice As Price, (C.Quantity * C.SellPrice) as Total, P.SKU, P.ImagePath, P.TotalAvailableStock
	FROM #CartItems C
	LEFT JOIN #ProductVariants P ON P.VariantId = C.VariantId AND P.ProductId = C.ProductId AND P.CategoryId = C.CategoryId;
	
	---------------------------------------------------
	-- 2. CART SUMMARY
	---------------------------------------------------
	SELECT CustomerId, SUM(LineTotal) AS CartTotal, SUM(Quantity) AS TotalQty
	INTO #CartSummary FROM #CartItems GROUP BY CustomerId;

    -------------------------------------------------------
    -- 🧹 REMOVE OFFER
    -------------------------------------------------------
    IF @RemoveOfferId IS NOT NULL
    BEGIN
        DELETE FROM OfferUsage
        WHERE OfferId = @RemoveOfferId AND RefType = 'CART' AND CustomerId = @CustomerId;
    END

	---------------------------------------------------
	-- STEP 1: MANUAL MODE CHECK
	---------------------------------------------------
	IF @CouponCode IS NOT NULL OR @SelectedOfferId IS NOT NULL
	BEGIN
		DECLARE @OfferId INT;

		---------------------------------------------------
		-- STEP 2: GET OFFER ID
		---------------------------------------------------
		SELECT @OfferId = Id
		FROM Offers
		WHERE (@SelectedOfferId IS NOT NULL AND Id = @SelectedOfferId) OR (@CouponCode IS NOT NULL AND CouponCode = @CouponCode);

		IF @OfferId IS NULL
		BEGIN
			RAISERROR('Invalid Offer / Coupon',16,1);
			RETURN;
		END

		---------------------------------------------------
		-- STEP 3: CHECK ALREADY APPLIED (CART LEVEL)
		---------------------------------------------------
		IF NOT EXISTS (
			SELECT 1 FROM OfferUsage 
			WHERE OfferId = @OfferId AND RefType = 'CART' AND CustomerId = @CustomerId
		)
		BEGIN

			---------------------------------------------------
			-- STEP 4: VALIDATE ELIGIBILITY
			---------------------------------------------------
			IF EXISTS (
				SELECT 1
				FROM Offers o
				CROSS JOIN #CartSummary cs
				WHERE o.Id = @OfferId
				AND o.IsActive = 1
				AND (o.StartDate IS NULL OR @Now BETWEEN o.StartDate AND ISNULL(o.EndDate,@Now))
				AND (o.StartTime IS NULL OR @Time BETWEEN o.StartTime AND ISNULL(o.EndTime,@Time))
				AND (o.MinOrderAmount IS NULL OR cs.CartTotal >= o.MinOrderAmount)
				AND (o.MinQty IS NULL OR cs.TotalQty >= o.MinQty)
				AND (o.IsFirstOrderOnly = 0 OR NOT EXISTS (SELECT 1 FROM OfferUsage WHERE CustomerId = @CustomerId))
				AND (o.PerUserUsage IS NULL OR (
					SELECT COUNT(*) FROM OfferUsage 
					WHERE OfferId = o.Id AND CustomerId = @CustomerId
				) < o.PerUserUsage)
			)
			BEGIN
				---------------------------------------------------
				-- STEP 5: INSERT INTO OFFER USAGE
				---------------------------------------------------
	DECLARE @FinalDiscount DECIMAL(18,2);

SELECT
    @FinalDiscount =
    CASE
        WHEN o.MaxDiscountAmount IS NOT NULL THEN
            CASE
                WHEN
                (
                    CASE
                        WHEN o.DiscountType='FLAT'
                            THEN o.DiscountValue
                        ELSE
                            cs.CartTotal * o.DiscountValue / 100.0
                    END
                ) > o.MaxDiscountAmount
                THEN o.MaxDiscountAmount
                ELSE
                (
                    CASE
                        WHEN o.DiscountType='FLAT'
                            THEN o.DiscountValue
                        ELSE
                            cs.CartTotal * o.DiscountValue / 100.0
                    END
                )
            END
        ELSE
            CASE
                WHEN o.DiscountType='FLAT'
                    THEN o.DiscountValue
                ELSE
                    cs.CartTotal * o.DiscountValue / 100.0
            END
    END
FROM Offers o
CROSS JOIN #CartSummary cs
WHERE o.Id = @OfferId;
				INSERT INTO OfferUsage (OfferId, RefType, RefId, CustomerId, UsedDate)
				VALUES (@OfferId, 'CART', @CustomerId, @CustomerId, GETDATE());
			END
			ELSE
			BEGIN
				RAISERROR('Offer not eligible',16,1);
				RETURN;
			END
		END

		---------------------------------------------------
		-- STEP 6: HANDLE EXCLUSIVE OFFER
		---------------------------------------------------
		DECLARE @NewOfferAllow INT = 1;
		SELECT @NewOfferAllow = AllowWithOtherOffers FROM Offers WHERE Id = @OfferId;

		IF @NewOfferAllow = 0
		BEGIN
			DELETE FROM OfferUsage WHERE RefType = 'CART' AND CustomerId = @CustomerId AND OfferId <> @OfferId;
		END
		
		IF @NewOfferAllow = 1
		BEGIN
			DELETE ou FROM OfferUsage ou JOIN Offers o ON o.Id = ou.OfferId
			WHERE ou.RefType = 'CART' AND ou.CustomerId = @CustomerId AND o.AllowWithOtherOffers = 0 AND OfferId <> @OfferId;
		END

	END
	
	---------------------------------------------------
	-- 3. ELIGIBLE OFFERS
	---------------------------------------------------
	SELECT o.*
	INTO #EligibleOffers
	FROM Offers o
	CROSS JOIN #CartSummary cs
	WHERE o.IsActive=1 AND (o.StartDate IS NULL OR @Now BETWEEN o.StartDate AND ISNULL(o.EndDate,@Now)) AND (o.StartTime IS NULL OR @Time BETWEEN o.StartTime AND ISNULL(o.EndTime,@Time))
	AND (o.IsFirstOrderOnly = 0 OR NOT EXISTS (SELECT 1 FROM OfferUsage WHERE CustomerId = @CustomerId))
	AND (o.PerUserUsage IS NULL OR (SELECT COUNT(*) FROM OfferUsage WHERE OfferId = o.Id AND CustomerId = @CustomerId) < o.PerUserUsage)
	AND (o.MinOrderAmount IS NULL OR cs.CartTotal >= o.MinOrderAmount)
	AND (o.MinQty IS NULL OR cs.TotalQty >= o.MinQty);


	---------------------------------------------------
-- 4. FINAL RESULT (SCOPED DISCOUNT)
---------------------------------------------------

IF OBJECT_ID('tempdb..#OfferResult') IS NOT NULL
    DROP TABLE #OfferResult;

SELECT
    o.Id,
    o.OfferName,
    o.OfferType,
    o.DiscountType,
    o.DiscountValue,
    o.Priority,
    o.IsCouponRequired,
    cs.CartTotal,
    o.MaxDiscountAmount,

    FinalDiscount =
    CASE
        WHEN o.DiscountType = 'FLAT'
        THEN
            CASE
                WHEN o.MaxDiscountAmount IS NOT NULL
                     AND o.DiscountValue > o.MaxDiscountAmount
                THEN o.MaxDiscountAmount
                ELSE o.DiscountValue
            END

        ELSE
        (
            CASE
                WHEN o.ApplyOnly_Product IS NOT NULL
                THEN
                (
                    SELECT ISNULL(SUM(ci.LineTotal),0)
                    FROM #CartItems ci
                    WHERE CHARINDEX(','+CAST(ci.ProductId AS VARCHAR)+',',
                                    ','+o.ApplyOnly_Product+',') > 0
                )

                WHEN o.ApplyOnly_Category IS NOT NULL
                THEN
                (
                    SELECT ISNULL(SUM(ci.LineTotal),0)
                    FROM #CartItems ci
                    WHERE CHARINDEX(','+CAST(ci.CategoryId AS VARCHAR)+',',
                                    ','+o.ApplyOnly_Category+',') > 0
                )

                ELSE cs.CartTotal
            END
            *
            o.DiscountValue
            /100.0
        )
    END,

    CASE
        WHEN EXISTS
        (
            SELECT 1
            FROM OfferUsage OU
            WHERE OU.OfferId = o.Id
            AND OU.CustomerId = @CustomerId
            AND OU.RefType='CART'
        )
        THEN 1
        ELSE 0
    END AS IsAlreadyApplied

INTO #OfferResult
FROM #EligibleOffers o
CROSS JOIN #CartSummary cs;


---------------------------------------------------
-- APPLY MAX DISCOUNT
---------------------------------------------------

UPDATE R
SET FinalDiscount =
CASE
    WHEN R.MaxDiscountAmount IS NOT NULL
         AND R.FinalDiscount > R.MaxDiscountAmount
    THEN R.MaxDiscountAmount
    ELSE R.FinalDiscount
END
FROM #OfferResult R;


---------------------------------------------------
-- SAVE FINAL DISCOUNT
---------------------------------------------------

UPDATE OU
SET OU.FinalDiscount = R.FinalDiscount
FROM OfferUsage OU
INNER JOIN #OfferResult R
ON OU.OfferId = R.Id
WHERE OU.CustomerId = @CustomerId
AND OU.RefType = 'CART';


---------------------------------------------------
-- RETURN OFFERS
---------------------------------------------------

SELECT *
FROM #OfferResult
ORDER BY FinalDiscount DESC,
Priority ASC;
---------------------------------------------------
-- 5. APPLY CART OFFERS
---------------------------------------------------

SELECT o.*,ou.FinalDiscount
FROM OfferUsage ou
JOIN Offers o ON o.Id = ou.OfferId
WHERE ou.RefType='CART'
AND o.IsActive=1
AND ou.CustomerId=@CustomerId;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ApplyOffersToCart_OLD]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ApplyOffersToCart_OLD]
(
    @CustomerId INT,
    @CouponCode NVARCHAR(50) = NULL,
    @SelectedOfferId INT = NULL,
    @RemoveOfferId INT = NULL
)
AS
BEGIN
    SET NOCOUNT ON;
	
	DECLARE @Now DATETIME = GETDATE();
	DECLARE @Time TIME = CAST(@Now AS TIME);
	
	IF OBJECT_ID('tempdb..#ProductVariants') IS NOT NULL DROP TABLE #CartItems;
	IF OBJECT_ID('tempdb..#CartItems') IS NOT NULL DROP TABLE #CartItems;
	IF OBJECT_ID('tempdb..#CartSummary') IS NOT NULL DROP TABLE #CartSummary;
	IF OBJECT_ID('tempdb..#EligibleOffers') IS NOT NULL DROP TABLE #EligibleOffers;

	SELECT 
		X.Id AS ProductId,
		x.ProductDescription,
		PVM.Id AS VariantId,
		X.ProductName,
		C.Id AS CategoryId,
		C.CategoryName,
		STRING_AGG(AV.Value, ', ') AS VariantAttributeValues_Only,
		STRING_AGG(A.Name + ' : ' + AV.Value, ', ') AS VariantAttributes,
		PVM.SKU,
		PVM.Price,
		PI.ImagePath,
		ISNULL(PS.TotalAvailableStock,0) AS TotalAvailableStock	
	INTO #ProductVariants
	FROM Products X
	LEFT JOIN Category C ON C.Id = X.CategoryId
	INNER JOIN ProductVariantMapping PVM ON PVM.ProductId = X.Id
	INNER JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id
	INNER JOIN Attribute A ON A.Id = PVD.AttributeId
	INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
	LEFT JOIN ProductImages PI ON PI.ProductId = X.Id AND PI.VariantId = PVM.Id
	LEFT JOIN (
		SELECT VariantId, SUM(ISNULL(AvailableStock,0)) - SUM(ISNULL(ReservedStock,0)) AS TotalAvailableStock
		FROM ProductStock
		GROUP BY VariantId
	) PS ON PS.VariantId = PVM.Id
	WHERE X.IsActive = 1 AND PVM.IsActive = 1 AND C.IsActive = 1 AND X.IsDeleted = 0
	GROUP BY X.Id, X.ProductName, X.ProductDescription, C.Id, C.CategoryName, PVM.Id, PVM.ProductId, PVM.SKU, PVM.Price, PI.ImagePath, PS.TotalAvailableStock

    -------------------------------------------------------
    -- 🧹 REMOVE OFFER
    -------------------------------------------------------
    IF @RemoveOfferId IS NOT NULL
    BEGIN
        DELETE FROM OfferUsage
        WHERE OfferId = @RemoveOfferId
          AND RefType = 'CART'
          AND RefId = @CustomerId;
    END

	-------------------------------------------------------
    -- 🛒 CART
    -------------------------------------------------------
    IF OBJECT_ID('tempdb..#Cart') IS NOT NULL DROP TABLE #Cart;

    SELECT 
        CC.ProductId,
        CC.VariantId,
        CC.Quantity,
        PVM.Price,
        P.CategoryId,
        (CC.Quantity * PVM.Price) AS LineTotal
    INTO #Cart
    FROM CustomerCart CC
    JOIN ProductVariantMapping PVM ON CC.VariantId = PVM.Id
    JOIN Products P ON P.Id = CC.ProductId
    WHERE CC.CustomerId = @CustomerId;

    DECLARE @CartAmount DECIMAL(18,2), @CartQty INT;

    SELECT 
        @CartAmount = ISNULL(SUM(LineTotal),0),
        @CartQty = ISNULL(SUM(Quantity),0)
    FROM #Cart;

    -------------------------------------------------------
    -- 🎯 VALID OFFERS (AUTO APPLY LOGIC)
    -------------------------------------------------------
    IF OBJECT_ID('tempdb..#ValidOffers') IS NOT NULL DROP TABLE #ValidOffers;

    SELECT *
    INTO #ValidOffers
    FROM Offers O
    WHERE O.IsActive = 1
    AND @Now BETWEEN O.StartDate AND O.EndDate
    AND (O.StartTime IS NULL OR CAST(@Now AS TIME) BETWEEN O.StartTime AND O.EndTime)
	
    -- Coupon
    AND (
        O.IsCouponRequired = 0
        OR (
            @CouponCode IS NOT NULL
            AND UPPER(LTRIM(RTRIM(O.CouponCode))) = UPPER(LTRIM(RTRIM(@CouponCode)))
        )
    )

    AND (O.IsFirstOrderOnly = 0 OR NOT EXISTS (
        SELECT 1 FROM Orders WHERE UserId = @CustomerId
    ))

    AND (O.MinOrderAmount IS NULL OR @CartAmount >= O.MinOrderAmount)
    AND (O.MinQty IS NULL OR @CartQty >= O.MinQty);

    -------------------------------------------------------
    -- 🧠 CHECK ALREADY APPLIED
    -------------------------------------------------------
    IF OBJECT_ID('tempdb..#OfferStatus') IS NOT NULL DROP TABLE #OfferStatus;

    SELECT 
        VO.*,
        CASE 
            WHEN EXISTS (
                SELECT 1 FROM OfferUsage OU
                WHERE OU.OfferId = VO.Id
                AND OU.CustomerId = @CustomerId
                AND OU.RefType = 'CART'
            )
            THEN 1 ELSE 0
        END AS IsAlreadyApplied
    INTO #OfferStatus
    FROM #ValidOffers VO;

    -------------------------------------------------------
    -- 🧩 ITEM MATCH
    -------------------------------------------------------
    IF OBJECT_ID('tempdb..#ItemMatch') IS NOT NULL DROP TABLE #ItemMatch;

    SELECT 
        C.*,
        O.Id AS OfferId,
        O.OfferName,
        O.DiscountType,
        O.DiscountValue,
        O.MaxDiscountAmount,
        O.AllowWithOtherOffers,
        O.Priority,
        CASE 
            WHEN O.DiscountType = 'FLAT' THEN O.DiscountValue
            ELSE (C.LineTotal * O.DiscountValue / 100)
        END AS RawDiscount
    INTO #ItemMatch
    FROM #Cart C
    JOIN #OfferStatus O
        ON O.OfferType IN ('CATEGORY','PRODUCT','MIXED')
    WHERE 
        (
            O.ApplyOnly_Category IS NULL 
            OR C.CategoryId IN (SELECT value FROM STRING_SPLIT(O.ApplyOnly_Category, ','))
        )
        AND
        (
            O.ApplyOnly_Product IS NULL 
            OR C.ProductId IN (SELECT value FROM STRING_SPLIT(O.ApplyOnly_Product, ','))
        );

    -------------------------------------------------------
    -- 🏆 BEST OFFER PER ITEM
    -------------------------------------------------------
    IF OBJECT_ID('tempdb..#ItemBest') IS NOT NULL DROP TABLE #ItemBest;

    SELECT *
    INTO #ItemBest
    FROM (
        SELECT *,
            CASE 
                WHEN MaxDiscountAmount IS NOT NULL AND RawDiscount > MaxDiscountAmount
                THEN MaxDiscountAmount
                ELSE RawDiscount
            END AS FinalDiscount,
            ROW_NUMBER() OVER (
                PARTITION BY VariantId
                ORDER BY RawDiscount DESC, Priority ASC
            ) rn
        FROM #ItemMatch
    ) X
    WHERE rn = 1;

    -------------------------------------------------------
    -- 🧾 CART OFFERS
    -------------------------------------------------------
    IF OBJECT_ID('tempdb..#CartOffers') IS NOT NULL DROP TABLE #CartOffers;

    SELECT 
        O.Id AS OfferId,
        O.OfferName,
        CASE 
            WHEN O.DiscountType = 'FLAT' THEN O.DiscountValue
            ELSE (@CartAmount * O.DiscountValue / 100)
        END AS Discount,
        O.MaxDiscountAmount,
        O.AllowWithOtherOffers,
        O.Priority,
        O.IsAlreadyApplied
    INTO #CartOffers
    FROM #OfferStatus O
    WHERE O.OfferType NOT IN ('CATEGORY','PRODUCT','MIXED');

    -------------------------------------------------------
    -- 🔗 MERGE ALL OFFERS
    -------------------------------------------------------
    IF OBJECT_ID('tempdb..#AllOffers') IS NOT NULL DROP TABLE #AllOffers;

    CREATE TABLE #AllOffers (
        OfferId INT,
        OfferName NVARCHAR(255),
        Discount DECIMAL(18,2),
        AllowWithOtherOffers INT,
        Priority INT,
        IsAlreadyApplied BIT
    );

    INSERT INTO #AllOffers
    SELECT 
        OfferId,
        OS.OfferName,
        SUM(FinalDiscount),
        MIN(CAST(OS.AllowWithOtherOffers AS INT)),
        MIN(OS.Priority),
        MAX(IsAlreadyApplied)
    FROM #ItemBest IB
    JOIN #OfferStatus OS ON OS.Id = IB.OfferId
    GROUP BY OfferId, OS.OfferName;

    INSERT INTO #AllOffers
    SELECT 
        OfferId,
        OfferName,
        CASE 
            WHEN MaxDiscountAmount IS NOT NULL AND Discount > MaxDiscountAmount
            THEN MaxDiscountAmount
            ELSE Discount
        END,
        CAST(AllowWithOtherOffers AS INT),
        Priority,
        IsAlreadyApplied
    FROM #CartOffers;

    -------------------------------------------------------
    -- 🔁 SELECT TOP 2 OFFERS
    -------------------------------------------------------
    IF OBJECT_ID('tempdb..#FinalSelected') IS NOT NULL DROP TABLE #FinalSelected;

    CREATE TABLE #FinalSelected (
        OfferId INT,
        OfferName NVARCHAR(255),
        Discount DECIMAL(18,2),
        AllowWithOtherOffers INT,
        Priority INT
    );

    DECLARE @Count INT = 0;

    WHILE @Count < 2
    BEGIN
        DECLARE @OfferId INT;

        SELECT TOP 1 @OfferId = OfferId
        FROM #AllOffers
        ORDER BY 
            CASE WHEN OfferId = @SelectedOfferId THEN 0 ELSE 1 END,
            Discount DESC,
            Priority ASC;

        IF @OfferId IS NULL BREAK;

        INSERT INTO #FinalSelected
        SELECT OfferId, OfferName, Discount, AllowWithOtherOffers, Priority
        FROM #AllOffers WHERE OfferId = @OfferId;

        DELETE FROM #AllOffers WHERE OfferId = @OfferId;

        IF EXISTS (
            SELECT 1 FROM #FinalSelected WHERE AllowWithOtherOffers = 0
        )
            BREAK;

        SET @Count = @Count + 1;
    END

    -------------------------------------------------------
    -- 🧾 INSERT AUTO APPLY USAGE (NO DUPLICATE)
    -------------------------------------------------------
    INSERT INTO OfferUsage (OfferId, RefType, RefId, CustomerId, UsedDate)
    SELECT 
        FS.OfferId,
        'CART',
        @CustomerId,
        @CustomerId,
        GETDATE()
    FROM #FinalSelected FS
    JOIN Offers O ON O.Id = FS.OfferId
    --WHERE O.IsAutoApply = 1
    AND NOT EXISTS (
        SELECT 1 FROM OfferUsage OU
        WHERE OU.OfferId = FS.OfferId
        AND OU.CustomerId = @CustomerId
        AND OU.RefType = 'CART'
    );

    -------------------------------------------------------
    -- 📦 OUTPUT 1: ITEMS
    -------------------------------------------------------
    SELECT 
        C.ProductId,
        C.VariantId,
        C.Quantity,
        C.Price,
        C.LineTotal,
        ISNULL(IB.FinalDiscount,0) AS Discount,
        (C.LineTotal - ISNULL(IB.FinalDiscount,0)) AS FinalPrice,
        IB.OfferName
    FROM #Cart C
    LEFT JOIN #ItemBest IB ON C.VariantId = IB.VariantId;

    -------------------------------------------------------
    -- 🎯 OUTPUT 2: APPLIED OFFERS
    -------------------------------------------------------
    SELECT * FROM #FinalSelected;

    -------------------------------------------------------
    -- 🟡 OUTPUT 3: AVAILABLE OFFERS
    -------------------------------------------------------
    SELECT 
        OS.Id AS OfferId,
        OS.OfferName,
        OS.IsAlreadyApplied
    FROM #OfferStatus OS
    WHERE NOT EXISTS (
        SELECT 1 FROM #FinalSelected FS
        WHERE FS.OfferId = OS.Id
    );

    -------------------------------------------------------
    -- 💰 OUTPUT 4: SUMMARY
    -------------------------------------------------------
    SELECT 
        @CartAmount AS CartAmount,
        ISNULL(SUM(Discount),0) AS TotalDiscount,
        @CartAmount - ISNULL(SUM(Discount),0) AS FinalPayable
    FROM #FinalSelected;


  --  -------------------------------------------------------
  --  -- 🛒 CART
  --  -------------------------------------------------------
  --  DECLARE @Cart TABLE
  --  (
  --      CartId INT,
  --      ProductId INT,
  --      VariantId INT,
  --      CategoryId INT,
  --      Quantity INT,
  --      Price DECIMAL(18,2),
  --      LineTotal DECIMAL(18,2)
  --  );

  --  INSERT INTO @Cart
  --  SELECT DISTINCT
  --      C.Id,
  --      C.ProductId,
  --      C.VariantId,
  --      P.CategoryId,
  --      C.Quantity,
  --      PV.Price,
  --      (C.Quantity * PV.Price)
  --  FROM CustomerCart C
  --  JOIN Products P ON P.Id = C.ProductId
  --  JOIN ProductVariantMapping PV ON PV.Id = C.VariantId
  --  WHERE C.CustomerId = @CustomerId;

  --  IF NOT EXISTS (SELECT 1 FROM @Cart)
  --  BEGIN
  --      SELECT 'Cart is empty' AS Message;
  --      RETURN;
  --  END

  --  -------------------------------------------------------
  --  -- 📊 SUMMARY
  --  -------------------------------------------------------
  --  DECLARE @SubTotal DECIMAL(18,2),
  --          @TotalQty INT;

  --  SELECT 
  --      @SubTotal = SUM(LineTotal),
  --      @TotalQty = SUM(Quantity)
  --  FROM @Cart;

  --  -------------------------------------------------------
  --  -- 🎯 VALID OFFERS (FULL CONDITIONS)
  --  -------------------------------------------------------
  --  DECLARE @Offer TABLE
  --  (
  --      Id INT,
  --      OfferName NVARCHAR(200),
  --      Priority INT,
  --      AllowWithOtherOffers BIT,
  --      IsAutoApply BIT,
  --      ApplyOnly_Product NVARCHAR(MAX),
  --      ApplyOnly_Category NVARCHAR(MAX),
  --      DiscountType NVARCHAR(20),
  --      DiscountValue DECIMAL(18,2),
  --      MaxDiscountAmount DECIMAL(18,2)
  --  );

  --  INSERT INTO @Offer
  --  SELECT 
  --      O.Id,
  --      O.OfferName,
  --      O.Priority,
  --      O.AllowWithOtherOffers,
		--O.IsAutoApply,
  --      O.ApplyOnly_Product,
  --      O.ApplyOnly_Category,
  --      O.DiscountType,
  --      O.DiscountValue,
  --      O.MaxDiscountAmount
  --  FROM Offers O
  --  WHERE O.IsActive = 1 AND O.IsDeleted = 0

  --  -- Date
  --  AND (@Now BETWEEN O.StartDate AND O.EndDate)

  --  -- Time
  --  AND (O.StartTime IS NULL OR CAST(@Now AS TIME) >= O.StartTime)
  --  AND (O.EndTime IS NULL OR CAST(@Now AS TIME) <= O.EndTime)

  --  -- Min conditions
  --  AND (O.MinOrderAmount IS NULL OR @SubTotal >= O.MinOrderAmount)
  --  AND (O.MinQty IS NULL OR @TotalQty >= O.MinQty)

  --  -- Coupon
  --  AND (
  --      O.IsCouponRequired = 0
  --      OR (
  --          @CouponCode IS NOT NULL
  --          AND UPPER(LTRIM(RTRIM(O.CouponCode))) = UPPER(LTRIM(RTRIM(@CouponCode)))
  --      )
  --  )

  --  -- First order
  --  AND (
  --      O.IsFirstOrderOnly = 0
  --      OR NOT EXISTS (SELECT 1 FROM Orders WHERE UserId = @CustomerId)
  --  )

  --  ---- Prime
  --  --AND (
  --  --    O.IsPrimeOnly = 0
  --  --    OR EXISTS (SELECT 1 FROM Customer WHERE Id = @CustomerId AND IsPrime = 1)
  --  --)

  --  -- Max usage
  --  AND (
  --      O.MaxUsage IS NULL
  --      OR (SELECT COUNT(*) FROM OfferUsage WHERE OfferId = O.Id AND RefType = 'ORDER') < O.MaxUsage
  --  )

  --  -- Per user usage
  --  AND (
  --      O.PerUserUsage IS NULL
  --      OR (
  --          SELECT COUNT(*) FROM OfferUsage 
  --          WHERE OfferId = O.Id 
  --            AND UserId = @CustomerId 
  --            AND RefType = 'ORDER'
  --      ) < O.PerUserUsage
  --  )

  --  -- Product applicability
  --  AND (
  --      O.ApplyOnly_Product IS NULL
  --      OR EXISTS (
  --          SELECT 1 FROM @Cart C
  --          WHERE EXISTS (
  --              SELECT 1 FROM STRING_SPLIT(O.ApplyOnly_Product, ',')
  --              WHERE TRY_CAST(value AS INT) = C.ProductId
  --          )
  --      )
  --  )

  --  -- Category applicability
  --  AND (
  --      O.ApplyOnly_Category IS NULL
  --      OR EXISTS (
  --          SELECT 1 FROM @Cart C
  --          WHERE EXISTS (
  --              SELECT 1 FROM STRING_SPLIT(O.ApplyOnly_Category, ',')
  --              WHERE TRY_CAST(value AS INT) = C.CategoryId
  --          )
  --      )
  --  );

  --  -------------------------------------------------------
  --  -- 🧠 INSERT SELECTED OFFER
  --  -------------------------------------------------------
  --  IF @SelectedOfferId IS NOT NULL
  --  BEGIN
  --      IF EXISTS (SELECT 1 FROM @Offer WHERE Id = @SelectedOfferId)
  --      BEGIN
  --          IF NOT EXISTS (
  --              SELECT 1 FROM OfferUsage 
  --              WHERE OfferId = @SelectedOfferId 
  --                AND RefType = 'CART'
  --                AND RefId = @CustomerId
  --          )
  --          BEGIN
  --              INSERT INTO OfferUsage (OfferId, RefType, UserId, RefId, UsedDate)
  --              VALUES (@SelectedOfferId, 'CART', @CustomerId, @CustomerId, GETDATE());
  --          END
  --      END
  --  END

  --  -------------------------------------------------------
  --  -- ⚡ AUTO APPLY
  --  -------------------------------------------------------
  --  INSERT INTO OfferUsage (OfferId, RefType, RefId, UserId, UsedDate)
  --  SELECT O.Id, 'CART', @CustomerId, @CustomerId, GETDATE()
  --  FROM @Offer O
  --  JOIN Offers OM ON OM.Id = O.Id
  --  WHERE OM.IsAutoApply = 1
  --    AND NOT EXISTS (
  --          SELECT 1 FROM OfferUsage 
  --          WHERE OfferId = O.Id 
  --            AND RefType = 'CART'
  --            AND RefId = @CustomerId
  --    );

  --  -------------------------------------------------------
  --  -- 🔥 FINAL APPLIED OFFERS (STACKING)
  --  -------------------------------------------------------
  --  DECLARE @Applied TABLE
  --  (
  --      Id INT,
  --      OfferName NVARCHAR(200),
  --      Priority INT,
  --      AllowWithOtherOffers BIT,
  --      IsAutoApply BIT,
  --      ApplyOnly_Product NVARCHAR(MAX),
  --      ApplyOnly_Category NVARCHAR(MAX),
  --      DiscountType NVARCHAR(20),
  --      DiscountValue DECIMAL(18,2),
  --      MaxDiscountAmount DECIMAL(18,2)
  --  );

  --  INSERT INTO @Applied
  --  SELECT 
  --      O.*
  --  FROM @Offer O
  --  JOIN OfferUsage OU 
  --      ON OU.OfferId = O.Id
  --     AND OU.RefType = 'CART'
  --     AND OU.RefId = @CustomerId;

  --  -------------------------------------------------------
  --  -- 🧮 CALCULATE DISCOUNT (SAFE DISTRIBUTION)
  --  -------------------------------------------------------
  --  DECLARE @ItemDiscount TABLE (CartId INT, Discount DECIMAL(18,2));

  --  DECLARE @TotalDiscount DECIMAL(18,2) = 0;

  --  SELECT @TotalDiscount =
  --      SUM(
  --          CASE 
  --              WHEN DiscountType = 'PERCENT'
  --                  THEN 
  --                      CASE 
  --                          WHEN (@SubTotal * DiscountValue / 100.0) > ISNULL(MaxDiscountAmount, 999999)
  --                          THEN ISNULL(MaxDiscountAmount, 999999)
  --                          ELSE (@SubTotal * DiscountValue / 100.0)
  --                      END
  --              ELSE DiscountValue
  --          END
  --      )
  --  FROM @Applied;

  --  INSERT INTO @ItemDiscount
  --  SELECT 
  --      CartId,
  --      (LineTotal / NULLIF(@SubTotal,0)) * @TotalDiscount
  --  FROM @Cart;

  --  -------------------------------------------------------
  --  -- RESULT 1: ITEM
  --  -------------------------------------------------------
  --  SELECT 
  --      C.*
  --  FROM @Cart C
  --  LEFT JOIN @ItemDiscount D ON D.CartId = C.CartId;

  --  -------------------------------------------------------
  --  -- RESULT 2: SUMMARY
  --  -------------------------------------------------------
  --  SELECT 
  --      @SubTotal AS SubTotal,
  --      @TotalDiscount AS TotalDiscount,
  --      @SubTotal - @TotalDiscount AS FinalAmount;

  --  -------------------------------------------------------
  --  -- RESULT 3: APPLIED/AVAILABLE
  --  -------------------------------------------------------
  --  SELECT 
  --      O.*,
  --      CASE WHEN EXISTS (SELECT 1 FROM @Applied A WHERE A.Id = O.Id) THEN 1 ELSE 0 END AS IsApplied
  --  FROM @Offer O
  --  ORDER BY Priority;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Attribute_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_Attribute_Get]
(
 @Id INT = NULL,
 @Search NVARCHAR(200) = NULL,
 @Start INT = 0,
 @Length INT = 25,
 @SortColumnIndex INT = 0,
 @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN

SET NOCOUNT ON;

---------------------------------------
-- SINGLE RECORD
---------------------------------------

IF @Id IS NOT NULL
BEGIN
	IF ISNULL(@Id, 0) = -2 
		SELECT
			(ISNULL(X.DisplayName, X.Name) + ' - ' + AV.Value) AS Text,
			(CAST(X.Id AS VARCHAR(20)) + '-' + CAST(AV.Id AS VARCHAR(20))) AS Value
		FROM Attribute X
		LEFT JOIN AttributeValue AV ON AV.AttributeId = X.Id AND AV.IsDeleted = 0
		WHERE AV.Id IS NOT NULL
		ORDER BY X.Name, AV.Value;
	ELSE 
		SELECT
			X.Id,
			X.Name,
			X.DisplayName,
			STRING_AGG(AV.Value, ',') AS AttributeValues,
			STRING_AGG(CAST(AV.Id AS VARCHAR(20)) + '|' + AV.Value, ',') AS AttributeValues_Ids,
			X.IsActive,
			X.LastModifiedDate
		FROM Attribute X
		LEFT JOIN AttributeValue AV ON AV.AttributeId = X.Id AND AV.IsDeleted = 0
			WHERE X.Id = (CASE WHEN @Id < 0 THEN X.Id ELSE @Id END) AND X.IsDeleted = 0
			AND X.IsActive = (CASE WHEN @Id < 0 THEN 1 ELSE X.IsActive END)
		GROUP BY
			X.Id,
			X.Name,
			X.DisplayName,
			X.IsActive,
			X.LastModifiedDate;
	

	RETURN;

END

---------------------------------------
-- SORT COLUMN MAP
---------------------------------------

DECLARE @OrderBy NVARCHAR(100);

SET @OrderBy =
CASE @SortColumnIndex
 WHEN 0 THEN 'X.Id'
 WHEN 1 THEN 'X.Id'            -- SrNo column
 WHEN 2 THEN 'X.Name' -- Attribute column
 WHEN 2 THEN 'X.DisplayName' -- Attribute column
WHEN 3 THEN 'MIN(AV.Value)'  -- Values column
 WHEN 4 THEN 'X.IsActive'      -- Status column
 ELSE 'X.Id'
END

IF @SortDirection NOT IN ('ASC','DESC')
 SET @SortDirection = 'DESC';

---------------------------------------
-- COUNTS
---------------------------------------

DECLARE @Total INT;
DECLARE @Filtered INT;

SELECT @Total = COUNT(*)
FROM Attribute
WHERE IsDeleted = 0;

SELECT @Filtered = COUNT(*)
FROM Attribute X
WHERE X.IsDeleted = 0
AND (
 @Search IS NULL
 OR (X.Name LIKE '%' + @Search + '%' OR X.DisplayName LIKE '%' + @Search + '%' )
);

SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

---------------------------------------
-- DATA
---------------------------------------

DECLARE @SQL NVARCHAR(MAX);

SET @SQL = '
SELECT
 ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
 X.Id,
 X.Name,
 X.DisplayName,
 STRING_AGG(AV.Value,'','') AS AttributeValues,
 X.IsActive,
 X.LastModifiedDate
FROM Attribute X
LEFT JOIN AttributeValue AV ON AV.AttributeId = X.Id AND AV.IsDeleted = 0
WHERE X.IsDeleted = 0
';

IF @Search IS NOT NULL
SET @SQL += '
AND (
 X.Name LIKE ''%'' + @Search + ''%''
)
';

SET @SQL += '
GROUP BY
 X.Id,
 X.Name,
 X.DisplayName,
 X.IsActive,
 X.LastModifiedDate
ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY
';

EXEC sp_executesql
@SQL,
N'@Search NVARCHAR(200), @Start INT, @Length INT',
@Search,@Start,@Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Attribute_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Attribute_Save]
(
    @Id INT = 0,
    @Name NVARCHAR(100) = NULL,
    @DisplayName NVARCHAR(100) = NULL,
    @AttributeValues NVARCHAR(1000) = NULL, -- comma separated values
    @IsActive BIT = 1,
    @Mode NVARCHAR(10),
    @OperatedBy INT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN
SET NOCOUNT ON

SET @response = 'E|Something went wrong|0'

BEGIN TRY

    IF @Mode NOT IN ('SAVE','STATUS','DELETE')
    BEGIN
        SET @response = 'E|Invalid mode supplied|0'
        RETURN
    END

---------------------------------------------------
-- SAVE (INSERT / UPDATE)
---------------------------------------------------

    IF @Mode = 'SAVE'
    BEGIN

        IF ISNULL(@Name,'') = ''
        BEGIN
            SET @response = 'E|Attribute Name required|0'
            RETURN
        END
		-- Duplicate coupon check
		 IF EXISTS
		 (
		  SELECT 1 FROM Attribute
		  WHERE Name = @Name
		  AND IsDeleted = 0
		  AND (@Id = 0 OR Id <> @Id)
		 )
		 BEGIN
		  SET @response = 'E|This Attribute is already exists|0'
		  RETURN
		 END

        ------------------------------------------------
        -- UPDATE ATTRIBUTE
        ------------------------------------------------

        IF @Id > 0
        BEGIN

            UPDATE Attribute
            SET Name = @Name, DisplayName = @DisplayName,
                LastModifiedBy = @OperatedBy,
                LastModifiedDate = GETDATE()
            WHERE Id = @Id

        END
        ELSE
        BEGIN

           INSERT INTO Attribute
			(
				Name, DisplayName,
				IsActive,
				IsDeleted,
				CreatedBy,
				CreatedDate
			)
			VALUES
			(
				@Name, @DisplayName,
				1,          -- Active by default
				0,          -- Not deleted
				@OperatedBy,
				GETDATE()
			)

            SET @Id = SCOPE_IDENTITY()

        END

        ------------------------------------------------
        -- RESET ATTRIBUTE VALUES
        ------------------------------------------------

        DELETE FROM AttributeValue
        WHERE AttributeId = @Id

        ------------------------------------------------
        -- INSERT ATTRIBUTE VALUES
        ------------------------------------------------

        IF @AttributeValues IS NOT NULL
        BEGIN

           INSERT INTO AttributeValue
			(
				AttributeId,
				[Value],
				IsActive,
				IsDeleted,
				CreatedBy,
				CreatedDate
			)
			SELECT
				@Id,
				value,
				1,      -- Active
				0,      -- Not deleted
				@OperatedBy,
				GETDATE()
			FROM STRING_SPLIT(@AttributeValues, ',')

        END

        SET @response = 'S|Record saved successfully|' + CAST(@Id AS NVARCHAR)
        RETURN

    END

---------------------------------------------------
-- STATUS
---------------------------------------------------

    IF @Mode = 'STATUS'
    BEGIN

        UPDATE Attribute
        SET IsActive = @IsActive,
            LastModifiedBy = @OperatedBy,
            LastModifiedDate = GETDATE()
        WHERE Id = @Id

        UPDATE AttributeValue
        SET IsActive = @IsActive
        WHERE AttributeId = @Id

        SET @response = 'S|Status updated successfully|' + CAST(@Id AS NVARCHAR)
        RETURN

    END

---------------------------------------------------
-- DELETE ATTRIBUTE + VALUES
---------------------------------------------------

    IF @Mode = 'DELETE'
    BEGIN

        UPDATE Attribute
        SET IsDeleted = 1,
            IsActive = 0,
            LastModifiedBy = @OperatedBy,
            LastModifiedDate = GETDATE()
        WHERE Id = @Id

        UPDATE AttributeValue
        SET IsDeleted = 1,
            IsActive = 0
        WHERE AttributeId = @Id

        SET @response = 'S|Attribute deleted successfully|' + CAST(@Id AS NVARCHAR)
        RETURN

    END

END TRY
BEGIN CATCH

    SET @response = 'E|' + ERROR_MESSAGE() + '|0'

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_AttributeValue_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[SP_AttributeValue_Get]
(
 @Search NVARCHAR(200) = NULL,
 @Start INT = 0,
 @Length INT = 25
)
AS
BEGIN
 SET NOCOUNT ON;

 DECLARE @Total INT, @Filtered INT;

 SELECT @Total = COUNT(*) FROM AttributeValue WHERE IsDeleted = 0;

 SELECT @Filtered = COUNT(*)
 FROM AttributeValue
 WHERE IsDeleted = 0
   AND (@Search IS NULL OR CAST(Id AS NVARCHAR) LIKE '%' + @Search + '%');
   
 SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

 SELECT *
 FROM AttributeValue
 WHERE IsDeleted = 0
   AND (@Search IS NULL OR CAST(Id AS NVARCHAR) LIKE '%' + @Search + '%')
 ORDER BY Id DESC
 OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY;

END

GO
/****** Object:  StoredProcedure [dbo].[SP_AttributeValue_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/* ============================================================
   AttributeValue
============================================================ */

CREATE   PROCEDURE [dbo].[SP_AttributeValue_Save]
(
 @Id INT = 0,
 @IsActive BIT = 1,
 @IsDeleted BIT = 0,
 @Mode NVARCHAR(10),
 @OperatedBy INT,
 @response NVARCHAR(MAX) OUT
)
AS
BEGIN
 SET NOCOUNT ON;

 -- Default Error Response
 SET @response = 'E|Opps!... Something went wrong. Please contact system administrator|0';

 BEGIN TRY

  IF @Mode NOT IN ('SAVE','STATUS')
  BEGIN
   SET @response = 'E|Invalid mode supplied.|0';
   RETURN;
  END

  IF @Mode = 'SAVE'
  BEGIN
   IF @Id > 0
    UPDATE AttributeValue
    SET LastModifiedBy = @OperatedBy,
        LastModifiedDate = GETDATE()
    WHERE Id = @Id;
   ELSE
   BEGIN
    INSERT INTO AttributeValue (CreatedBy)
    VALUES (@OperatedBy);

    SET @Id = SCOPE_IDENTITY();
   END
  END
  ELSE IF @Mode = 'STATUS'
  BEGIN
   UPDATE AttributeValue
   SET IsActive = @IsActive,
       IsDeleted = @IsDeleted,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id;
  END

  SET @response = 'S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
  RETURN;

 END TRY
 BEGIN CATCH
  SET @response = 'E|' + ERROR_MESSAGE() + '|0';
  RETURN;
 END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[SP_Category_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Category_Get]
(
    @Id INT = NULL,
    @Search NVARCHAR(200) = NULL,
    @Start INT = 0,
    @Length INT = 25,
    @SortColumnIndex INT = 0,
    @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN
    SET NOCOUNT ON;

    -------------------------------------------------------
    -- SINGLE RECORD
    -------------------------------------------------------
    IF @Id IS NOT NULL 
    BEGIN
		DECLARE @SKU VARCHAR(100);

		-- 🔹 Check if SKU is NULL
		IF EXISTS ( SELECT 1 FROM Category WHERE Id = @Id AND SKU IS NULL )
		BEGIN
			DECLARE @CategoryName VARCHAR(100), @ParentCategoryId INT;

			-- Get required values
			SELECT @CategoryName = CategoryName, @ParentCategoryId = ParentCategoryId FROM Category WHERE Id = @Id;

			-- 🔹 Generate SKU
			EXEC dbo.SP_CategorySKU_GenerateUnique @CategoryId = @Id, @CategoryName = @CategoryName, @ParentCategoryId = @ParentCategoryId, @response = @SKU OUTPUT;

			-- 🔹 Update SKU
			UPDATE Category SET SKU = @SKU WHERE Id = @Id;
		END

        SELECT X.Id, X.CategoryName, X.ParentCategoryId, X.SKU, X.ImagePath, X.IsActive, X.IsDeleted,
            P.CategoryName AS ParentCategoryName
        FROM Category X
        LEFT JOIN Category P ON P.Id = X.ParentCategoryId
		WHERE X.Id = (CASE WHEN @Id < 0 THEN X.Id ELSE @Id END) AND X.IsDeleted = 0
		AND X.IsActive = (CASE WHEN @Id < 0 THEN 1 ELSE X.IsActive END);

        RETURN;
    END

    -------------------------------------------------------
    -- SORT MAPPING
    -------------------------------------------------------
    DECLARE @OrderBy NVARCHAR(100);

    SET @OrderBy =
        CASE @SortColumnIndex
            WHEN 0 THEN 'X.Id'
            WHEN 1 THEN 'X.CategoryName'
            WHEN 2 THEN 'P.CategoryName'
            WHEN 3 THEN 'X.SKU'
            WHEN 4 THEN 'X.IsActive'
            ELSE 'X.Id'
        END;

    IF @SortDirection NOT IN ('ASC','DESC')
        SET @SortDirection = 'DESC';

    -------------------------------------------------------
    -- COUNTS
    -------------------------------------------------------
    DECLARE @Total INT, @Filtered INT;

    SELECT @Total = COUNT(*) 
    FROM Category 
    WHERE IsDeleted = 0;

    SELECT @Filtered = COUNT(*)
    FROM Category X
    LEFT JOIN Category P ON P.Id = X.ParentCategoryId
    WHERE X.IsDeleted = 0
      AND (@Search IS NULL
           OR X.CategoryName LIKE '%' + @Search + '%'
           OR P.CategoryName LIKE '%' + @Search + '%');

    SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

    -------------------------------------------------------
    -- DATA
    -------------------------------------------------------
    DECLARE @SQL NVARCHAR(MAX);

    SET @SQL = '
    SELECT 
        ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
        X.*,
        P.CategoryName AS ParentCategoryName
    FROM Category X
    LEFT JOIN Category P ON P.Id = X.ParentCategoryId
    WHERE X.IsDeleted = 0
    ';

    IF @Search IS NOT NULL
        SET @SQL += '
        AND (
            X.CategoryName LIKE ''%'' + @Search + ''%'' OR
            P.CategoryName LIKE ''%'' + @Search + ''%''
        )';

    SET @SQL += '
    ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
    OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY';

    EXEC sp_executesql
        @SQL,
        N'@Search NVARCHAR(200), @Start INT, @Length INT',
        @Search, @Start, @Length;

END

/****** Object:  StoredProcedure [dbo].[SP_Category_Save]    Script Date: 13-03-2026 01:00:04 PM ******/
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[SP_Category_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Category_Save]
(
 @Id INT = 0,
 @CategoryName NVARCHAR(250) = NULL,
 @ParentCategoryId INT = NULL,
 @SKU NVARCHAR(250) = NULL,
 @ImagePath NVARCHAR(500) = NULL,
 @ImagePath_Remove BIT = 0,
 @IsActive BIT = 1,
 @IsDeleted BIT = 0,
 @Mode NVARCHAR(10),
 @OperatedBy INT,
 @response NVARCHAR(MAX) OUT
)
AS
BEGIN
 SET NOCOUNT ON;

 SET @response = 'E|Opps!... Something went wrong.|0';

 BEGIN TRY

  IF @Mode NOT IN ('SAVE','STATUS','DELETE')
  BEGIN
   SET @response = 'E|Invalid mode supplied.|0';
   RETURN;
  END

 ----------------------------------------------------
 -- SAVE
 ----------------------------------------------------
  IF @Mode = 'SAVE'
  BEGIN

   IF ISNULL(@CategoryName,'') = ''
   BEGIN
    SET @response = 'E|Category Name is required.|0';
    RETURN;
   END

   -- Duplicate validation
   IF EXISTS (
    SELECT 1 FROM Category
    WHERE CategoryName = @CategoryName
      AND ISNULL(ParentCategoryId,0) = ISNULL(@ParentCategoryId,0)
      AND IsDeleted = 0
      AND (@Id = 0 OR Id <> @Id)
   )
   BEGIN
    SET @response = 'E|Category already exists under same parent.|0';
    RETURN;
   END

   ------------------------------------------------
   -- UPDATE
   ------------------------------------------------
   IF @Id > 0
   BEGIN
		DECLARE @OldImagePath NVARCHAR(500);

		SELECT @OldImagePath = ImagePath
		FROM Category
		WHERE Id = @Id;

    UPDATE Category
    SET ParentCategoryId = @ParentCategoryId,
        CategoryName = @CategoryName,
        SKU = @SKU,
		ImagePath =
                CASE
					WHEN @ImagePath_Remove = 1 AND ISNULL(@ImagePath,'') = '' THEN NULL
					WHEN ISNULL(@ImagePath,'') <> '' THEN @ImagePath
					ELSE ImagePath
				END,
        IsActive = @IsActive,
        LastModifiedBy = @OperatedBy,
        LastModifiedDate = GETDATE()
    WHERE Id = @Id;

    SET @response = 'S|Record updated successfully|' + CAST(@Id AS NVARCHAR)+ '|' 
	+ (CASE WHEN @ImagePath_Remove = 1 THEN ISNULL(@OldImagePath,'') WHEN @OldImagePath <> @ImagePath THEN ISNULL(@OldImagePath,'') ELSE '' END);
    RETURN;
   END
   ELSE
   BEGIN

    ------------------------------------------------
    -- INSERT
    ------------------------------------------------
    INSERT INTO Category
    (
     ParentCategoryId,
     CategoryName,
	 SKU,
	 ImagePath,
     IsActive,
     IsDeleted,
     CreatedBy,
     CreatedDate
    )
    VALUES
    (
     @ParentCategoryId,
     @CategoryName,
	 @SKU,
	 @ImagePath,
     @IsActive,
     0,
     @OperatedBy,
     GETDATE()
    );

    SET @Id = SCOPE_IDENTITY();

    SET @response = 'S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
    RETURN;

   END

  END

 ----------------------------------------------------
 -- STATUS CHANGE
 ----------------------------------------------------
  IF @Mode = 'STATUS'
  BEGIN

   UPDATE Category
   SET IsActive = @IsActive,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id;

   SET @response = 'S|Status updated successfully|' + CAST(@Id AS NVARCHAR);
   RETURN;

  END

 ----------------------------------------------------
 -- DELETE (SAFE SOFT DELETE)
 ----------------------------------------------------
  IF @Mode = 'DELETE'
  BEGIN

   -- Check child categories
   IF EXISTS (
    SELECT 1 FROM Category
    WHERE ParentCategoryId = @Id
    AND IsDeleted = 0
   )
   BEGIN
    SET @response = 'E|Child categories exist. Cannot delete.|0';
    RETURN;
   END

   -- Check products
   IF EXISTS (
    SELECT 1 FROM Products
    WHERE CategoryId = @Id
    AND IsDeleted = 0
   )
   BEGIN
    SET @response = 'E|Products exist under this category.|0';
    RETURN;
   END

   UPDATE Category
   SET IsDeleted = 1,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id;

   SET @response = 'S|Category deleted successfully|' + CAST(@Id AS NVARCHAR);
   RETURN;

  END

 END TRY
 BEGIN CATCH
  SET @response = 'E|' + ERROR_MESSAGE() + '|0';
 END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_CategorySKU_GenerateUnique]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CategorySKU_GenerateUnique]
(
    @CategoryId INT = NULL,
    @CategoryName VARCHAR(100),
    @ParentCategoryId INT = NULL,
    @response VARCHAR(100) OUTPUT
)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE 
        @ParentName VARCHAR(100),
        @CategoryCode VARCHAR(100),
        @ParentCode VARCHAR(100),
        @BaseSKU VARCHAR(100),
        @FinalSKU VARCHAR(100),
        @Counter INT = 1;

	------------------------------------------------------------
    -- ✅ 1. RETURN EXISTING SKU (EDIT CASE)
    ------------------------------------------------------------
    IF (@CategoryId IS NOT NULL AND @CategoryId > 0)
    BEGIN
        SELECT @response = LOWER(SKU)
        FROM Category
        WHERE Id = @CategoryId
          AND CategoryName = @CategoryName
          AND ISNULL(ParentCategoryId, 0) = ISNULL(@ParentCategoryId, 0)
          AND SKU IS NOT NULL;

        IF (@response IS NOT NULL)
        BEGIN
            RETURN;
        END
    END

    ------------------------------------------------------------
    -- ✅ 2. GENERATE NEW SKU
    ------------------------------------------------------------
    -- Get Parent Name
    SELECT @ParentName = CategoryName
    FROM Category
    WHERE Id = @ParentCategoryId;

    -- Create Codes
    SET @CategoryCode = UPPER(REPLACE(@CategoryName,' ','-'));
    SET @ParentCode = UPPER(REPLACE(ISNULL(@ParentName,''),' ','-'));

    -- Base SKU
    IF @ParentCategoryId IS NULL
        SET @BaseSKU = @CategoryCode;
    ELSE
        SET @BaseSKU = @ParentCode + '-' + @CategoryCode;

    SET @FinalSKU = @BaseSKU;

    -- Ensure uniqueness
    WHILE EXISTS (SELECT 1 FROM Category WHERE SKU = @FinalSKU)
    BEGIN
        SET @FinalSKU = @BaseSKU + '-' + CAST(@Counter AS VARCHAR);
        SET @Counter = @Counter + 1;
    END

    SET @response = LOWER(@FinalSKU);
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_ChangePassword]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ChangePassword]
(
    @UserId INT,
    @OldPassword NVARCHAR(255),
    @NewPassword NVARCHAR(255)
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if user exists with old password
    IF EXISTS (
        SELECT 1 
        FROM dbo.Customer 
        WHERE Id = @UserId AND [Password] = @OldPassword
    )
    BEGIN
        -- Update password
        UPDATE dbo.Customer
        SET 
            [Password] = @NewPassword,
            LastModifiedDate = GETDATE()
        WHERE Id = @UserId;

        SELECT 
            1 AS Status,
            'Password changed successfully' AS Message;
    END
    ELSE
    BEGIN
        SELECT 
            0 AS Status,
            'Incorrect old password' AS Message;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckAuthentication]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_CheckAuthentication]
(
    @UserName NVARCHAR(150),
    @Password NVARCHAR(255),
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Default Error Response
    SET @response = 'E|Opps!... Something went wrong. Please contact system administrator|0';

    BEGIN TRY

        -- Validation
        IF @UserName IS NULL OR @Password IS NULL
        BEGIN
            SET @response = 'E|Username and password are required.|0';
            RETURN;
        END

        DECLARE 
            @UserId INT = 0,
            @RoleId INT = 0,
            @FullName NVARCHAR(200) = '',
            @RoleName NVARCHAR(100) = '',
            @IsActive BIT = 0,
            @IsDeleted BIT = 0;

        SELECT 
            @UserId = u.Id,
            @RoleId = u.RoleId,
            @FullName = ISNULL(u.FirstName,'') + ' ' + ISNULL(u.LastName,''),
            @RoleName = r.RoleName,
            @IsActive = u.IsActive,
            @IsDeleted = u.IsDeleted
        FROM Users u
        INNER JOIN Roles r ON u.RoleId = r.Id
        WHERE UserName = @UserName
          AND Password = @Password;

        -- User Not Found
        IF @UserId IS NULL OR @UserId = 0
        BEGIN
            SET @response = 'E|Invalid email or password.|0';
            RETURN;
        END

        -- Soft Delete Check
        IF @IsDeleted = 1
        BEGIN
            SET @response = 'E|Your account has been removed. Contact administrator.|0';
            RETURN;
        END

        -- Active Check
        IF @IsActive = 0
        BEGIN
            SET @response = 'E|Your account is inactive. Contact administrator.|0';
            RETURN;
        END

        -- S|Message|UserId|FullName|RoleId|RoleName

        SET @response = 
            'S|Login successful|'
            + CAST(@UserId AS NVARCHAR) + '|'
            + ISNULL(@FullName,'') + '|'
            + CAST(@RoleId AS NVARCHAR) + '|'
            + ISNULL(@RoleName,'');

        RETURN;

    END TRY
    BEGIN CATCH
        SET @response = 'E|' + ERROR_MESSAGE() + '|0';
        RETURN;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Checkout]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Checkout] 
(
    @CustomerId INT,
	@CustomerAddressId INT,
    @CreatedBy INT,
	--new add
	@UsedCoins DECIMAL(18,2) = 0,
    @CoinDiscountAmount DECIMAL(18,2) = 0,
	@DeliveryFee DECIMAL(18,2) = 0 ,
	@PaymentMode varchar(10)=NULL -- New add
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @Retry INT = 0, @MaxRetry INT = 3;

RetryBlock:
    BEGIN TRY
        BEGIN TRAN;

        DECLARE @Now DATETIME = GETDATE();

        /* =====================================================
           STEP 1: LOAD CART
        ===================================================== */
        DECLARE @CartItems TABLE
        (
            CartId INT,
            ProductId INT,
            VariantId INT,
            Quantity INT,
            UnitPrice DECIMAL(18,2)
        );

        INSERT INTO @CartItems
        SELECT 
            C.Id AS CartId,
            C.ProductId,
            C.VariantId,
            C.Quantity,
            PVM.SellPrice   -- adjust if price source differs
        FROM CustomerCart C WITH (UPDLOCK, HOLDLOCK)
		INNER JOIN ProductVariantMapping PVM ON PVM.Id = C.VariantId
        INNER JOIN ProductStock PS ON PS.VariantId = C.VariantId
        WHERE C.CustomerId = @CustomerId AND C.Quantity > 0
          AND C.IsActive = 1;

        IF NOT EXISTS (SELECT 1 FROM @CartItems)
        BEGIN
            ROLLBACK;
            RAISERROR('Cart is empty.', 16, 1);
            RETURN;
        END

        /* =====================================================
           STEP 2: LOCK STOCK (ORDERED)
        ===================================================== */
        SELECT PS.VariantId
        FROM ProductStock PS WITH (UPDLOCK, HOLDLOCK)
        INNER JOIN @CartItems CI ON CI.VariantId = PS.VariantId
        ORDER BY PS.VariantId;

        /* =====================================================
           STEP 3: VALIDATE RESERVED STOCK
        ===================================================== */
        IF EXISTS (
            SELECT 1
            FROM ProductStock PS
            INNER JOIN @CartItems CI
                ON PS.VariantId = CI.VariantId
            WHERE PS.ReservedStock < CI.Quantity
        )
        BEGIN
            ROLLBACK;
            RAISERROR('Stock inconsistency detected.', 16, 1);
            RETURN;
        END

        /* =====================================================
           STEP 4: CALCULATE TOTALS
        ===================================================== */
        DECLARE @TotalAmount DECIMAL(18,2) = 0,
                @DiscountAmount DECIMAL(18,2) = 0,
                @FinalAmount DECIMAL(18,2);

        SELECT @TotalAmount = SUM(Quantity * UnitPrice)
        FROM @CartItems;


		------Temp add for check it 
		SELECT
    @DiscountAmount = ISNULL(SUM(FinalDiscount),0)
FROM OfferUsage
WHERE CustomerId = @CustomerId
  AND RefType = 'CART';

PRINT 'Discount Amount = ' + CAST(@DiscountAmount AS VARCHAR(20));
--end for temope		
        --SET @FinalAmount = @TotalAmount - @DiscountAmount;
DECLARE @AmountAfterOffer DECIMAL(18,2);

SET @AmountAfterOffer =
(
    @TotalAmount - @DiscountAmount -- add here for DeliveryFee
	  + @DeliveryFee
);


        /* =====================================================
           STEP NEW : NEW ADD
        ===================================================== */
	DECLARE @AvailableCoins DECIMAL(18,2);
DECLARE @CoinToRupeeRate DECIMAL(18,2);
DECLARE @MaxCoinUsagePercent DECIMAL(18,2);
DECLARE @MaxAllowedDiscount DECIMAL(18,2);


SELECT
@AvailableCoins = RewardCoins
FROM Customer
WHERE Id = @CustomerId;

SELECT
@CoinToRupeeRate = CoinToRupeeRate,
@MaxCoinUsagePercent = MaxCoinUsagePercent
FROM RewardSettings
WHERE IsActive = 1;


IF @UsedCoins < 0
BEGIN
RAISERROR('Invalid used coins.',16,1);
RETURN;
END

IF @CoinDiscountAmount < 0
BEGIN
RAISERROR('Invalid coin discount amount.',16,1);
RETURN;
END

IF (@UsedCoins = 0 AND @CoinDiscountAmount > 0)
OR (@UsedCoins > 0 AND @CoinDiscountAmount = 0)
BEGIN
    RAISERROR('Invalid reward coin request.',16,1);
    RETURN;
END 

IF @UsedCoins > @AvailableCoins
BEGIN
RAISERROR('Insufficient reward coins.',16,1);
RETURN;
END

IF ISNULL(@CoinToRupeeRate,0) <= 0
BEGIN
    RAISERROR('Invalid reward settings.',16,1);
    RETURN;
END

IF ROUND(@UsedCoins / @CoinToRupeeRate,2) <> ROUND(@CoinDiscountAmount,2)
BEGIN
RAISERROR('Invalid coin conversion.',16,1);
RETURN;
END

SET @MaxAllowedDiscount =
(
@AmountAfterOffer * @MaxCoinUsagePercent
) / 100;

IF @CoinDiscountAmount > @MaxAllowedDiscount
BEGIN
RAISERROR('Maximum reward coin usage limit exceeded.',16,1);
RETURN;
END

---- after all validation 
SET @FinalAmount =
(
    @AmountAfterOffer - @CoinDiscountAmount
);
IF @FinalAmount < 0
BEGIN
    RAISERROR('Invalid final amount.',16,1);
    RETURN;
END

-- New add for adress add into Order table 
DECLARE
    @AddressLine1 NVARCHAR(200),
    @AddressLine2 NVARCHAR(200),
    @City NVARCHAR(100),
    @PostalCode NVARCHAR(20),
    @MobileNo NVARCHAR(15),
    @AlternativeMobileNo NVARCHAR(15),
    @CountryId BIGINT,
    @StateId BIGINT;
	
	SELECT
    @AddressLine1 = AddressLine1,
    @AddressLine2 = AddressLine2,
    @City = City,
    @PostalCode = PostalCode,
    @MobileNo = MobileNo,
    @AlternativeMobileNo = AlternativeMobileNo,
    @CountryId = CountryId,
    @StateId = StateId
FROM CustomerAddress
WHERE Id = @CustomerAddressId;
-- New add for adress add into Order table  ENd 
        /* =====================================================
           STEP 5: CREATE ORDER
        ===================================================== */
        DECLARE @OrderId INT,
                @OrderNumber NVARCHAR(50);

        SET @OrderNumber = 'ORD-' + FORMAT(@Now, 'yyyyMMddHHmmss');
		-- add also for DiscountAmount
        INSERT INTO Orders
        (
            UserId, OrderNumber, OrderDate,
            TotalAmount, DiscountAmount, FinalAmount,  DeliveryFee,
			AddressLine1,
    AddressLine2,
    City,
    PostalCode,
    MobileNo,
    AlternativeMobileNo,
    CountryId,
    StateId,
            OrderStatus, PaymentStatus,
            IsActive, IsDeleted,
            CreatedBy, CreatedDate,--New add
			CustomerAddressId,    UsedCoins,CoinDiscountAmount,PaymentMode
        )
        VALUES
        (
            @CustomerId, @OrderNumber, @Now,
            @TotalAmount, @DiscountAmount, @FinalAmount,@DeliveryFee,
			 @AddressLine1,
    @AddressLine2,
    @City,
    @PostalCode,
    @MobileNo,
    @AlternativeMobileNo,
    @CountryId,
    @StateId,
            '1', '2',
            1, 0,
            @CreatedBy, @Now,@CustomerAddressId,@UsedCoins,@CoinDiscountAmount,@PaymentMode
        );



        SET @OrderId = SCOPE_IDENTITY();

		DECLARE @ProductNames NVARCHAR(MAX);

SELECT
    @ProductNames = STRING_AGG(P.ProductName, ', ')
FROM @CartItems CI
INNER JOIN Products P
    ON P.Id = CI.ProductId;

INSERT INTO NotificationMaster
(
    CustomerId,
    Title,
    Message,
    IsRead,
    IsDeleted,
    CreatedBy,
    CreatedDate
)
VALUES
(
    @CustomerId,
    'Order Placed Successfully',
    'Your order ' + @OrderNumber +
    ' has been placed successfully. Products: ' +
    ISNULL(@ProductNames,''),
    0,
    0,
    @CreatedBy,
    GETDATE()
);
DECLARE @RemainingBalance INT;
		-- New add for coin
		IF @UsedCoins > 0
BEGIN


    UPDATE Customer
    SET RewardCoins = RewardCoins - @UsedCoins
   WHERE Id = @CustomerId;

       SELECT @RemainingBalance = RewardCoins
    FROM Customer
    WHERE Id = @CustomerId;

END
--new
IF @UsedCoins > 0
BEGIN
--         select * from RewardUsageHistory
    INSERT INTO RewardUsageHistory
    (
        CustomerId,
        OrderId,
        UsedCoins,
        CoinAmount,
		RemainingBalance,
        Remarks,
        CreatedBy,
        CreatedDate
    )
    VALUES
    (
        @CustomerId,
        @OrderId,
        @UsedCoins,
        @CoinDiscountAmount,
		@RemainingBalance,
        'Reward Coin Used During Checkout',
        @CreatedBy,
        GETDATE()
    );

END
--- new add for Status
				INSERT INTO OrderDeliveryStatus
       (OrderId, NewStatus,Remarks, StatusDate,IsActive,IsDeleted,CreatedBy,CreatedDate,OldStatus)
VALUES
(@OrderId, '1','Order Placed Successfully',GETDATE(),1,0,@CreatedBy,GETDATE(),null);

        /* =====================================================
           STEP 6: INSERT ORDER ITEMS
        ===================================================== */
        INSERT INTO OrderItems
        (
            OrderId, ProductId, VariantId,
            Quantity, UnitPrice, TotalPrice,
            IsActive, IsDeleted,
            CreatedBy, CreatedDate
        )
        SELECT
            @OrderId,
            ProductId,
            VariantId,
            Quantity,
            UnitPrice,
            Quantity * UnitPrice,
            1, 0,
            @CreatedBy, @Now
        FROM @CartItems;

        /* =====================================================
           STEP 7: UPDATE STOCK
        ===================================================== */
        UPDATE PS
        SET 
            PS.ReservedStock = PS.ReservedStock - CI.Quantity,
            PS.AvailableStock = PS.AvailableStock - CI.Quantity
        FROM ProductStock PS
        INNER JOIN @CartItems CI
            ON PS.VariantId = CI.VariantId;

        /* =====================================================
           STEP 8: CLEAR CART
        ===================================================== */
        
        DELETE FROM CustomerCart
        WHERE CustomerId = @CustomerId AND Quantity > 0 AND IsActive = 1;

        UPDATE OfferUsage
        SET RefType = 'ORDER',RefId=@OrderId, UsedDate = GETDATE()
        WHERE RefType = 'CART' AND CustomerId = @CustomerId;
		
        COMMIT;

        SELECT @OrderId AS OrderId, @OrderNumber AS OrderNumber;
		
    END TRY

    BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK;

		IF ERROR_NUMBER() = 1205 AND @Retry < @MaxRetry
		BEGIN
			SET @Retry += 1;
			WAITFOR DELAY '00:00:00.200';
			GOTO RetryBlock;
		END

		DECLARE @ErrMsg NVARCHAR(4000);
		SET @ErrMsg = ERROR_MESSAGE();

		RAISERROR(@ErrMsg, 16, 1);
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ContactUs_Delete]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ContactUs_Delete]
(
    @ContactId BIGINT,
    @OperatedBy BIGINT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN
    SET NOCOUNT ON;

    SET @response='E|Something went wrong|0';

    BEGIN TRY

        IF NOT EXISTS
        (
            SELECT 1
            FROM ContactUs
            WHERE ContactId=@ContactId
            AND ISNULL(IsDeleted,0)=0
        )
        BEGIN
            SET @response='E|Enquiry not found|0';
            RETURN;
        END

        UPDATE ContactUs
        SET
            IsDeleted = 1,
            IsActive = 0,
            LastModifiedBy = @OperatedBy,
            LastModifiedDate = GETDATE()
        WHERE ContactId=@ContactId;

        SET @response='S|Enquiry deleted successfully|' + CAST(@ContactId AS NVARCHAR);

    END TRY
    BEGIN CATCH
        SET @response='E|' + ERROR_MESSAGE() + '|0';
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ContactUs_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ContactUs_Get]
(
    @ContactId BIGINT = NULL,
    @Search NVARCHAR(200) = NULL,
    @Start INT = 0,
    @Length INT = 25,
    @SortColumnIndex INT = 0,
    @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN
    SET NOCOUNT ON;

    --------------------------------------------------
    -- GET BY ID
    --------------------------------------------------
    IF @ContactId IS NOT NULL
    BEGIN
        SELECT
            ContactId,
            Name,
            Email,
            MobileNumber,
            Subject,
            Message,
            IsActive
        FROM ContactUs
        WHERE ContactId = @ContactId
        AND ISNULL(IsDeleted,0)=0;

        RETURN;
    END

    --------------------------------------------------
    -- SORTING
    --------------------------------------------------
    DECLARE @OrderBy NVARCHAR(100);

    SET @OrderBy =
    CASE @SortColumnIndex
        WHEN 0 THEN 'X.Name'
        WHEN 1 THEN 'X.Email'
        WHEN 2 THEN 'X.MobileNumber'
        WHEN 3 THEN 'X.Subject'
        WHEN 4 THEN 'X.CreatedDate'
        ELSE 'X.CreatedDate'
    END;

    IF @SortDirection NOT IN ('ASC','DESC')
        SET @SortDirection='DESC';

    --------------------------------------------------
    -- COUNTS
    --------------------------------------------------
    DECLARE @Total INT,
            @Filtered INT;

    SELECT @Total = COUNT(*)
    FROM ContactUs
    WHERE ISNULL(IsDeleted,0)=0;

    SELECT @Filtered = COUNT(*)
    FROM ContactUs X
    WHERE ISNULL(X.IsDeleted,0)=0
    AND
    (
        @Search IS NULL
        OR X.Name LIKE '%' + @Search + '%'
        OR X.Email LIKE '%' + @Search + '%'
        OR X.MobileNumber LIKE '%' + @Search + '%'
        OR X.Subject LIKE '%' + @Search + '%'
    );

    SELECT
        @Total AS TotalRecords,
        @Filtered AS FilteredRecords;

    --------------------------------------------------
    -- DATA
    --------------------------------------------------
    DECLARE @SQL NVARCHAR(MAX);

    SET @SQL='
    SELECT
        ROW_NUMBER() OVER(ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') AS SrNo,
        X.ContactId,
        X.Name,
        X.Email,
        X.MobileNumber,
        X.Subject,
        X.Message,
        X.IsActive,
        X.CreatedDate
    FROM ContactUs X
    WHERE ISNULL(X.IsDeleted,0)=0';

    IF @Search IS NOT NULL
    BEGIN
        SET @SQL += '
        AND
        (
            X.Name LIKE ''%'' + @Search + ''%''
            OR X.Email LIKE ''%'' + @Search + ''%''
            OR X.MobileNumber LIKE ''%'' + @Search + ''%''
            OR X.Subject LIKE ''%'' + @Search + ''%''
        )';
    END

    SET @SQL += '
    ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
    OFFSET @Start ROWS
    FETCH NEXT @Length ROWS ONLY';

    EXEC sp_executesql
        @SQL,
        N'@Search NVARCHAR(200),@Start INT,@Length INT',
        @Search,
        @Start,
        @Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ContactUs_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ContactUs_Save]
(
    @ContactId BIGINT = 0,
    @Name NVARCHAR(100),
    @Email NVARCHAR(255),
    @MobileNumber NVARCHAR(20),
    @Subject NVARCHAR(255),
    @Message NVARCHAR(MAX),
    @IsActive BIT = 1,
    @OperatedBy BIGINT = NULL,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN
    SET NOCOUNT ON;

    SET @response='E|Something went wrong|0';

    BEGIN TRY

        --------------------------------------------------
        -- UPDATE
        --------------------------------------------------
        IF @ContactId > 0
        BEGIN
            UPDATE ContactUs
            SET
                Name = @Name,
                Email = @Email,
                MobileNumber = @MobileNumber,
                Subject = @Subject,
                Message = @Message,
                IsActive = @IsActive,
                LastModifiedBy = @OperatedBy,
                LastModifiedDate = GETDATE()
            WHERE ContactId=@ContactId;

            SET @response='S|Contact updated successfully|' + CAST(@ContactId AS NVARCHAR);
        END
        ELSE
        BEGIN
            --------------------------------------------------
            -- INSERT
            --------------------------------------------------
            INSERT INTO ContactUs
            (
                Name,
                Email,
                MobileNumber,
                Subject,
                Message,
                IsActive,
                IsDeleted,
                CreatedBy,
                CreatedDate,
                LastModifiedBy,
                LastModifiedDate
            )
            VALUES
            (
                @Name,
                @Email,
                @MobileNumber,
                @Subject,
                @Message,
                1,
                0,
                @OperatedBy,
                GETDATE(),
                @OperatedBy,
                GETDATE()
            );

            SET @ContactId=SCOPE_IDENTITY();

            SET @response='S|Enquiry submitted successfully|' + CAST(@ContactId AS NVARCHAR);
        END

    END TRY
    BEGIN CATCH
        SET @response='E|' + ERROR_MESSAGE() + '|0';
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Country_Combo]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Country_Combo]
AS
BEGIN
SET NOCOUNT ON;

SELECT
    CountryId AS Id,
    CountryName AS [Name]
FROM Country
WHERE ISNULL(IsDeleted,0) = 0
  AND IsActive = 1
ORDER BY CountryName ASC;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Country_Delete]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Country_Delete]
(
@CountryId BIGINT,
@OperatedBy BIGINT,
@response NVARCHAR(MAX) OUT
)
AS
BEGIN
SET NOCOUNT ON;
SET @response='E|Something went wrong|0';

BEGIN TRY

    IF NOT EXISTS
    (
        SELECT 1
        FROM Country
        WHERE CountryId=@CountryId
        AND ISNULL(IsDeleted,0)=0
    )
    BEGIN
        SET @response='E|Country not found|0';
        RETURN;
    END

    UPDATE Country
    SET
        IsDeleted = 1,IsActive=0,
        LastModifiedBy = @OperatedBy,
        LastModifiedDate = GETDATE()
    WHERE CountryId = @CountryId;

    SET @response='S|Country deleted successfully|' + CAST(@CountryId AS NVARCHAR);

END TRY
BEGIN CATCH
    SET @response='E|' + ERROR_MESSAGE() + '|0';
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Country_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Country_Get]
(
@CountryId BIGINT = NULL,
@Search NVARCHAR(200) = NULL,
@Start INT = 0,
@Length INT = 25,
@SortColumnIndex INT = 0,
@SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN
SET NOCOUNT ON;


--------------------------------------------------
-- GET BY ID
--------------------------------------------------
IF @CountryId IS NOT NULL
BEGIN
    SELECT
        CountryId,
        CountryName,
        CountryCode,
        IsActive
    FROM Country
    WHERE CountryId = @CountryId
    AND ISNULL(IsDeleted,0)=0;

    RETURN;
END

--------------------------------------------------
-- SORTING
--------------------------------------------------
DECLARE @OrderBy NVARCHAR(100);

SET @OrderBy =
CASE @SortColumnIndex
    WHEN 0 THEN 'X.CountryName'
    ELSE 'X.CountryName'
END;

IF @SortDirection NOT IN ('ASC','DESC')
    SET @SortDirection='DESC';

--------------------------------------------------
-- COUNTS
--------------------------------------------------
DECLARE @Total INT,
        @Filtered INT;

SELECT @Total = COUNT(*)
FROM Country
WHERE ISNULL(IsDeleted,0)=0;

SELECT @Filtered = COUNT(*)
FROM Country X
WHERE ISNULL(X.IsDeleted,0)=0
AND (
        @Search IS NULL
        OR X.CountryName LIKE '%' + @Search + '%'
    );

SELECT
    @Total AS TotalRecords,
    @Filtered AS FilteredRecords;

--------------------------------------------------
-- DATA
--------------------------------------------------
DECLARE @SQL NVARCHAR(MAX);

SET @SQL='
SELECT
    ROW_NUMBER() OVER(ORDER BY X.CountryName ASC) + @Start AS SrNo,
    X.CountryId,
    X.CountryName
FROM Country X
WHERE ISNULL(X.IsDeleted,0)=0';

IF @Search IS NOT NULL
BEGIN
    SET @SQL += '
    AND X.CountryName LIKE ''%'' + @Search + ''%'' ';
END

SET @SQL += '
ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
OFFSET @Start ROWS
FETCH NEXT @Length ROWS ONLY';

EXEC sp_executesql
@SQL,
N'@Search NVARCHAR(200),@Start INT,@Length INT',
@Search,
@Start,
@Length;


END
GO
/****** Object:  StoredProcedure [dbo].[SP_Country_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Country_Save]
(
@CountryId BIGINT = 0,
@CountryName VARCHAR(100),
@CountryCode VARCHAR(10) = NULL,
@IsActive BIT = 1,
@OperatedBy BIGINT,
@response NVARCHAR(MAX) OUT
)
AS
BEGIN
SET NOCOUNT ON;

SET @response='E|Something went wrong|0';

BEGIN TRY

    IF EXISTS
    (
        SELECT 1
        FROM Country
        WHERE CountryName=@CountryName
        AND CountryId<>@CountryId
        AND ISNULL(IsDeleted,0)=0
    )
    BEGIN
        SET @response='E|Country already exists|0';
        RETURN;
    END

    --------------------------------------------------
    -- UPDATE
    --------------------------------------------------
    IF @CountryId > 0
    BEGIN
        UPDATE Country
        SET
            CountryName = @CountryName,
            CountryCode = @CountryCode,
            IsActive = @IsActive,
            LastModifiedBy = @OperatedBy,
            LastModifiedDate = GETDATE()
        WHERE CountryId = @CountryId;

        SET @response='S|Country updated successfully|' + CAST(@CountryId AS NVARCHAR);
    END
    ELSE
    BEGIN
        --------------------------------------------------
        -- INSERT
        --------------------------------------------------
        INSERT INTO Country
        (
            CountryName,
            CountryCode,
            IsActive,
            CreatedBy,
            CreatedDate,
            LastModifiedBy,
            LastModifiedDate,
            IsDeleted
        )
        VALUES
        (
            @CountryName,
            @CountryCode,
            1,
            @OperatedBy,
            GETDATE(),
            @OperatedBy,
            GETDATE(),
            0
        );

        SET @CountryId = SCOPE_IDENTITY();

        SET @response='S|Country saved successfully|' + CAST(@CountryId AS NVARCHAR);
    END

END TRY
BEGIN CATCH
    SET @response='E|' + ERROR_MESSAGE() + '|0';
END CATCH


END
GO
/****** Object:  StoredProcedure [dbo].[SP_Coupons_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_Coupons_Get]
(
 @Id INT = NULL,
 @Search NVARCHAR(200) = NULL,
 @Start INT = 0,
 @Length INT = 25,
 @SortColumnIndex INT = 0,
 @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN

SET NOCOUNT ON;

---------------------------------------
-- SINGLE RECORD
---------------------------------------

IF @Id IS NOT NULL
BEGIN

 SELECT
     Id,
     CouponCode,
     DiscountType,
     DiscountValue,
     MinimumOrderAmount,
     ExpiryDate,
     UsageLimit,
     IsActive,
     LastModifiedDate
 FROM Coupons
 WHERE Id = @Id
 AND IsDeleted = 0;

 RETURN;

END

---------------------------------------
-- SORT MAPPING
---------------------------------------

DECLARE @OrderBy NVARCHAR(100)

SET @OrderBy =
CASE @SortColumnIndex

 WHEN 0 THEN 'Id'                 -- checkbox
 WHEN 1 THEN 'Id'                 -- SrNo
 WHEN 2 THEN 'CouponCode'         -- Coupon Code
 WHEN 3 THEN 'DiscountType'       -- Discount Type
 WHEN 4 THEN 'DiscountValue'      -- Discount Value
 WHEN 5 THEN 'MinimumOrderAmount' -- Minimum Order
 WHEN 6 THEN 'ExpiryDate'         -- Expiry Date
 WHEN 7 THEN 'UsageLimit'         -- Usage Limit
 WHEN 8 THEN 'IsActive'           -- Status

 ELSE 'Id'

END

IF @SortDirection NOT IN ('ASC','DESC')
 SET @SortDirection = 'DESC'

---------------------------------------
-- COUNTS
---------------------------------------

DECLARE @Total INT
DECLARE @Filtered INT

SELECT @Total = COUNT(*)
FROM Coupons
WHERE IsDeleted = 0

SELECT @Filtered = COUNT(*)
FROM Coupons
WHERE IsDeleted = 0
AND (
 @Search IS NULL
 OR CouponCode LIKE '%' + @Search + '%'
 OR DiscountType LIKE '%' + @Search + '%'
)

SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords

---------------------------------------
-- DATA
---------------------------------------

DECLARE @SQL NVARCHAR(MAX)

SET @SQL = '
SELECT
 ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
 Id,
 CouponCode,
 DiscountType,
 DiscountValue,
 MinimumOrderAmount,
 ExpiryDate,
 UsageLimit,
 IsActive,
 LastModifiedDate
FROM Coupons
WHERE IsDeleted = 0
'

IF @Search IS NOT NULL
SET @SQL += '
AND (
 CouponCode LIKE ''%'' + @Search + ''%''
 OR DiscountType LIKE ''%'' + @Search + ''%''
)
'

SET @SQL += '
ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY
'

EXEC sp_executesql
@SQL,
N'@Search NVARCHAR(200), @Start INT, @Length INT',
@Search,@Start,@Length

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Coupons_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SP_Coupons_Save]
(
 @Id INT = 0,
 @CouponCode NVARCHAR(50) = NULL,
 @DiscountType NVARCHAR(20) = NULL,
 @DiscountValue DECIMAL(18,2) = NULL,
 @MinimumOrderAmount DECIMAL(18,2) = NULL,
 @ExpiryDate DATETIME = NULL,
 @UsageLimit INT = NULL,
 @IsActive BIT = 1,
 @Mode NVARCHAR(10),
 @OperatedBy INT,
 @response NVARCHAR(MAX) OUT
)
AS
BEGIN

SET NOCOUNT ON

SET @response = 'E|Something went wrong|0'

BEGIN TRY

 IF @Mode NOT IN ('SAVE','STATUS','DELETE')
 BEGIN
  SET @response = 'E|Invalid mode supplied|0'
  RETURN
 END

------------------------------------------------
-- SAVE
------------------------------------------------

IF @Mode = 'SAVE'
BEGIN

 IF ISNULL(@CouponCode,'') = ''
 BEGIN
  SET @response = 'E|Coupon Code is required|0'
  RETURN
 END

 -- Duplicate coupon check
 IF EXISTS
 (
  SELECT 1 FROM Coupons
  WHERE CouponCode = @CouponCode
  AND IsDeleted = 0
  AND (@Id = 0 OR Id <> @Id)
 )
 BEGIN
  SET @response = 'E|Coupon code already exists|0'
  RETURN
 END

 ----------------------------------
 -- UPDATE
 ----------------------------------

 IF @Id > 0
 BEGIN

  UPDATE Coupons
  SET
   CouponCode = @CouponCode,
   DiscountType = @DiscountType,
   DiscountValue = @DiscountValue,
   MinimumOrderAmount = @MinimumOrderAmount,
   ExpiryDate = @ExpiryDate,
   UsageLimit = @UsageLimit,
   LastModifiedBy = @OperatedBy,
   LastModifiedDate = GETDATE()
  WHERE Id = @Id

 END
 ELSE
 BEGIN

 ----------------------------------
 -- INSERT
 ----------------------------------

  INSERT INTO Coupons
  (
   CouponCode,
   DiscountType,
   DiscountValue,
   MinimumOrderAmount,
   ExpiryDate,
   UsageLimit,
   IsActive,
   IsDeleted,
   CreatedBy
  )
  VALUES
  (
   @CouponCode,
   @DiscountType,
   @DiscountValue,
   @MinimumOrderAmount,
   @ExpiryDate,
   @UsageLimit,
   1,
   0,
   @OperatedBy
  )

  SET @Id = SCOPE_IDENTITY()

 END

 SET @response = 'S|Record saved successfully|' + CAST(@Id AS NVARCHAR)
 RETURN

END

------------------------------------------------
-- STATUS CHANGE
------------------------------------------------

IF @Mode = 'STATUS'
BEGIN

 UPDATE Coupons
 SET
  IsActive = @IsActive,
  LastModifiedBy = @OperatedBy,
  LastModifiedDate = GETDATE()
 WHERE Id = @Id

 SET @response = 'S|Status updated successfully|' + CAST(@Id AS NVARCHAR)
 RETURN

END

------------------------------------------------
-- DELETE
------------------------------------------------

IF @Mode = 'DELETE'
BEGIN

 UPDATE Coupons
 SET
  IsDeleted = 1,
  IsActive = 0,
  LastModifiedBy = @OperatedBy,
  LastModifiedDate = GETDATE()
 WHERE Id = @Id

 SET @response = 'S|Coupon deleted successfully|' + CAST(@Id AS NVARCHAR)
 RETURN

END

END TRY
BEGIN CATCH

 SET @response = 'E|' + ERROR_MESSAGE() + '|0'

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Customer_Cart_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Customer_Cart_Get]
(
	@CustomerId INT = 0
 
)
AS
BEGIN
    SET NOCOUNT ON;


SELECT 
    C.*,
    P.ProductName,
    V.SKU,
    V.Price,
    PI.ImagePath,
    Attr.AttributeName

FROM CustomerCart C

LEFT JOIN Products P 
    ON P.Id = C.ProductId

LEFT JOIN ProductVariantMapping V 
    ON V.Id = C.VariantId

-- ✅ Smart Image Logic
OUTER APPLY (
    SELECT TOP 1 ImagePath
    FROM ProductImages PI
    WHERE PI.IsDeleted = 0
      AND PI.IsActive = 1
      AND (
            (C.VariantId = 0 AND PI.ProductId = C.ProductId AND PI.VariantId = 0)
         OR (C.VariantId > 0 AND PI.VariantId = C.VariantId)
      )
    ORDER BY PI.IsPrimary DESC, PI.Id ASC
) PI

-- Attribute logic (same as yours)
OUTER APPLY (
    SELECT 
        STRING_AGG(
            ISNULL(A.DisplayName, A.Name) + ' : ' + AV.Value, 
            ', '
        ) AS AttributeName
    FROM STRING_SPLIT(C.AttributeId, ',') AS SplitMain

    OUTER APPLY (
        SELECT 
            TRY_CAST(LEFT(SplitMain.value, CHARINDEX('-', SplitMain.value) - 1) AS INT) AS AttributeId,
            TRY_CAST(SUBSTRING(SplitMain.value, CHARINDEX('-', SplitMain.value) + 1, LEN(SplitMain.value)) AS INT) AS AttributeValueId
    ) AS SplitAttr

    LEFT JOIN Attribute A 
        ON A.Id = SplitAttr.AttributeId
	
    LEFT JOIN AttributeValue AV 
        ON AV.Id = SplitAttr.AttributeValueId 
        AND AV.AttributeId = A.Id 
        AND AV.IsDeleted = 0
) AS Attr

WHERE C.CustomerId = @CustomerId
   And c.IsActive=1 -- add from VishalG


END
GO
/****** Object:  StoredProcedure [dbo].[SP_Customer_Cart_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SP_Customer_Cart_Save]
(
    @Id INT = 0,
    @CustomerId int = 0,
    @ProductId int = 0,
	@VariantId int = 0,
	@AttributeId varchar(max) = null,
    @Quantity int = 0,
    @IsActive BIT = 1,
    @IsDeleted BIT = 0,
    @Mode NVARCHAR(10),
    @OperatedBy INT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN
    SET NOCOUNT ON;
    SET @response='E|Opps!... Something went wrong. Please contact system administrator|0';
	
  IF @Mode NOT IN ('SAVE','STATUS','DELETE')
  BEGIN
   SET @response = 'E|Invalid mode supplied.|0';
   RETURN;
  END
	
    BEGIN TRY
	
        IF @Mode='SAVE'
        BEGIN
            IF @Id>0
            BEGIN
                UPDATE CustomerCart
                SET CustomerId = @CustomerId,
					ProductId = @ProductId,
					VariantId = @VariantId,
					AttributeId = @AttributeId,
					Quantity = @Quantity,
                    LastModifiedBy=@OperatedBy,
                    LastModifiedDate=GETDATE()
                WHERE Id=@Id;
            END
            ELSE
            BEGIN
                INSERT INTO CustomerCart
                (
                    CustomerId , ProductId , VariantId,AttributeId,
                   Quantity,IsActive,IsDeleted,CreatedBy,CreatedDate , LastModifiedBy,LastModifiedDate
                )
                VALUES
                (
                    @CustomerId,@ProductId,@VariantId,@AttributeId,@Quantity, 1,0,@OperatedBy,GETDATE(),
					@OperatedBy,GETDATE()
                )

                SET @Id=SCOPE_IDENTITY();
            END
			
			SET @response='S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
			RETURN;

        END

        ELSE IF @Mode='STATUS'
        BEGIN
            UPDATE CustomerCart
            SET IsActive=@IsActive,
                IsDeleted=@IsDeleted,
                LastModifiedBy=@OperatedBy,
                LastModifiedDate=GETDATE()
            WHERE Id=@Id;
						
			SET @response='S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
			RETURN;

        END
		ELSE IF @Mode = 'DELETE'
		  BEGIN
		   
		   UPDATE CustomerCart
		   SET IsActive = 0,
			   IsDeleted = 1,
			   LastModifiedBy = @OperatedBy,
			   LastModifiedDate = GETDATE()
		   WHERE Id = @Id;

		   SET @response = 'S|Record deleted successfully|' + CAST(@Id AS NVARCHAR);
		   RETURN;

		  END
    END TRY
    BEGIN CATCH
        SET @response='E|' + ERROR_MESSAGE() + '|0';
        RETURN;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Customer_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Customer_Get]
(
    @Id INT = NULL,
    @Search NVARCHAR(200) = NULL,
    @Start INT = 0,
    @Length INT = 0,
    @SortColumnIndex INT = 0,
    @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN
    SET NOCOUNT ON;

-------------------------------------------------------
-- SINGLE RECORD
-------------------------------------------------------
IF @Id IS NOT NULL
BEGIN

SELECT
    C.*,
    LM.LOV_Desc AS GenderName
FROM Customer C
LEFT JOIN LOV_MASTER LM
    ON LM.LOV_Column = 'Gender'
    AND LM.LOV_Code = CAST(C.Gender AS VARCHAR(10))
    AND LM.IsActive = 1
    AND LM.IsDeleted = 0
    WHERE c.Id = (CASE WHEN @Id < 0 THEN C.Id ELSE @Id END)
    AND c.IsDeleted = 0
    AND c.IsActive = (CASE WHEN @Id < 0 THEN 1 ELSE c.IsActive END);

    -------------------------------------
    -- ADDRESS
    -------------------------------------
    --SELECT *
    --FROM CustomerAddress
    --WHERE CustomerId = ABS(@Id)
    --AND IsDeleted = 0;
	SELECT
    CA.*,
    C.CountryName,
    S.StateName
FROM CustomerAddress CA
LEFT JOIN Country C
    ON C.CountryId = CA.CountryId
LEFT JOIN State S
    ON S.StateId = CA.StateId
WHERE CA.CustomerId = ABS(@Id)
AND ISNULL(CA.IsDeleted,0)=0;
	
    -------------------------------------
    -- CART
    -------------------------------------
 --   SELECT 
 --       C.*,
 --       P.ProductName,
	--			  STRING_AGG(av.Value, ', ') AS VariantAttributeValues_Only,
 --       V.SKU,PIS.ImagePath,
 --       V.Price
 --   FROM CustomerCart C
 --   LEFT JOIN Products P ON P.Id = C.ProductId
 --   LEFT JOIN ProductVariantMapping V ON V.Id = C.VariantId
	--    INNER JOIN ProductVariantDetails pvd
 --       ON pvd.VariantId = V.Id
 --   INNER JOIN AttributeValue av
 --       ON av.Id = pvd.AttributeValueId
	--LEFT JOIN ProductImages PIS ON C.ProductId = PIS.ProductId AND PIS.IsPrimary = 1
 --   WHERE C.CustomerId = ABS(@Id)
 --   AND C.IsDeleted = 0;
 exec SP_GetCart @CustomerId=@Id

    -------------------------------------
    -- ORDER
    -------------------------------------
 --   SELECT o.*,
 --    (o.FinalAmount - ISNULL(ou.FinalDiscount, 0)) AS GrandTotal,
 --   ISNULL(ou.FinalDiscount, 0) AS FinalDiscount
	--FROM Orders o
	--left join OfferUsage ou on Refid=o.id
	--WHERE o.UserId = ABS(@Id) ORDER BY CreatedDate DESC;
	SELECT
    o.*,
    (o.FinalAmount - ISNULL(ou.FinalDiscount, 0)) AS GrandTotal,
    ISNULL(ou.FinalDiscount, 0) AS FinalDiscount,
	    (
        SELECT STRING_AGG(
            LM.LOV_Desc + ' (' +
            CONVERT(VARCHAR(10), ODS.StatusDate, 105) + ')',
            ', '
        )
        FROM OrderDeliveryStatus ODS
        INNER JOIN LOV_MASTER LM
            ON LM.LOV_Column = 'OrderStatus'
           AND LM.LOV_Code = ODS.NewStatus
           AND LM.IsDeleted = 0
        WHERE ODS.OrderId = O.Id
          AND ODS.IsDeleted = 0
    ) AS TrackingHistory,
  --  ca.CustomerName,
    --ca.MobileNo,
    --ca.AlternativeMobileNo,
    --ca.AddressLine1,
    --ca.AddressLine2,
    --ca.City,
    --ca.[State],
    --ca.PostalCode,
    --ca.Country,
    --ca.AddressType
	  PS.LOV_Desc AS PaymentStatusName,
    OS.LOV_Desc AS OrderStatusName,
    PM.LOV_Desc AS PaymentModeName

FROM Orders o
LEFT JOIN OfferUsage ou
    ON ou.RefId = o.Id
LEFT JOIN CustomerAddress ca
    ON ca.Id = o.CustomerAddressId

	INNER JOIN LOV_MASTER OS
    ON OS.LOV_Column = 'OrderStatus'
   AND OS.LOV_Code = O.OrderStatus
   AND OS.IsDeleted = 0

INNER JOIN LOV_MASTER PS
    ON PS.LOV_Column = 'PaymentStatus'
   AND PS.LOV_Code = O.PaymentStatus
   AND PS.IsDeleted = 0

LEFT JOIN LOV_MASTER PM
    ON PM.LOV_Column = 'PaymentMode'
   AND PM.LOV_Code = O.PaymentMode
   AND PM.IsDeleted = 0

WHERE o.UserId = ABS(@Id)
ORDER BY o.CreatedDate DESC;

	SELECT oi.Id As Id, oi.OrderId AS OrderId, oi.VariantId AS VariantId, P.Id AS ProductId,ou.Id,ou.FinalDiscount,
	P.ProductName AS ProductName, PVM.SKU as VariantName, oi.Quantity as Quantity, oi.UnitPrice AS UnitPrice,
	oi.TotalPrice  AS TotalPrice,PIO.ImagePath, oi.IsActive AS IsActive 
	FROM OrderItems oi
	LEFT JOIN ProductVariantMapping PVM ON PVM.Id = oi.VariantId 
	Left Join Products P ON P.Id = PVM.ProductId 
		Left join ProductImages PIO on oi.ProductId = PIO.ProductId And PIO.IsPrimary=1
		left join OfferUsage ou on Refid=oi.orderid
	WHERE oi.OrderId IN (SELECT Id FROM Orders WHERE UserId = ABS(@Id));

    RETURN;


	select * from OrderItems
END

-------------------------------------------------------
-- SORT MAPPING
-------------------------------------------------------
DECLARE @OrderBy NVARCHAR(100);

SET @OrderBy =
    CASE @SortColumnIndex
        WHEN 0 THEN 'X.Id'
        WHEN 1 THEN 'X.FirstName'
        WHEN 2 THEN 'X.Email'
        WHEN 3 THEN 'X.MobileNo'
        WHEN 4 THEN 'X.IsActive'
        ELSE 'X.Id'
    END;

IF @SortDirection NOT IN ('ASC','DESC')
    SET @SortDirection = 'DESC';

-------------------------------------------------------
-- COUNTS
-------------------------------------------------------
DECLARE @Total INT, @Filtered INT;

SELECT @Total = COUNT(*)
FROM Customer
WHERE IsDeleted = 0;

SELECT @Filtered = COUNT(*)
FROM Customer X
WHERE X.IsDeleted = 0
AND (
     @Search IS NULL
     OR X.FirstName LIKE '%' + @Search + '%'
     OR X.Email LIKE '%' + @Search + '%'
     OR X.MobileNo LIKE '%' + @Search + '%'
);

SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

-------------------------------------------------------
-- DATA
-------------------------------------------------------
DECLARE @SQL NVARCHAR(MAX);

SET @SQL = '
SELECT 
    ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
    X.*
FROM Customer X
WHERE X.IsDeleted = 0
';

IF @Search IS NOT NULL
SET @SQL += '
AND (
    X.FirstName LIKE ''%'' + @Search + ''%'' OR
    X.Email LIKE ''%'' + @Search + ''%'' OR
    X.MobileNo LIKE ''%'' + @Search + ''%''
)';

SET @SQL += '
ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY';

EXEC sp_executesql
@SQL,
N'@Search NVARCHAR(200), @Start INT, @Length INT',
@Search,@Start,@Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Customer_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SP_Customer_Save]
(
    @Id INT = 0,
    @FirstName NVARCHAR(100) = NULL,
    @LastName NVARCHAR(100) = NULL,
    @Email NVARCHAR(200) = NULL,
    @MobileNo NVARCHAR(20) = NULL,
    @Password NVARCHAR(200) = NULL,
    @DateOfBirth DATETIME = NULL,
    @Gender NVARCHAR(20) = NULL,
	
	@AddressLine1 NVARCHAR(500) = NULL,
	@AddressLine2 NVARCHAR(500) = NULL,
	@City NVARCHAR(200) = NULL,
	@State NVARCHAR(200) = NULL,
	@PostalCode NVARCHAR(20) = NULL,
	@Country NVARCHAR(200) = NULL,

    @IsActive BIT = 1,
    @IsDeleted BIT = 0,
    @Mode NVARCHAR(10),
    @OperatedBy INT,
	-- New add 
	@ReferralCode VARCHAR(50) = NULL,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN
    SET NOCOUNT ON;
    SET @response='E|Opps!... Something went wrong. Please contact system administrator|0';
	
  IF @Mode NOT IN ('SAVE','STATUS','DELETE')
  BEGIN
   SET @response = 'E|Invalid mode supplied.|0';
   RETURN;
  END
	
    BEGIN TRY
		IF @Mode = 'SAVE'
	BEGIN
		
				
	   -- Duplicate validation
	IF EXISTS (
    SELECT 1 
    FROM Customer
    WHERE IsDeleted = 0
      AND (@Id = 0 OR Id <> @Id)
      AND (
            (ISNULL(@Email, '') <> '' AND Email = @Email)
         OR (ISNULL(@MobileNo, '') <> '' AND MobileNo = @MobileNo)
          )
)
BEGIN
    -- Email duplicate check
    IF (ISNULL(@Email, '') <> '' AND EXISTS (
        SELECT 1 FROM Customer
        WHERE Email = @Email
          AND IsDeleted = 0
          AND (@Id = 0 OR Id <> @Id)
    ))
    BEGIN
        SET @response = 'E|Email already exists.|0';
    END
    -- Mobile duplicate check
    ELSE IF (ISNULL(@MobileNo, '') <> '' AND EXISTS (
        SELECT 1 FROM Customer
        WHERE MobileNo = @MobileNo
          AND IsDeleted = 0
          AND (@Id = 0 OR Id <> @Id)
    ))
    BEGIN
        SET @response = 'E|Mobile number already exists.|0';
    END

    RETURN;
END
	END
        IF @Mode='SAVE'
        BEGIN
            IF @Id>0
            BEGIN
                               UPDATE Customer
               SET FirstName = ISNULL(@FirstName, FirstName),
    LastName = ISNULL(@LastName, LastName),
    Email = ISNULL(@Email, Email),
    MobileNo = ISNULL(@MobileNo, MobileNo),
   -- Password = ISNULL(@Password, Password),
    DateOfBirth = ISNULL(@DateOfBirth, DateOfBirth),
    Gender = ISNULL(@Gender, Gender),
    AddressLine1 = ISNULL(@AddressLine1, AddressLine1),
    AddressLine2 = ISNULL(@AddressLine2, AddressLine2),
    City = ISNULL(@City, City),
    State = ISNULL(@State, State),
    PostalCode = ISNULL(@PostalCode, PostalCode),
    Country = ISNULL(@Country, Country),
    LastModifiedBy = @OperatedBy,
    LastModifiedDate = GETDATE()
                WHERE Id=@Id;
            END
            ELSE
            BEGIN
                INSERT INTO Customer
                (
                    FirstName,LastName,Email,MobileNo,Password,
                    DateOfBirth,Gender,
                    AddressLine1,
                    AddressLine2,
                    City,
                    State,
                    PostalCode,
                    Country,
                    IsActive,IsDeleted,CreatedBy,CreatedDate
                )
                VALUES
                (
                    @FirstName,@LastName,@Email,@MobileNo,@Password,
                    @DateOfBirth,@Gender,
					@AddressLine1,
                    @AddressLine2,
                    @City,
                    @State,
                    @PostalCode,
                    @Country,
                    1,0,@OperatedBy,GETDATE()
                )

                SET @Id=SCOPE_IDENTITY();
				
----------------------------------------------------
-- Generate Referral Code
----------------------------------------------------
UPDATE Customer
SET ReferralCode = 'HRD' + RIGHT('000000' + CAST(@Id AS VARCHAR(10)), 6)
WHERE Id = @Id;
           

		   ----------------------------------------------------
-- Signup Reward
----------------------------------------------------
DECLARE @SignupCoins DECIMAL(18,2) = 0;
DECLARE @ReferralCoins DECIMAL(18,2) = 0;
DECLARE @ReferralJoinCoins DECIMAL(18,2) = 0;

DECLARE @RemainingBalance int  = 0;

SELECT
    @SignupCoins = SignupCoins,
    @ReferralCoins = ReferralCoins,
    @ReferralJoinCoins = ReferralJoinCoins
FROM RewardSettings
WHERE IsActive = 1;

UPDATE Customer
SET RewardCoins = ISNULL(RewardCoins,0) + @SignupCoins
WHERE Id = @Id;

SELECT @RemainingBalance = RewardCoins
FROM Customer
WHERE Id = @Id;

INSERT INTO Reward
(
    CustomerId,
    RewardType,
    Coins,
	RemainingBalance,
    Remarks,
    IsActive,
    IsDeleted,
    CreatedBy,
    CreatedDate
)
VALUES
(
    @Id,
    'SIGNUP',
    @SignupCoins,
	@RemainingBalance,
    'Signup Reward',
    1,
    0,
    @OperatedBy,
    GETDATE()
);


----------------------------------------------------
-- Referral Reward
----------------------------------------------------
IF ISNULL(@ReferralCode,'') <> ''
BEGIN

    DECLARE @ReferrerCustomerId INT;

    SELECT @ReferrerCustomerId = Id
    FROM Customer
    WHERE ReferralCode = @ReferralCode;

    IF ISNULL(@ReferrerCustomerId,0) > 0
    BEGIN

        UPDATE Customer
        SET ReferredByCustomerId = @ReferrerCustomerId
        WHERE Id = @Id;

        -- Referrer Reward

        UPDATE Customer
        SET RewardCoins = ISNULL(RewardCoins,0) + @ReferralCoins
        WHERE Id = @ReferrerCustomerId;

		SELECT @RemainingBalance = RewardCoins
FROM Customer
WHERE Id = @ReferrerCustomerId;


        INSERT INTO Reward
        (
            CustomerId,
            RewardType,
            Coins,
			RemainingBalance,
            ReferenceCustomerId,
            Remarks,
            IsActive,
            IsDeleted,
            CreatedBy,
            CreatedDate
        )
        VALUES
        (
            @ReferrerCustomerId,
            'REFERRAL_BONUS',
            @ReferralCoins,
			@RemainingBalance,
            @Id,
            'Referral Bonus',
            1,
            0,
            @OperatedBy,
            GETDATE()
        );

        -- New User Reward

        UPDATE Customer
        SET RewardCoins = ISNULL(RewardCoins,0) + @ReferralJoinCoins
        WHERE Id = @Id;

		SELECT @RemainingBalance = RewardCoins
FROM Customer
WHERE Id = @Id;

        INSERT INTO Reward
        (
            CustomerId,
            RewardType,
            Coins,
			RemainingBalance,
            ReferenceCustomerId,
            Remarks,
            IsActive,
            IsDeleted,
            CreatedBy,
            CreatedDate
        )
        VALUES
        (
            @Id,
            'REFERRAL_JOIN',
            @ReferralJoinCoins,
			@RemainingBalance,
            @ReferrerCustomerId,
            'Referral Join Reward',
            1,
            0,
            @OperatedBy,
            GETDATE()
        );

    END
END

		   END
			
			SET @response='S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
			RETURN;

        END

        ELSE IF @Mode='STATUS'
        BEGIN
            UPDATE Customer
            SET IsActive=@IsActive,
                IsDeleted=@IsDeleted,
                LastModifiedBy=@OperatedBy,
                LastModifiedDate=GETDATE()
            WHERE Id=@Id;
						
			SET @response='S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
			RETURN;

        END
		ELSE IF @Mode = 'DELETE'
		  BEGIN

		   
		   UPDATE Customer
		   SET IsActive = 0,
			   IsDeleted = 1,
			   LastModifiedBy = @OperatedBy,
			   LastModifiedDate = GETDATE()
		   WHERE Id = @Id;

		   SET @response = 'S|Record deleted successfully|' + CAST(@Id AS NVARCHAR);
		   RETURN;

		  END
    END TRY
    BEGIN CATCH
        SET @response='E|' + ERROR_MESSAGE() + '|0';
        RETURN;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CustomerAddress_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CustomerAddress_Get]-- 27
(
    @CustomerId INT,
    @Id INT = NULL
)
AS
BEGIN
 --          [SP_CustomerAddress_Get] 27  select * from CustomerAddress
    SET NOCOUNT ON;

    SELECT
        c.Id,
        c.CustomerId,
        c.AddressLine1,
        c.AddressLine2,
        c.City,
        c.PostalCode,
        c.IsDefault,
        c.MobileNo,
        c.AlternativeMobileNo,
     --   c.CustomerName,
		(Cu.FirstName + cu.LastName) as CustomerName,
		co.CountryName,
        s.StateName
    FROM CustomerAddress c
	  LEFT JOIN Customer cu
        ON c.CustomerId = cu.Id
        AND cu.IsActive = 1
        AND cu.IsDeleted = 0
    LEFT JOIN Country co
        ON c.CountryId = co.CountryId
        AND co.IsActive = 1
        AND co.IsDeleted = 0
    LEFT JOIN [State] s
        ON c.StateId = s.StateId
        AND s.IsActive = 1
        AND s.IsDeleted = 0
    WHERE c.CustomerId = @CustomerId and c.AddressType='SHIPPING'
        AND c.IsActive = 1
        AND c.IsDeleted = 0
        AND (@Id IS NULL OR c.Id = @Id)
    ORDER BY c.IsDefault DESC, c.Id DESC;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CustomerAddress_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CustomerAddress_Save]
(
    @Id BIGINT = 0,
    @CustomerId BIGINT = NULL,
	@CountryId BIGINT = NULL,
	@StateId BIGINT = NULL,
    @AddressLine1 NVARCHAR(MAX) = NULL,
    @AddressLine2 NVARCHAR(MAX) = NULL,
    @City NVARCHAR(200) = NULL,
    @State NVARCHAR(200) = NULL,
    @PostalCode NVARCHAR(20) = NULL,
    @Country NVARCHAR(200) = NULL,
    @AddressType NVARCHAR(50) = NULL,
	@MobileNo varchar(15)=null,
	@AlternativeMobileNo varchar(15)=null,
    @Mode NVARCHAR(10),
	@CustomerName NVARCHAR(100)=null,
    @Operated_By BIGINT=null,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN

SET NOCOUNT ON

SET @response = 'E|Something went wrong|0'

BEGIN TRY

------------------------------------------------
-- SAVE (INSERT / UPDATE)
------------------------------------------------

IF @Mode = 'SAVE'
BEGIN

    IF @Id > 0
    BEGIN
        -- UPDATE
        UPDATE [dbo].[CustomerAddress]
        SET
            AddressLine1 = @AddressLine1,
            AddressLine2 = @AddressLine2,
			CustomerName=@CustomerName,
            City = @City,
			StateId=@StateId,CountryId=@CountryId,
            [State] = @State,
            PostalCode = @PostalCode,
            Country = @Country,
			MobileNo=@MobileNo,
			AlternativeMobileNo=@AlternativeMobileNo,
            AddressType = @AddressType,
            LastModifiedBy = @Operated_By,
            LastModifiedDate = GETDATE()
        WHERE CustomerId = @CustomerId
        AND AddressType = @AddressType
        AND IsActive = 1
        AND IsDeleted = 0

        IF NOT EXISTS
        (
            SELECT 1
            FROM CustomerAddress
            WHERE CustomerId = @CustomerId
              AND IsDefault = 1
              AND IsDeleted = 0
        )
        BEGIN
            UPDATE CustomerAddress
            SET IsDefault = 1
            WHERE Id = @Id;
        END

		SET @response = 'S|Address updated successfully|' + CAST(@Id AS NVARCHAR)
    END
    ELSE
    BEGIN
        -- INSERT
        INSERT INTO [dbo].[CustomerAddress]
        (
            CustomerId, AddressLine1, AddressLine2, City, [State], PostalCode, Country,AlternativeMobileNo,MobileNo,CustomerName,
          CountryId,StateId, AddressType, IsDefault, IsActive, IsDeleted, CreatedBy, CreatedDate
        )
        VALUES
        (
            @CustomerId, @AddressLine1, @AddressLine2, @City, @State, @PostalCode, @Country,@AlternativeMobileNo,@MobileNo,@CustomerName,
           @CountryId,@StateId, @AddressType, 0, 1, 0, @Operated_By, GETDATE()
        )

        SET @Id = SCOPE_IDENTITY()

       IF NOT EXISTS
        (
            SELECT 1
            FROM CustomerAddress
            WHERE CustomerId = @CustomerId
              AND IsDefault = 1
              AND IsDeleted = 0
        )
        BEGIN
            UPDATE CustomerAddress
            SET IsDefault = 1
            WHERE Id = @Id;
        END

		 SET @response = 'S|Address saved successfully|' + CAST(@Id AS NVARCHAR)
    END

    
    RETURN

END

------------------------------------------------
-- DELETE
------------------------------------------------

IF @Mode = 'DELETE'
BEGIN

    --UPDATE [dbo].[CustomerAddress]
    --SET
    --    IsDeleted = 1,
    --    IsActive = 0,
    --    LastModifiedBy = @Operated_By,
    --    LastModifiedDate = GETDATE()
    --WHERE Id = @Id
	  DECLARE @CustomerIdDelete BIGINT,
            @IsDefaultDelete BIT

    SELECT
        @CustomerIdDelete = CustomerId,
        @IsDefaultDelete = IsDefault
    FROM CustomerAddress
    WHERE Id = @Id

    DELETE FROM CustomerAddress
    WHERE Id = @Id

    -- If deleted address was default,
    -- make another address default
    IF @IsDefaultDelete = 1
    BEGIN
        UPDATE CustomerAddress
        SET IsDefault = 1
        WHERE Id =
        (
            SELECT TOP 1 Id
            FROM CustomerAddress
            WHERE CustomerId = @CustomerIdDelete
              AND IsDeleted = 0
            ORDER BY Id DESC
        )
    END

    SET @response = 'S|Address deleted successfully|' + CAST(@Id AS NVARCHAR)


END

IF @Mode = 'SETDEFAULT'
BEGIN

update CustomerAddress set IsDefault=0 where CustomerId=@CustomerId

update CustomerAddress set IsDefault=1 where CustomerId=@CustomerId AND Id=@Id

    SET @response = 'S|Default address changed successfully|' + CAST(@Id AS NVARCHAR)

END
END TRY
BEGIN CATCH

    SET @response = 'E|' + ERROR_MESSAGE() + '|0'

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_CustomerDashboard_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_CustomerDashboard_Get]
@CustomerId int = 0
AS
BEGIN
 SELECT *
    FROM Customer
    WHERE Id = @CustomerId 
    AND IsDeleted = 0
    AND IsActive = (CASE WHEN @CustomerId < 0 THEN 1 ELSE IsActive END);

    -------------------------------------
    -- ADDRESS
    -------------------------------------
    SELECT *
    FROM CustomerAddress
    WHERE CustomerId = @CustomerId
    AND IsDeleted = 0;

	 -------------------------------------
    -- Orders
    -------------------------------------

	 SELECT
     1 AS SrNo,
     O.*,
     (SELECT Count(*)  FROM OrderItems where OrderId = O.Id and IsActive = 1 and IsDeleted = 0)No_Of_Items
 FROM Orders O
 WHERE O.UserId = @CustomerId
 AND O.IsDeleted = 0;

  -------------------------------------
    -- Coupons
  -------------------------------------

  select * from  Coupons where CreatedBy = @CustomerId AND IsDeleted = 0;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_CustomerLogin]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_CustomerLogin]
    @Username NVARCHAR(100),
    @Password NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @IsEmail BIT = 0;

    -- Detect Email or Mobile
    IF (@Username LIKE '%_@_%._%')
        SET @IsEmail = 1;

    -- Check if user exists
    IF NOT EXISTS (
        SELECT 1 
        FROM Customer 
        WHERE 
            (@IsEmail = 1 AND Email = @Username)
            OR
            (@IsEmail = 0 AND MobileNo = @Username)
    )
    BEGIN
        SELECT 0 AS Status, 'Invalid Email or Mobile No' AS Message;
        RETURN;
    END

    -- Check Password
    IF NOT EXISTS (
        SELECT 1 
        FROM Customer 
        WHERE 
            (
                (@IsEmail = 1 AND Email = @Username)
                OR
                (@IsEmail = 0 AND MobileNo = @Username)
            )
            AND Password = @Password
    )
    BEGIN
        SELECT 0 AS Status, 'Invalid Password' AS Message;
        RETURN;
    END

    -- Success: Return Customer Details
    SELECT 
        1 AS Status,
        'Login Successful' AS Message,
        *
    FROM Customer
    WHERE 
        (@IsEmail = 1 AND Email = @Username)
        OR
        (@IsEmail = 0 AND MobileNo = @Username);

		DECLARE @CustomerId INT;
DECLARE @LoginCoins DECIMAL(18,2);
DECLARE @RemainingBalance INT = 0;

SELECT TOP 1
    @CustomerId = Id
FROM Customer
WHERE
(
    (@IsEmail = 1 AND Email = @Username)
    OR
    (@IsEmail = 0 AND MobileNo = @Username)
);

SELECT TOP 1
    @LoginCoins = LoginCoins
FROM RewardSettings
WHERE IsActive = 1;

IF ISNULL(@LoginCoins,0) > 0
BEGIN

    IF NOT EXISTS
    (
        SELECT 1
        FROM Reward
        WHERE CustomerId = @CustomerId
        AND RewardType IN ('LOGIN','SIGNUP')
        AND CAST(CreatedDate AS DATE) = CAST(GETDATE() AS DATE)
    )
    BEGIN

        UPDATE Customer
        SET RewardCoins = ISNULL(RewardCoins,0) + @LoginCoins
        WHERE Id = @CustomerId;

		SELECT @RemainingBalance = RewardCoins
FROM Customer
WHERE Id = @CustomerId;

        INSERT INTO Reward
        (
            CustomerId,
            RewardType,
            Coins,
			RemainingBalance,
            Remarks,
            IsActive,
            IsDeleted,
            CreatedBy,
            CreatedDate
        )
        VALUES
        (
            @CustomerId,
            'LOGIN',
            @LoginCoins,
			@RemainingBalance,
            'Daily Login Reward',
            1,
            0,
            NULL,
            GETDATE()
        );

    END

END

END
GO
/****** Object:  StoredProcedure [dbo].[SP_DD_Category_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_DD_Category_Get]
@ParentId BIGINT = 0	
AS
BEGIN
	If(@ParentId > 0)
	begin
		select Id , CategoryName , 'SUBCAT' AS Groupby  from  Category where ParentCategoryId = @ParentId and IsActive = 1 and IsDeleted = 0
	end
	else
	begin
		select Id , CategoryName ,'CAT' AS Groupby from Category where ParentCategoryId = 0 and IsActive = 1 and IsDeleted = 0
	end
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DD_Product]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DD_Product]
AS
BEGIN

SELECT 
    Id,
    ProductName
FROM Products
WHERE IsDeleted = 0
AND IsActive = 1
ORDER BY ProductName

END
GO
/****** Object:  StoredProcedure [dbo].[SP_DD_User]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DD_User]
AS
BEGIN

SELECT 
    Id,
    FirstName + ' ' + LastName AS UserName
FROM Customer
WHERE IsDeleted = 0
AND IsActive = 1
ORDER BY FirstName

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ForgotPassword_GenerateOTP]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ForgotPassword_GenerateOTP]
    @Email NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @CustomerId INT;
    DECLARE @OTP INT;

    -- Check Email Exists
    SELECT @CustomerId = Id
    FROM Customer
    WHERE Email = @Email;

    IF (@CustomerId IS NULL)
    BEGIN
        SELECT 0 AS Status, 'Email not found' AS Message;
        RETURN;
    END

    -- Mark all old OTPs as used
    UPDATE ForgetPassword
    SET IsUsed = 1
    WHERE Email = @Email
      AND IsUsed = 0;

    -- Generate 6-digit OTP
    SET @OTP = ABS(CHECKSUM(NEWID())) % 900000 + 100000;

    -- Insert new OTP with 10 min expiry
    INSERT INTO ForgetPassword
    (
        Email,
        OTP,
        CreatedAt,
        ExpiryDate,
        IsUsed
    )
    VALUES
    (
        
        @Email,
        @OTP,
        GETDATE(),
        DATEADD(MINUTE, 10, GETDATE()),
        0
    );

    -- Success response
    SELECT 
        1 AS Status,
        'OTP generated successfully' AS Message,
        @OTP AS OTP; -- remove in production
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ForgotPassword_ResetPassword]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_ForgotPassword_ResetPassword]
    @Email NVARCHAR(100),
    @NewPassword NVARCHAR(200)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @CustomerId INT;

    -- Check Email Exists
    SELECT @CustomerId = Id
    FROM Customer
    WHERE Email = @Email;

    IF (@CustomerId IS NULL)
    BEGIN
        SELECT 0 AS Status, 'Email not found' AS Message;
        RETURN;
    END

    
    

    -- Update Password
    UPDATE Customer
    SET Password = @NewPassword
    WHERE Id = @CustomerId;

    SELECT 1 AS Status, 'Password reset successfully' AS Message;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ForgotPassword_VerifyOTP]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ForgotPassword_VerifyOTP]
    @Email NVARCHAR(100),
    @OTP INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @DB_OTP INT;
    DECLARE @CreatedAt DATETIME;
    DECLARE @IsUsed BIT;

    -- Get latest OTP (last inserted)
    SELECT TOP 1 
        @DB_OTP = OTP,
        @CreatedAt = CreatedAt,
        @IsUsed = IsUsed
    FROM ForgetPassword
    WHERE Email = @Email
    ORDER BY CreatedAt DESC;

    -- 1. Check OTP exists
    IF (@DB_OTP IS NULL)
    BEGIN
        SELECT 0 AS Status, 'OTP expired or not found.' AS Message;
        RETURN;
    END

    -- 2. Check already used
    IF (@IsUsed = 1)
    BEGIN
        SELECT 0 AS Status, 'OTP already used.' AS Message;
        RETURN;
    END

    -- 3. Check expiry (10 minutes)
    IF (DATEDIFF(MINUTE, @CreatedAt, GETDATE()) > 10)
    BEGIN
        SELECT 0 AS Status, 'OTP expired (valid only 10 minutes).' AS Message;
        RETURN;
    END

    -- 4. Check OTP match
    IF (@DB_OTP <> @OTP)
    BEGIN
        SELECT 0 AS Status, 'Invalid OTP.' AS Message;
        RETURN;
    END

    -- 5. Mark OTP as used
    UPDATE ForgetPassword
    SET IsUsed = 1
    WHERE Email = @Email
      AND OTP = @OTP
      AND IsUsed = 0;

    SELECT 1 AS Status, 'OTP verified successfully' AS Message;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GenerateOrderNumber]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_GenerateOrderNumber]
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @NextNumber INT
    DECLARE @OrderNumber VARCHAR(30)
    DECLARE @Year VARCHAR(4)

    SET @Year = YEAR(GETDATE())

    SELECT @NextNumber = ISNULL(MAX(CAST(RIGHT(OrderNumber,4) AS INT)),0) + 1
    FROM Orders
    WHERE YEAR(CreatedDate) = YEAR(GETDATE())

    SET @OrderNumber = 'ORD-' + @Year + '-' + RIGHT('0000' + CAST(@NextNumber AS VARCHAR),4)

    SELECT @OrderNumber AS OrderNumber
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetCart]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetCart]
(
    @CustomerId INT
)
AS
BEGIN

    SELECT
	cc.Id,
        cc.ProductId,
        p.ProductName,
        cc.VariantId,
STRING_AGG(
    A.Name + ' : ' + AV.Value,
    ', '
) AS VariantAttributeValues_Only,
STRING_AGG(
    CAST(A.Id AS VARCHAR(50))
    + ':' +
    CAST(AV.Id AS VARCHAR(50)),
    ', '
) AS VariantAttributeValues_Id,
        p.CategoryId,
        c.CategoryName,
        cc.Quantity,
        pvm.SellPrice,
        (cc.Quantity * pvm.SellPrice) AS Total,
        pvm.SKU,
		cc.PackingType,
        pi.ImagePath,
        ISNULL(ps.TotalAvailableStock,0) AS TotalAvailableStock
    FROM CustomerCart cc
    INNER JOIN Products p
        ON p.Id = cc.ProductId
    INNER JOIN Category c
        ON c.Id = p.CategoryId
    INNER JOIN ProductVariantMapping pvm
        ON pvm.Id = cc.VariantId
    INNER JOIN ProductVariantDetails pvd
        ON pvd.VariantId = pvm.Id
    INNER JOIN AttributeValue av
        ON av.Id = pvd.AttributeValueId
		INNER JOIN Attribute A
    ON A.Id = PVD.AttributeId
    --LEFT JOIN ProductImages pi
    --    ON pi.ProductId = p.Id
    --    AND pi.VariantId = pvm.Id
	LEFT JOIN ProductImages PI
    ON PI.ProductId = P.Id
    AND PI.VariantId = 0
    AND PI.IsPrimary = 1
    AND PI.IsActive = 1
    AND PI.IsDeleted = 0
    LEFT JOIN
    (
        SELECT
            VariantId,
            SUM(ISNULL(AvailableStock,0))
            - SUM(ISNULL(ReservedStock,0)) AS TotalAvailableStock
        FROM ProductStock
        GROUP BY VariantId
    ) ps
        ON ps.VariantId = pvm.Id
    WHERE cc.CustomerId = @CustomerId
      AND cc.IsActive = 1
    GROUP BY
	cc.Id,
        cc.ProductId,
        p.ProductName,
        cc.VariantId,
        p.CategoryId,
        c.CategoryName,
        cc.Quantity,
        pvm.SellPrice,
        pvm.SKU,
		cc.PackingType,
        pi.ImagePath,
        ps.TotalAvailableStock;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetOrderByCustomer]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_GetOrderByCustomer]
@CustomerId INT = 0
AS
BEGIN
	SELECT
  O.*,
(SELECT Count(*)  FROM OrderItems where OrderId = O.Id and IsActive = 1 and IsDeleted = 0)No_Of_Items
FROM Orders O
WHERE O.IsDeleted = 0 and O.UserId = @CustomerId
END
GO
/****** Object:  StoredProcedure [dbo].[SP_HomePageComponent_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HomePageComponent_Get]
(
    @Id BIGINT = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM HomePageComponent
    WHERE IsDeleted = 0 AND (@Id IS NULL OR Id = @Id)
    ORDER BY DisplayOrder;

    SELECT *
    FROM HomePageComponentItem
    WHERE IsDeleted = 0 AND (@Id IS NULL OR ComponentId = @Id)
    ORDER BY DisplayOrder;

	WITH SplitData AS
		(
			SELECT 
				H.Id, 
				H.RefType, 
				TRIM(value) AS RefValue
			FROM HomePageComponentItem H
			CROSS APPLY STRING_SPLIT(H.RefId, ',')
			WHERE H.IsDeleted = 0
		)

		-- 🔵 CATEGORY DATA (NO PRODUCT DETAILS)
		SELECT 
			S.Id AS ComponentItemId,
			S.RefType,
			S.RefValue AS RefId,

			NULL AS ProductId,
			NULL AS VariantId,
			NULL AS ProductName,

			C.Id AS CategoryId,
			C.CategoryName,
			ISNULL(C.ImagePath, '') AS ImagePath,

			NULL AS AttributeIds,
			NULL AS VariantAttributeValues_Only,
			NULL AS VariantAttributes,

			NULL AS SKU,
			NULL AS Price,
			NULL AS DiscountPercent,
NULL AS SellPrice,
NULL AS IsPercentagePricing

		FROM SplitData S

		INNER JOIN Category C ON C.Id = TRY_CAST(S.RefValue AS INT)

		WHERE S.RefType = 'Category' AND ISNULL(C.IsActive, 1) = 1


		UNION ALL


		-- 🟢 PRODUCT DATA (FULL DETAILS)
		SELECT 
			S.Id AS ComponentItemId,
			S.RefType,
			S.RefValue AS RefId,

			X.Id AS ProductId,
			PVM.Id AS VariantId,
	--	PVM.Id AS VariantId ,
			X.ProductName,

			C.Id AS CategoryId,
			C.CategoryName,

			ISNULL(
				MAX(CASE 
						WHEN I.VariantId = PVM.Id THEN I.ImagePath
						WHEN I.VariantId = 0 THEN I.ImagePath
					END), 
			'') AS ImagePath,

			STRING_AGG(CAST(A.Id AS VARCHAR(20)) + '-' + CAST(AV.Id AS VARCHAR(20)), ',') AS AttributeIds,
			STRING_AGG(AV.Value, ', ') AS VariantAttributeValues_Only,
			STRING_AGG(A.Name + ' : ' + AV.Value, ', ') AS VariantAttributes,

			PVM.SKU,
			PVM.Price,
			PVM.DiscountPercent,
PVM.SellPrice,
PVM.IsPercentagePricing

		FROM SplitData S

		INNER JOIN Products X ON X.Id = TRY_CAST(PARSENAME(REPLACE(S.RefValue, '-', '.'), 2) AS INT)

		LEFT JOIN Category C ON C.Id = X.CategoryId

		INNER JOIN ProductVariantMapping PVM ON PVM.ProductId = X.Id
			AND (
				TRY_CAST(PARSENAME(REPLACE(S.RefValue, '-', '.'), 1) AS INT) = 0
				OR PVM.Id = TRY_CAST(PARSENAME(REPLACE(S.RefValue, '-', '.'), 1) AS INT)
			)

		LEFT JOIN ProductImages I ON I.ProductId = X.Id AND I.IsPrimary=1 --I.VariantId = PVM.Id

		INNER JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id

		INNER JOIN Attribute A ON A.Id = PVD.AttributeId

		INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId

		WHERE S.RefType = 'Product' AND X.IsActive = 1 AND PVM.IsActive = 1 AND ISNULL(C.IsActive, 1) = 1

		GROUP BY S.Id, S.RefType, S.RefValue, X.Id, X.ProductName, C.Id, C.CategoryName, PVM.Id, PVM.SKU, PVM.Price,
		        PVM.DiscountPercent,PVM.SellPrice,PVM.IsPercentagePricing-- New Add


		ORDER BY RefType, ProductName, CategoryName;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_HomePageComponent_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_HomePageComponent_Save]
(
    @Id BIGINT = 0,
    @Key NVARCHAR(100) = NULL,
    @Name NVARCHAR(200) = NULL,
    @Type NVARCHAR(50) = NULL,
    --@DisplayOrder INT = 0,
    @IsActive BIT = 1,

    @Items NVARCHAR(MAX) = NULL, -- FORMAT: Id|Title|Image|Redirect|DisplayOrder||...
    @RefId NVARCHAR(100) = NULL,
    @ItemId INT = 0,

    @Mode NVARCHAR(20),
    @OperatedBy BIGINT,
	@response NVARCHAR(MAX) OUT
)
AS
BEGIN
    SET NOCOUNT ON;
	
 SET @response = 'E|Opps!... Something went wrong.|0';

 BEGIN TRY

  IF @Mode NOT IN ('SAVE','STATUS','DELETE')
  BEGIN
   SET @response = 'E|Invalid mode supplied.|0';
   RETURN;
  END
  
    DECLARE @NewId BIGINT = 0;

    IF(@Mode = 'SAVE')
    BEGIN
        IF(@Id = 0)
        BEGIN
            INSERT INTO HomePageComponent
            (
                [Key], Name, Type, DisplayOrder,
                IsActive, IsDeleted,
                CreatedBy, CreatedDate
            )
            VALUES
            (
                @Key, @Name, @Type, 0,
                @IsActive, 0,
                @OperatedBy, GETDATE()
            );

            SET @NewId = SCOPE_IDENTITY();
        END
		ELSE
        BEGIN
			UPDATE HomePageComponent
				SET IsActive = @IsActive,
					LastModifiedBy = @OperatedBy,
					LastModifiedDate = GETDATE()
				WHERE Id = @Id;

            SET @NewId = @Id;
        END
        
		IF (@Type = 'Banner')
		BEGIN
			IF(@Items IS NOT NULL AND LEN(@Items) > 0)
			BEGIN
				--DECLARE @XML XML = '<i>' + REPLACE(@Items, '||', '</i><i>') + '</i>';
				DECLARE @XML XML = '<i>' + @Items + '</i>';
						
				DELETE FROM HomePageComponentItem WHERE ComponentId = @NewId AND Id NOT IN 
				(SELECT x.value('data[1]', 'INT')
					FROM
					(
						SELECT
						CAST('<data>' + REPLACE(T.c.value('.', 'NVARCHAR(MAX)'), '|', '</data><data>') + '</data>' AS XML)
						FROM @XML.nodes('/i') T(c)
					) A(x) WHERE x.value('data[1]', 'INT') > 0
				);

				INSERT INTO HomePageComponentItem
				(
					ComponentId, RefType, Title, Subtitle, ImagePath, DisplayOrder, IsActive, IsDeleted, CreatedBy, CreatedDate
				)
				SELECT
					@NewId, 'Banner',
					x.value('data[2]', 'NVARCHAR(200)'),
					x.value('data[3]', 'NVARCHAR(500)'),
					x.value('data[4]', 'NVARCHAR(500)'),
					x.value('data[5]', 'INT'),
					x.value('data[6]', 'INT'),
					0,  @OperatedBy, GETDATE()
				FROM
				(
					SELECT
					CAST('<data>' + REPLACE(T.c.value('.', 'NVARCHAR(MAX)'), '|', '</data><data>') + '</data>' AS XML)
					FROM @XML.nodes('/i') T(c)
				) A(x) WHERE x.value('data[1]', 'INT') <= 0;

				UPDATE H
				SET 
					H.Title        = X.x.value('data[2]', 'NVARCHAR(200)'),
					H.Subtitle	   = X.x.value('data[3]', 'NVARCHAR(500)'),
					H.ImagePath    = (CASE WHEN X.x.value('data[4]', 'NVARCHAR(500)') != '-' THEN X.x.value('data[4]', 'NVARCHAR(500)') ELSE H.ImagePath END),
					H.DisplayOrder = X.x.value('data[5]', 'INT'),
					H.IsActive     = X.x.value('data[6]', 'INT'),
					H.LastModifiedBy   = @OperatedBy,
					H.LastModifiedDate = GETDATE()
				FROM HomePageComponentItem H
				INNER JOIN (
					SELECT 
						CAST('<data>' + REPLACE(T.c.value('.', 'NVARCHAR(MAX)'), '|', '</data><data>') + '</data>' AS XML) AS x
					FROM @XML.nodes('/i') T(c)
				) X
				ON H.Id = X.x.value('data[1]', 'INT')   -- assuming data[1] is the ID
				WHERE X.x.value('data[1]', 'INT') > 0 AND H.RefType = 'Banner';
			END		
			ELSE IF((@Items IS NULL OR LEN(@Items) = 0))
				DELETE FROM HomePageComponentItem WHERE ComponentId = @NewId;
		END
		ELSE IF (@Type != 'Banner')
		BEGIN
			-- INSERT
			IF (ISNULL(@RefId, '') <> '' AND @ItemId = 0)
			BEGIN
				INSERT INTO HomePageComponentItem
				(
					ComponentId, RefType, RefId, IsActive, IsDeleted, CreatedBy, CreatedDate
				)
				VALUES 
				(
					@NewId, @Type, @RefId, 1, 0, @OperatedBy, GETDATE()
				);
			END

			-- UPDATE
			ELSE IF (ISNULL(@RefId, '') <> '' AND @ItemId > 0)
			BEGIN
				UPDATE H
				SET 
					H.RefId = @RefId,
					H.LastModifiedBy = @OperatedBy,
					H.LastModifiedDate = GETDATE()
				FROM HomePageComponentItem H
				WHERE H.Id = @ItemId   -- ✅ safer (use PK)
					  AND H.ComponentId = @NewId
					  AND H.RefType = @Type;
			END

			-- DELETE
			ELSE IF (ISNULL(@RefId, '') = '')
			BEGIN
				DELETE FROM HomePageComponentItem
				WHERE Id = @ItemId     -- ✅ safer
					  AND ComponentId = @NewId
					  AND RefType = @Type;
			END
		END

	   SET @response = 'S|Record saved successfully|' + CAST(@NewId AS NVARCHAR);
	   RETURN;

    END

    ELSE IF(@Mode = 'DELETE')
    BEGIN
        UPDATE HomePageComponent
        SET IsDeleted = 1,
            LastModifiedBy = @OperatedBy,
            LastModifiedDate = GETDATE()
        WHERE Id = @Id

	   SET @response = 'S|Record deleted successfully|' + CAST(@Id AS NVARCHAR);
	   RETURN;

    END

	
 END TRY
 BEGIN CATCH
  SET @response = 'E|' + ERROR_MESSAGE() + '|0';
 END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Inquiry_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Inquiry_Get]
(
 @Id INT = NULL,
 @Search NVARCHAR(200) = NULL,
 @Start INT = 0,
 @Length INT = 25,
 @SortColumnIndex INT = 0,
 @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN

SET NOCOUNT ON;

---------------------------------------
-- SINGLE RECORD
---------------------------------------
IF @Id IS NOT NULL
BEGIN

 --SELECT 1 AS TotalRecords, 1 AS FilteredRecords;

 SELECT
     1 AS SrNo,
     I.*,
     (select ProductName from Products P where P.Id = I.ProductId)ProductName,
	 (select (Isnull(FirstName,'') +' '+Isnull(LastName,'')) from Users u where u.Id = I.UserId)Inquiry_By,
	  CASE 
        WHEN I.Status = 'PEND' THEN 'Pending'
		WHEN I.Status = 'INP' THEN 'In-Process'
        WHEN I.Status = 'REP' THEN 'Replied'
        WHEN I.Status = 'COMP' THEN 'Closed'
        ELSE ''
    END AS Status_Desc
 FROM Inquiries I
 WHERE I.Id = @Id
 AND I.IsDeleted = 0;

 RETURN;

END

---------------------------------------
-- SORT COLUMN MAP
---------------------------------------

DECLARE @OrderBy NVARCHAR(100);

SET @OrderBy =
CASE @SortColumnIndex
 WHEN 0 THEN 'I.Id'
 WHEN 1 THEN 'I.Inquiry_Date'
 WHEN 4 THEN 'I.IsActive'
 ELSE 'I.Id'
END

IF @SortDirection NOT IN ('ASC','DESC')
 SET @SortDirection = 'DESC';

---------------------------------------
-- COUNTS
---------------------------------------

DECLARE @Total INT;
DECLARE @Filtered INT;

SELECT @Total = COUNT(*)
FROM Inquiries I
WHERE IsDeleted = 0;

SELECT @Filtered = COUNT(*)
FROM Inquiries I
WHERE I.IsDeleted = 0
AND (
 @Search IS NULL
 OR I.Inquiry_Date LIKE '%' + @Search + '%'

);

SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

---------------------------------------
-- DATA
---------------------------------------

DECLARE @SQL NVARCHAR(MAX);

SET @SQL = '
SELECT
 ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
  I.*,
  (select ProductName from Products P where P.Id = I.ProductId)ProductName,
   (select (Isnull(FirstName,'''') +'' ''+Isnull(LastName,'''')) from Users u where u.Id = I.UserId)Inquiry_By,
   CASE 
        WHEN I.Status = ''PEND'' THEN ''Pending''
		WHEN I.Status = ''INP'' THEN ''In-Process''
        WHEN I.Status = ''REP'' THEN ''Replied''
        WHEN I.Status = ''COMP'' THEN ''Closed''
        ELSE ''''
    END AS Status_Desc
FROM Inquiries I
 WHERE 
 I.IsDeleted = 0
';

IF @Search IS NOT NULL
SET @SQL += '
AND (
I.Inquiry_Date LIKE ''%'' + @Search + ''%''
 
)
';

SET @SQL += '
ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY
';

EXEC sp_executesql
@SQL,
N'@Search NVARCHAR(200), @Start INT, @Length INT',
@Search,@Start,@Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Inquiry_History_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Inquiry_History_Get]
@Id int = 0,
@Flag varchar(20) = null

AS
BEGIN
	IF(@Flag = 'S')
	BEGIN
		SELECT 
    *,
    CASE 
        WHEN OldStatus = 'NA' THEN 'NA'
        WHEN OldStatus = 'PEND' THEN 'Pending'
		WHEN OldStatus = 'INP' THEN 'In-Process'
        WHEN OldStatus = 'REP' THEN 'Replied'
        WHEN OldStatus = 'COMP' THEN 'Closed'
        ELSE ''
    END AS OldStatus_Desc,

    CASE 
        WHEN NewStatus = 'PEND' THEN 'Pending'
		WHEN NewStatus = 'INP' THEN 'In-Process'
        WHEN NewStatus = 'REP' THEN 'Replied'
        WHEN NewStatus = 'COMP' THEN 'Closed'
        ELSE ''
    END AS NewStatus_Desc

FROM InquiryStatusHistory
WHERE InquiryId = @Id;
		
	END
	ELSE IF(@Flag = 'R')
	BEGIN
		select * ,(select (Isnull(FirstName,'') +' '+Isnull(LastName,'')) from Users where Id = ReplyBy)ReplyBy_TEXT from InquiryReplies where InquiryId = @Id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Inquiry_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Inquiry_Save]
(
    @Id INT = 0,
	@ProductId INT = 0,
	@Name varchar(MAX)= null,
	@Email varchar(MAX)= null,
	@PhoneNo varchar(10) = '',
    @Subject NVARCHAR(200) = null,
	@Message NVARCHAR(200) = null,
	@Inquiry_Date datetime = null,
  	@IsActive BIT = 1,
    @Mode NVARCHAR(10),
    @OperatedBy INT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN

SET NOCOUNT ON;

SET @response = 'E|Something went wrong|0';

BEGIN TRY

--------------------------------------------------
-- SAVE PRODUCT
--------------------------------------------------

IF @Mode = 'SAVE'
BEGIN




--------------------------------------------------
-- INSERT ORDER
--------------------------------------------------

INSERT INTO Inquiries
(Inquiry_Date, UserId,ProductId,Name,Email,PhoneNo,Subject,Message,Status,CreatedBy , CreatedDate  , IsActive , IsDeleted, LastModifiedBy , LastModifiedDate)
VALUES
(@Inquiry_Date,@OperatedBy,@ProductId,@Name,@Email,@PhoneNo,@Subject,@Message,'PEND', @OperatedBy ,GETDATE(),@IsActive, 0, @OperatedBy, GETDATE());

SET @Id = SCOPE_IDENTITY();

--insert Data into  BNI_Followup_History Table 
		 INSERT INTO InquiryStatusHistory
        (
            InquiryId,
            OldStatus,
            NewStatus,
            CreatedBy,
            CreatedDate,
            IsActive,
            IsDeleted,
			LastModifiedBy,
			LastModifiedDate,
			Remarks
        )
        VALUES
        (
            @Id,
            'NA',
            'PEND',
            @OperatedBy,
            GETDATE(),
            1,
            0,@OperatedBy,
            GETDATE(),NULL
        );


 SET @response = 'S|Inquiry saved successfully|' + CAST(@Id AS NVARCHAR);



RETURN;

END
 ----------------------------------------------------
 -- DELETE (SAFE SOFT DELETE)
 ----------------------------------------------------
  IF @Mode = 'DELETE'
  BEGIN

  

   UPDATE Inquiries
   SET IsDeleted = 1,IsActive=0,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id;

   UPDATE InquiryStatusHistory
   SET IsDeleted = 1,IsActive=0,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   UPDATE InquiryReplies
   SET IsDeleted = 1,IsActive=0,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()	
   WHERE Id = @Id;
    
   SET @response = 'S|Inquiry deleted successfully|' + CAST(@Id AS NVARCHAR);
   RETURN;

  END
END TRY
BEGIN CATCH

SET @response = 'E|' + ERROR_MESSAGE() + '|0';

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Inquiry_Status_Change]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Inquiry_Status_Change]
(
    @Id INT = 0,
	@Status  nvarchar(50) = NULL,
	@Remarks nvarchar(MAX) = null,	
    @OperatedBy INT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN

SET NOCOUNT ON;

SET @response = 'E|Something went wrong|0';

BEGIN TRY

-----------
 -- Status Change
 ----------------------------------------------------
 Declare @OldStatus Nvarchar(MAX) = null
 Select @OldStatus = Status from Inquiries where Id = @Id
  

   UPDATE Inquiries
   SET Status = @Status,
		AdminReply = @Remarks,
		Replied_Date = GETDATE(),
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id;

   	 INSERT INTO InquiryStatusHistory
        (
            InquiryId,
            OldStatus,
            NewStatus,
            CreatedBy,
            CreatedDate,
            IsActive,
            IsDeleted,
			LastModifiedBy,
			LastModifiedDate,
			Remarks
        )
        VALUES
        (
            @Id,
            @OldStatus,
            @Status,
            @OperatedBy,
            GETDATE(),
            1,
            0,@OperatedBy,
            GETDATE(),@Remarks
        );
    
 IF(@Status = 'REP')
BEGIN
	Insert into InquiryReplies(
	InquiryId,
	ReplyBy,
	ReplyMessage,
	ReplyDate,
	IsActive,
	IsDeleted,
	CreatedBy,
	CreatedDate,
	LastModifiedBy,
	LastModifiedDate
	)
	VALUES(
	@Id,
	@OperatedBy,
	@Remarks,
	GETDATE(),
	1,0,
	@OperatedBy,
	GETDATE(),
	@OperatedBy,
	GETDATE()
	)
    SET @response = 'S|Response to the inquiry has been submitted successfully.|' + CAST(@Id AS NVARCHAR);
END
ELSE IF(@Status = 'COMP')
BEGIN
    SET @response = 'S|Inquiry Closed Successfully|' + CAST(@Id AS NVARCHAR);
END
Else
BEGIN
	SET @response = 'S|Status Updated Successfully|' + CAST(@Id AS NVARCHAR);
END

RETURN;

  
END TRY
BEGIN CATCH

SET @response = 'E|' + ERROR_MESSAGE() + '|0';

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_LOV_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LOV_Get]
	-- Add the parameters for the stored procedure here
	@Lov_Column varchar(30)='',
	@Lov_Code varchar(50)='',
	@Flag varchar(30)=''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	if(@Flag = 'LI')-- LI = bind Lov Index data
	begin
		select distinct ISNULL(Lov_Column,'')Lov_Column,ISNULL(Display_Text,'')Display_Text from LOV_MASTER where IsActive=1
	end
	else if(@Flag = 'LE') -- LE = bind Lov Edit data
	begin
		select distinct ISNULL(Lov_Column,'')Lov_Column,ISNULL(Display_Text,'')Display_Text from LOV_MASTER where Lov_Column = @Lov_Column and IsActive=1
	end
	else if(@Flag = 'LDI') -- LDI = bind Lov details Index data
	begin
		select ISNULL(Lov_Column,'')Lov_Column,ISNULL(Lov_Code,'')Lov_Code,ISNULL(Lov_Desc,'')Lov_Desc,ISNULL(Display_Text,'')Display_Text,ISNULL(IsActive,0)IsActive,
		ISNULL(DisplayOrder,0)DisplayOrder,((select MAX(DisplayOrder) from LOV_MASTER where Lov_Column = @Lov_Column)+1)MaxDisplay_Seq_No,ISNULL(CreatedBy,'')CreatedBy,ISNULL(CreatedDate,'')CreatedDate,ISNULL(LastModifiedBy,'')LastModifiedBy,
		ISNULL(LastModifiedDate,'')LastModifiedDate,ISNULL(IsActive,0)IsActive,ISNULL(IsDeleted,0)IsDeleted
		FROM LOV_MASTER where Lov_Column =@Lov_Column  AND Lov_Column != Lov_Code and IsActive=1
	end
	else if(@Flag = 'LDE') --bind Lov details Edit data
	begin
		select ISNULL(Lov_Column,'')Lov_Column,ISNULL(Lov_Code,'')Lov_Code,ISNULL(Lov_Desc,'')Lov_Desc,ISNULL(Display_Text,'')Display_Text,ISNULL(IsActive,0)IsActive,
		ISNULL(DisplayOrder,0)DisplayOrder,0 As MaxDisplay_Seq_No ,ISNULL(CreatedBy,'')CreatedBy,ISNULL(LastModifiedBy,'')LastModifiedBy,ISNULL(LastModifiedBy,'')LastModifiedBy,
		ISNULL(LastModifiedDate,'')LastModifiedDate,ISNULL(IsActive,0)IsActive,ISNULL(IsDeleted,0)IsDeleted 
		FROM LOV_MASTER where Lov_Column =@Lov_Column and Lov_Code =@Lov_Code and IsActive=1
	end
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Lov_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Lov_Save]
	-- Add the parameters for the stored procedure here
	@Lov_Column varchar(30)='',
	@Display_Text varchar(50)='',
	@Operated_By bigint=0,
	@Action   varchar(10)='',          
	@Response   varchar(100) out 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF ISNULL(LTRIM(RTRIM(@Lov_Column)), '') = ''
BEGIN
    SET @Response = 'E|Column name is required|0';
    RETURN;
END
	SET @Response = 'E|' + 'Contact system administrator|0';

    IF(@Action = 'INSERT')
	begin

		IF EXISTS(SELECT 1 FROM LOV_MASTER WITH(NOLOCK) WHERE Upper(trim([Lov_Column])) = Upper(trim(@Lov_Column)))
		BEGIN
			SET @Response =  'E|' + 'Column name is already exists|0';
		END
		ELSE
		BEGIN
				insert into LOV_MASTER([Lov_Column],[Display_Text],[Lov_Code],[Lov_Desc],[IsActive], [IsDeleted], [CreatedBy], [CreatedDate],LastModifiedBy)          
				values(trim(@Lov_Column),trim(@Display_Text),trim(@Lov_Column),trim(@Lov_Column), 1, 0, @Operated_By, getdate() , @Operated_By)

				SET @Response =  'S|' + 'Record saved successfully|0' ;
		END
	end
	else IF(@Action = 'UPDATE')
	--IF EXISTS(SELECT 1 FROM Lov_Master WITH(NOLOCK) WHERE Upper(trim([Lov_Column])) = Upper(trim(@Lov_Column)))
	--	BEGIN
	--		SET @response =  'E|' + 'Lov Column is already exists|0';
	--	END
	--	ELSE
	begin 
		update LOV_MASTER set Display_Text = trim(@Display_Text), IsActive = 1, LastModifiedBy = @Operated_By, LastModifiedDate = getdate()
				where  Lov_Column = @Lov_Column
		
		SET @response =  'S|' + 'Record updated successfully|0'
	end
	

     --Insert statements for procedure here
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_LovDtl_Delete]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LovDtl_Delete]
	-- Add the parameters for the stored procedure here
	@Lov_Column varchar(30),
	@Lov_Code varchar(50)=null,	
	@Operated_By BIGINT = NULL,
	@response varchar(100) out
AS
BEGIN
declare @count int
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SET @response =  'E|' + 'You can not delete the record|0';


	--update LOV_MASTER set IsActive = 0, [IsDeleted] = 1, LastModifiedBy = @Operated_By, LastModifiedDate = getdate() where Lov_Column = @Lov_Column and Lov_Code =@Lov_Code
	-- First log or update audit (optional)
UPDATE LOV_MASTER
SET LastModifiedBy = @Operated_By,
IsActive=0,IsDeleted=1,
    LastModifiedDate = GETDATE()
WHERE Lov_Column = @Lov_Column
  AND Lov_Code = @Lov_Code;

-- Then permanently delete
--DELETE FROM LOV_MASTER WHERE Lov_Column = @Lov_Column
--  AND (@Lov_Code IS NULL OR Lov_Code = @Lov_Code);
--WHERE Lov_Column = @Lov_Column
--  AND Lov_Code = @Lov_Code;

	SET @response = 'S|' + 'Record deleted successfully|0';

    
END
GO
/****** Object:  StoredProcedure [dbo].[SP_LovDtl_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LovDtl_Save]
	-- Add the parameters for the stored procedure here
	@Lov_Column varchar(30)='',
	@Display_Text varchar(50)='',
	@Lov_Code varchar(50)='',
	@Lov_Desc varchar(50)='',
	@DisplayOrder int =0,
	@IsActive bit = 0,
	@Operated_By varchar(20)='',
	@Action   varchar(20)='',          
	@response   varchar(100) out 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SET @response = 'E|' + 'Contact system administrator|0';
		IF ISNULL(LTRIM(RTRIM(@Lov_Desc)), '') = ''
BEGIN
    SET @Response = 'E|Lov Description is required|0';
    RETURN;
END
    IF(@Action = 'INSERT')
	begin

		-- DELETE DEFAULT RECORD GENERATED AT TIME OF ADD LOV COLUMN MASTER REC
		

		IF EXISTS(SELECT 1 FROM LOV_MASTER WITH(NOLOCK) WHERE Upper(trim([Lov_Column])) = Upper(trim(@Lov_Column)) and Upper(trim([Lov_Desc])) = Upper(trim(@Lov_Desc)) and IsDeleted = 0)
		BEGIN
			SET @response =  'E|' + 'Description is already exists|0';
		END
		ELSE
		BEGIN
				DELETE FROM LOV_MASTER WHERE Upper(trim([Lov_Column])) = Upper(trim(@Lov_Column)) AND Lov_Column = Lov_Code
				declare @count int
				declare @codename varchar(30)
				select @count = COUNT(*) + 1 from LOV_MASTER where Lov_Column = @Lov_Column
				set @codename = convert(varchar,@count)

				insert into LOV_MASTER([Lov_Column],[Display_Text],[Lov_Code],[Lov_Desc],[DisplayOrder],[IsActive], [IsDeleted], [CreatedBy], [CreatedDate])          
				values(trim(@Lov_Column),trim(@Display_Text),trim(@codename),trim(@Lov_Desc),@DisplayOrder, 1, 0, @Operated_By, getdate())

				SET @response =  'S|' + 'Record saved successfully|0' ;
		END
	end
	else IF(@Action = 'UPDATE')
	begin 
	IF EXISTS(SELECT 1 FROM LOV_MASTER WITH(NOLOCK) WHERE Upper(trim([Lov_Column])) = Upper(trim(@Lov_Column)) and Upper(trim([Lov_Desc])) = Upper(trim(@Lov_Desc)) and Lov_Code != @Lov_Code and IsDeleted = 0)
		BEGIN
			SET @response =  'E|' + 'Description is already exists|0';
		END
		else
		BEGIN
		update LOV_MASTER set Lov_Desc=@Lov_Desc,DisplayOrder =@DisplayOrder, 
	--	IsActive = @IsActive,
		LastModifiedBy = @Operated_By, LastModifiedDate = getdate()
				where  Lov_Column = @Lov_Column and Lov_Code=@Lov_Code
		
		SET @response =  'S|' + 'Record updated successfully|0' ;
		END
	end
	
     --Insert statements for procedure here
	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Love_Combo]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_Love_Combo]
(
@LOV_Column varchar(max)=null
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT LOV_Code as Code,LOV_Desc as [Name] FROM [dbo].[LOV_MASTER] WHERE LTRIM(RTRIM(LOV_Column)) = LTRIM(RTRIM(@LOV_Column));
END
GO
/****** Object:  StoredProcedure [dbo].[SP_LovMaster_Delete]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_LovMaster_Delete]
	-- Add the parameters for the stored procedure here
	@Lov_Column varchar(30),
	@Operated_By BIGINT = NULL,
	@response varchar(100) out
AS
BEGIN
	SET NOCOUNT ON;
	
	SET @response =  'E|' + 'You can not delete the record|0';
UPDATE LOV_MASTER
SET LastModifiedBy = @Operated_By,
IsActive=0,IsDeleted=1,
    LastModifiedDate = GETDATE()
WHERE Lov_Column = @Lov_Column

	SET @response = 'S|' + 'Record deleted successfully|0';

    
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Menus_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Menus_Get]
(
    @Id INT = NULL,
    @Search NVARCHAR(200) = NULL,
    @Start INT = 0,
    @Length INT = 25,
    @SortColumnIndex INT = 0,
    @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN
    SET NOCOUNT ON;

    -- =====================================================
    -- SINGLE RECORD MODE
    -- =====================================================
    IF @Id IS NOT NULL
    BEGIN

        SELECT 
            1 AS SrNo,
            X.*,
            P.Name AS ParentMenuName
        FROM Menus X
        LEFT JOIN Menus P ON P.Id = X.ParentId
        WHERE X.Id = (CASE WHEN @Id < 0 THEN X.Id ELSE @Id END) AND X.IsDeleted = 0
		AND X.IsActive = (CASE WHEN @Id < 0 THEN 1 ELSE X.IsActive END);

        RETURN;
    END

    -- =====================================================
    -- SORT MAPPING (SAFE)
    -- =====================================================
    DECLARE @OrderBy NVARCHAR(100);

    SET @OrderBy =
        CASE @SortColumnIndex
            WHEN 0 THEN 'M.Id'
            WHEN 1 THEN 'M.Name'
            WHEN 2 THEN 'M.Area'
            WHEN 3 THEN 'M.Controller'
            WHEN 4 THEN 'M.DisplayOrder'
            WHEN 5 THEN 'M.IsActive'
            ELSE 'M.Id'
        END;

    IF @SortDirection NOT IN ('ASC','DESC')
        SET @SortDirection = 'DESC';

    -- =====================================================
    -- COUNTS
    -- =====================================================
    DECLARE @Total INT, @Filtered INT;

    SELECT @Total = COUNT(*) FROM Menus WHERE IsDeleted = 0;

    SELECT @Filtered = COUNT(*)
    FROM Menus M
    WHERE M.IsDeleted = 0
      AND (@Search IS NULL OR
           M.Name LIKE '%' + @Search + '%' OR
           M.Area LIKE '%' + @Search + '%' OR
           M.Controller LIKE '%' + @Search + '%');

    SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

    -- =====================================================
    -- DATA
    -- =====================================================
    DECLARE @SQL NVARCHAR(MAX);

    SET @SQL = '
    SELECT 
        ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
        M.*,
        P.Name AS ParentMenuName
    FROM Menus M
    LEFT JOIN Menus P ON P.Id = M.ParentId
    WHERE M.IsDeleted = 0
    ';

    IF @Search IS NOT NULL
        SET @SQL += '
        AND (
            M.Name LIKE ''%'' + @Search + ''%'' OR
            M.Area LIKE ''%'' + @Search + ''%'' OR
            M.Controller LIKE ''%'' + @Search + ''%''
        )';

    SET @SQL += '
    ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
    OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY';

    EXEC sp_executesql
        @SQL,
        N'@Search NVARCHAR(200), @Start INT, @Length INT',
        @Search, @Start, @Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Menus_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Menus_Save]
(
    @Id INT = 0,
    @ParentId INT = NULL,
    @Area NVARCHAR(100) = NULL,
    @Controller NVARCHAR(100) = NULL,
    @Name NVARCHAR(250) = NULL,
    @Url NVARCHAR(250) = NULL,
    @DisplayOrder INT = 0,
    @IsActive BIT = 1,
    @IsDeleted BIT = 0,
    @Mode NVARCHAR(10),
    @OperatedBy INT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN
    SET NOCOUNT ON;

    SET @response = 'E|Opps!... Something went wrong.|0';

    BEGIN TRY

        IF @Mode NOT IN ('SAVE','STATUS','DELETE')
        BEGIN
            SET @response = 'E|Invalid mode supplied.|0';
            RETURN;
        END

        -- =====================================================
        -- SAVE MODE
        -- =====================================================
        IF @Mode = 'SAVE'
        BEGIN
            -- Required Validation
            IF ISNULL(@Name,'') = ''
            BEGIN
                SET @response = 'E|Menu Name is required.|0';
                RETURN;
            END

            -- Duplicate Validation (same Parent)
            IF EXISTS (
                SELECT 1 FROM Menus
                WHERE Name = @Name
                  AND ISNULL(ParentId,0) = ISNULL(@ParentId,0)
                  AND IsDeleted = 0
                  AND (@Id = 0 OR Id <> @Id)
            )
            BEGIN
                SET @response = 'E|Menu already exists under same parent.|0';
                RETURN;
            END

            -- UPDATE
            IF @Id > 0
            BEGIN
                UPDATE Menus
                SET ParentId = @ParentId,
                    Area = @Area,
                    Controller = @Controller,
                    Url = @Url,
                    Name = @Name,
                    DisplayOrder = @DisplayOrder,
                    IsActive = @IsActive,
                    LastModifiedBy = @OperatedBy,
                    LastModifiedDate = GETDATE()
                WHERE Id = @Id;

                SET @response = 'S|Record updated successfully|' + CAST(@Id AS NVARCHAR);
                RETURN;
            END
            ELSE
            BEGIN
                INSERT INTO Menus
                (
                    ParentId, Area, Controller, Url, Name, DisplayOrder,
                    IsActive, IsDeleted,
                    CreatedBy, CreatedDate
                )
                VALUES
                (
                    @ParentId, @Area, @Controller, @Url, @Name, @DisplayOrder,
                    @IsActive, 0,
                    @OperatedBy, GETDATE()
                );

                SET @Id = SCOPE_IDENTITY();

                SET @response = 'S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
                RETURN;
            END
        END

        -- =====================================================
        -- STATUS MODE
        -- =====================================================
        IF @Mode = 'STATUS'
        BEGIN
            UPDATE Menus
            SET IsActive = @IsActive,
                IsDeleted = @IsDeleted,
                LastModifiedBy = @OperatedBy,
                LastModifiedDate = GETDATE()
            WHERE Id = @Id;

            SET @response = 'S|Record updated successfully|' + CAST(@Id AS NVARCHAR);
            RETURN;
        END
		ELSE IF @Mode = 'DELETE'
		BEGIN
		 UPDATE Menus
		 SET IsActive = 0,
		   IsDeleted = 1,
		   LastModifiedBy = @OperatedBy,
		   LastModifiedDate = GETDATE()
		 WHERE Id = @Id;
		 
            SET @response = 'S|Record deleted successfully|' + CAST(@Id AS NVARCHAR);
            RETURN;
		END



    END TRY
    BEGIN CATCH
        SET @response = 'E|' + ERROR_MESSAGE() + '|0';
        RETURN;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Notification_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Notification_Get]
(
    @Id INT = NULL,
    @CustomerId INT = NULL,
    @Search NVARCHAR(200) = NULL,
    @Start INT = 0,
    @Length INT = 25,
    @SortColumnIndex INT = 0,
    @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN
    SET NOCOUNT ON;

    --------------------------------------------------
    -- GET BY ID + MARK AS READ
    --------------------------------------------------
    IF @Id IS NOT NULL
    BEGIN

        UPDATE NotificationMaster
        SET
            IsRead = 1,
            LastModifiedDate = GETDATE()
        WHERE Id = @Id
          AND IsDeleted = 0;

        SELECT
            Id,
            Message,
            CreatedDate
        FROM NotificationMaster
        WHERE Id = @Id
          AND IsDeleted = 0;

        RETURN;
    END

    --------------------------------------------------
    -- SORTING
    --------------------------------------------------
    DECLARE @OrderBy NVARCHAR(100);

    SET @OrderBy =
    CASE @SortColumnIndex
        WHEN 0 THEN 'X.CreatedDate'
        WHEN 1 THEN 'X.Message'
        WHEN 2 THEN 'X.IsRead'
        ELSE 'X.CreatedDate'
    END;

    IF @SortDirection NOT IN ('ASC','DESC')
        SET @SortDirection = 'DESC';

    --------------------------------------------------
    -- COUNTS
    --------------------------------------------------
    DECLARE @Total INT,
            @Filtered INT;

    SELECT @Total = COUNT(*)
    FROM NotificationMaster
    WHERE IsDeleted = 0
      AND CustomerId = @CustomerId;

    SELECT @Filtered = COUNT(*)
    FROM NotificationMaster X
    WHERE X.IsDeleted = 0
      AND X.CustomerId = @CustomerId
      AND (
            @Search IS NULL
            OR X.Message LIKE '%' + @Search + '%'
          );

    SELECT
        @Total AS TotalRecords,
        @Filtered AS FilteredRecords;

    --------------------------------------------------
    -- DATA
    --------------------------------------------------
    DECLARE @SQL NVARCHAR(MAX);

    SET @SQL = '
    SELECT
        ROW_NUMBER() OVER (ORDER BY X.CreatedDate DESC) + @Start AS SrNo,
        X.Id,
        X.Message,
        X.IsRead,
        X.CreatedDate
    FROM NotificationMaster X
    WHERE X.IsDeleted = 0
      AND X.CustomerId = @CustomerId ';

    IF @Search IS NOT NULL
    BEGIN
        SET @SQL += '
        AND X.Message LIKE ''%'' + @Search + ''%'' ';
    END

    SET @SQL += '
    ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
    OFFSET @Start ROWS
    FETCH NEXT @Length ROWS ONLY';

    EXEC sp_executesql
    @SQL,
    N'@CustomerId INT,@Search NVARCHAR(200),@Start INT,@Length INT',
    @CustomerId,
    @Search,
    @Start,
    @Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Notification_Master]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Notification_Master]
(
    @Id INT = 0,
    @CustomerId INT = 0,
    @Ids NVARCHAR(MAX) = NULL,
    @Mode NVARCHAR(20),
    @OperatedBy INT = 0,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN

    SET NOCOUNT ON;

    SET @response = 'E|Something went wrong|0';

    BEGIN TRY

        --------------------------------------------------
        -- MARK SINGLE NOTIFICATION AS READ
        --------------------------------------------------
        IF @Mode = 'READ'
        BEGIN
            UPDATE NotificationMaster
            SET
                IsRead = 1,
                LastModifiedBy = @OperatedBy,
                LastModifiedDate = GETDATE()
            WHERE Id = @Id
              AND IsDeleted = 0;

            SET @response = 'S|Notification marked as read|' + CAST(@Id AS NVARCHAR);
            RETURN;
        END

        --------------------------------------------------
        -- MARK ALL NOTIFICATIONS AS READ
        --------------------------------------------------
        IF @Mode = 'READALL'
        BEGIN
            UPDATE NotificationMaster
            SET
                IsRead = 1,
                LastModifiedBy = @OperatedBy,
                LastModifiedDate = GETDATE()
            WHERE CustomerId = @CustomerId
              AND IsDeleted = 0
              AND IsRead = 0;

            SET @response = 'S|All notifications marked as read|' + CAST(@CustomerId AS NVARCHAR);
            RETURN;
        END

        --------------------------------------------------
        -- DELETE SINGLE NOTIFICATION
        --------------------------------------------------
        IF @Mode = 'DELETE'
        BEGIN
            UPDATE NotificationMaster
            SET
                IsDeleted = 1,
                LastModifiedBy = @OperatedBy,
                LastModifiedDate = GETDATE()
            WHERE Id = @Id
              AND IsDeleted = 0;

            SET @response = 'S|Notification deleted successfully|' + CAST(@Id AS NVARCHAR);
            RETURN;
        END

        --------------------------------------------------
        -- BULK DELETE NOTIFICATIONS
        --------------------------------------------------
        IF @Mode = 'BULKDELETE'
        BEGIN
            UPDATE NotificationMaster
            SET
                IsDeleted = 1,
                LastModifiedBy = @OperatedBy,
                LastModifiedDate = GETDATE()
            WHERE Id IN
            (
                SELECT TRY_CAST(value AS INT)
                FROM STRING_SPLIT(@Ids, ',')
                WHERE TRY_CAST(value AS INT) IS NOT NULL
            );

            SET @response = 'S|Notifications deleted successfully|1';
            RETURN;
        END

    END TRY
    BEGIN CATCH
        SET @response = 'E|' + ERROR_MESSAGE() + '|0';
    END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Notification_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Notification_Save]
(
    @Id INT = 0,
    @CustomerId INT,
    @Title NVARCHAR(500),
    @Message NVARCHAR(MAX),
    @OperatedBy INT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN

    SET NOCOUNT ON;

    SET @response = 'E|Something went wrong|0';

    BEGIN TRY

        --------------------------------------------------
        -- UPDATE
        --------------------------------------------------
        IF @Id > 0
        BEGIN

            UPDATE NotificationMaster
            SET
                CustomerId = @CustomerId,
                Title = @Title,
                Message = @Message,
                LastModifiedBy = @OperatedBy,
                LastModifiedDate = GETDATE()
            WHERE Id = @Id;

            SET @response = 'S|Notification updated successfully|' + CAST(@Id AS NVARCHAR);
        END
        ELSE
        BEGIN

            --------------------------------------------------
            -- INSERT
            --------------------------------------------------
            INSERT INTO NotificationMaster
            (
                CustomerId,
                Title,
                Message,
                IsRead,
                IsDeleted,
                CreatedBy,
                CreatedDate,
                LastModifiedBy,
                LastModifiedDate
            )
            VALUES
            (
                @CustomerId,
                @Title,
                @Message,
                0,
                0,
                @OperatedBy,
                GETDATE(),
                @OperatedBy,
                GETDATE()
            );

            SET @Id = SCOPE_IDENTITY();

            SET @response = 'S|Notification saved successfully|' + CAST(@Id AS NVARCHAR);
        END

    END TRY
    BEGIN CATCH
        SET @response = 'E|' + ERROR_MESSAGE() + '|0';
    END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Offer_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SP_Offer_Get]
(
    @Id BIGINT = NULL,
    @Search NVARCHAR(200) = NULL,
    @Start INT = 0,
    @Length INT = 25,
    @SortColumnIndex INT = 0,
    @SortDirection NVARCHAR(4) = 'DESC',
	@QuickFilter NVARCHAR(20) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    -------------------------------------------------------
    -- SINGLE RECORD (DETAIL VIEW)
    -------------------------------------------------------
    IF @Id IS NOT NULL
    BEGIN
        /* MASTER */
        SELECT *
        FROM Offers
        WHERE Id = (CASE WHEN @Id < 0 THEN Id ELSE @Id END)

        /* APPLICABILITY */
        SELECT 
            OfferId,
            STRING_AGG(
                CONCAT(
                    ISNULL(CAST(ProductId AS VARCHAR),'NULL'),'~',
                    ISNULL(CAST(VariantId AS VARCHAR),'NULL'),'~',
                    ISNULL(CAST(CategoryId AS VARCHAR),'NULL')
                ), ','
            ) AS ApplicabilityData
        FROM OfferApplicability
        WHERE OfferId = @Id
        GROUP BY OfferId

        /* CONDITIONS */
        SELECT 
            OfferId,
            STRING_AGG(
                CONCAT(ConditionType,'~',ConditionValue), ','
            ) AS ConditionData
        FROM OfferConditions
        WHERE OfferId = @Id
        GROUP BY OfferId

        /* BENEFITS */
        SELECT 
            OfferId,
            STRING_AGG(
                CONCAT(
                    BenefitType,'~',
                    ISNULL(CAST(Value AS VARCHAR),'NULL'),'~',
                    ISNULL(CAST(FreeProductId AS VARCHAR),'NULL'),'~',
                    ISNULL(CAST(FreeQty AS VARCHAR),'NULL')
                ), ','
            ) AS BenefitData
        FROM OfferBenefits
        WHERE OfferId = @Id
        GROUP BY OfferId

        RETURN;
    END


    -------------------------------------------------------
    -- SORT MAPPING
    -------------------------------------------------------
    DECLARE @OrderBy NVARCHAR(100);

    SET @OrderBy =
        CASE @SortColumnIndex
            WHEN 0 THEN 'ISNULL(OM.LastModifiedDate, OM.CreatedDate)'
            WHEN 1 THEN 'OM.OfferName'
            WHEN 2 THEN 'OM.OfferType'
            WHEN 3 THEN 'OM.DiscountValue'
            WHEN 4 THEN 'OM.StartDate'
            WHEN 5 THEN 'OM.EndDate'
            WHEN 6 THEN 'OM.IsActive'
            ELSE 'ISNULL(OM.LastModifiedDate, OM.CreatedDate)'
        END;

    IF @SortDirection NOT IN ('ASC','DESC')
        SET @SortDirection = 'DESC';
		
    -------------------------------------------------------
    -- COUNTS
    -------------------------------------------------------
    DECLARE @Total INT, @Filtered INT;

    SELECT @Total = COUNT(*) FROM Offers WHERE IsDeleted = 0;

    SELECT @Filtered = COUNT(*)
    FROM Offers OM
    WHERE (@Search IS NULL
        OR OM.OfferName LIKE '%' + @Search + '%'
        OR OM.CouponCode LIKE '%' + @Search + '%'
        OR OM.OfferType LIKE '%' + @Search + '%');


    SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;
	
    -------------------------------------------------------
    -- DATA (DATATABLE)
    -------------------------------------------------------
    DECLARE @SQL NVARCHAR(MAX);

    SET @SQL = '
    SELECT 
        ROW_NUMBER() OVER (ORDER BY CASE WHEN OM.IsActive = 1 AND OM.EndDate >= GETDATE() THEN 1 ELSE 2 END, ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
        OM.Id,
        OM.OfferName,
        OM.OfferType,
        OM.DiscountType,
        OM.DiscountValue,
        OM.CouponCode,
        OM.IsCouponRequired,
        OM.StartDate,
        OM.EndDate,
        OM.Priority,
        OM.IsActive,
        OM.ApplyOnly_Category,
        OM.ApplyOnly_Product,
		CASE 
			WHEN OM.IsActive = 0 THEN ''Inactive''
			WHEN OM.EndDate < GETDATE() THEN ''Expired''
			ELSE ''Active''
		END AS Status,
        -- USAGE COUNT
        (SELECT COUNT(*) FROM OfferUsage OU WHERE OU.OfferId = OM.Id) AS UsedCount,

        -- APPLICABILITY SUMMARY
        ISNULL((
            SELECT STRING_AGG(
                COALESCE(
                    ''Category:'' + CAST(OA.CategoryId AS VARCHAR),
                    ''Product:'' + CAST(OA.ProductId AS VARCHAR),
                    ''Variant:'' + CAST(OA.VariantId AS VARCHAR)
                ), '', ''
            )
            FROM OfferApplicability OA
            WHERE OA.OfferId = OM.Id
        ), ''All'') AS Applicability,
		ISNULL(OM.LastModifiedDate, OM.CreatedDate) AS LastModifiedDate
    FROM Offers OM
    WHERE 1=1 
    ';

	
	IF ISNULL(@QuickFilter, '') <> ''
	BEGIN
		IF @QuickFilter = 'RECENT'
			SET @SQL += ' AND ISNULL(OM.LastModifiedDate, OM.CreatedDate) >= DATEADD(DAY,-7,GETDATE())'

		IF @QuickFilter = 'EXPIRING'
			SET @SQL += ' AND OM.EndDate BETWEEN GETDATE() AND DATEADD(DAY,5,GETDATE())'

		IF @QuickFilter = 'TOP'
			SET @SQL += ' AND (SELECT COUNT(*) FROM OfferUsage OU WHERE OU.OfferId = OM.Id) >= 50'
	END

    IF @Search IS NOT NULL
        SET @SQL += '
        AND (
            OM.OfferName LIKE ''%'' + @Search + ''%'' OR
            OM.CouponCode LIKE ''%'' + @Search + ''%'' OR
            OM.OfferType LIKE ''%'' + @Search + ''%''
        )';

    --SET @SQL += '
    --ORDER BY (CASE WHEN OM.IsActive = 1 AND OM.EndDate >= GETDATE() THEN 1 ELSE 2 END), ' + @OrderBy + ' ' + @SortDirection + '
    --OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY';
	SET @SQL += '
	ORDER BY 
		(CASE WHEN OM.IsActive = 1 AND OM.EndDate >= GETDATE() THEN 1 ELSE 2 END), 
		' + @OrderBy + ' ' + @SortDirection + '
	OFFSET @Start ROWS';

	IF (@Length > 0)
	BEGIN
		SET @SQL += ' FETCH NEXT @Length ROWS ONLY';
	END

    EXEC sp_executesql
        @SQL,
        N'@Search NVARCHAR(200), @Start INT, @Length INT',
        @Search, @Start, @Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Offer_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* ============================================================
   OFFER SAVE
============================================================ */

CREATE   PROCEDURE [dbo].[SP_Offer_Save]
(
    @Id BIGINT = 0,

    @OfferName NVARCHAR(200) = NULL,
    @OfferType VARCHAR(50) = NULL,
    @DiscountType VARCHAR(20) = NULL,

    @DiscountValue DECIMAL(18,2) = NULL,
    @MaxDiscountAmount DECIMAL(18,2) = NULL,

    @MinOrderAmount DECIMAL(18,2) = NULL,
    @MinQty INT = NULL,

    @IsCouponRequired BIT = 0,
    @CouponCode NVARCHAR(50) = NULL,

    @StartDate DATETIME = NULL,
    @EndDate DATETIME = NULL,

    @ApplyOnly_Category NVARCHAR(500) = NULL,
    @ApplyOnly_Product NVARCHAR(500) = NULL,

    @IsActive BIT = 1,
    @IsDeleted BIT = 0,

    --@ApplicabilityData NVARCHAR(MAX) = NULL,
    --@ConditionData NVARCHAR(MAX) = NULL,
    --@BenefitData NVARCHAR(MAX) = NULL,

    @Mode NVARCHAR(10),
    @OperatedBy INT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN
    SET NOCOUNT ON;

    SET @response = 'E|Opps!... Something went wrong.|0';

    BEGIN TRY

        IF @Mode NOT IN ('SAVE','STATUS','DELETE')
        BEGIN
            SET @response = 'E|Invalid mode supplied.|0';
            RETURN;
        END

        /* ========================================
           SAVE
        ======================================== */
        IF @Mode = 'SAVE'
        BEGIN
            /* ===== VALIDATION ===== */
            IF ISNULL(@OfferName,'') = ''
            BEGIN
                SET @response = 'E|Offer Name is required.|0';
                RETURN;
            END

            IF ISNULL(@OfferType,'') = ''
            BEGIN
				SET @OfferType = 'PRICE_DISCOUNT';
                --SET @response = 'E|Offer Type is required.|0';
                --RETURN;
            END

            IF ISNULL(@StartDate,'') = '' OR ISNULL(@EndDate,'') = ''
            BEGIN
                SET @response = 'E|Start and End Date required.|0';
                RETURN;
            END

            IF @IsCouponRequired = 1 AND ISNULL(@CouponCode,'') = ''
            BEGIN
                SET @response = 'E|Coupon Code is required.|0';
                RETURN;
            END

            /* ===== DUPLICATE ===== */
            IF EXISTS (
                SELECT 1 FROM Offers
                WHERE OfferName = @OfferName
                AND IsDeleted = 0
                AND (@Id = 0 OR Id <> @Id)
            )
            BEGIN
                SET @response = 'E|Offer Name already exists.|0';
                RETURN;
            END

            /* ===== INSERT / UPDATE ===== */
            IF @Id > 0
            BEGIN
                UPDATE Offers
                SET OfferName = @OfferName,
                    OfferType = @OfferType,
                    DiscountType = @DiscountType,
                    DiscountValue = @DiscountValue,
                    MaxDiscountAmount = @MaxDiscountAmount,
                    MinOrderAmount = @MinOrderAmount,
                    MinQty = @MinQty,
                    IsCouponRequired = @IsCouponRequired,
                    CouponCode = @CouponCode,
                    StartDate = @StartDate,
                    EndDate = @EndDate,
					ApplyOnly_Category = @ApplyOnly_Category,
					ApplyOnly_Product = @ApplyOnly_Product,
                    IsActive = @IsActive,
                    LastModifiedBy = @OperatedBy,
                    LastModifiedDate = GETDATE()
                WHERE Id = @Id;

                --/* DELETE OLD CHILD */
                --DELETE FROM OfferApplicability WHERE OfferId = @Id;
                --DELETE FROM OfferConditions WHERE OfferId = @Id;
                --DELETE FROM OfferBenefits WHERE OfferId = @Id;
            END
            ELSE
            BEGIN
                INSERT INTO Offers (
                    OfferName, OfferType, DiscountType,
                    DiscountValue, MaxDiscountAmount,
                    MinOrderAmount, MinQty,
                    IsCouponRequired, CouponCode,
                    StartDate, EndDate,
					ApplyOnly_Category, ApplyOnly_Product,
                    IsActive, IsDeleted,
                    CreatedBy, CreatedDate
                )
                VALUES (
                    @OfferName, @OfferType, @DiscountType,
                    @DiscountValue, @MaxDiscountAmount,
                    @MinOrderAmount, @MinQty,
                    @IsCouponRequired, @CouponCode,
                    @StartDate, @EndDate,
					@ApplyOnly_Category, @ApplyOnly_Product,
                    1, 0,
                    @OperatedBy, GETDATE()
                );

                SET @Id = SCOPE_IDENTITY();
            END

            --/* ========================================
            --   INSERT APPLICABILITY
            --======================================== */
            --IF ISNULL(@ApplicabilityData,'') <> ''
            --BEGIN
            --    INSERT INTO OfferApplicability (OfferId, ProductId, VariantId, CategoryId)
            --    SELECT 
            --        @Id,
            --        NULLIF(PARSENAME(REPLACE(value,'~','.'),3),'0'),
            --        NULLIF(PARSENAME(REPLACE(value,'~','.'),2),'0'),
            --        NULLIF(PARSENAME(REPLACE(value,'~','.'),1),'0')
            --    FROM STRING_SPLIT(@ApplicabilityData, ',')
            --END

            --/* ========================================
            --   INSERT CONDITIONS
            --======================================== */
            --IF ISNULL(@ConditionData,'') <> ''
            --BEGIN
            --    INSERT INTO OfferConditions (OfferId, ConditionType, ConditionValue)
            --    SELECT 
            --        @Id,
            --        PARSENAME(REPLACE(value,'~','.'),2),
            --        PARSENAME(REPLACE(value,'~','.'),1)
            --    FROM STRING_SPLIT(@ConditionData, ',')
            --END

            --/* ========================================
            --   INSERT BENEFITS
            --======================================== */
            --IF ISNULL(@BenefitData,'') <> ''
            --BEGIN
            --    INSERT INTO OfferBenefits (OfferId, BenefitType, Value, FreeProductId, FreeQty)
            --    SELECT 
            --        @Id,
            --        PARSENAME(REPLACE(value,'~','.'),4),
            --        NULLIF(PARSENAME(REPLACE(value,'~','.'),3),'0'),
            --        NULLIF(PARSENAME(REPLACE(value,'~','.'),2),'0'),
            --        NULLIF(PARSENAME(REPLACE(value,'~','.'),1),'0')
            --    FROM STRING_SPLIT(@BenefitData, ',')
            --END
        END

        /* ========================================
           STATUS
        ======================================== */
        ELSE IF @Mode = 'STATUS'
        BEGIN
            UPDATE Offers
            SET IsActive = @IsActive,
                IsDeleted = @IsDeleted,
                LastModifiedBy = @OperatedBy,
                LastModifiedDate = GETDATE()
            WHERE Id = @Id;
        END

        /* ========================================
           DELETE
        ======================================== */
        ELSE IF @Mode = 'DELETE'
        BEGIN
            UPDATE Offers
            SET IsActive = 0,
                IsDeleted = 1,
                LastModifiedBy = @OperatedBy,
                LastModifiedDate = GETDATE()
            WHERE Id = @Id;

            SET @response = 'S|Record deleted successfully|' + CAST(@Id AS NVARCHAR);
            RETURN;
        END

        SET @response = 'S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
        RETURN;

    END TRY
    BEGIN CATCH
        SET @response = 'E|' + ERROR_MESSAGE() + '|0';
        RETURN;
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Order_Detail_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Order_Detail_Get]
@Id int = 0

AS
BEGIN
	Select oi.Id As Id ,oi.OrderId AS OrderId, oi.VariantId AS VariantId , vm.VariantAttributes , P.Id AS ProductId ,
	P.ProductName AS ProductName , PVM.SKU as VariantName ,oi.Quantity as Quantity , oi.UnitPrice AS UnitPrice ,
	oi.TotalPrice  AS TotalPrice,oi.IsActive AS IsActive from OrderItems oi
	LEFT JOIN ProductVariantMapping PVM ON PVM.Id = oi.VariantId 
	Left Join Products P ON P.Id = PVM.ProductId
	left join VW_Products vm on oi.VariantId=vm.VarientId
	where OrderId = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_OrderRewardSlab_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SP_OrderRewardSlab_Get]
(
     @Id BIGINT = NULL,
     @Search NVARCHAR(200) = NULL,
     @Start INT = 0,
     @Length INT = 25,
     @SortColumnIndex INT = 0,
     @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------
-- GET BY ID
--------------------------------------------------
IF @Id IS NOT NULL
BEGIN

    SELECT
        Id,
        MinPurchaseAmount,
        MaxPurchaseAmount,
        RewardCoins,
        IsActive,
        CreatedDate,
        LastModifiedDate
    FROM OrderRewardSlab
    WHERE Id = @Id
    AND IsDeleted = 0;

    RETURN;

END

--------------------------------------------------
-- SORT
--------------------------------------------------
DECLARE @OrderBy NVARCHAR(100);

SET @OrderBy =
CASE @SortColumnIndex
    WHEN 0 THEN 'Id'
    WHEN 1 THEN 'MinPurchaseAmount'
    WHEN 2 THEN 'MaxPurchaseAmount'
    WHEN 3 THEN 'RewardCoins'
    WHEN 4 THEN 'IsActive'
    ELSE 'Id'
END;

IF @SortDirection NOT IN ('ASC','DESC')
    SET @SortDirection='DESC';

--------------------------------------------------
-- COUNTS
--------------------------------------------------
DECLARE @Total INT;
DECLARE @Filtered INT;

SELECT @Total = COUNT(*)
FROM OrderRewardSlab
WHERE IsDeleted = 0;

SELECT @Filtered = COUNT(*)
FROM OrderRewardSlab
WHERE IsDeleted = 0
AND
(
      @Search IS NULL
   OR CAST(MinPurchaseAmount AS VARCHAR(50)) LIKE '%' + @Search + '%'
   OR CAST(MaxPurchaseAmount AS VARCHAR(50)) LIKE '%' + @Search + '%'
   OR CAST(RewardCoins AS VARCHAR(50)) LIKE '%' + @Search + '%'
);

SELECT
    @Total AS TotalRecords,
    @Filtered AS FilteredRecords;

--------------------------------------------------
-- DATA
--------------------------------------------------
DECLARE @SQL NVARCHAR(MAX);

SET @SQL='
SELECT
ROW_NUMBER() OVER
(
    ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
) + @Start AS SrNo,

Id,
MinPurchaseAmount,
MaxPurchaseAmount,
RewardCoins,
IsActive,
CreatedDate,
LastModifiedDate

FROM OrderRewardSlab
WHERE IsDeleted = 0
';

IF @Search IS NOT NULL
SET @SQL += '
AND
(
      CAST(MinPurchaseAmount AS VARCHAR(50)) LIKE ''%'' + @Search + ''%''
   OR CAST(MaxPurchaseAmount AS VARCHAR(50)) LIKE ''%'' + @Search + ''%''
   OR CAST(RewardCoins AS VARCHAR(50)) LIKE ''%'' + @Search + ''%''
)
';

SET @SQL += '
ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
OFFSET @Start ROWS
FETCH NEXT @Length ROWS ONLY';

EXEC sp_executesql
@SQL,
N'@Search NVARCHAR(200), @Start INT, @Length INT',
@Search,@Start,@Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_OrderRewardSlab_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_OrderRewardSlab_Save]
(
    @Id BIGINT = 0,

    @MinPurchaseAmount DECIMAL(18,2) = NULL,
    @MaxPurchaseAmount DECIMAL(18,2) = NULL,
    @RewardCoins DECIMAL(18,2) = NULL,
	@IsActive bit=null,
    @Mode VARCHAR(20),

    @OperatedBy BIGINT,

    @response NVARCHAR(MAX) OUT
)
AS
BEGIN

    SET NOCOUNT ON;

    SET @response='E|Something went wrong.|0';

    BEGIN TRY

        IF @Mode='SAVE'
        BEGIN

            IF EXISTS
            (
                SELECT 1
                FROM OrderRewardSlab
                WHERE IsDeleted = 0
                AND Id <> @Id
                AND
                (
                    @MinPurchaseAmount <= MaxPurchaseAmount
                    AND @MaxPurchaseAmount >= MinPurchaseAmount
                )
            )
            BEGIN
                SET @response='E|Amount slab already exists.|0';
                RETURN;
            END

            IF @Id > 0
            BEGIN

                UPDATE OrderRewardSlab
                SET
                    MinPurchaseAmount = @MinPurchaseAmount,
                    MaxPurchaseAmount = @MaxPurchaseAmount,
					IsActive=@IsActive,
                    RewardCoins = @RewardCoins,
                    LastModifiedBy = @OperatedBy,
                    LastModifiedDate = GETDATE()
                WHERE Id = @Id;

            END
            ELSE
            BEGIN

                INSERT INTO OrderRewardSlab
                (
                    MinPurchaseAmount,
                    MaxPurchaseAmount,
                    RewardCoins,
                    IsActive,
                    IsDeleted,
                    CreatedBy,
                    CreatedDate
                )
                VALUES
                (
                    @MinPurchaseAmount,
                    @MaxPurchaseAmount,
                    @RewardCoins,
                    1,
                    0,
                    @OperatedBy,
                    GETDATE()
                );

                SET @Id = SCOPE_IDENTITY();

            END

            SET @response='S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
            RETURN;

        END

        ELSE IF @Mode='DELETE'
        BEGIN

            UPDATE OrderRewardSlab
            SET
                IsActive = 0,
                IsDeleted = 1,
                LastModifiedBy = @OperatedBy,
                LastModifiedDate = GETDATE()
            WHERE Id = @Id;

            SET @response='S|Record deleted successfully|' + CAST(@Id AS NVARCHAR);
            RETURN;

        END

    END TRY
    BEGIN CATCH

        SET @response='E|' + ERROR_MESSAGE() + '|0';

    END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Orders_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Orders_Get]
(
 @Id INT = NULL,
 @Search NVARCHAR(200) = NULL,
 @OrderStatus NVARCHAR(10) = 'ALL',
 @Start INT = 0,
 @Length INT = 25,
 @SortColumnIndex INT = 0,
 @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN

SET NOCOUNT ON;

---------------------------------------
-- SINGLE RECORD
---------------------------------------
IF @Id IS NOT NULL
BEGIN

 --SELECT 1 AS TotalRecords, 1 AS FilteredRecords;
 SELECT
     1 AS SrNo,
     O.*,

     LM.LOV_Desc AS OrderStatusName,

     (C.FirstName + ' ' + C.LastName) AS CustomerName,
     C.Email AS CustomerEmail,

     (SELECT Count(*)
      FROM OrderItems
      WHERE OrderId = O.Id
      AND IsActive = 1
      AND IsDeleted = 0) AS No_Of_Items

FROM Orders O

LEFT JOIN LOV_MASTER LM
    ON LM.LOV_Column = 'OrderStatus'
   AND LM.LOV_Code = O.OrderStatus
   AND LM.IsDeleted = 0

LEFT JOIN Customer C
    ON O.UserId = C.Id
   AND C.IsActive = 1

WHERE O.Id = @Id
AND O.IsDeleted = 0;
 --SELECT
 --    1 AS SrNo,
 --    O.*,
 --    (SELECT Count(*)  FROM OrderItems where OrderId = O.Id and IsActive = 1 and IsDeleted = 0)No_Of_Items
 --FROM Orders O
 --WHERE O.Id = @Id
 --AND O.IsDeleted = 0;

 RETURN;

END

---------------------------------------
-- SORT COLUMN MAP
---------------------------------------

DECLARE @OrderBy NVARCHAR(100);

SET @OrderBy =
CASE @SortColumnIndex
 WHEN 0 THEN 'O.OrderDate'
 WHEN 1 THEN 'O.OrderNumber'
 WHEN 2 THEN 'O.OrderDate'
 --WHEN 4 THEN 'O.IsActive'
 ELSE 'O.OrderDate'
END

IF @SortDirection NOT IN ('ASC','DESC')
 SET @SortDirection = 'DESC';

---------------------------------------
-- COUNTS
---------------------------------------

DECLARE @Total INT;
DECLARE @Filtered INT;

SELECT @Total = COUNT(*)
FROM Orders O
WHERE IsDeleted = 0;

SELECT @Filtered = COUNT(*)
FROM Orders O
WHERE O.IsDeleted = 0
AND ( @Search IS NULL OR O.OrderNumber LIKE '%' + @Search + '%' )
AND ( ISNULL(@OrderStatus, '') = '' OR ISNULL(@OrderStatus, '') = 'ALL' OR O.OrderStatus = @OrderStatus);

--SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

--SELECT 
--    @Total AS TotalRecords, @Filtered AS FilteredRecords,
--    COUNT(*) AS AllCount,
--    SUM(CASE WHEN OrderStatus = 'PEND' THEN 1 ELSE 0 END) AS Pending,
--    SUM(CASE WHEN OrderStatus = 'CONF' THEN 1 ELSE 0 END) AS Confirmed,
--    SUM(CASE WHEN OrderStatus = 'PROC' THEN 1 ELSE 0 END) AS Processing,
--    SUM(CASE WHEN OrderStatus = 'COMP' THEN 1 ELSE 0 END) AS Completed,
--    SUM(CASE WHEN OrderStatus = 'CANC' THEN 1 ELSE 0 END) AS Cancelled,
--    SUM(CASE WHEN OrderStatus = 'RET' THEN 1 ELSE 0 END) AS Returned
--FROM Orders O
--WHERE O.IsDeleted = 0;

SELECT
    @Total AS TotalRecords,
    @Filtered AS FilteredRecords,

    COUNT(*) AS AllCount,

    SUM(CASE WHEN O.OrderStatus = '1' THEN 1 ELSE 0 END) AS Pending,
    SUM(CASE WHEN O.OrderStatus = '2' THEN 1 ELSE 0 END) AS Confirmed,
    SUM(CASE WHEN O.OrderStatus = '3' THEN 1 ELSE 0 END) AS Processing,
    SUM(CASE WHEN O.OrderStatus = '4' THEN 1 ELSE 0 END) AS Completed,
    SUM(CASE WHEN O.OrderStatus = '5' THEN 1 ELSE 0 END) AS Cancelled,
    SUM(CASE WHEN O.OrderStatus = '6' THEN 1 ELSE 0 END) AS Returned

FROM Orders O
WHERE O.IsDeleted = 0;


---------------------------------------
-- DATA
---------------------------------------

IF (@Length < 0)
BEGIN
    SET @Length = @Total;
END


DECLARE @SQL NVARCHAR(MAX);

--SET @SQL = '
--SELECT
-- ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
-- O.*,
--(SELECT Count(*)  FROM OrderItems where OrderId = O.Id and IsActive = 1 and IsDeleted = 0)No_Of_Items
--FROM Orders O
--WHERE O.IsDeleted = 0
--';
SET @SQL = '
SELECT
 ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
 O.*,
 LM.LOV_Desc AS OrderStatusName,
 (c.FirstName +'' ''+ c.LastName) as CustomerName,
 c.Email as CustomerEmail,

 (SELECT Count(*)
  FROM OrderItems
  WHERE OrderId = O.Id
  AND IsActive = 1
  AND IsDeleted = 0) AS No_Of_Items

FROM Orders O

LEFT JOIN LOV_MASTER LM
    ON LM.LOV_Column = ''OrderStatus''
   AND LM.LOV_Code = O.OrderStatus
   AND LM.IsDeleted = 0

   Left join Customer C on o.UserId=c.Id and o.IsActive=1 and c.IsActive=1 




WHERE O.IsDeleted = 0
';

IF @Search IS NOT NULL
SET @SQL += '
AND (
O.OrderNumber LIKE ''%'' + @Search + ''%''
 
)
';

IF (@OrderStatus IS NOT NULL AND @OrderStatus <> 'ALL')
BEGIN
    SET @SQL += '
    AND O.OrderStatus = @OrderStatus
    ';
END

SET @SQL += '
ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY
';

EXEC sp_executesql
@SQL,
N'@Search NVARCHAR(200), @OrderStatus NVARCHAR(10), @Start INT, @Length INT',
@Search,@OrderStatus,@Start,@Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Orders_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Orders_Save]
(
    @Id INT = 0,
    @OrderNumber NVARCHAR(250) = null,
	@OrderDate datetime = null,
    @TotalAmount decimal(18,2) = null ,
	@DiscountAmount decimal(18,2) = null,
	@FinalAmount decimal(18,2) = null,
	@OrderItems [dbo].[Type_OrderItems] READONLY ,
	@IsActive BIT = 1,
	@NewStatus NVARCHAR(10) = NULL,
    @Mode NVARCHAR(10),
	@Reason NVARCHAR(500) = NULL,
    @OperatedBy INT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN

SET NOCOUNT ON;

-- PEND: Pending, CONF: Confirmed, PROC: Processing, COMP: Completed, CANC: Cancelled, RET: Returned

SET @response = 'E|Something went wrong|0';

BEGIN TRY

	--------------------------------------------------
	-- SAVE PRODUCT
	--------------------------------------------------

	IF @Mode = 'SAVE'
	BEGIN

	--------------------------------------------------
	-- UPDATE PRODUCT
	--------------------------------------------------

	IF @Id > 0
	BEGIN

	UPDATE Orders
	SET
	OrderNumber = @OrderNumber,
	UserId = @OperatedBy,
	OrderDate = @OrderDate,
	TotalAmount = @TotalAmount,
	DiscountAmount = @DiscountAmount,
	FinalAmount = @FinalAmount,
	IsActive = @IsActive,
	LastModifiedBy = @OperatedBy,
	LastModifiedDate = GETDATE()
	WHERE Id = @Id;

	Delete from OrderItems WHERE OrderId = @Id


	INSERT INTO OrderItems
	(OrderId,VariantId,Quantity,UnitPrice,TotalPrice, CreatedBy , CreatedDate  , IsActive , IsDeleted, LastModifiedBy , LastModifiedDate)
	 Select @Id , VariantId,Quantity,UnitPrice,TotalPrice, @OperatedBy , GETDATE(), 1,0, @OperatedBy , GETDATE() from @OrderItems  
	 SET @response = 'S|Order Updated successfully|' + CAST(@Id AS NVARCHAR);

	END
	ELSE
	BEGIN

	--------------------------------------------------
	-- INSERT ORDER
	--------------------------------------------------

	INSERT INTO Orders
	(OrderNumber, UserId,OrderDate,TotalAmount,DiscountAmount,FinalAmount,OrderStatus ,CreatedBy , CreatedDate  , IsActive , IsDeleted, LastModifiedBy , LastModifiedDate)
	VALUES
	(@OrderNumber,@OperatedBy,@OrderDate,@TotalAmount,@DiscountAmount,@FinalAmount,'PEND', @OperatedBy ,GETDATE(),@IsActive, 0, @OperatedBy, GETDATE());

	SET @Id = SCOPE_IDENTITY();


	INSERT INTO OrderItems
	(OrderId,VariantId,Quantity,UnitPrice,TotalPrice, CreatedBy , CreatedDate  , IsActive , IsDeleted, LastModifiedBy , LastModifiedDate)
	 Select @Id , VariantId,Quantity,UnitPrice,TotalPrice, @OperatedBy , GETDATE(), 1,0, @OperatedBy , GETDATE() from @OrderItems  

	 SET @response = 'S|Order saved successfully|' + CAST(@Id AS NVARCHAR);

	END

	RETURN;

	END
	----------------------------------------------------
	-- DELETE (SAFE SOFT DELETE)
	----------------------------------------------------
	IF @Mode = 'DELETE'
	BEGIN

	   UPDATE Orders
	   SET IsDeleted = 1,
		   LastModifiedBy = @OperatedBy,
		   LastModifiedDate = GETDATE()
	   WHERE Id = @Id;

		UPDATE OrderItems
	   SET IsDeleted = 1,
		   LastModifiedBy = @OperatedBy,
		   LastModifiedDate = GETDATE()
	   WHERE OrderId = @Id;
	   SET @response = 'S|Order deleted successfully|' + CAST(@Id AS NVARCHAR);
	   RETURN;

	  END

	IF (@Mode = 'STATUS')
	BEGIN
		BEGIN TRY
			-- ✅ Validate OrderNumber
			IF (@OrderNumber IS NULL OR LTRIM(RTRIM(@OrderNumber)) = '')
			BEGIN
				SET @response = 'E|Order numbers are required|0';
				RETURN;
			END

			-- ✅ Validate NewStatus
			IF (@NewStatus IS NULL OR LTRIM(RTRIM(@NewStatus)) = '')
			BEGIN
				SET @response = 'E|Status is required|0';
				RETURN;
			END

			-- ✅ Validate allowed status values
			--IF (@NewStatus NOT IN ('PEND','CONF','PROC','COMP','CANC','RET'))
			--BEGIN
			--	SET @response = 'E|Invalid status value|0';
			--	RETURN;
			--END
						IF (@NewStatus NOT IN ('1','2','3','4','5','6'))
			BEGIN
				SET @response = 'E|Invalid status value|0';
				RETURN;
			END

			-- ✅ Convert to table
			DECLARE @Orders TABLE (OrderId INT);

			INSERT INTO @Orders (OrderId)
			SELECT TRY_CAST(value AS INT)
			FROM STRING_SPLIT(@OrderNumber, ',')
			WHERE TRY_CAST(value AS INT) IS NOT NULL;

			-- ✅ Check if no valid IDs
			IF NOT EXISTS (SELECT 1 FROM @Orders)
			BEGIN
				SET @response = 'E|Invalid order IDs|0';
				RETURN;
			END

			-- ✅ Check if orders exist in DB
			IF NOT EXISTS (
				SELECT 1
				FROM Orders O
				INNER JOIN @Orders T ON O.Id = T.OrderId
			)
			BEGIN
				SET @response = 'E|Orders not found|0';
				RETURN;
			END

			-- ✅ Update only allowed transitions
			UPDATE O
			SET 
				O.OrderStatus = @NewStatus,
				O.LastModifiedBy = @OperatedBy,
				O.LastModifiedDate = GETDATE()
			FROM Orders O
			INNER JOIN @Orders T ON O.Id = T.OrderId
			WHERE 
			(
							--(O.OrderStatus = 'PEND' AND @NewStatus IN ('CONF','CANC')) OR
				--(O.OrderStatus = 'CONF' AND @NewStatus IN ('PROC','CANC')) OR
				--(O.OrderStatus = 'PROC' AND @NewStatus IN ('COMP','CANC'))
				(O.OrderStatus = '1' AND @NewStatus IN ('2','5')) OR
				(O.OrderStatus = '2' AND @NewStatus IN ('3','5')) OR
				(O.OrderStatus = '3' AND @NewStatus IN ('4','5'))
			);
			
			SET @response = 'S|Status updated successfully|1';

		END TRY
		BEGIN CATCH
			SET @response = 'E|' + ERROR_MESSAGE() + '|0';
		END CATCH

		RETURN;
	END

IF (@Mode = 'STATUS2')
BEGIN
    BEGIN TRY

        DECLARE @UserId INT;
     
        DECLARE @StatusName VARCHAR(100);
		DECLARE @RemainingBalance INT;
		DECLARE @oldStatus varchar(100);
		    DECLARE @UsedCoins DECIMAL(18,2);
    DECLARE @IsCoinRefunded BIT;

		Select @OldStatus=OrderStatus from Orders WHERE Id = @Id;
		
       
	   SELECT
            @UserId = UserId,
            @OrderNumber = OrderNumber
        FROM Orders
        WHERE Id = @Id;

		---- New add tempror
		-- DEBUG
SELECT
    @OldStatus AS OldStatus,
    @NewStatus AS NewStatus;


        IF (@NewStatus NOT IN ('1','2','3','4','5','6','7','8','9','10','11','12','13'))
        BEGIN
            SET @response = 'E|Invalid status value|0';
            RETURN;
        END

		        --------------------------------------------------
        -- STATUS TRANSITION VALIDATION
        --------------------------------------------------
        IF NOT
        (
            (@OldStatus = '1' AND @NewStatus IN ('2','12')) OR
            (@OldStatus = '2' AND @NewStatus IN ('3','12')) OR
            (@OldStatus = '3' AND @NewStatus IN ('4','12')) OR
            (@OldStatus = '4' AND @NewStatus IN ('5','12')) OR
            (@OldStatus = '5' AND @NewStatus IN ('6','12')) OR
            (@OldStatus = '6' AND @NewStatus IN ('7')) OR
            (@OldStatus = '7' AND @NewStatus IN ('9')) OR
            (@OldStatus = '9' AND @NewStatus IN ('10')) OR
            (@OldStatus = '10' AND @NewStatus IN ('11')) OR
			(@OldStatus = '12' AND @NewStatus IN ('8','13')) OR
            (@OldStatus = '13' AND @NewStatus IN ('12'))
        )
        BEGIN
            SET @response = 'E|Invalid status transition|0';
            RETURN;
        END

        SELECT @StatusName = LOV_Desc
        FROM LOV_MASTER
        WHERE LOV_Column = 'OrderStatus'
          AND LOV_Code = @NewStatus
          AND IsDeleted = 0;
		  -- For insert 
		  --------------------------------------------------
-- ORDER DELIVERED REWARD COIN
--------------------------------------------------
IF @NewStatus = '7'
BEGIN

    DECLARE @FinalOrderAmount DECIMAL(18,2);
    DECLARE @EarnedCoins DECIMAL(18,2);

    SELECT
        @FinalOrderAmount = FinalAmount
    FROM Orders
    WHERE Id = @Id;

    SELECT TOP 1
        @EarnedCoins = RewardCoins
    FROM OrderRewardSlab
    WHERE IsActive = 1
      AND IsDeleted = 0
      AND @FinalOrderAmount BETWEEN MinPurchaseAmount AND MaxPurchaseAmount
    ORDER BY MinPurchaseAmount DESC;

    IF ISNULL(@EarnedCoins,0) > 0
    BEGIN

        --------------------------------------------------
        -- Prevent Duplicate Reward
        --------------------------------------------------
        IF NOT EXISTS
        (
            SELECT 1
            FROM Reward
            WHERE CustomerId = @UserId
              AND RewardType = 'ORDER_EARNED'
              AND Remarks = 'Reward earned for order #' + @OrderNumber
        )
        BEGIN

            UPDATE Customer
            SET RewardCoins = ISNULL(RewardCoins,0) + @EarnedCoins
            WHERE Id = @UserId;


			SELECT @RemainingBalance = RewardCoins
FROM Customer
WHERE Id = @UserId;

            INSERT INTO Reward
            (
                CustomerId,
                RewardType,
                Coins,
				 RemainingBalance,
                Remarks,
                IsActive,
                IsDeleted,
                CreatedBy,
                CreatedDate
            )
            VALUES
            (
                @UserId,
                'ORDER_EARNED',
                @EarnedCoins,
				   @RemainingBalance,
                'Reward earned for order #' + @OrderNumber,
                1,
                0,
                @OperatedBy,
                GETDATE()
            );

			INSERT INTO NotificationMaster
(
    CustomerId,
    Title,
    Message,
    IsRead,
    IsDeleted,
    CreatedBy,
    CreatedDate
)
VALUES
(
    @UserId,
    'Reward Coins Added',
    'Congratulations! You have earned ' + CAST(@EarnedCoins AS VARCHAR(20)) +
    ' reward coins for Order #' + ISNULL(@OrderNumber,'') + '.',
    0,
    0,
    @OperatedBy,
    GETDATE()
);

        END

    END

END
IF @NewStatus IN ('8','9')
 BEGIN
    IF @NewStatus = '8'
    BEGIN
    UPDATE Orders
    SET
        CancelledDate = GETDATE(),
        CancelReason =
            CASE
                WHEN ISNULL(@Reason,'') <> ''
                THEN @Reason
                ELSE CancelRequestReason
            END
    WHERE Id = @Id;
   END
    IF @NewStatus = '9'
    BEGIN
    UPDATE Orders
    SET
        ReturnedDate = GETDATE(),
        ReturnReason = @Reason
    WHERE Id = @Id;
    END

    --------------------------------------------------
    -- REFUND USED COINS
    --------------------------------------------------
    SELECT
        @UsedCoins = ISNULL(UsedCoins,0),
        @IsCoinRefunded = ISNULL(IsCoinRefunded,0)
    FROM Orders
    WHERE Id = @Id;

    IF @UsedCoins > 0
       AND @IsCoinRefunded = 0
    BEGIN

        UPDATE Customer
        SET RewardCoins = ISNULL(RewardCoins,0) + @UsedCoins
        WHERE Id = @UserId;

		SELECT @RemainingBalance = RewardCoins FROM Customer WHERE Id = @UserId;

        UPDATE Orders
        SET IsCoinRefunded = 1
        WHERE Id = @Id;

        UPDATE RewardUsageHistory
        SET IsActive = 0
        WHERE OrderId = @Id;

        INSERT INTO Reward
        (
            CustomerId,
            RewardType,
            Coins,
			RemainingBalance,
            Remarks,
            IsActive,
            IsDeleted,
            CreatedBy,
            CreatedDate
        )
        VALUES
        (
            @UserId,
            'ORDER_RETURN',
            @UsedCoins,
			@RemainingBalance,
            CASE
                WHEN @NewStatus = '8'
                THEN 'Coins refunded for cancelled order #' + @OrderNumber
                ELSE 'Coins refunded for returned order #' + @OrderNumber
            END,
            1,
            0,
            @OperatedBy,
            GETDATE()
        );

        INSERT INTO NotificationMaster
        (
            CustomerId,
            Title,
            Message,
            IsRead,
            IsDeleted,
            CreatedBy,
            CreatedDate
        )
        VALUES
        (
            @UserId,
            'Reward Coins Refunded',
            CAST(@UsedCoins AS VARCHAR(20)) +
            ' reward coins have been refunded for Order #' +
            ISNULL(@OrderNumber,''),
            0,
            0,
            @OperatedBy,
            GETDATE()
        );

    END

    --------------------------------------------------
    -- FOR RETURNED ORDER REMOVE EARNED COINS
    --------------------------------------------------
    IF @NewStatus = '9'
    BEGIN

        DECLARE @EarnedRewardCoins DECIMAL(18,2);

        SELECT TOP 1
            @EarnedRewardCoins = Coins
        FROM Reward
        WHERE CustomerId = @UserId
          AND RewardType = 'ORDER_EARNED'
          AND Remarks = 'Reward earned for order #' + @OrderNumber;

        IF ISNULL(@EarnedRewardCoins,0) > 0
        BEGIN

            UPDATE Customer
            SET RewardCoins =
                CASE
                    WHEN RewardCoins >= @EarnedRewardCoins
                    THEN RewardCoins - @EarnedRewardCoins
                    ELSE 0
                END
            WHERE Id = @UserId;

			SELECT @RemainingBalance = RewardCoins FROM Customer WHERE Id = @UserId;

            INSERT INTO Reward
            (
                CustomerId,
                RewardType,
                Coins,
				    RemainingBalance,
                Remarks,
                IsActive,
                IsDeleted,
                CreatedBy,
                CreatedDate
            )
            VALUES
            (
                @UserId,
                'ORDER_EARN_REVERSE',
                -@EarnedRewardCoins,
				 @RemainingBalance,
                'Reward reversed for returned order #' + @OrderNumber,
                1,
                0,
                @OperatedBy,
                GETDATE()
            );

            INSERT INTO NotificationMaster
            (
                CustomerId,
                Title,
                Message,
                IsRead,
                IsDeleted,
                CreatedBy,
                CreatedDate
            )
            VALUES
            (
                @UserId,
                'Reward Coins Reversed',
                CAST(@EarnedRewardCoins AS VARCHAR(20)) +
                ' reward coins have been reversed because Order #' +
                ISNULL(@OrderNumber,'') +
                ' was returned.',
                0,
                0,
                @OperatedBy,
                GETDATE()
            );

        END

    END

END



-- End of (8,9)

------- New For Relese product
--------------------------------------------------
-- RELEASE RESERVED STOCK ONLY FIRST TIME
--------------------------------------------------

IF @OldStatus NOT IN ('8','9')
BEGIN

UPDATE PS
SET PS.AvailableStock = PS.AvailableStock + OI.Quantity
FROM ProductStock PS
INNER JOIN OrderItems OI
    ON PS.ProductId = OI.ProductId
   AND PS.VariantId = OI.VariantId
WHERE OI.OrderId = @Id;

END
-------END New For Relese product
IF @NewStatus = '12'
BEGIN
    UPDATE Orders
    SET
        CancelRequestDate = GETDATE(),
        CancelRequestReason = @Reason
    WHERE Id = @Id;
END

IF @NewStatus = '13'
BEGIN
    UPDATE Orders
    SET
        CancelRejectedDate = GETDATE(),
        CancelRejectedReason = @Reason
    WHERE Id = @Id;
END
-- New for coin end
        UPDATE Orders
        SET
            OrderStatus = @NewStatus,
            LastModifiedBy = @OperatedBy,
            LastModifiedDate = GETDATE()
        WHERE Id = @Id;
		DECLARE @StatusRemark NVARCHAR(500);

SET @StatusRemark =
CASE @NewStatus
    WHEN '1' THEN 'Order Placed Successfully'
    WHEN '2' THEN 'Order Confirmed'
    WHEN '3' THEN 'Order Processing Started'
    WHEN '4' THEN 'Order Packed'
    WHEN '5' THEN 'Order Shipped'
    WHEN '6' THEN 'Order Out For Delivery'
    WHEN '7' THEN 'Order Delivered Successfully'
    WHEN '8' THEN 'Order Cancelled. Reason: ' + ISNULL(@Reason,'Not Provided')
    WHEN '9' THEN 'Order Returned. Reason: ' + ISNULL(@Reason,'Not Provided')
    WHEN '10' THEN 'Refund Initiated'
    WHEN '11' THEN 'Refund Completed Successfully'
	WHEN '12' THEN 'Cancellation Requested. Reason: ' + ISNULL(@Reason,'Not Provided')
    WHEN '13' THEN 'Cancellation Request Rejected. Reason: ' + ISNULL(@Reason,'Not Provided')
    ELSE 'Order Status Updated'
END;
		
				INSERT INTO OrderDeliveryStatus
       (OrderId, NewStatus,Remarks, StatusDate,IsActive,IsDeleted,CreatedBy,CreatedDate,OldStatus)
     VALUES
           (@Id, @NewStatus,@StatusRemark,GETDATE(),1,0,@OperatedBy,GETDATE(),@OldStatus);

	

        INSERT INTO NotificationMaster
        (
            CustomerId,
            Title,
            [Message],
            IsRead,
            IsDeleted,
            CreatedBy,
            CreatedDate
        )
        VALUES
        (
            @UserId,
            'Order Status Updated',
            'Your order ' + ISNULL(@OrderNumber,'') +
            ' status has been updated to ' + ISNULL(@StatusName,'') + '.',
            0,
            0,
            @OperatedBy,
            GETDATE()
        );




        SET @response = 'S|Status updated successfully|' + CAST(@UserId AS NVARCHAR);

    END TRY
    BEGIN CATCH
        SET @response = 'E|' + ERROR_MESSAGE() + '|0';
    END CATCH

    RETURN;
END
END TRY
BEGIN CATCH

SET @response = 'E|' + ERROR_MESSAGE() + '|0';

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_PaymentRefund_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_PaymentRefund_Save]
(
    @PaymentTransactionId INT,
    @RazorpayRefundId NVARCHAR(100),
    @RefundAmount DECIMAL(18,2),
    @RefundStatus NVARCHAR(50),
    @RefundReason NVARCHAR(500),
    @RefundResponseLog NVARCHAR(MAX)=NULL,
    @RefundDate DATETIME,
    @OperatedBy BIGINT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN
    SET NOCOUNT ON;

    SET @response='E|Something went wrong|0';

    BEGIN TRY

        IF NOT EXISTS
        (
            SELECT 1
            FROM PaymentTransaction
            WHERE Id=@PaymentTransactionId
            AND IsDeleted=0
        )
        BEGIN
            SET @response='E|Invalid Payment Transaction|0';
            RETURN;
        END

        INSERT INTO PaymentRefund
        (
            PaymentTransactionId,
            RazorpayRefundId,
            RefundAmount,
            RefundStatus,
            RefundReason,
            RefundResponseLog,
            RefundDate,
            IsActive,
            IsDeleted,
            CreatedBy,
            CreatedDate,
            LastModifiedBy,
            LastModifiedDate
        )
        VALUES
        (
            @PaymentTransactionId,
            @RazorpayRefundId,
            @RefundAmount,
            @RefundStatus,
            @RefundReason,
            @RefundResponseLog,
            @RefundDate,
            1,
            0,
            @OperatedBy,
            GETDATE(),
            @OperatedBy,
            GETDATE()
        );

        DECLARE @Id INT=SCOPE_IDENTITY();

        SET @response='S|Refund Saved Successfully|'+CAST(@Id AS NVARCHAR);

    END TRY
    BEGIN CATCH

        SET @response='E|'+ERROR_MESSAGE()+'|0';

    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_PaymentTransaction_GetByOrderId]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_PaymentTransaction_GetByOrderId]
(
      @OrderId INT
)
AS
BEGIN

SET NOCOUNT ON;

SELECT TOP 1
       Id,
       OrderId,
       PaymentGateway,
       RazorpayOrderId,
       RazorpayPaymentId,
       RazorpaySignature,
       Amount,
       Currency,
       PaymentStatus
FROM PaymentTransaction
WHERE OrderId=@OrderId
AND IsDeleted=0
ORDER BY Id DESC

END
GO
/****** Object:  StoredProcedure [dbo].[SP_PaymentTransaction_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_PaymentTransaction_Save]
(
    @OrderId INT,
    @PaymentGateway NVARCHAR(50),
    @RazorpayOrderId NVARCHAR(100),
    @RazorpayPaymentId NVARCHAR(100),
    @RazorpaySignature NVARCHAR(255),
    @Amount DECIMAL(18,2),
    @Currency NVARCHAR(10),
    @PaymentStatus NVARCHAR(50),
    @PaymentResponseLog NVARCHAR(MAX) = NULL,
    @OperatedBy BIGINT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN
    SET NOCOUNT ON;

    SET @response = 'E|Something went wrong|0';

    BEGIN TRY

        IF NOT EXISTS
        (
            SELECT 1
            FROM Orders
            WHERE Id = @OrderId
              AND IsDeleted = 0
        )
        BEGIN
            SET @response = 'E|Invalid Order|0';
            RETURN;
        END

        INSERT INTO PaymentTransaction
        (
            OrderId,
            PaymentGateway,
            RazorpayOrderId,
            RazorpayPaymentId,
            RazorpaySignature,
            Amount,
            Currency,
            PaymentStatus,
            PaymentResponseLog,
            IsActive,
            IsDeleted,
            CreatedBy,
            CreatedDate,
            LastModifiedBy,
            LastModifiedDate
        )
        VALUES
        (
            @OrderId,
            @PaymentGateway,
            @RazorpayOrderId,
            @RazorpayPaymentId,
            @RazorpaySignature,
            @Amount,
            @Currency,
            @PaymentStatus,
            @PaymentResponseLog,
            1,
            0,
            @OperatedBy,
            GETDATE(),
            @OperatedBy,
            GETDATE()
        );

        DECLARE @PaymentTransactionId INT = SCOPE_IDENTITY();

        SET @response = 'S|Payment transaction saved successfully|' + CAST(@PaymentTransactionId AS NVARCHAR);

    END TRY
    BEGIN CATCH

        SET @response = 'E|' + ERROR_MESSAGE() + '|0';

    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_PaymentTransaction_UpdateStatus]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_PaymentTransaction_UpdateStatus]
(
      @Id INT,
      @PaymentStatus NVARCHAR(50),
      @OperatedBy BIGINT,
      @response NVARCHAR(MAX) OUT
)
AS
BEGIN

SET NOCOUNT ON;

SET @response='E|Something went wrong|0';

BEGIN TRY

UPDATE PaymentTransaction
SET

PaymentStatus=@PaymentStatus,

LastModifiedBy=@OperatedBy,

LastModifiedDate=GETDATE()

WHERE Id=@Id

SET @response='S|Updated Successfully|'+CAST(@Id AS NVARCHAR)

END TRY

BEGIN CATCH

SET @response='E|'+ERROR_MESSAGE()+'|0'

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Product_Combo]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_Product_Combo]

AS
BEGIN
	Select Id , ProductName from Products where IsDeleted = 0 and IsActive = 1
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Product_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Product_Get]
(
 @Id INT = NULL,
 @CategoryId INT = NULL,
 @CustomerId INT = 0, 
 --chnage for wishlist
 @Search NVARCHAR(200) = NULL,
 @Start INT = 0,
 @Length INT = 25,
 @SortColumnIndex INT = 0,
 @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN

SET NOCOUNT ON;

DECLARE @Total INT;
DECLARE @Filtered INT;
---------------------------------------
-- SINGLE RECORD
---------------------------------------
IF @Id > 0 OR ( @Id != -2 AND @CategoryId IS NOT NULL)
BEGIN

 SELECT
    1 AS SrNo,
    X.*,
    C.CategoryName,
    ISNULL(PV.Price, 0) AS Price,
    PV.SKU
FROM Products X
LEFT JOIN Category C ON C.Id = X.CategoryId
OUTER APPLY (
    SELECT TOP 1 Price, SKU
    FROM ProductVariantMapping PV
    WHERE PV.ProductId = X.Id AND PV.IsDeleted = 0
) PV
WHERE X.Id = @Id;
		
	SELECT * FROM ProductImages WHERE ProductId = @Id;

	SELECT 
		PVM.Id,
		PVM.ProductId,
		PVM.SKU,
		PVM.Price,
		
		ISNULL(PS.AvailableStock,0) AS AvailableStock,
		ISNULL(PS.ReservedStock,0) AS ReservedStock,
		ISNULL(PS.AvailableStock,0) + ISNULL(PS.ReservedStock,0) AS TotalStock,

		STRING_AGG(A.Name + ' : ' + AV.Value, ', ') AS VariantAttributes
	FROM ProductVariantMapping PVM	
	LEFT JOIN ProductStock PS ON PS.VariantId = PVM.Id
	INNER JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id
	INNER JOIN Attribute A ON A.Id = PVD.AttributeId
	INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
	WHERE PVM.ProductId = @Id
	GROUP BY PVM.Id, PVM.ProductId, PVM.SKU, PVM.Price, PS.AvailableStock, PS.ReservedStock;
	
	SELECT 
		PVD.Id,
		PVD.VariantId,
		PVD.AttributeId,
		A.Name AttributeName,
		PVD.AttributeValueId,
		AV.Value AS AttributeValue
	FROM ProductVariantDetails PVD
	INNER JOIN Attribute A ON A.Id = PVD.AttributeId
	INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
	WHERE PVD.VariantId IN 
	(
		SELECT Id 
		FROM ProductVariantMapping 
		WHERE ProductId = @Id 
	);

 RETURN;

END
Else If  @Id = -1
begin

	SELECT
	 X.*,
	 C.CategoryName,
		 PV.Price,
		 PV.SKU
	 FROM Products X
	 LEFT JOIN Category C ON C.Id = X.CategoryId
	 OUTER APPLY (
		SELECT TOP 1 Price, SKU
		FROM ProductVariantMapping PV
		WHERE PV.ProductId = X.Id AND PV.IsDeleted = 0
	) PV
	WHERE X.IsDeleted = 0
end
--Else If  @Id = -22
--begin


--SELECT PVM.*, X.ProductName, C.CategoryName
--INTO #ProductsData
--FROM Products X
--LEFT JOIN Category C ON C.Id = X.CategoryId
--INNER JOIN ProductVariantMapping PVM ON PVM.ProductId = X.Id
--INNER JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id
--INNER JOIN Attribute A ON A.Id = PVD.AttributeId
--INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
--LEFT JOIN ProductImages PI ON PI.ProductId = X.Id AND PI.VariantId = PVM.Id 
--LEFT JOIN (
--    SELECT VariantId,
--           SUM(ISNULL(AvailableStock,0)) - SUM(ISNULL(ReservedStock,0)) AS TotalAvailableStock
--    FROM ProductStock
--    GROUP BY VariantId
--) PS ON PS.VariantId = PVM.Id
--WHERE X.IsActive = 1 
--AND PVM.IsActive = 1 
--AND C.IsActive = 1 
--AND X.IsDeleted = 0
--AND X.CategoryId = (CASE WHEN ISNULL(@CategoryId, 0) <= 0 THEN X.CategoryId ELSE @CategoryId END);



------ TOTAL COUNT (NO SEARCH)
----SELECT @Total = COUNT(DISTINCT PVM.Id)
----FROM Products X
----LEFT JOIN Category C ON C.Id = X.CategoryId
----INNER JOIN ProductVariantMapping PVM ON PVM.ProductId = X.Id
----INNER JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id
----INNER JOIN Attribute A ON A.Id = PVD.AttributeId
----INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
----LEFT JOIN ProductImages PI ON PI.ProductId = X.Id AND PI.VariantId = PVM.Id 
----LEFT JOIN (
----    SELECT VariantId,
----           SUM(ISNULL(AvailableStock,0)) - SUM(ISNULL(ReservedStock,0)) AS TotalAvailableStock
----    FROM ProductStock
----    GROUP BY VariantId
----) PS ON PS.VariantId = PVM.Id
----WHERE X.IsActive = 1 
----AND PVM.IsActive = 1 
----AND C.IsActive = 1 
----AND X.IsDeleted = 0
----AND X.CategoryId = (CASE WHEN ISNULL(@CategoryId, 0) <= 0 THEN X.CategoryId ELSE @CategoryId END);


------ FILTERED COUNT (WITH SEARCH)
----SELECT @Filtered = COUNT(DISTINCT PVM.Id)
----FROM Products X
----LEFT JOIN Category C ON C.Id = X.CategoryId
----INNER JOIN ProductVariantMapping PVM ON PVM.ProductId = X.Id
----INNER JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id
----INNER JOIN Attribute A ON A.Id = PVD.AttributeId
----INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
----LEFT JOIN ProductImages PI ON PI.ProductId = X.Id AND PI.VariantId = PVM.Id
----LEFT JOIN (
----    SELECT VariantId,
----           SUM(ISNULL(AvailableStock,0)) - SUM(ISNULL(ReservedStock,0)) AS TotalAvailableStock
----    FROM ProductStock
----    GROUP BY VariantId
----) PS ON PS.VariantId = PVM.Id
----WHERE X.IsActive = 1 
----AND PVM.IsActive = 1 
----AND C.IsActive = 1 
----AND X.IsDeleted = 0
----AND X.CategoryId = (CASE WHEN ISNULL(@CategoryId, 0) <= 0 THEN X.CategoryId ELSE @CategoryId END)

----AND (
----    @Search IS NULL
----    OR X.ProductName LIKE '%' + @Search + '%'
----    OR C.CategoryName LIKE '%' + @Search + '%'
----);

--SELECT @Total = COUNT(*) FROM #ProductsData;

--SELECT @Filtered = COUNT(*) FROM #ProductsData X
--WHERE (
--    @Search IS NULL
--    OR X.ProductName LIKE '%' + @Search + '%'
--    OR X.CategoryName LIKE '%' + @Search + '%'
--);

---- RETURN COUNTS
--SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;


---- FINAL DATA (IMPORTANT: also apply same search here)
--SELECT 
--    X.Id AS ProductId,
--	x.ProductDescription,
--    PVM.Id AS VarientId,
--    X.ProductName,
--    C.Id AS CategoryId,
--    C.CategoryName,
--	c.ParentCategoryId,--add from VishalG
----	CASE
----    WHEN @CustomerId > 0 AND WC.Id IS NOT NULL
----    THEN CAST(1 AS BIT)
----    ELSE CAST(0 AS BIT)
----END AS IsWishlist,    --chnage for wishlist --vishal

--    STRING_AGG(AV.Value, ', ') AS VariantAttributeValues_Only,
--    STRING_AGG(A.Name + ' : ' + AV.Value, ', ') AS VariantAttributes,

--    PVM.SKU,
--    PVM.Price,
--    PI.ImagePath,
--    ISNULL(PS.TotalAvailableStock,0) AS TotalAvailableStock

--FROM Products X
--LEFT JOIN Category C ON C.Id = X.CategoryId
--INNER JOIN ProductVariantMapping PVM ON PVM.ProductId = X.Id
--LEFT JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id
--LEFT JOIN Attribute A ON A.Id = PVD.AttributeId
--LEFT JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
--LEFT JOIN ProductImages PI ON PI.ProductId = X.Id AND PI.VariantId = PVM.Id
----LEFT JOIN WishlistCustomer WC
----    ON WC.ProductId = X.Id
----   AND WC.CustomerId = @CustomerId
----   AND WC.IsDeleted = 0  AND WC.VariantId = PVM.Id -- vishalremovie
--   --chnage for wishlist
--LEFT JOIN (
--    SELECT VariantId,
--           SUM(ISNULL(AvailableStock,0)) - SUM(ISNULL(ReservedStock,0)) AS TotalAvailableStock
--    FROM ProductStock
--    GROUP BY VariantId
--) PS ON PS.VariantId = PVM.Id

--WHERE X.IsActive = 1 
--AND PVM.IsActive = 1 
--AND C.IsActive = 1 
--AND X.IsDeleted = 0
--AND X.CategoryId = (CASE WHEN ISNULL(@CategoryId, 0) <= 0 THEN X.CategoryId ELSE @CategoryId END)

--AND (
--    @Search IS NULL
--    OR X.ProductName LIKE '%' + @Search + '%'
--    OR C.CategoryName LIKE '%' + @Search + '%'
--)

--GROUP BY 
--    X.Id, X.ProductName,
--		x.ProductDescription,
--		--  WC.Id,--vishal
--    C.Id, C.CategoryName,
--    PVM.Id, PVM.ProductId, PVM.SKU, PVM.Price,
--    PI.ImagePath,
--    PS.TotalAvailableStock,
--	c.ParentCategoryId --add from VishalG

--ORDER BY 
--    X.ProductName,
--    C.CategoryName;
--end


-- ==========================================
-- @Id = -2
-- Optimized Product Listing
-- ==========================================

ELSE IF @Id = -2
BEGIN


-----------------------------------------
-- Base Product + Variant Data
-----------------------------------------
SELECT
    X.Id AS ProductId,
    X.ProductName,
    X.ProductDescription,
    X.CategoryId,
    C.CategoryName,
    C.ParentCategoryId,

    PVM.Id AS VariantId,
	PVM.DiscountPercent,
PVM.SellPrice,
PVM.IsPercentagePricing,
    PVM.SKU,
    PVM.Price

INTO #ProductsData

FROM Products X
INNER JOIN Category C
    ON C.Id = X.CategoryId

INNER JOIN ProductVariantMapping PVM
    ON PVM.ProductId = X.Id

WHERE
    X.IsActive = 1
    AND X.IsDeleted = 0
    AND PVM.IsActive = 1
    AND C.IsActive = 1
    AND (
        ISNULL(@CategoryId,0) <= 0
        OR X.CategoryId = @CategoryId
    );

-----------------------------------------
-- Counts
-----------------------------------------
SELECT @Total = COUNT(*)
FROM #ProductsData;

SELECT @Filtered = COUNT(*)
FROM #ProductsData
WHERE
    @Search IS NULL
    OR ProductName LIKE '%' + @Search + '%'
    OR CategoryName LIKE '%' + @Search + '%';

SELECT
    @Total AS TotalRecords,
    @Filtered AS FilteredRecords;


-----------------------------------------
-- Variant Attributes
-----------------------------------------
;WITH VariantAttributes AS
(
    SELECT
        PVD.VariantId,

        STRING_AGG(
            AV.Value,
            ', '
        ) AS VariantAttributeValues_Only,

        STRING_AGG(
            A.Name + ' : ' + AV.Value,
            ', '
        ) AS VariantAttributes,
		-- New add
		STRING_AGG(
    CAST(PVD.AttributeValueId AS VARCHAR(50)),
    ','
) AS VariantAttributeValues_ID,

STRING_AGG(
    CAST(PVD.AttributeId AS VARCHAR(50))
    + ':'
    + CAST(PVD.AttributeValueId AS VARCHAR(50)),
    ','
) AS VariantAttributesId

    FROM ProductVariantDetails PVD

    INNER JOIN Attribute A
        ON A.Id = PVD.AttributeId

    INNER JOIN AttributeValue AV
        ON AV.Id = PVD.AttributeValueId

    GROUP BY PVD.VariantId
),

VariantStock AS
(
    SELECT
        VariantId,
        SUM(ISNULL(AvailableStock,0))
        - SUM(ISNULL(ReservedStock,0))
        AS TotalAvailableStock

    FROM ProductStock

    GROUP BY VariantId
)

-----------------------------------------
-- Final Data
-----------------------------------------
SELECT

    PD.ProductId,
    PD.ProductDescription,
    PD.VariantId AS VarientId,
    PD.ProductName,
    PD.CategoryId,
    PD.CategoryName,
    PD.ParentCategoryId,


    VA.VariantAttributeValues_Only,
    VA.VariantAttributes,

	VA.VariantAttributeValues_ID,
VA.VariantAttributesId,

    PD.SKU,
    PD.Price,

	PD.DiscountPercent,
PD.SellPrice,
PD.IsPercentagePricing,

    PI.ImagePath,

    ISNULL(VS.TotalAvailableStock,0)
        AS TotalAvailableStock

FROM #ProductsData PD

LEFT JOIN VariantAttributes VA
    ON VA.VariantId = PD.VariantId

LEFT JOIN VariantStock VS
    ON VS.VariantId = PD.VariantId

--OUTER APPLY
--(
--    SELECT TOP 1
--        ImagePath
--    FROM ProductImages PI
--    WHERE
--        PI.ProductId = PD.ProductId
--        AND PI.VariantId = PD.VariantId
--        AND PI.IsDeleted = 0
--    ORDER BY PI.Id
--) PI
OUTER APPLY
(
    SELECT
        STRING_AGG(
            ISNULL(PI.ImagePath,'')
            + '|'
            + CAST(ISNULL(PI.IsPrimary,0) AS VARCHAR(1))
        ,'~') AS ImagePath
    FROM ProductImages PI
    WHERE
        PI.ProductId = PD.ProductId
        AND PI.VariantId = 0
        AND PI.IsDeleted = 0
) PI

WHERE
    @Search IS NULL
    OR PD.ProductName LIKE '%' + @Search + '%'
    OR PD.CategoryName LIKE '%' + @Search + '%'

ORDER BY
    PD.ProductName,
    PD.CategoryName;

DROP TABLE #ProductsData;

END

else
begin
---------------------------------------
-- SORT COLUMN MAP
---------------------------------------

DECLARE @OrderBy NVARCHAR(100);

SET @OrderBy =
CASE @SortColumnIndex
 WHEN 0 THEN 'ISNULL(X.LastModifiedDate, X.CreatedDate)'
 WHEN 1 THEN 'X.ProductName'
 WHEN 2 THEN 'C.CategoryName'
 WHEN 3 THEN 'PV.Price'
 WHEN 4 THEN 'X.IsActive'
 ELSE 'ISNULL(X.LastModifiedDate, X.CreatedDate)'
END

IF @SortDirection NOT IN ('ASC','DESC')
 SET @SortDirection = 'DESC';

---------------------------------------
-- COUNTS
---------------------------------------


SELECT @Total = COUNT(*)
FROM Products
WHERE IsDeleted = 0;

SELECT @Filtered = COUNT(*)
FROM Products X
LEFT JOIN Category C ON C.Id = X.CategoryId
WHERE X.IsDeleted = 0
AND (
 @Search IS NULL
 OR X.ProductName LIKE '%' + @Search + '%'
 OR C.CategoryName LIKE '%' + @Search + '%'
);

SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

---------------------------------------
-- DATA
---------------------------------------

DECLARE @SQL NVARCHAR(MAX);

SET @SQL = '
SELECT
 ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
 X.*,
 C.CategoryName,
 ISNULL(PV.Price, 0) AS Price,
 PV.SKU,
 PI.ImagePath

FROM Products X

LEFT JOIN Category C 
    ON C.Id = X.CategoryId

-- ✅ Price + SKU
OUTER APPLY (
    SELECT TOP 1 Price, SKU
    FROM ProductVariantMapping PV
    WHERE PV.ProductId = X.Id 
      AND PV.IsDeleted = 0
    ORDER BY PV.Id ASC
) PV

-- ✅ Primary Image (ONLY Product base)
OUTER APPLY (
    SELECT TOP 1 ImagePath
    FROM ProductImages PI
    WHERE PI.ProductId = X.Id
      AND PI.VariantId = 0   -- 🔥 Only base product image
      AND PI.IsDeleted = 0
      AND PI.IsActive = 1
    ORDER BY PI.IsPrimary DESC, PI.Id ASC
) PI

WHERE X.IsDeleted = 0
';

IF @Search IS NOT NULL
SET @SQL += '
AND (
 X.ProductName LIKE ''%'' + @Search + ''%''
 OR C.CategoryName LIKE ''%'' + @Search + ''%''
)
';

SET @SQL += '
ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY
';

EXEC sp_executesql
@SQL,
N'@Search NVARCHAR(200), @Start INT, @Length INT',
@Search,@Start,@Length;

END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Product_Get2]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create   PROCEDURE [dbo].[SP_Product_Get2]
(
 @Id INT = NULL,
 @CategoryId INT = NULL,
 @CustomerId INT = 0, 
 --chnage for wishlist
 @Search NVARCHAR(200) = NULL,
 @Start INT = 0,
 @Length INT = 25,
 @SortColumnIndex INT = 0,
 @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN

SET NOCOUNT ON;

DECLARE @Total INT;
DECLARE @Filtered INT;
---------------------------------------
-- SINGLE RECORD
---------------------------------------
IF @Id > 0 OR ( @Id != -2 AND @CategoryId IS NOT NULL)
BEGIN

 SELECT
    1 AS SrNo,
    X.*,
    C.CategoryName,
    ISNULL(PV.Price, 0) AS Price,
    PV.SKU
FROM Products X
LEFT JOIN Category C ON C.Id = X.CategoryId
OUTER APPLY (
    SELECT TOP 1 Price, SKU
    FROM ProductVariantMapping PV
    WHERE PV.ProductId = X.Id AND PV.IsDeleted = 0
) PV
WHERE X.Id = @Id;
		
	SELECT * FROM ProductImages WHERE ProductId = @Id;

	SELECT 
		PVM.Id,
		PVM.ProductId,
		PVM.SKU,
		PVM.Price,
		
		ISNULL(PS.AvailableStock,0) AS AvailableStock,
		ISNULL(PS.ReservedStock,0) AS ReservedStock,
		ISNULL(PS.AvailableStock,0) + ISNULL(PS.ReservedStock,0) AS TotalStock,

		STRING_AGG(A.Name + ' : ' + AV.Value, ', ') AS VariantAttributes
	FROM ProductVariantMapping PVM	
	LEFT JOIN ProductStock PS ON PS.VariantId = PVM.Id
	INNER JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id
	INNER JOIN Attribute A ON A.Id = PVD.AttributeId
	INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
	WHERE PVM.ProductId = @Id
	GROUP BY PVM.Id, PVM.ProductId, PVM.SKU, PVM.Price, PS.AvailableStock, PS.ReservedStock;
	
	SELECT 
		PVD.Id,
		PVD.VariantId,
		PVD.AttributeId,
		A.Name AttributeName,
		PVD.AttributeValueId,
		AV.Value AS AttributeValue
	FROM ProductVariantDetails PVD
	INNER JOIN Attribute A ON A.Id = PVD.AttributeId
	INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
	WHERE PVD.VariantId IN 
	(
		SELECT Id 
		FROM ProductVariantMapping 
		WHERE ProductId = @Id 
	);

 RETURN;

END
Else If  @Id = -1
begin

	SELECT
	 X.*,
	 C.CategoryName,
		 PV.Price,
		 PV.SKU
	 FROM Products X
	 LEFT JOIN Category C ON C.Id = X.CategoryId
	 OUTER APPLY (
		SELECT TOP 1 Price, SKU
		FROM ProductVariantMapping PV
		WHERE PV.ProductId = X.Id AND PV.IsDeleted = 0
	) PV
	WHERE X.IsDeleted = 0
end
Else If  @Id = -2
begin
-- TOTAL COUNT (NO SEARCH)
SELECT @Total = COUNT(DISTINCT PVM.Id)
FROM Products X
LEFT JOIN Category C ON C.Id = X.CategoryId
INNER JOIN ProductVariantMapping PVM ON PVM.ProductId = X.Id
INNER JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id
INNER JOIN Attribute A ON A.Id = PVD.AttributeId
INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
LEFT JOIN ProductImages PI ON PI.ProductId = X.Id AND PI.VariantId = PVM.Id 
LEFT JOIN (
    SELECT VariantId,
           SUM(ISNULL(AvailableStock,0)) - SUM(ISNULL(ReservedStock,0)) AS TotalAvailableStock
    FROM ProductStock
    GROUP BY VariantId
) PS ON PS.VariantId = PVM.Id
WHERE X.IsActive = 1 
AND PVM.IsActive = 1 
AND C.IsActive = 1 
AND X.IsDeleted = 0
AND X.CategoryId = (CASE WHEN ISNULL(@CategoryId, 0) <= 0 THEN X.CategoryId ELSE @CategoryId END);


-- FILTERED COUNT (WITH SEARCH)
SELECT @Filtered = COUNT(DISTINCT PVM.Id)
FROM Products X
LEFT JOIN Category C ON C.Id = X.CategoryId
INNER JOIN ProductVariantMapping PVM ON PVM.ProductId = X.Id
INNER JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id
INNER JOIN Attribute A ON A.Id = PVD.AttributeId
INNER JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
LEFT JOIN ProductImages PI ON PI.ProductId = X.Id AND PI.VariantId = PVM.Id
LEFT JOIN (
    SELECT VariantId,
           SUM(ISNULL(AvailableStock,0)) - SUM(ISNULL(ReservedStock,0)) AS TotalAvailableStock
    FROM ProductStock
    GROUP BY VariantId
) PS ON PS.VariantId = PVM.Id
WHERE X.IsActive = 1 
AND PVM.IsActive = 1 
AND C.IsActive = 1 
AND X.IsDeleted = 0
AND X.CategoryId = (CASE WHEN ISNULL(@CategoryId, 0) <= 0 THEN X.CategoryId ELSE @CategoryId END)

AND (
    @Search IS NULL
    OR X.ProductName LIKE '%' + @Search + '%'
    OR C.CategoryName LIKE '%' + @Search + '%'
);


-- RETURN COUNTS
SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;


-- FINAL DATA (IMPORTANT: also apply same search here)
SELECT 
    X.Id AS ProductId,
	x.ProductDescription,
    PVM.Id AS VarientId,
    X.ProductName,
    C.Id AS CategoryId,
    C.CategoryName,
	c.ParentCategoryId,--add from VishalG
	CASE
    WHEN @CustomerId > 0 AND WC.Id IS NOT NULL
    THEN CAST(1 AS BIT)
    ELSE CAST(0 AS BIT)
END AS IsWishlist,    --chnage for wishlist

    STRING_AGG(AV.Value, ', ') AS VariantAttributeValues_Only,
    STRING_AGG(A.Name + ' : ' + AV.Value, ', ') AS VariantAttributes,

    PVM.SKU,
    PVM.Price,
    PI.ImagePath,
    ISNULL(PS.TotalAvailableStock,0) AS TotalAvailableStock

FROM Products X
LEFT JOIN Category C ON C.Id = X.CategoryId
INNER JOIN ProductVariantMapping PVM ON PVM.ProductId = X.Id
LEFT JOIN ProductVariantDetails PVD ON PVD.VariantId = PVM.Id
LEFT JOIN Attribute A ON A.Id = PVD.AttributeId
LEFT JOIN AttributeValue AV ON AV.Id = PVD.AttributeValueId
LEFT JOIN ProductImages PI ON PI.ProductId = X.Id AND PI.VariantId = PVM.Id
LEFT JOIN WishlistCustomer WC
    ON WC.ProductId = X.Id
   AND WC.CustomerId = @CustomerId
   AND WC.IsDeleted = 0  AND WC.VariantId = PVM.Id
   --chnage for wishlist
LEFT JOIN (
    SELECT VariantId,
           SUM(ISNULL(AvailableStock,0)) - SUM(ISNULL(ReservedStock,0)) AS TotalAvailableStock
    FROM ProductStock
    GROUP BY VariantId
) PS ON PS.VariantId = PVM.Id

WHERE X.IsActive = 1 
AND PVM.IsActive = 1 
AND C.IsActive = 1 
AND X.IsDeleted = 0
AND X.CategoryId = (CASE WHEN ISNULL(@CategoryId, 0) <= 0 THEN X.CategoryId ELSE @CategoryId END)

AND (
    @Search IS NULL
    OR X.ProductName LIKE '%' + @Search + '%'
    OR C.CategoryName LIKE '%' + @Search + '%'
)

GROUP BY 
    X.Id, X.ProductName,
		x.ProductDescription,
		  WC.Id,
    C.Id, C.CategoryName,
    PVM.Id, PVM.ProductId, PVM.SKU, PVM.Price,
    PI.ImagePath,
    PS.TotalAvailableStock,
	c.ParentCategoryId --add from VishalG

ORDER BY 
    X.ProductName,
    C.CategoryName;
end
else
begin
---------------------------------------
-- SORT COLUMN MAP
---------------------------------------

DECLARE @OrderBy NVARCHAR(100);

SET @OrderBy =
CASE @SortColumnIndex
 WHEN 0 THEN 'ISNULL(X.LastModifiedDate, X.CreatedDate)'
 WHEN 1 THEN 'X.ProductName'
 WHEN 2 THEN 'C.CategoryName'
 WHEN 3 THEN 'PV.Price'
 WHEN 4 THEN 'X.IsActive'
 ELSE 'ISNULL(X.LastModifiedDate, X.CreatedDate)'
END

IF @SortDirection NOT IN ('ASC','DESC')
 SET @SortDirection = 'DESC';

---------------------------------------
-- COUNTS
---------------------------------------


SELECT @Total = COUNT(*)
FROM Products
WHERE IsDeleted = 0;

SELECT @Filtered = COUNT(*)
FROM Products X
LEFT JOIN Category C ON C.Id = X.CategoryId
WHERE X.IsDeleted = 0
AND (
 @Search IS NULL
 OR X.ProductName LIKE '%' + @Search + '%'
 OR C.CategoryName LIKE '%' + @Search + '%'
);

SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

---------------------------------------
-- DATA
---------------------------------------

DECLARE @SQL NVARCHAR(MAX);

SET @SQL = '
SELECT
 ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
 X.*,
 C.CategoryName,
 ISNULL(PV.Price, 0) AS Price,
 PV.SKU,
 PI.ImagePath

FROM Products X

LEFT JOIN Category C 
    ON C.Id = X.CategoryId

-- ✅ Price + SKU
OUTER APPLY (
    SELECT TOP 1 Price, SKU
    FROM ProductVariantMapping PV
    WHERE PV.ProductId = X.Id 
      AND PV.IsDeleted = 0
    ORDER BY PV.Id ASC
) PV

-- ✅ Primary Image (ONLY Product base)
OUTER APPLY (
    SELECT TOP 1 ImagePath
    FROM ProductImages PI
    WHERE PI.ProductId = X.Id
      AND PI.VariantId = 0   -- 🔥 Only base product image
      AND PI.IsDeleted = 0
      AND PI.IsActive = 1
    ORDER BY PI.IsPrimary DESC, PI.Id ASC
) PI

WHERE X.IsDeleted = 0
';

IF @Search IS NOT NULL
SET @SQL += '
AND (
 X.ProductName LIKE ''%'' + @Search + ''%''
 OR C.CategoryName LIKE ''%'' + @Search + ''%''
)
';

SET @SQL += '
ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY
';

EXEC sp_executesql
@SQL,
N'@Search NVARCHAR(200), @Start INT, @Length INT',
@Search,@Start,@Length;

END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Product_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_Product_Save]
(
    @Id INT = 0,
    @CategoryId INT = NULL,
    @ProductName NVARCHAR(250) = NULL,
    @ProductDescription NVARCHAR(MAX) = NULL,
    --@SKU NVARCHAR(250)= NULL,
	@Price DECIMAL(18,2) = NULL,
    @ProductImages NVARCHAR(MAX) = NULL,
	@ProductVariants NVARCHAR(MAX) = NULL,
    @IsActive BIT = 1,
    @Mode NVARCHAR(10),
    @OperatedBy INT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN

SET NOCOUNT ON;

SET @response = 'E|Something went wrong|0';

  IF @Mode NOT IN ('SAVE','STATUS','DELETE')
  BEGIN
   SET @response = 'E|Invalid mode supplied.|0';
   RETURN;
  END

BEGIN TRY

	DECLARE @ProductId INT = 0;
	
	DECLARE @OldPrice DECIMAL(18,2);
	DECLARE @VariantId INT;
	DECLARE @NewPrice DECIMAL(18,2);

	-- VALIDATIONS FIRST
	IF @Mode NOT IN ('SAVE','STATUS','DELETE')
	BEGIN
		SET @response = 'E|Invalid mode supplied.|0';
		RETURN;
	END

	IF @Mode = 'SAVE'
	BEGIN
		IF ISNULL(@ProductName,'') = ''
		BEGIN
			SET @response = 'E|Product Name is required.|0';
			RETURN;
		END

		IF ISNULL(@CategoryId,0) <= 0
		BEGIN
			SET @response = 'E|Category is required.|0';
			RETURN;
		END

		--IF ISNULL(@Price,0) <= 0
		--BEGIN
		--	SET @response = 'E|Price is required.|0';
		--	RETURN;
		--END
				
	   -- Duplicate validation
	   IF EXISTS (
		SELECT 1 FROM Products
		WHERE ProductName = @ProductName
		  AND ISNULL(CategoryId,0) = ISNULL(@CategoryId,0)
		  AND IsDeleted = 0
		  AND (@Id = 0 OR Id <> @Id)
	   )
	   BEGIN
		SET @response = 'E|Product already exists under same category.|0';
		RETURN;
	   END

	END


	--------------------------------------------------
	-- SAVE PRODUCT
	--------------------------------------------------

	IF @Mode = 'SAVE'
	BEGIN
	
	IF @Id > 0
	BEGIN
	
		--------------------------------------------------
		-- UPDATE PRODUCT
		--------------------------------------------------

		UPDATE Products
			SET CategoryId = @CategoryId,
				ProductName = @ProductName,
				ProductDescription = @ProductDescription,
				IsActive = @IsActive,
				LastModifiedBy = @OperatedBy,
				LastModifiedDate = GETDATE()
		WHERE Id = @Id;

		SET @ProductId = @Id;
	END
	ELSE
	BEGIN

		--------------------------------------------------
		-- INSERT PRODUCT
		--------------------------------------------------

		INSERT INTO Products (CategoryId, ProductName, ProductDescription, IsActive, IsDeleted, CreatedBy, CreatedDate)
		VALUES (@CategoryId, @ProductName, @ProductDescription, @IsActive, 0, @OperatedBy, GETDATE());

		SET @ProductId = SCOPE_IDENTITY();

		END

	--------------------------------------------------
	-- PRODUCT IMAGES
	--------------------------------------------------

	IF TRIM(ISNULL(@ProductImages,'')) <> ''
	BEGIN

		DECLARE @Images TABLE
		(
			Id INT,
			ImagePath NVARCHAR(500),
			IsPrimary BIT,
			IsRemove BIT
		);

		-- Split rows by ||
		WITH ImageRows AS
		(
			SELECT value
			FROM STRING_SPLIT(@ProductImages,'~')
		),
		SplitColumns AS
		(
			SELECT 
				r.value,
				s.value AS columnValue,
				ROW_NUMBER() OVER (PARTITION BY r.value ORDER BY (SELECT 1)) rn
			FROM ImageRows r
			CROSS APPLY STRING_SPLIT(r.value,'|') s
		)
		INSERT INTO @Images
		SELECT
			MAX(CASE WHEN rn = 1 THEN TRY_CAST(columnValue AS INT) END),
			MAX(CASE WHEN rn = 2 THEN (CASE WHEN TRIM(ISNULL(columnValue, '')) = '-' THEN '' ELSE columnValue END) END),
			MAX(CASE WHEN rn = 3 THEN TRY_CAST(columnValue AS INT) END),
			MAX(CASE WHEN rn = 4 THEN TRY_CAST(columnValue AS INT) END)
		FROM SplitColumns
		GROUP BY value

		--------------------------------------------------
		-- DELETE IMAGES
		--------------------------------------------------

		DELETE ProductImages WHERE Id IN (SELECT Id FROM @Images WHERE IsRemove = 1) AND VariantId = 0;

		--UPDATE ProductImages
		--SET IsDeleted = 1, LastModifiedBy = @OperatedBy, LastModifiedDate = GETDATE()
		--WHERE Id IN (SELECT Id FROM @Images WHERE IsRemove = 1)

		--------------------------------------------------
		-- INSERT NEW IMAGES
		--------------------------------------------------

		INSERT INTO ProductImages (ProductId, VariantId, ImagePath, IsPrimary, IsActive, IsDeleted, CreatedBy, CreatedDate)
		SELECT @ProductId, 0, ImagePath, IsPrimary, 1, 0, @OperatedBy, GETDATE()
		FROM @Images I WHERE ISNULL(ImagePath, '') <> '' AND IsRemove = 0
		AND NOT EXISTS ( SELECT 1 FROM ProductImages PI WHERE PI.ProductId = @ProductId AND PI.Id = I.Id AND PI.VariantId = 0 );
		
		--------------------------------------------------
		-- UPDATE PRIMARY FLAG
		--------------------------------------------------

		UPDATE PI
		SET PI.ImagePath = (CASE WHEN ISNULL(I.ImagePath, '') <> '' THEN I.ImagePath ELSE PI.ImagePath END),
			PI.IsPrimary = I.IsPrimary,
			PI.LastModifiedBy = @OperatedBy,
			PI.LastModifiedDate = GETDATE()
		FROM ProductImages PI
		INNER JOIN @Images I ON PI.Id = I.Id
		WHERE I.Id > 0 AND I.IsRemove = 0 AND PI.VariantId = 0

		--------------------------------------------------
		-- ENSURE SINGLE PRIMARY
		--------------------------------------------------

		IF EXISTS (SELECT 1 FROM @Images WHERE IsPrimary = 1)
		BEGIN

			UPDATE ProductImages
			SET IsPrimary = 0
			WHERE ProductId = @Id AND IsDeleted = 0

			UPDATE PI
			SET IsPrimary = 1
			FROM ProductImages PI
			INNER JOIN @Images I ON PI.Id = I.Id
			WHERE I.IsPrimary = 1

		END

	END
	
	--DELETE FROM ProductImages WHERE ProductId = @ProductId AND VariantId > 0;

	IF TRIM(ISNULL(@ProductVariants,'')) <> ''
	BEGIN
		-- Variants Table
DECLARE @Varients TABLE
(
    SrNo INT,
    VariantId INT,
    AttributeValueId NVARCHAR(500),

    Price DECIMAL(18,2),
    DiscountPercent DECIMAL(5,2),
    SellPrice DECIMAL(18,2),
    IsPercentagePricing BIT,

    SKU NVARCHAR(500),
    ImagePath NVARCHAR(500),
    IsRemove BIT
);

		WITH VarientRows AS
		(
			SELECT TRIM(value) AS value
			FROM STRING_SPLIT(@ProductVariants,'~')
		),
		SplitColumns AS
		(
			SELECT 
				r.value,
				s.value AS columnValue,
				ROW_NUMBER() OVER (PARTITION BY r.value ORDER BY (SELECT 1)) rn
			FROM VarientRows r
			CROSS APPLY STRING_SPLIT(r.value,'|') s
		)
		INSERT INTO @Varients
SELECT ROW_NUMBER() OVER (ORDER BY (SELECT NULL)),
    MAX(CASE WHEN rn = 1 THEN TRY_CAST(columnValue AS INT) END),             -- VariantId
    MAX(CASE WHEN rn = 2 THEN TRIM(columnValue) END),                        -- Attributes
    MAX(CASE WHEN rn = 3 THEN TRY_CAST(columnValue AS DECIMAL(18,2)) END),   -- Price
    MAX(CASE WHEN rn = 4 THEN TRY_CAST(columnValue AS DECIMAL(5,2)) END),    -- DiscountPercent
    MAX(CASE WHEN rn = 5 THEN TRY_CAST(columnValue AS DECIMAL(18,2)) END),   -- SellPrice
    MAX(CASE WHEN rn = 6 THEN TRY_CAST(columnValue AS INT) END), -- IsPercentagePricing
    MAX(CASE WHEN rn = 7 THEN columnValue END),                              -- SKU
    MAX(CASE WHEN rn = 8 THEN TRIM(ISNULL(columnValue,'')) END),             -- Image
MAX(CASE WHEN rn = 9 THEN TRY_CAST(columnValue AS INT) END)
		FROM SplitColumns
		GROUP BY value;
		
		--------------------------------------------------
		-- 1️⃣ Update Product Variants
		--------------------------------------------------
		
		UPDATE PVM
SET PVM.Price = V.Price,
    PVM.DiscountPercent = V.DiscountPercent,
    PVM.SellPrice = V.SellPrice,
    PVM.IsPercentagePricing = V.IsPercentagePricing,
    PVM.SKU = V.SKU,
    PVM.IsActive = 1,
    PVM.IsDeleted = 0,
    LastModifiedBy = @OperatedBy,
    LastModifiedDate = GETDATE()
		FROM ProductVariantMapping PVM
		INNER JOIN @Varients V ON V.VariantId = PVM.Id
		WHERE PVM.ProductId = @ProductId AND V.VariantId > 0;

		--------------------------------------------------
		-- 2 Insert Product Variants
		--------------------------------------------------

		DECLARE @CurrentSrNo INT;
		
		SELECT @CurrentSrNo = MIN(SrNo) FROM @Varients WHERE VariantId <= 0;

		WHILE @CurrentSrNo IS NOT NULL
		BEGIN

INSERT INTO ProductVariantMapping
(
    ProductId,
    Price,
    DiscountPercent,
    SellPrice,
    IsPercentagePricing,
    SKU,
    IsActive,
    IsDeleted,
    CreatedBy,
    CreatedDate
)
SELECT @ProductId,
       Price,
       DiscountPercent,
       SellPrice,
       IsPercentagePricing,
       SKU,
       1,
       0,
       @OperatedBy,
       GETDATE()
			FROM @Varients
			WHERE SrNo = @CurrentSrNo AND VariantId <= 0;

			UPDATE @Varients SET VariantId = SCOPE_IDENTITY() WHERE SrNo = @CurrentSrNo;
			SELECT @CurrentSrNo = MIN(SrNo) FROM @Varients WHERE VariantId <= 0;
			
		END
		
		SELECT @CurrentSrNo = MIN(SrNo) 
		FROM @Varients 
		WHERE VariantId > -1

		WHILE @CurrentSrNo IS NOT NULL
		BEGIN

			-- RESET VARIABLES (VERY IMPORTANT)
			SET @OldPrice = NULL
			SET @VariantId = NULL
			SET @NewPrice = NULL

			-- GET CURRENT ROW DATA
			SELECT @VariantId = VariantId, @NewPrice = Price
			FROM @Varients 
			WHERE SrNo = @CurrentSrNo

			---------------------------------------
			-- GET CURRENT ACTIVE PRICE
			---------------------------------------
			SELECT TOP 1 @OldPrice = Price
			FROM ProductPriceHistory
			WHERE ProductId = @ProductId AND VariantId = @VariantId AND EndDate IS NULL
			ORDER BY StartDate DESC

			---------------------------------------
			-- PRICE CHANGE LOGIC
			---------------------------------------
			IF (@VariantId > 0 AND (@OldPrice IS NULL OR @OldPrice <> @NewPrice))
			BEGIN
					-- CLOSE OLD PRICE
					UPDATE ProductPriceHistory
					SET EndDate = GETDATE()
					WHERE ProductId = @ProductId AND VariantId = @VariantId AND EndDate IS NULL;

					-- INSERT NEW PRICE
					INSERT INTO ProductPriceHistory ( ProductId, VariantId, Price, StartDate, CreatedBy )
					VALUES (@ProductId, @VariantId, @NewPrice, GETDATE(), @OperatedBy);
			END

			---------------------------------------
			-- MOVE TO NEXT ROW (CRITICAL)
			---------------------------------------
			SELECT @CurrentSrNo = MIN(SrNo)
			FROM @Varients
			WHERE SrNo > @CurrentSrNo

		END
		
		UPDATE PVM
			SET PVM.IsDeleted = 1, PVM.LastModifiedBy = @OperatedBy, PVM.LastModifiedDate = GETDATE()
		FROM ProductVariantMapping PVM
		LEFT JOIN @Varients V ON V.VariantId = PVM.Id
		WHERE PVM.ProductId = @ProductId AND V.VariantId IS NULL;

		--------------------------------------------------
		-- 3️⃣ Insert Attribute Mapping
		--------------------------------------------------
		
		DELETE FROM ProductVariantDetails WHERE VariantId IN ( SELECT VariantId FROM @Varients);

		INSERT INTO ProductVariantDetails (VariantId,AttributeId,AttributeValueId,IsActive,IsDeleted,CreatedBy,CreatedDate)
		SELECT v.VariantId,	LEFT(s.value,CHARINDEX('-',s.value)-1),	RIGHT(s.value,LEN(s.value)-CHARINDEX('-',s.value)),	1, 0, @OperatedBy, GETDATE()
		FROM @Varients v
		CROSS APPLY STRING_SPLIT(v.AttributeValueId,'=') s;
		--WHERE v.VariantId = 0;
				
		--------------------------------------------------
		-- INSERT NEW IMAGES
		--------------------------------------------------
		
		--DELETE FROM ProductImages WHERE ProductId = @ProductId AND VariantId > 0 AND VariantId NOT IN ( SELECT VariantId FROM @Varients WHERE ISNULL(ImagePath, '') <> '');

		DELETE FROM ProductImages WHERE ProductId = @ProductId AND VariantId > 0 AND VariantId IN ( SELECT VariantId FROM @Varients WHERE IsRemove = 1);

		INSERT INTO ProductImages (ProductId, VariantId, ImagePath, IsPrimary, IsActive, IsDeleted, CreatedBy, CreatedDate)
		SELECT @ProductId, V.VariantId, V.ImagePath, 0, 1, 0, @OperatedBy, GETDATE()
		FROM @Varients V WHERE ISNULL(V.ImagePath, '') <> ''
		AND NOT EXISTS ( SELECT 1 FROM ProductImages PI WHERE PI.ProductId = @ProductId AND PI.VariantId = V.VariantId );
		
		UPDATE PI SET PI.ImagePath = V.ImagePath, PI.IsActive = 1, PI.IsDeleted = 0, PI.LastModifiedBy = @OperatedBy, PI.LastModifiedDate = GETDATE()
		FROM ProductImages PI
		LEFT JOIN @Varients V ON V.VariantId = PI.VariantId
		WHERE ISNULL(V.ImagePath, '') <> '' AND PI.VariantId > 0
				
		--;WITH InvalidVariants AS (
		--	SELECT PVM.Id
		--	FROM ProductVariantMapping PVM
		--	WHERE PVM.ProductId = @ProductId
		--	AND PVM.IsDeleted = 0
		--	AND NOT EXISTS (
		--		SELECT 1 
		--		FROM ProductVariantDetails PVD
		--		WHERE PVD.VariantId = PVM.Id
		--		AND PVD.IsDeleted = 0
		--	)
		--)

		---- DELETE CHILD FIRST
		--DELETE FROM ProductImages WHERE VariantId IN (SELECT Id FROM InvalidVariants)

		--DELETE FROM ProductPriceHistory WHERE VariantId IN (SELECT Id FROM InvalidVariants)

		---- DELETE MAIN
		--DELETE FROM ProductVariantMapping WHERE Id IN (SELECT Id FROM InvalidVariants)

		SELECT PVM.Id
				INTO #InvalidVariants
				FROM ProductVariantMapping PVM
				WHERE PVM.ProductId = @ProductId
				AND PVM.IsDeleted = 0
				AND NOT EXISTS (
					SELECT 1 
					FROM ProductVariantDetails PVD
					WHERE PVD.VariantId = PVM.Id
					AND PVD.IsDeleted = 0
				)

				-- STEP 2: DELETE CHILD TABLES FIRST
				DELETE FROM ProductImages 
				WHERE VariantId IN (SELECT Id FROM #InvalidVariants)

				DELETE FROM ProductPriceHistory 
				WHERE VariantId IN (SELECT Id FROM #InvalidVariants)

				-- STEP 3: DELETE MAIN TABLE
				DELETE FROM ProductVariantMapping 
				WHERE Id IN (SELECT Id FROM #InvalidVariants)

				-- STEP 4: DROP TEMP TABLE
				DROP TABLE #InvalidVariants
		
	END
	
	IF TRIM(ISNULL(@ProductVariants,'')) = ''
	BEGIN
		
		-- RESET VARIABLES (VERY IMPORTANT)
			SET @OldPrice = NULL
			SET @VariantId = 0

		--------------------------------------------------
		-- CREATE DEFAULT VARIANT
		--------------------------------------------------

		SELECT @VariantId = PVM.Id
		FROM ProductVariantMapping PVM
		WHERE PVM.ProductId = @ProductId AND NOT EXISTS (
			SELECT 1 
			FROM ProductVariantDetails PVD
			WHERE PVD.VariantId = PVM.Id
		);
		
		IF ISNULL(@VariantId, 0) > 0
		BEGIN			
			UPDATE PVM 
				SET PVM.Price = @Price, PVM.SKU = LOWER(@ProductName), PVM.IsActive = 1, PVM.IsDeleted = 0, LastModifiedBy = @OperatedBy, LastModifiedDate =  GETDATE()
			FROM ProductVariantMapping PVM
			WHERE PVM.ProductId = @ProductId AND PVM.Id = @VariantId;
		END
		ELSE	
		BEGIN
			INSERT INTO ProductVariantMapping (ProductId, SKU, Price, StockQuantity, IsActive, IsDeleted, CreatedBy, CreatedDate)
			VALUES (@ProductId, LOWER(@ProductName), @Price, 0, 1, 0, @OperatedBy, GETDATE());

			SET @VariantId = SCOPE_IDENTITY();
		END

			---------------------------------------
			-- GET CURRENT ACTIVE PRICE
			---------------------------------------
			SELECT TOP 1 @OldPrice = Price
			FROM ProductPriceHistory
			WHERE ProductId = @ProductId AND VariantId = @VariantId AND EndDate IS NULL
			ORDER BY StartDate DESC

			---------------------------------------
			-- PRICE CHANGE LOGIC
			---------------------------------------
			IF (@VariantId > 0 AND (@OldPrice IS NULL OR @OldPrice <> @Price))
			BEGIN
					-- CLOSE OLD PRICE
					UPDATE ProductPriceHistory
					SET EndDate = GETDATE()
					WHERE ProductId = @ProductId AND VariantId = @VariantId AND EndDate IS NULL;

					-- INSERT NEW PRICE
					INSERT INTO ProductPriceHistory ( ProductId, VariantId, Price, StartDate, CreatedBy )
					VALUES (@ProductId, @VariantId, @Price, GETDATE(), @OperatedBy);
			END

	END

    --COMMIT TRANSACTION;

	SET @response = 'S|Record saved successfully|' + CAST(@ProductId AS NVARCHAR);

	RETURN;

END


 ----------------------------------------------------
 -- STATUS CHANGE
 ----------------------------------------------------
  IF @Mode = 'STATUS'
  BEGIN

   UPDATE Products
   SET IsActive = @IsActive,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id;

   SET @response = 'S|Status updated successfully|' + CAST(@Id AS NVARCHAR);
   RETURN;

  END

	 ----------------------------------------------------
	 -- DELETE (SAFE SOFT DELETE)
	 ----------------------------------------------------
	  IF @Mode = 'DELETE'
	  BEGIN

	   UPDATE Products
	   SET IsActive = 0,
		   IsDeleted = 1,
		   LastModifiedBy = @OperatedBy,
		   LastModifiedDate = GETDATE()
	   WHERE Id = @Id;

	    UPDATE ProductImages
	   SET IsActive = 0,
		   IsDeleted = 1,
		   LastModifiedBy = @OperatedBy,
		   LastModifiedDate = GETDATE()
	   WHERE ProductId = @Id;
	    UPDATE ProductVariantMapping
	   SET IsActive = 0,
		   IsDeleted = 1,
		   LastModifiedBy = @OperatedBy,
		   LastModifiedDate = GETDATE()
	   WHERE ProductId = @Id;
	   UPDATE ProductVariantDetails
	   SET IsActive = 0,
		   IsDeleted = 1,
		   LastModifiedBy = @OperatedBy,
		   LastModifiedDate = GETDATE()
	   WHERE VariantId in (select Id from ProductVariantMapping WHERE ProductId = @Id);
	   SET @response = 'S|Product deleted successfully|' + CAST(@Id AS NVARCHAR);
	   RETURN;

	  END

END TRY
BEGIN CATCH

	SET @response = 'E|' + ERROR_MESSAGE() + '|0';

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ProductStock_Adjust]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[SP_ProductStock_Adjust]
(
    @ProductId INT,
    @VariantIds NVARCHAR(MAX),
    @ChangeType NVARCHAR(10), -- ADD / SUB
    @Quantity INT,
    @ReferenceId INT = NULL,
    @ReferenceType NVARCHAR(50) = NULL,
    @Remarks NVARCHAR(500) = NULL,
    @OperatedBy INT,
    @response NVARCHAR(MAX) OUTPUT
)
AS
BEGIN

SET NOCOUNT ON

SET @response = 'E|Something went wrong|0'

BEGIN TRY

------------------------------------------------
-- VALIDATION
------------------------------------------------

IF @Quantity <= 0
BEGIN
    SET @response = 'E|Invalid quantity|0'
    RETURN
END

------------------------------------------------
-- SPLIT VARIANTS
------------------------------------------------

DECLARE @Variants TABLE (VariantId INT)

INSERT INTO @Variants
SELECT value
FROM STRING_SPLIT(@VariantIds, ',')

------------------------------------------------
-- CREATE STOCK RECORD IF NOT EXISTS
------------------------------------------------

INSERT INTO ProductStock
(ProductId, VariantId, AvailableStock, ReservedStock, LastModifiedBy, LastModifiedDate)
SELECT
@ProductId,
V.VariantId,
0,
0, @OperatedBy, GETDATE()
FROM @Variants V
WHERE NOT EXISTS
(
    SELECT 1
    FROM ProductStock PS
    WHERE PS.ProductId = @ProductId
    AND PS.VariantId = V.VariantId
)

------------------------------------------------
-- ADD STOCK
------------------------------------------------

IF @ChangeType = 'IN'
BEGIN

UPDATE PS
SET
AvailableStock = ISNULL(AvailableStock,0) + @Quantity,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
FROM ProductStock PS
INNER JOIN @Variants V
ON PS.VariantId = V.VariantId
WHERE PS.ProductId = @ProductId

END

------------------------------------------------
-- SUBTRACT STOCK
------------------------------------------------

IF @ChangeType = 'OUT'
BEGIN

UPDATE PS
SET
AvailableStock =
CASE
WHEN ISNULL(AvailableStock,0) - @Quantity < 0
THEN 0
ELSE ISNULL(AvailableStock,0) - @Quantity
END,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
FROM ProductStock PS
INNER JOIN @Variants V
ON PS.VariantId = V.VariantId
WHERE PS.ProductId = @ProductId

END

------------------------------------------------
-- STOCK HISTORY
------------------------------------------------

INSERT INTO ProductStockHistory
(
ProductId,
VariantId,
ChangeType,
Quantity,
ReferenceId,
ReferenceType,
Remarks,
LastModifiedBy,
LastModifiedDate
)
SELECT
@ProductId,
VariantId,
@ChangeType,
@Quantity,
@ReferenceId,
@ReferenceType,
@Remarks,
@OperatedBy,
GETDATE()
FROM @Variants

------------------------------------------------

SET @response = 'S|Stock adjusted successfully|1'

END TRY
BEGIN CATCH

SET @response = 'E|' + ERROR_MESSAGE() + '|0'

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ProductStock_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ProductStock_Get]
(
    @ProductId INT = NULL,
    @Search NVARCHAR(200) = NULL,
    @Start INT = 0,
    @Length INT = 25,
    @SortColumnIndex INT = 0,
    @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN
    SET NOCOUNT ON;

	-------------------------------------------------------
	-- SINGLE RECORD
	-------------------------------------------------------
	IF @ProductId IS NOT NULL 
	BEGIN

		SELECT 
			S.Id,
			S.ProductId,
			P.ProductName,
			V.Id VariantId,
			V.SKU,
			S.AvailableStock,
			S.ReservedStock,
			(S.AvailableStock + S.ReservedStock) AS TotalStock, S.LastModifiedBy, S.LastModifiedDate
		FROM ProductStock S
		LEFT JOIN Products P ON P.Id = S.ProductId
		LEFT JOIN ProductVariantMapping V ON V.Id = S.VariantId
		WHERE S.ProductId = (CASE WHEN @ProductId < 0 THEN S.ProductId ELSE @ProductId END);

		SELECT 
			ROW_NUMBER() OVER (ORDER BY H.LastModifiedDate DESC) AS SrNo,
			H.ChangeType,
			H.Quantity,
			H.ReferenceType,
			H.Remarks,
			H.LastModifiedDate
		FROM ProductStockHistory H
		WHERE H.ProductId = ABS(@ProductId)
		ORDER BY H.LastModifiedDate DESC;

		RETURN;

	END

	DECLARE @OrderBy NVARCHAR(100);

	SET @OrderBy =
		CASE @SortColumnIndex
			WHEN 0 THEN 'S.LastModifiedDate'
			WHEN 1 THEN 'P.ProductName'
			WHEN 2 THEN 'V.SKU'
			WHEN 3 THEN 'S.AvailableStock'
			WHEN 4 THEN 'S.ReservedStock'
			ELSE 'S.LastModifiedDate'
		END;

	IF @SortDirection NOT IN ('ASC','DESC')
		SET @SortDirection = 'DESC';

	DECLARE @Total INT, @Filtered INT;

	SELECT @Total = COUNT(*) 
	FROM ProductStock;

	SELECT @Filtered = COUNT(*)
	FROM ProductStock S
	LEFT JOIN Products P ON P.Id = S.ProductId
	LEFT JOIN ProductVariantMapping V ON V.Id = S.VariantId
	WHERE (
			@Search IS NULL
			OR P.ProductName LIKE '%' + @Search + '%'
			OR V.SKU LIKE '%' + @Search + '%'
		);

	SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

	DECLARE @SQL NVARCHAR(MAX);

	SET @SQL = '
	SELECT 
		ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
		S.Id,
		S.ProductId,
		P.ProductName,
		V.Id AS VariantId,
		V.SKU,
		S.AvailableStock,
		S.ReservedStock,
		(S.AvailableStock + S.ReservedStock) AS TotalStock,
		P.IsActive
	FROM ProductStock S
	LEFT JOIN Products P ON P.Id = S.ProductId
	LEFT JOIN ProductVariantMapping V ON V.Id = S.VariantId
	';

	IF @Search IS NOT NULL
	SET @SQL += '
	AND (
		P.ProductName LIKE ''%'' + @Search + ''%'' OR
		V.SKU LIKE ''%'' + @Search + ''%''
	)';

	SET @SQL += '
	ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
	OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY';

	EXEC sp_executesql
		@SQL,
		N'@Search NVARCHAR(200), @Start INT, @Length INT',
		@Search, @Start, @Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_RazorpayWebhookLog_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_RazorpayWebhookLog_Save]
(
    @EventName NVARCHAR(100),
    @RazorpayRefundId NVARCHAR(100)=NULL,
    @RazorpayPaymentId NVARCHAR(100)=NULL,
    @Payload NVARCHAR(MAX),
    @Processed BIT,
    @OperatedBy BIGINT,
    @response NVARCHAR(MAX) OUT
)
AS
BEGIN

SET NOCOUNT ON;

SET @response='E|Something went wrong|0';

BEGIN TRY

INSERT INTO RazorpayWebhookLog
(
    EventName,
    RazorpayRefundId,
    RazorpayPaymentId,
    Payload,
    Processed,
    IsActive,
    IsDeleted,
    CreatedBy,
    CreatedDate,
    LastModifiedBy,
    LastModifiedDate
)
VALUES
(
    @EventName,
    @RazorpayRefundId,
    @RazorpayPaymentId,
    @Payload,
    @Processed,
    1,
    0,
    @OperatedBy,
    GETDATE(),
    @OperatedBy,
    GETDATE()
);

DECLARE @Id INT=SCOPE_IDENTITY();

SET @response='S|Webhook Log Saved Successfully|'+CAST(@Id AS NVARCHAR);

END TRY

BEGIN CATCH

SET @response='E|'+ERROR_MESSAGE()+'|0';

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_ReleaseExpiredReservations]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ReleaseExpiredReservations]
(
    @ProductId INT,
    @VariantId INT,
    @Quantity INT
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @Retry INT = 0, 
            @MaxRetry INT = 3;

RetryBlock:

    BEGIN TRY
        BEGIN TRAN;

        DECLARE @AvailableStock INT, @ReservedStock INT;

        /* =========================================================
           STEP 1: INITIAL STOCK CHECK (LOCK ROW)
        ========================================================= */
        SELECT @AvailableStock = AvailableStock, @ReservedStock = ReservedStock
        FROM ProductStock WITH (UPDLOCK, HOLDLOCK)
        WHERE VariantId = @VariantId;

        /* =========================================================
           STEP 2: RELEASE EXPIRED CARTS IF NEEDED (FIFO)
        ========================================================= */
		IF (@AvailableStock - @ReservedStock) < @Quantity
		BEGIN
			DECLARE @Needed INT = @Quantity - (@AvailableStock - @ReservedStock);

			-- Step 1: Drop temp table if exists
			IF OBJECT_ID('tempdb..#ToRelease') IS NOT NULL
				DROP TABLE #ToRelease;

			-- Step 2: Fill temp table
			SELECT 
				OE.CartId,
				OE.ProductId,
				OE.VariantId,
				OE.Quantity,
				OE.EffectiveDate,
				OE.RunningTotal,
				CASE 
					WHEN OE.RunningTotal <= @Needed THEN OE.Quantity
					WHEN OE.RunningTotal - OE.Quantity < @Needed THEN OE.Quantity
					ELSE 0
				END AS QtyToRelease,
				CASE 
					WHEN OE.RunningTotal <= @Needed THEN 1
					WHEN OE.RunningTotal - OE.Quantity < @Needed THEN 1
					ELSE 0
				END AS ShouldDeactivate
			INTO #ToRelease
			FROM (
				SELECT 
					C.Id AS CartId,
					C.ProductId,
					C.VariantId,
					C.Quantity,
					ISNULL(C.LastModifiedDate, C.CreatedDate) AS EffectiveDate,
					SUM(C.Quantity) OVER (
						ORDER BY ISNULL(C.LastModifiedDate, C.CreatedDate), C.Id
					) AS RunningTotal
				FROM CustomerCart C WITH (UPDLOCK, ROWLOCK)
				WHERE C.ProductId = @ProductId 
				  AND C.VariantId = @VariantId
				  AND C.IsActive = 1
				  AND ISNULL(C.LastModifiedDate, C.CreatedDate) < DATEADD(MINUTE, -15, GETDATE())
			) OE;

			------------------------------------------------------

			-- Step 3: Release Reserved Stock
			UPDATE PS
			SET PS.ReservedStock = CASE 
				WHEN PS.ReservedStock >= TR.QtyToRelease
					THEN PS.ReservedStock - TR.QtyToRelease
				ELSE 0
			END
			FROM ProductStock PS
			INNER JOIN #ToRelease TR
				ON PS.ProductId = TR.ProductId
			   AND PS.VariantId = TR.VariantId
			WHERE TR.QtyToRelease > 0;

			------------------------------------------------------

			-- Step 4: Deactivate Cart Rows
			UPDATE C
			SET C.IsActive = 0
			FROM CustomerCart C
			INNER JOIN #ToRelease TR 
				ON C.Id = TR.CartId
			WHERE TR.ShouldDeactivate = 1;

			------------------------------------------------------

			-- Step 5: Cleanup
			DROP TABLE #ToRelease;
		END

        /* =========================================================
           STEP 3: RE-CHECK STOCK
        ========================================================= */
        SELECT @AvailableStock = AvailableStock, @ReservedStock = ReservedStock
        FROM ProductStock WITH (UPDLOCK, HOLDLOCK)
        WHERE ProductId = @ProductId AND VariantId = @VariantId;

        IF (@AvailableStock - @ReservedStock) < @Quantity
        BEGIN
            ROLLBACK;
            RAISERROR('Insufficient stock available.', 16, 1);
            RETURN;
        END

        /* =========================================================
           STEP 4: FINAL RESERVATION
        ========================================================= */
        UPDATE ProductStock
        SET ReservedStock = ReservedStock + @Quantity
        WHERE ProductId = @ProductId AND VariantId = @VariantId;

        COMMIT;
    END TRY

    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK;

        /* --- Deadlock Retry --- */
        IF ERROR_NUMBER() = 1205 AND @Retry < @MaxRetry
        BEGIN
            SET @Retry += 1;
            WAITFOR DELAY '00:00:00.200';
            GOTO RetryBlock;
        END

        /* --- Raise Error --- */
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_RemoveFromCart]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_RemoveFromCart]
(
    @CustomerId INT,
    @ProductId INT,
    @VariantId INT,
    @Quantity INT = NULL  -- NULL = remove full cart
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @Retry INT = 0, 
            @MaxRetry INT = 3;

RetryBlock:

    BEGIN TRY
        BEGIN TRAN;

        DECLARE @CartId INT,
                @CartQty INT;

        /* =====================================================
           STEP 1: LOCK CART ROW
        ===================================================== */
        SELECT TOP 1
            @CartId = Id,
            @CartQty = Quantity
        FROM CustomerCart WITH (UPDLOCK, HOLDLOCK)
        WHERE CustomerId = @CustomerId
          AND ProductId = @ProductId AND VariantId = @VariantId
          AND IsActive = 1;

        IF @CartId IS NULL
        BEGIN
            ROLLBACK;
            RAISERROR('Cart item not found.', 16, 1);
            RETURN;
        END

        /* =====================================================
           STEP 2: DETERMINE REMOVE QUANTITY
        ===================================================== */
        DECLARE @RemoveQty INT;

        IF @Quantity IS NULL OR @Quantity >= @CartQty
            SET @RemoveQty = @CartQty;  -- full remove
        ELSE
            SET @RemoveQty = @Quantity; -- partial remove

        /* =====================================================
           STEP 3: RELEASE RESERVED STOCK
        ===================================================== */
        UPDATE ProductStock
        SET ReservedStock = CASE 
            WHEN ReservedStock >= @RemoveQty 
            THEN ReservedStock - @RemoveQty
            ELSE 0
        END
        WHERE ProductId = @ProductId AND VariantId = @VariantId;

        /* =====================================================
           STEP 4: UPDATE CART
        ===================================================== */
        IF @RemoveQty = @CartQty
        BEGIN
            -- Full removal → deactivate
            --UPDATE CustomerCart
            --SET IsActive = 0,
            --    LastModifiedDate = GETDATE()
            --WHERE Id = @CartId;
           
			DELETE CustomerCart WHERE Id = @CartId;
        END
        ELSE
        BEGIN
            -- Partial removal → reduce quantity
            UPDATE CustomerCart
            SET Quantity = Quantity - @RemoveQty,
                LastModifiedDate = GETDATE()
            WHERE Id = @CartId;
        END

        COMMIT;
    END TRY

    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK;

        IF ERROR_NUMBER() = 1205 AND @Retry < @MaxRetry
        BEGIN
            SET @Retry += 1;
            WAITFOR DELAY '00:00:00.200';
            GOTO RetryBlock;
        END

        DECLARE @ErrMsg NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrMsg, 16, 1);
    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Reviews_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Reviews_Get] 
(
    @Id INT = NULL,
    @ProductID INT = NULL,
    @Search NVARCHAR(200) = NULL,
    @Start INT = 0,
    @Length INT = 25,
    @SortColumnIndex INT = 0,
    @SortDirection NVARCHAR(4) = 'DESC'
)
AS
-- [SP_Reviews_Get]
BEGIN
    SET NOCOUNT ON;

    DECLARE @Total INT = 0;
    DECLARE @Filtered INT = 0;

    ------------------------------------------------------------
    -- SINGLE RECORD
    ------------------------------------------------------------
    IF ISNULL(@Id,0) > 0
    BEGIN
        SELECT
            R.Id,
            R.ProductId,
            R.UserId,
            P.ProductName,
            (C.FirstName + ' ' + C.LastName) AS UserName,
            R.Rating,
            R.ReviewText,
            R.IsApproved,
            R.IsActive,
            R.CreatedDate
        FROM Reviews R
        LEFT JOIN Products P ON R.ProductId = P.Id
        LEFT JOIN Customer C ON R.UserId = C.Id
        WHERE R.Id = @Id
        AND R.IsDeleted = 0;

        RETURN;
    END

    ------------------------------------------------------------
    -- GET ALL REVIEWS (OPTIONAL PRODUCT FILTER)
    ------------------------------------------------------------
    IF @Id = -1
    BEGIN
        SELECT @Total = COUNT(*)
        FROM Reviews
        WHERE IsDeleted = 0
        AND (@ProductID IS NULL OR ProductId = @ProductID);

        SELECT @Filtered = COUNT(*)
        FROM Reviews R
        LEFT JOIN Products P ON R.ProductId = P.Id
        LEFT JOIN Customer C ON R.UserId = C.Id
        WHERE R.IsDeleted = 0
        AND (@ProductID IS NULL OR R.ProductId = @ProductID)
        AND (
                @Search IS NULL
                OR P.ProductName LIKE '%' + @Search + '%'
                OR (C.FirstName + ' ' + C.LastName) LIKE '%' + @Search + '%'
                OR R.ReviewText LIKE '%' + @Search + '%'
            );

        SELECT
            @Total AS TotalRecords,
            @Filtered AS FilteredRecords;

        SELECT
            R.Id,
            R.ProductId,
            R.UserId,
            P.ProductName,
            (C.FirstName + ' ' + C.LastName) AS UserName,
            R.Rating,
            R.ReviewText,
            R.IsApproved,
            R.IsActive,
            R.CreatedDate
        FROM Reviews R
        LEFT JOIN Products P ON R.ProductId = P.Id
        LEFT JOIN Customer C ON R.UserId = C.Id
        WHERE R.IsDeleted = 0
        AND (@ProductID IS NULL OR R.ProductId = @ProductID)
        AND (
                @Search IS NULL
                OR P.ProductName LIKE '%' + @Search + '%'
                OR (C.FirstName + ' ' + C.LastName) LIKE '%' + @Search + '%'
                OR R.ReviewText LIKE '%' + @Search + '%'
            )
        ORDER BY R.CreatedDate DESC;

        RETURN;
    END

    ------------------------------------------------------------
    -- SORT COLUMN
    ------------------------------------------------------------
    DECLARE @OrderBy NVARCHAR(100);

    SET @OrderBy =
    CASE @SortColumnIndex
        WHEN 0 THEN 'R.Id'
        WHEN 1 THEN 'R.Id'
        WHEN 2 THEN 'P.ProductName'
        WHEN 3 THEN '(C.FirstName + '' '' + C.LastName)'
        WHEN 4 THEN 'R.Rating'
        WHEN 5 THEN 'R.ReviewText'
        WHEN 6 THEN 'R.IsApproved'
		   WHEN 7 THEN 'R.CreatedDate'
        ELSE 'R.Id'
    END;

    IF @SortDirection NOT IN ('ASC','DESC')
        SET @SortDirection = 'DESC';

    ------------------------------------------------------------
    -- COUNTS
    ------------------------------------------------------------
    SELECT @Total = COUNT(*)
    FROM Reviews
    WHERE IsDeleted = 0
    AND (@ProductID IS NULL OR ProductId = @ProductID);

    SELECT @Filtered = COUNT(*)
    FROM Reviews R
    LEFT JOIN Products P ON R.ProductId = P.Id
    LEFT JOIN Customer C ON R.UserId = C.Id
    WHERE R.IsDeleted = 0
    AND (@ProductID IS NULL OR R.ProductId = @ProductID)
    AND (
            @Search IS NULL
            OR P.ProductName LIKE '%' + @Search + '%'
            OR (C.FirstName + ' ' + C.LastName) LIKE '%' + @Search + '%'
            OR R.ReviewText LIKE '%' + @Search + '%'
        );

    SELECT
        @Total AS TotalRecords,
        @Filtered AS FilteredRecords;

    ------------------------------------------------------------
    -- PAGING
    ------------------------------------------------------------
    DECLARE @SQL NVARCHAR(MAX);

    SET @SQL = '
    SELECT
        ROW_NUMBER() OVER(ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
        R.Id,
        R.ProductId,
        P.ProductName,
        (C.FirstName + '' '' + C.LastName) AS UserName,
        R.Rating,
        R.ReviewText,

		    CAST(
        AVG(CAST(R.Rating AS DECIMAL(10,2)))
        OVER(PARTITION BY R.ProductId)
    AS DECIMAL(10,1)) AS AverageRating,

    COUNT(*)
    OVER(PARTITION BY R.ProductId) AS TotalReviews,

        R.IsApproved,
        R.IsActive,
        R.CreatedDate
    FROM Reviews R
    LEFT JOIN Products P ON R.ProductId = P.Id
    LEFT JOIN Customer C ON R.UserId = C.Id
    WHERE R.IsDeleted = 0
    AND (@ProductID IS NULL OR R.ProductId = @ProductID)
    ';

    IF @Search IS NOT NULL
    BEGIN
        SET @SQL += '
        AND (
                P.ProductName LIKE ''%'' + @Search + ''%''
                OR (C.FirstName + '' '' + C.LastName) LIKE ''%'' + @Search + ''%''
                OR R.ReviewText LIKE ''%'' + @Search + ''%''
            )';
    END

    SET @SQL += '
    ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
    OFFSET @Start ROWS
    FETCH NEXT @Length ROWS ONLY;';

    EXEC sp_executesql
        @SQL,
        N'@Search NVARCHAR(200), @Start INT, @Length INT, @ProductID INT',
        @Search,
        @Start,
        @Length,
        @ProductID;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Reviews_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Reviews_Save]
(
 @Id INT = 0,
 @ProductId INT = NULL,
 @UserId INT = NULL,
 @Rating INT = NULL,
 @ReviewText NVARCHAR(MAX) = NULL,
 @IsApproved BIT = 0,
 @IsActive BIT = 1,
 @Mode NVARCHAR(10),
 @OperatedBy INT,
 @response NVARCHAR(MAX) OUT
)
AS
BEGIN

SET NOCOUNT ON

SET @response = 'E|Something went wrong|0'

BEGIN TRY

------------------------------------------------
-- SAVE
------------------------------------------------

IF @Mode = 'SAVE'
BEGIN

IF @Id > 0
BEGIN

UPDATE Reviews
SET
ProductId = @ProductId,
UserId = @UserId,
Rating = @Rating,
ReviewText = @ReviewText,
IsApproved = @IsApproved,
IsActive = @IsActive,
LastModifiedBy = @OperatedBy,
LastModifiedDate = GETDATE()

WHERE Id = @Id

END
ELSE
BEGIN

INSERT INTO Reviews
(
ProductId,
UserId,
Rating,
ReviewText,
IsApproved,
IsActive,
IsDeleted,
CreatedBy
)

VALUES
(
@ProductId,
@UserId,
@Rating,
@ReviewText,
@IsApproved,
1,
0,
@OperatedBy
)

SET @Id = SCOPE_IDENTITY()

END

SET @response = 'S|Record saved successfully|' + CAST(@Id AS NVARCHAR)

RETURN

END

------------------------------------------------
-- DELETE
------------------------------------------------

IF @Mode = 'DELETE'
BEGIN

UPDATE Reviews
SET
IsDeleted = 1,
IsActive = 0,
LastModifiedBy = @OperatedBy,
LastModifiedDate = GETDATE()

WHERE Id = @Id

SET @response = 'S|Review deleted successfully|' + CAST(@Id AS NVARCHAR)

END

END TRY
BEGIN CATCH

SET @response = 'E|' + ERROR_MESSAGE() + '|0'

END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Reward_Add]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Reward_Add]
(
    @CustomerId INT,
    @Coins DECIMAL(18,2),
    @Remarks NVARCHAR(500) = NULL,
    @CreatedBy INT,
    @Response NVARCHAR(MAX) OUT
)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY

        IF ISNULL(@Coins,0) <= 0
        BEGIN
            SET @Response = 'E|Coins must be greater than zero|0';
            RETURN;
        END

		DECLARE @RemainingBalance INT = 0;

        --------------------------------------------------
        -- UPDATE CUSTOMER BALANCE
        --------------------------------------------------
        UPDATE Customer
        SET RewardCoins = ISNULL(RewardCoins,0) + @Coins
        WHERE Id = @CustomerId;

		SELECT @RemainingBalance = RewardCoins
FROM Customer
WHERE Id = @CustomerId;

        --------------------------------------------------
        -- REWARD ENTRY
        --------------------------------------------------
        INSERT INTO Reward
        (
            CustomerId,
            RewardType,
            Coins,
			RemainingBalance,
            Remarks,
            IsActive,
            IsDeleted,
            CreatedBy,
            CreatedDate
        )
        VALUES
        (
            @CustomerId,
            'ADMIN_CREDIT',
            @Coins,
			@RemainingBalance,
            ISNULL(@Remarks,'Admin Added Reward Coins'),
            1,
            0,
            @CreatedBy,
            GETDATE()
        );

        --------------------------------------------------
        -- NOTIFICATION
        --------------------------------------------------
        INSERT INTO NotificationMaster
        (
            CustomerId,
            Title,
            Message,
            IsRead,
            IsDeleted,
            CreatedBy,
            CreatedDate
        )
        VALUES
        (
            @CustomerId,
            'Reward Coins Added From Admin',
           'You have received ' + CAST(@Coins AS VARCHAR(20))
+ ' reward coins from Admin. Reason: '
+ ISNULL(@Remarks, 'Reward Bonus'),
            0,
            0,
            @CreatedBy,
            GETDATE()
        );

        SET @Response = 'S|Reward coins added successfully|1';

    END TRY
    BEGIN CATCH

        SET @Response = 'E|' + ERROR_MESSAGE() + '|0';

    END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_RewardHistory_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_RewardHistory_Get]
(
@CustomerId INT = 0,
@TransactionType VARCHAR(50) = NULL,
@EntryType VARCHAR(20) = NULL,
@Start INT = 0,
@Length INT = 25,
@SortColumnIndex INT = 0,
@SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------
-- SORT MAPPING
--------------------------------------------------
DECLARE @OrderBy NVARCHAR(100);

SET @OrderBy =
CASE @SortColumnIndex
    WHEN 0 THEN 'CreatedDate'
    WHEN 1 THEN 'TransactionType'
    WHEN 2 THEN 'Coins'
    WHEN 3 THEN 'OrderNumber'
    WHEN 4 THEN 'EntryType'
    ELSE 'CreatedDate'
END;

IF @SortDirection NOT IN ('ASC','DESC')
    SET @SortDirection = 'DESC';

--------------------------------------------------
-- COUNTS
--------------------------------------------------
DECLARE @Total INT;
DECLARE @Filtered INT;

;WITH RewardData AS
(
    --------------------------------------------------
    -- CREDIT HISTORY
    --------------------------------------------------
    SELECT
        R.CreatedDate,
        R.RewardType AS TransactionType,
R.Coins,R.RemainingBalance,

CASE
    WHEN R.Remarks LIKE '%#%'
    THEN SUBSTRING(
            R.Remarks,
            CHARINDEX('#', R.Remarks) + 1,
            LEN(R.Remarks)
         )
    ELSE NULL
END AS OrderNumber,

        CASE
            WHEN R.RewardType = 'SIGNUP'
                THEN 'Signup Reward'

            WHEN R.RewardType = 'LOGIN'
                THEN 'Daily Login Reward'

            WHEN R.RewardType = 'REFERRAL_BONUS'
                THEN 'Referral Bonus - '
                     + ISNULL(C.FirstName,'')
                     + ' '
                     + ISNULL(C.LastName,'')

            WHEN R.RewardType = 'REFERRAL_JOIN'
                THEN 'Joined Using Referral'

            ELSE ISNULL(R.Remarks,'')
        END AS DisplayText,

        'CREDIT' AS EntryType

    FROM Reward R
    LEFT JOIN Customer C
        ON C.Id = R.ReferenceCustomerId
  WHERE
(
    ISNULL(@CustomerId,0) = 0
    OR R.CustomerId = @CustomerId
)
      AND R.IsDeleted = 0

    UNION ALL

    --------------------------------------------------
    -- DEBIT HISTORY
    --------------------------------------------------
    SELECT
        RUH.CreatedDate,

        'ORDER_USED' AS TransactionType,

        (-1 * RUH.UsedCoins) AS Coins,
		RUH.RemainingBalance,
        O.OrderNumber,

        CASE
            WHEN O.OrderStatus = '8'
                THEN 'Cancelled Order #' + ISNULL(O.OrderNumber,'')

            ELSE
                'Used In Order #' + ISNULL(O.OrderNumber,'')
        END AS DisplayText,

        'DEBIT' AS EntryType

    FROM RewardUsageHistory RUH
    INNER JOIN Orders O
        ON O.Id = RUH.OrderId
   WHERE
(
    ISNULL(@CustomerId,0) = 0
    OR RUH.CustomerId = @CustomerId
)
)

SELECT @Total = COUNT(*)
FROM RewardData;

;WITH RewardData AS
(
    --------------------------------------------------
    -- CREDIT HISTORY
    --------------------------------------------------
    SELECT
        R.CreatedDate,
        R.RewardType AS TransactionType,
R.Coins,R.RemainingBalance,

CASE
    WHEN R.Remarks LIKE '%#%'
    THEN SUBSTRING(
            R.Remarks,
            CHARINDEX('#', R.Remarks) + 1,
            LEN(R.Remarks)
         )
    ELSE NULL
END AS OrderNumber,

        CASE
            WHEN R.RewardType = 'SIGNUP'
                THEN 'Signup Reward'

            WHEN R.RewardType = 'LOGIN'
                THEN 'Daily Login Reward'

            WHEN R.RewardType = 'REFERRAL_BONUS'
                THEN 'Referral Bonus - '
                     + ISNULL(C.FirstName,'')
                     + ' '
                     + ISNULL(C.LastName,'')

            WHEN R.RewardType = 'REFERRAL_JOIN'
                THEN 'Joined Using Referral'

            ELSE ISNULL(R.Remarks,'')
        END AS DisplayText,

        'CREDIT' AS EntryType

    FROM Reward R
    LEFT JOIN Customer C
        ON C.Id = R.ReferenceCustomerId
WHERE
(
    ISNULL(@CustomerId,0) = 0
    OR R.CustomerId = @CustomerId
)
AND R.IsDeleted = 0

    UNION ALL

    --------------------------------------------------
    -- DEBIT HISTORY
    --------------------------------------------------
    SELECT
        RUH.CreatedDate,

        'ORDER_USED' AS TransactionType,

        (-1 * RUH.UsedCoins) AS Coins,
		RUH.RemainingBalance,

        O.OrderNumber,

        CASE
            WHEN O.OrderStatus = '8'
                THEN 'Cancelled Order #' + ISNULL(O.OrderNumber,'')

            ELSE
                'Used In Order #' + ISNULL(O.OrderNumber,'')
        END AS DisplayText,

        'DEBIT' AS EntryType

    FROM RewardUsageHistory RUH
    INNER JOIN Orders O
        ON O.Id = RUH.OrderId
WHERE
(
    ISNULL(@CustomerId,0) = 0
    OR RUH.CustomerId = @CustomerId
)
)

SELECT @Filtered = COUNT(*)
FROM RewardData
WHERE
(
    @TransactionType IS NULL
    OR @TransactionType = ''
    OR TransactionType = @TransactionType
)
AND
(
    @EntryType IS NULL
    OR @EntryType = ''
    OR EntryType = @EntryType
);

--------------------------------------------------
-- RETURN COUNTS
--------------------------------------------------
SELECT
    @Total AS TotalRecords,
    @Filtered AS FilteredRecords;

--------------------------------------------------
-- DATA
--------------------------------------------------
DECLARE @SQL NVARCHAR(MAX);

SET @SQL = '
;WITH RewardData AS
(
    SELECT
        R.CreatedDate,
        R.RewardType AS TransactionType,
R.Coins,
R.RemainingBalance,

CASE
    WHEN R.Remarks LIKE ''%#%''
    THEN SUBSTRING(
            R.Remarks,
            CHARINDEX(''#'', R.Remarks) + 1,
            LEN(R.Remarks)
         )
    ELSE NULL
END AS OrderNumber,

        CASE
            WHEN R.RewardType = ''SIGNUP''
                THEN ''Signup Reward''

            WHEN R.RewardType = ''LOGIN''
                THEN ''Daily Login Reward''

            WHEN R.RewardType = ''REFERRAL_BONUS''
                THEN ''Referral Bonus - ''
                     + ISNULL(C.FirstName,'''')
                     + '' ''
                     + ISNULL(C.LastName,'''')

            WHEN R.RewardType = ''REFERRAL_JOIN''
                THEN ''Joined Using Referral''

            ELSE ISNULL(R.Remarks,'''')
        END AS DisplayText,

        ''CREDIT'' AS EntryType

    FROM Reward R
    LEFT JOIN Customer C
        ON C.Id = R.ReferenceCustomerId
WHERE
(
    @CustomerId = 0
    OR R.CustomerId = @CustomerId
)
AND R.IsDeleted = 0

    UNION ALL

    SELECT
        RUH.CreatedDate,

        ''ORDER_USED'' AS TransactionType,

        (-1 * RUH.UsedCoins) AS Coins,
		RUH.RemainingBalance,
        O.OrderNumber,

        CASE
            WHEN O.OrderStatus = ''8''
                THEN ''Cancelled Order #'' + ISNULL(O.OrderNumber,'''')

            ELSE
                ''Used In Order #'' + ISNULL(O.OrderNumber,'''')
        END AS DisplayText,

        ''DEBIT'' AS EntryType

    FROM RewardUsageHistory RUH
    INNER JOIN Orders O
        ON O.Id = RUH.OrderId
   WHERE
(
    @CustomerId = 0
    OR RUH.CustomerId = @CustomerId
)
)

SELECT
    ROW_NUMBER() OVER
    (
        ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
    ) + @Start AS SrNo,

    CreatedDate,
    TransactionType,
    Coins,
	 RemainingBalance,
    OrderNumber,
    DisplayText,
    EntryType

FROM RewardData

WHERE
(
    @TransactionType IS NULL
    OR @TransactionType = ''''
    OR TransactionType = @TransactionType
)
AND
(
    @EntryType IS NULL
    OR @EntryType = ''''
    OR EntryType = @EntryType
)

ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
OFFSET @Start ROWS
FETCH NEXT @Length ROWS ONLY';

EXEC sp_executesql
    @SQL,
    N'@CustomerId INT,
      @TransactionType VARCHAR(50),
      @EntryType VARCHAR(20),
      @Start INT,
      @Length INT',
    @CustomerId,
    @TransactionType,
    @EntryType,
    @Start,
    @Length;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_RewardSettings_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_RewardSettings_Get]
(
    @Id INT = NULL
)
AS
BEGIN

    SET NOCOUNT ON;

    --------------------------------------------------
    -- GET BY ID
    --------------------------------------------------
    IF @Id IS NOT NULL
    BEGIN

        SELECT
            Id,
            SignupCoins,
            LoginCoins,
            ReferralCoins,
            ReferralJoinCoins,
            CoinToRupeeRate,
            MaxCoinUsagePercent,
            IsActive,
            CreatedBy,
            CreatedDate,
            LastModifiedBy,
            LastModifiedDate
        FROM RewardSettings
        WHERE Id = @Id;

        RETURN;

    END

    --------------------------------------------------
    -- GET ALL
    --------------------------------------------------

    SELECT
        Id,
        SignupCoins,
        LoginCoins,
        ReferralCoins,
        ReferralJoinCoins,
        CoinToRupeeRate,
        MaxCoinUsagePercent,
        IsActive,
        CreatedBy,
        CreatedDate,
        LastModifiedBy,
        LastModifiedDate
    FROM RewardSettings
    ORDER BY Id DESC;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_RewardSettings_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_RewardSettings_Save]
(
    @Id INT = 0,

    @SignupCoins DECIMAL(18,2),
    @LoginCoins DECIMAL(18,2),
    @ReferralCoins DECIMAL(18,2),
    @ReferralJoinCoins DECIMAL(18,2),
    @CoinToRupeeRate DECIMAL(18,2),
    @MaxCoinUsagePercent DECIMAL(5,2),

    @IsActive BIT = 1,

    @OperatedBy INT,

    @response NVARCHAR(MAX) OUT
)
AS
BEGIN

    SET NOCOUNT ON;

    SET @response='E|Something went wrong.|0';

    BEGIN TRY

        IF @Id > 0
        BEGIN

            UPDATE RewardSettings
            SET
                SignupCoins = @SignupCoins,
                LoginCoins = @LoginCoins,
                ReferralCoins = @ReferralCoins,
                ReferralJoinCoins = @ReferralJoinCoins,
                CoinToRupeeRate = @CoinToRupeeRate,
                MaxCoinUsagePercent = @MaxCoinUsagePercent,
                IsActive = 1,
                LastModifiedBy = @OperatedBy,
                LastModifiedDate = GETDATE()
            WHERE Id = @Id;

        END
        ELSE
        BEGIN

            INSERT INTO RewardSettings
            (
                SignupCoins,
                LoginCoins,
                ReferralCoins,
                ReferralJoinCoins,
                CoinToRupeeRate,
                MaxCoinUsagePercent,
                IsActive,
                CreatedBy,
                CreatedDate
            )
            VALUES
            (
                @SignupCoins,
                @LoginCoins,
                @ReferralCoins,
                @ReferralJoinCoins,
                @CoinToRupeeRate,
                @MaxCoinUsagePercent,
                1,
                @OperatedBy,
                GETDATE()
            );

            SET @Id = SCOPE_IDENTITY();

        END

        SET @response = 'S|Reward settings saved successfully|' + CAST(@Id AS NVARCHAR);

    END TRY
    BEGIN CATCH

        SET @response = 'E|' + ERROR_MESSAGE() + '|0';

    END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Roles_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[SP_Roles_Get]
(
 @Id INT = NULL,
 @Search NVARCHAR(200) = NULL,
 @Start INT = 0,
 @Length INT = 25,
 @SortColumnIndex INT = 0,
 @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN
 SET NOCOUNT ON;

	-- ============================================
    -- 🔹 IF ID IS PROVIDED → RETURN SINGLE RECORD
    -- ============================================
    IF @Id IS NOT NULL
    BEGIN
        SELECT 
            X.Id,
            X.RoleName,
            X.Description,
            X.IsActive,
            X.LastModifiedDate,
			(SELECT STUFF(( SELECT ',' + CAST(ActionId AS VARCHAR(10)) FROM dbo.RolePermissions WHERE RoleId = X.Id FOR XML PATH('') ),1,1,'')) AS SelectedMenu,
    (
        SELECT STUFF((
            SELECT ',' + A.Name
            FROM dbo.RolePermissions RP
            INNER JOIN dbo.Menus A ON RP.ActionId = A.Id
            WHERE RP.RoleId = X.Id AND A.IsActive = 1
            FOR XML PATH('')
        ),1,1,'')
    ) AS SelectedMenu_Names
        FROM Roles X
        WHERE X.Id = (CASE WHEN @Id < 0 THEN X.Id ELSE @Id END) AND X.IsDeleted = 0
		AND X.IsActive = (CASE WHEN @Id < 0 THEN 1 ELSE X.IsActive END) AND X.Id > 1;

        RETURN;
    END

    -- =============================
    -- Counts
    -- =============================
	 DECLARE @Total INT, @Filtered INT;

	 SELECT @Total = COUNT(*) FROM Roles WHERE IsDeleted = 0;

	 SELECT @Filtered = COUNT(*)
	 FROM Roles X WHERE X.IsDeleted = 0 AND (@Search IS NULL OR X.RoleName LIKE '%' + @Search + '%' OR X.Description LIKE '%' + @Search + '%');
   
	 SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

	
	-- =============================
    -- Data
    -- =============================
    DECLARE @SQL NVARCHAR(MAX)
	
	DECLARE @OrderBy NVARCHAR(100)

    -- Map column index to actual DB column
    SET @OrderBy = 
        CASE @SortColumnIndex
            WHEN 1 THEN 'X.CreatedDate'
            WHEN 2 THEN 'X.RoleName'
            WHEN 3 THEN 'X.SelectedMenu_Names'
            WHEN 4 THEN 'X.Description'
            WHEN 5 THEN 'X.IsActive'
            ELSE 'X.CreatedDate'
        END

    -- Force direction safe
    IF @SortDirection NOT IN ('ASC','DESC') SET @SortDirection = 'DESC'

    SET @SQL = '
    SELECT 
        ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
        X.Id,
        X.RoleName,
    (
        SELECT STUFF((
            SELECT '','' + A.Name
            FROM dbo.RolePermissions RP
            INNER JOIN dbo.Menus A ON RP.ActionId = A.Id
            WHERE RP.RoleId = X.Id AND A.IsActive = 1
            FOR XML PATH('''')
        ),1,1,'''')
    ) AS SelectedMenu_Names,
        X.Description,
        X.IsActive,
        X.LastModifiedDate
    FROM Roles X
    WHERE X.IsDeleted = 0 AND X.Id > 1
    '

    IF @Search IS NOT NULL
        SET @SQL += '
        AND (
            X.RoleName LIKE ''%'' + @Search + ''%'' OR
            X.Description LIKE ''%'' + @Search + ''%''
        )'

    SET @SQL += ' ORDER BY ' + @OrderBy + ' ' + @SortDirection + ' OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY'

    EXEC sp_executesql @SQL, N'@Search NVARCHAR(200), @Start INT, @Length INT', @Search, @Start, @Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Roles_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/* ============================================================
   Roles
============================================================ */

CREATE   PROCEDURE [dbo].[SP_Roles_Save]
(
 @Id INT = 0,
 @RoleName NVARCHAR(250) = NULL,
 @Description NVARCHAR(2000) = NULL,
 @SelectedMenu NVARCHAR(1000) = NULL,
 @IsActive BIT = 1,
 @IsDeleted BIT = 0,
 @Mode NVARCHAR(10),
 @OperatedBy INT,
 @response NVARCHAR(MAX) OUT
)
AS
BEGIN
 SET NOCOUNT ON;

 -- Default Error Response
 SET @response = 'E|Opps!... Something went wrong. Please contact system administrator|0';

 BEGIN TRY

  IF @Mode NOT IN ('SAVE','STATUS','DELETE')
  BEGIN
   SET @response = 'E|Invalid mode supplied.|0';
   RETURN;
  END

  IF @Mode = 'SAVE'
  BEGIN
  
   -- ============================
   -- Required Field Validation
   -- ============================
   IF ISNULL(@RoleName,'') = ''
   BEGIN
    SET @response = 'E|Role Name is required.|0';
    RETURN;
   END


   IF @Id > 0
    UPDATE Roles
    SET RoleName = @RoleName,
		Description = @Description,
		LastModifiedBy = @OperatedBy,
        LastModifiedDate = GETDATE()
    WHERE Id = @Id;
   ELSE
   BEGIN
    INSERT INTO Roles (RoleName, Description, CreatedBy)
    VALUES (@RoleName, @Description, @OperatedBy);

    SET @Id = SCOPE_IDENTITY();

   END

	DELETE [dbo].[RolePermissions] WHERE RoleId = @Id;

	IF @SelectedMenu IS NOT NULL
	BEGIN
		INSERT INTO [dbo].[RolePermissions](RoleId, ActionId, IsActive, IsDeleted, CreatedBy)
		SELECT @Id, Id, 1, 0, @OperatedBy
		FROM Menus
		WHERE Id IN ( SELECT CAST(value AS INT) FROM STRING_SPLIT(@SelectedMenu, ',') )
	END
		
  END
  ELSE IF @Mode = 'STATUS'
  BEGIN
   UPDATE Roles
   SET IsActive = @IsActive,
       IsDeleted = @IsDeleted,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id;
  END
  ELSE IF @Mode = 'DELETE'
  BEGIN
   UPDATE Roles
   SET IsActive = 0,
       IsDeleted = 1,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id;
   
	--DELETE [dbo].[RolePermissions] WHERE RoleId = @Id;

            SET @response = 'S|Record deleted successfully|' + CAST(@Id AS NVARCHAR);
            RETURN;
  END

  SET @response = 'S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
  RETURN;

 END TRY
 BEGIN CATCH
  SET @response = 'E|' + ERROR_MESSAGE() + '|0';
  RETURN;
 END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SimilarProduct_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_SimilarProduct_Get]
(
    @ProductId INT,
    @TopCount INT = 10
)
AS
BEGIN
    SET NOCOUNT ON;
DECLARE @CategoryId INT;

-- Get current product category
SELECT 
    @CategoryId = CategoryId
FROM Products
WHERE Id = @ProductId;

-- Fetch similar products with images
SELECT TOP (@TopCount)
    p.Id,
    p.ProductName,
    p.ProductDescription,
    p.CategoryId,
    p.CreatedDate,

    -- ✅ Comma-separated VariantIds
    STRING_AGG(CAST(pi.VariantId AS VARCHAR), ',') AS VariantIds,

    -- ✅ Main Image (VariantId = 0)
    MAX(CASE 
        WHEN pi.VariantId = 0 THEN pi.ImagePath 
        ELSE NULL 
    END) AS MainImage

FROM Products p

LEFT JOIN ProductImages pi 
    ON pi.ProductId = p.Id
    AND pi.IsActive = 1
    AND ISNULL(pi.IsDeleted, 0) = 0

WHERE 
    p.Id <> @ProductId
    AND p.IsActive = 1
    AND ISNULL(p.IsDeleted, 0) = 0
    AND p.CategoryId = @CategoryId

GROUP BY 
    p.Id,
    p.ProductName,
    p.ProductDescription,
    p.CategoryId,
    p.CreatedDate

ORDER BY 
    p.CreatedDate DESC;
END
--select * from ProductImages WHERE ProductId = 3
GO
/****** Object:  StoredProcedure [dbo].[SP_State_Combo]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_State_Combo]
(
@CountryId BIGINT
)
AS
BEGIN
SET NOCOUNT ON;
SELECT
    StateId AS Id,
    StateName AS [Name]
FROM State
WHERE CountryId = @CountryId
  AND ISNULL(IsDeleted,0) = 0
  AND IsActive = 1
ORDER BY StateName ASC;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_State_Delete]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_State_Delete]
(
@StateId BIGINT,
@OperatedBy BIGINT,
@response NVARCHAR(MAX) OUT
)
AS
BEGIN
SET NOCOUNT ON;

SET @response='E|Something went wrong|0';

BEGIN TRY

    IF NOT EXISTS
    (
        SELECT 1
        FROM State
        WHERE StateId = @StateId
          AND ISNULL(IsDeleted,0)=0
    )
    BEGIN
        SET @response='E|State not found|0';
        RETURN;
    END

    UPDATE State
    SET
        IsDeleted = 1,
        LastModifiedBy = @OperatedBy,
        LastModifiedDate = GETDATE()
    WHERE StateId = @StateId;

    SET @response='S|State deleted successfully|' + CAST(@StateId AS NVARCHAR);

END TRY
BEGIN CATCH
    SET @response='E|' + ERROR_MESSAGE() + '|0';
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_State_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_State_Get]
(
@StateId BIGINT = NULL,
@Search NVARCHAR(200) = NULL,
@Start INT = 0,
@Length INT = 25,
@SortColumnIndex INT = 0,
@SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN
SET NOCOUNT ON;

--------------------------------------------------
-- GET BY ID
--------------------------------------------------
IF @StateId IS NOT NULL
BEGIN
    SELECT
        S.StateId,
        S.CountryId,
        C.CountryName,
        S.StateName,
        S.StateCode,
        S.IsActive
    FROM State S
    INNER JOIN Country C ON C.CountryId = S.CountryId
    WHERE S.StateId = @StateId
      AND ISNULL(S.IsDeleted,0)=0;

    RETURN;
END

--------------------------------------------------
-- SORTING
--------------------------------------------------
DECLARE @OrderBy NVARCHAR(100);

SET @OrderBy =
CASE @SortColumnIndex
    WHEN 0 THEN 'S.StateName'
    WHEN 1 THEN 'C.CountryName'
    ELSE 'S.StateName'
END;

IF @SortDirection NOT IN ('ASC','DESC')
    SET @SortDirection='DESC';

--------------------------------------------------
-- COUNTS
--------------------------------------------------
DECLARE @Total INT,
        @Filtered INT;

SELECT @Total = COUNT(*)
FROM State
WHERE ISNULL(IsDeleted,0)=0;

SELECT @Filtered = COUNT(*)
FROM State S
INNER JOIN Country C ON C.CountryId = S.CountryId
WHERE ISNULL(S.IsDeleted,0)=0
AND (
        @Search IS NULL
        OR S.StateName LIKE '%' + @Search + '%'
        OR C.CountryName LIKE '%' + @Search + '%'
    );

SELECT
    @Total AS TotalRecords,
    @Filtered AS FilteredRecords;

--------------------------------------------------
-- DATA
--------------------------------------------------
DECLARE @SQL NVARCHAR(MAX);

SET @SQL='
SELECT
    ROW_NUMBER() OVER(ORDER BY S.StateName ASC) + @Start AS SrNo,
    S.StateId,
    S.StateName,
    C.CountryName
FROM State S
INNER JOIN Country C ON C.CountryId = S.CountryId
WHERE ISNULL(S.IsDeleted,0)=0';

IF @Search IS NOT NULL
BEGIN
    SET @SQL += '
    AND (
            S.StateName LIKE ''%'' + @Search + ''%''
            OR C.CountryName LIKE ''%'' + @Search + ''%''
        ) ';
END

SET @SQL += '
ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
OFFSET @Start ROWS
FETCH NEXT @Length ROWS ONLY';

EXEC sp_executesql
@SQL,
N'@Search NVARCHAR(200),@Start INT,@Length INT',
@Search,
@Start,
@Length;


END
GO
/****** Object:  StoredProcedure [dbo].[SP_State_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_State_Save]
(
@StateId BIGINT = 0,
@CountryId BIGINT,
@StateName VARCHAR(100),
@StateCode VARCHAR(10) = NULL,
@IsActive BIT = 1,
@OperatedBy BIGINT,
@response NVARCHAR(MAX) OUT
)
AS
BEGIN
SET NOCOUNT ON;

SET @response='E|Something went wrong|0';

BEGIN TRY

    IF EXISTS
    (
        SELECT 1
        FROM State
        WHERE StateName = @StateName
          AND CountryId = @CountryId
          AND StateId <> @StateId
          AND ISNULL(IsDeleted,0)=0
    )
    BEGIN
        SET @response='E|State already exists|0';
        RETURN;
    END

    --------------------------------------------------
    -- UPDATE
    --------------------------------------------------
    IF @StateId > 0
    BEGIN
        UPDATE State
        SET
            CountryId = @CountryId,
            StateName = @StateName,
            StateCode = @StateCode,
            IsActive = @IsActive,
            LastModifiedBy = @OperatedBy,
            LastModifiedDate = GETDATE()
        WHERE StateId = @StateId;

        SET @response='S|State updated successfully|' + CAST(@StateId AS NVARCHAR);
    END
    ELSE
    BEGIN
        --------------------------------------------------
        -- INSERT
        --------------------------------------------------
        INSERT INTO State
        (
            CountryId,
            StateName,
            StateCode,
            IsActive,
            CreatedBy,
            CreatedDate,
            LastModifiedBy,
            LastModifiedDate,
            IsDeleted
        )
        VALUES
        (
            @CountryId,
            @StateName,
            @StateCode,
            @IsActive,
            @OperatedBy,
            GETDATE(),
            @OperatedBy,
            GETDATE(),
            0
        );

        SET @StateId = SCOPE_IDENTITY();

        SET @response='S|State saved successfully|' + CAST(@StateId AS NVARCHAR);
    END

END TRY
BEGIN CATCH
    SET @response='E|' + ERROR_MESSAGE() + '|0';
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_User_ForgotPassword_GenerateOTP]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_User_ForgotPassword_GenerateOTP]
    @Email NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @UserId INT;
    DECLARE @OTP INT;

    -- Check Email Exists
    SELECT @UserId = Id
    FROM Users
    WHERE Email = @Email;

    IF (@UserId IS NULL)
    BEGIN
        SELECT 0 AS Status, 'Email not found' AS Message;
        RETURN;
    END

    -- Mark all old OTPs as used
    UPDATE User_ForgetPassword
    SET IsUsed = 1
    WHERE Email = @Email
      AND IsUsed = 0;

    -- Generate 6-digit OTP
    SET @OTP = ABS(CHECKSUM(NEWID())) % 900000 + 100000;

    -- Insert new OTP with 10 min expiry
    INSERT INTO User_ForgetPassword
    (
        Email,
        OTP,
        CreatedAt,
        ExpiryDate,
        IsUsed
    )
    VALUES
    (
        
        @Email,
        @OTP,
        GETDATE(),
        DATEADD(MINUTE, 10, GETDATE()),
        0
    );

    -- Success response
    SELECT 
        1 AS Status,
        'OTP generated successfully' AS Message,
        @OTP AS OTP; -- remove in production
END


GO
/****** Object:  StoredProcedure [dbo].[SP_User_ForgotPassword_ResetPassword]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[SP_User_ForgotPassword_ResetPassword]
    @Email NVARCHAR(100),
    @NewPassword NVARCHAR(200)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @UserId INT;

    -- Check Email Exists
    SELECT @UserId = Id
    FROM Users
    WHERE Email = @Email;

    IF (@UserId IS NULL)
    BEGIN
        SELECT 0 AS Status, 'Email not found' AS Message;
        RETURN;
    END

    
    

    -- Update Password
    UPDATE Users
    SET Password = @NewPassword
    WHERE Id = @UserId;

    SELECT 1 AS Status, 'Password reset successfully' AS Message;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_User_ForgotPassword_VerifyOTP]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_User_ForgotPassword_VerifyOTP]
    @Email NVARCHAR(100),
    @OTP INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @DB_OTP INT;
    DECLARE @CreatedAt DATETIME;
    DECLARE @IsUsed BIT;

    -- Get latest OTP (last inserted)
    SELECT TOP 1 
        @DB_OTP = OTP,
        @CreatedAt = CreatedAt,
        @IsUsed = IsUsed
    FROM User_ForgetPassword
    WHERE Email = @Email
    ORDER BY CreatedAt DESC;

    -- 1. Check OTP exists
    IF (@DB_OTP IS NULL)
    BEGIN
        SELECT 0 AS Status, 'OTP expired or not found.' AS Message;
        RETURN;
    END

    -- 2. Check already used
    IF (@IsUsed = 1)
    BEGIN
        SELECT 0 AS Status, 'OTP already used.' AS Message;
        RETURN;
    END

    -- 3. Check expiry (10 minutes)
    IF (DATEDIFF(MINUTE, @CreatedAt, GETDATE()) > 10)
    BEGIN
        SELECT 0 AS Status, 'OTP expired (valid only 10 minutes).' AS Message;
        RETURN;
    END

    -- 4. Check OTP match
    IF (@DB_OTP <> @OTP)
    BEGIN
        SELECT 0 AS Status, 'Invalid OTP.' AS Message;
        RETURN;
    END

    -- 5. Mark OTP as used
    UPDATE User_ForgetPassword
    SET IsUsed = 1
    WHERE Email = @Email
      AND OTP = @OTP
      AND IsUsed = 0;

    SELECT 1 AS Status, 'OTP verified successfully' AS Message;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_UserMenuAccess]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[SP_UserMenuAccess]
(
    @UserId BIGINT
)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @RoleId BIGINT;
    DECLARE @RoleName NVARCHAR(100);
    DECLARE @IsSuperAdmin BIT = 0;
    DECLARE @IsAdmin BIT = 0;

    -- Get Role Info
    SELECT 
        @RoleId = r.Id,
        @RoleName = r.RoleName
    FROM Users u
    INNER JOIN Roles r ON u.RoleId = r.Id
    WHERE u.Id = @UserId
      AND u.IsDeleted = 0
      AND r.IsDeleted = 0;

    -- SuperAdmin Check
    IF @RoleName = 'SuperAdmin'
        SET @IsSuperAdmin = 1;

    -- Admin Check
    IF @RoleName = 'Admin'
        SET @IsAdmin = 1;

    /* ============================================================
       1️⃣ FIRST RESULT SET
    ============================================================ */
    SELECT 
        @IsSuperAdmin AS IsSuperAdmin,
        @IsAdmin AS IsAdmin;


    /* ============================================================
       2️⃣ SECOND RESULT SET (UserMenuAccess)
    ============================================================ */

    IF @IsSuperAdmin = 1
    BEGIN
        -- SuperAdmin gets full access to all active menus
        SELECT
            @RoleId                    AS RoleId,
            @UserId                    AS UserId,
            a.Id                       AS MenuId,
            CAST(1 AS BIT)             AS IsCreate,
            CAST(1 AS BIT)             AS IsUpdate,
            CAST(1 AS BIT)             AS IsRead,
            CAST(1 AS BIT)             AS IsDelete,

            r.RoleName                 AS RoleName,
            (u.FirstName + ' ' + u.LastName) AS UserName,
            a.Name                     AS MenuName,
            a.Area                     AS Area,
            a.Controller               AS Controller,
            a.Url                      AS Url,
            ISNULL(a.ParentId,0)   AS ParentMenuId,
            pm.Name                    AS ParentMenuName,
            a.DisplayOrder             AS DisplayOrder

        FROM Menus a
        INNER JOIN Roles r ON r.Id = @RoleId
        INNER JOIN Users u ON u.Id = @UserId
        LEFT JOIN Menus pm ON pm.Id = a.ParentId
        WHERE a.IsDeleted = 0
          AND a.IsActive = 1
        ORDER BY a.DisplayOrder;
    END
    ELSE
    BEGIN
        -- Role-based permissions
        SELECT
            rp.RoleId                  AS RoleId,
            @UserId                    AS UserId,
            a.Id                       AS MenuId,
            r.RoleName                 AS RoleName,
            (u.FirstName + ' ' + u.LastName) AS UserName,
            a.Name                     AS MenuName,
            a.Area                     AS Area,
            a.Controller               AS Controller,
            a.Url                      AS Url,
            ISNULL(a.ParentId,0)   AS ParentMenuId,
            pm.Name                    AS ParentMenuName,
            a.DisplayOrder             AS DisplayOrder

        FROM RolePermissions rp
        INNER JOIN Menus a ON rp.ActionId = a.Id
        INNER JOIN Roles r ON rp.RoleId = r.Id
        INNER JOIN Users u ON u.RoleId = r.Id
        LEFT JOIN Menus pm ON pm.Id = a.ParentId
        WHERE u.Id = @UserId
          AND rp.IsDeleted = 0
          AND rp.IsActive = 1
          AND a.IsDeleted = 0
          AND a.IsActive = 1
        ORDER BY a.DisplayOrder;
    END

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Users_Get]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[SP_Users_Get]
(
 @Id INT = NULL,
 @Search NVARCHAR(200) = NULL,
 @Start INT = 0,
 @Length INT = 25,
 @SortColumnIndex INT = 0,
 @SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN
 SET NOCOUNT ON;

	-- ============================================
    -- 🔹 IF ID IS PROVIDED → RETURN SINGLE RECORD
    -- ============================================
    IF @Id IS NOT NULL
    BEGIN
        SELECT 
            X.Id,
            X.RoleId,
            R.RoleName,
            X.FirstName,
            X.LastName,
            X.UserName,
            X.IsActive,
            X.LastModifiedDate
        FROM Users X
        LEFT JOIN Roles R ON R.Id = X.RoleId
        WHERE X.Id = (CASE WHEN @Id < 0 THEN X.Id ELSE @Id END) AND X.IsDeleted = 0 AND X.Id > 1
		AND X.IsActive = (CASE WHEN @Id < 0 THEN 1 ELSE X.IsActive END) ;

        RETURN;
    END

 DECLARE @OrderBy NVARCHAR(100)

    -- Map column index to actual DB column
    SET @OrderBy = 
        CASE @SortColumnIndex
            WHEN 0 THEN 'X.Id'
            WHEN 1 THEN 'X.UserName'
            WHEN 2 THEN 'X.FirstName'     -- FullName
            WHEN 3 THEN 'R.RoleName'
            WHEN 4 THEN 'X.IsActive'
            ELSE 'X.Id'
        END

    -- Force direction safe
    IF @SortDirection NOT IN ('ASC','DESC')
        SET @SortDirection = 'DESC'

    -- =============================
    -- Counts
    -- =============================
	 DECLARE @Total INT, @Filtered INT;

	 SELECT @Total = COUNT(*) FROM Users WHERE IsDeleted = 0 AND Id > 1;

	 SELECT @Filtered = COUNT(*)
	 FROM Users X WHERE X.IsDeleted = 0 AND Id > 1 AND (@Search IS NULL OR X.UserName LIKE '%' + @Search + '%' OR X.FirstName LIKE '%' + @Search + '%' OR X.LastName LIKE '%' + @Search + '%');
   
	 SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords;

	
	-- =============================
    -- Data
    -- =============================
    DECLARE @SQL NVARCHAR(MAX)

    SET @SQL = '
    SELECT 
        ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
        X.Id,
        X.RoleId,
        R.RoleName,
        X.FirstName,
        X.LastName,
        X.UserName,
        X.IsActive,
        X.LastModifiedDate
    FROM Users X
    LEFT JOIN Roles R ON R.Id = X.RoleId
    WHERE X.IsDeleted = 0 AND X.Id > 1
    '

    IF @Search IS NOT NULL
        SET @SQL += '
        AND (
            X.UserName LIKE ''%'' + @Search + ''%'' OR
            X.FirstName LIKE ''%'' + @Search + ''%'' OR
            X.LastName LIKE ''%'' + @Search + ''%''
        )'

    SET @SQL += '
    ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
    OFFSET @Start ROWS FETCH NEXT @Length ROWS ONLY'

    EXEC sp_executesql
        @SQL,
        N'@Search NVARCHAR(200), @Start INT, @Length INT',
        @Search, @Start, @Length;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Users_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/* ============================================================
   Users
============================================================ */

CREATE   PROCEDURE [dbo].[SP_Users_Save]
(
 @Id INT = 0,
 @RoleId INT = 0,
 @UserName NVARCHAR(250) = NULL,
 @Password NVARCHAR(500) = NULL,
 @FirstName NVARCHAR(250) = NULL,
 @LastName NVARCHAR(250) = NULL,
  @Email NVARCHAR(150) = NULL,
 @IsActive BIT = 1,
 @IsDeleted BIT = 0,
 @Mode NVARCHAR(10),
 @OperatedBy INT,
 @response NVARCHAR(MAX) OUT
)
AS
BEGIN
 SET NOCOUNT ON;

 -- Default Error Response
 SET @response = 'E|Opps!... Something went wrong. Please contact system administrator|0';

 BEGIN TRY

  IF @Mode NOT IN ('SAVE','STATUS','DELETE')
  BEGIN
   SET @response = 'E|Invalid mode supplied.|0';
   RETURN;
  END

  IF @Mode = 'SAVE'
  BEGIN
  
   -- ============================
   -- Required Field Validation
   -- ============================
   IF ISNULL(@FirstName,'') = ''
   BEGIN
    SET @response = 'E|First Name is required.|0';
    RETURN;
   END

   IF ISNULL(@LastName,'') = ''
   BEGIN
    SET @response = 'E|Last Name is required.|0';
    RETURN;
   END

   IF ISNULL(@UserName,'') = ''
   BEGIN
    SET @response = 'E|User Name is required.|0';
    RETURN;
   END

   IF ISNULL(@RoleId,0) = 0
   BEGIN
    SET @response = 'E|Role is required.|0';
    RETURN;
   END

   -- ============================
   -- Password Rule
   -- ============================
   IF @Id = 0 AND ISNULL(@Password,'') = ''
   BEGIN
    SET @response = 'E|Password is required for new user.|0';
    RETURN;
   END

   -- ============================
   -- Duplicate Validation
   -- ============================
   IF EXISTS (
        SELECT 1
        FROM Users
        WHERE UserName = @UserName
          AND IsDeleted = 0
          AND (@Id = 0 OR Id <> @Id) AND Id > 1
      )
   BEGIN
    SET @response = 'E|User Name already exists.|0';
    RETURN;
   END

   IF @Id > 0
    UPDATE Users
    SET RoleId = @RoleId,
		 UserName = @UserName,
		 Password = (CASE WHEN ISNULL(@Password, '') != '' THEN @Password ELSE Password END),
		 FirstName = @FirstName,
		 Email=@Email,
		 LastName = @LastName,
		 IsActive = @IsActive,
		 LastModifiedBy = @OperatedBy,
        LastModifiedDate = GETDATE()
    WHERE Id = @Id AND Id > 1;
   ELSE
   BEGIN
    INSERT INTO Users (FirstName, LastName, UserName, [Password], RoleId, IsActive, IsDeleted, CreatedBy, CreatedDate,Email)
    VALUES (@FirstName, @LastName, @UserName, @Password, @RoleId, 1, 0, @OperatedBy, GETDATE(),@Email);

    SET @Id = SCOPE_IDENTITY();
   END
  END
  ELSE IF @Mode = 'STATUS'
  BEGIN
   UPDATE Users
   SET IsActive = @IsActive,
       IsDeleted = @IsDeleted,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id AND Id > 1;
  END
  ELSE IF @Mode = 'DELETE'
  BEGIN
   UPDATE Users
   SET IsActive = 0,
       IsDeleted = 1,
       LastModifiedBy = @OperatedBy,
       LastModifiedDate = GETDATE()
   WHERE Id = @Id AND Id > 1;
   
            SET @response = 'S|Record deleted successfully|' + CAST(@Id AS NVARCHAR);
            RETURN;
  END

  SET @response = 'S|Record saved successfully|' + CAST(@Id AS NVARCHAR);
  RETURN;

 END TRY
 BEGIN CATCH
  SET @response = 'E|' + ERROR_MESSAGE() + '|0';
  RETURN;
 END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Variant_Combo]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_Variant_Combo]

AS
BEGIN
	Select Id , ((select ProductName from Products where Id = ProductId) +'(' + SKU  + ')')Product_Name , Price from ProductVariantMapping WHERE IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Wishlist_List]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Wishlist_List]
(
@Id INT = NULL,
@CustomerId INT,
@Search NVARCHAR(200) = NULL,
@Start INT = 0,
@Length INT = 25,
@SortColumnIndex INT = 0,
@SortDirection NVARCHAR(4) = 'DESC'
)
AS
BEGIN
SET NOCOUNT ON;

--------------------------------------------------
-- GET BY ID
--------------------------------------------------
IF @Id IS NOT NULL
BEGIN
    SELECT
        WC.Id,
        WC.CustomerId,
        WC.ProductId,
        WC.VariantId,
        WC.CreatedDate
    FROM WishlistCustomer WC
    WHERE WC.Id = @Id
      AND WC.CustomerId = @CustomerId
      AND WC.IsDeleted = 0;

    RETURN;
END

--------------------------------------------------
-- SORTING
--------------------------------------------------
DECLARE @OrderBy NVARCHAR(100);

SET @OrderBy =
CASE @SortColumnIndex
    WHEN 0 THEN 'WC.CreatedDate'
    WHEN 1 THEN 'WC.ProductId'
    WHEN 2 THEN 'WC.VariantId'
    ELSE 'WC.CreatedDate'
END;

IF @SortDirection NOT IN ('ASC','DESC')
    SET @SortDirection = 'DESC';

--------------------------------------------------
-- COUNTS
--------------------------------------------------
DECLARE @Total INT,
        @Filtered INT;

SELECT @Total = COUNT(*)
FROM WishlistCustomer
WHERE CustomerId = @CustomerId
  AND IsDeleted = 0
  AND IsActive = 1;

SELECT @Filtered = COUNT(*)
FROM WishlistCustomer WC
WHERE WC.CustomerId = @CustomerId
  AND WC.IsDeleted = 0
  AND WC.IsActive = 1
  AND
  (
        @Search IS NULL
        OR CAST(WC.ProductId AS VARCHAR(50)) LIKE '%' + @Search + '%'
  );

SELECT
    @Total AS TotalRecords,
    @Filtered AS FilteredRecords;

--------------------------------------------------
-- DATA
--------------------------------------------------
DECLARE @SQL NVARCHAR(MAX);

SET @SQL = '
SELECT
    ROW_NUMBER() OVER(ORDER BY WC.CreatedDate DESC) + @Start AS SrNo,
    WC.Id,
    WC.CustomerId,
    WC.ProductId,
    WC.VariantId,
    WC.CreatedDate
FROM WishlistCustomer WC
WHERE WC.CustomerId = @CustomerId
  AND WC.IsDeleted = 0
  AND WC.IsActive = 1';

IF @Search IS NOT NULL
BEGIN
    SET @SQL += '
    AND CAST(WC.ProductId AS VARCHAR(50))
        LIKE ''%'' + @Search + ''%'' ';
END

SET @SQL += '
ORDER BY ' + @OrderBy + ' ' + @SortDirection + '
OFFSET @Start ROWS
FETCH NEXT @Length ROWS ONLY';

EXEC sp_executesql
@SQL,
N'@CustomerId INT,
@Search NVARCHAR(200),
@Start INT,
@Length INT',
@CustomerId = @CustomerId,
@Search = @Search,
@Start = @Start,
@Length = @Length;


END
GO
/****** Object:  StoredProcedure [dbo].[SP_Wishlist_List_New]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--          select * from ProductVariantDetails
CREATE PROCEDURE [dbo].[SP_Wishlist_List_New] 
(
@CustomerId INT
)
AS
BEGIN
SET NOCOUNT ON;

SELECT
    COUNT(*) AS TotalRecords
FROM WishlistCustomer
WHERE CustomerId = @CustomerId
  AND IsDeleted = 0
  AND IsActive = 1;

  --        select * from ProductVariantMapping
SELECT
    WC.Id,
    WC.ProductId,

    WC.VariantId,

STRING_AGG(
    A.Name + ' : ' + AV.Value,
    ', '
) AS VariantAttributeValues_Only,

STRING_AGG(
    CAST(A.Id AS VARCHAR(50))
    + ':' +
    CAST(AV.Id AS VARCHAR(50)),
    ', '
) AS VariantAttributeValues_Id,

		wc.PackingType,
		    P.ProductName,
    P.CategoryId,
    C.CategoryName,

	PVM.Price,PVM.DiscountPercent,
    PVM.SellPrice,
    PVM.SKU,

    PI.ImagePath,

    ISNULL(PS.TotalAvailableStock,0) AS TotalAvailableStock,

    WC.CreatedDate

FROM WishlistCustomer WC

INNER JOIN Products P
    ON P.Id = WC.ProductId

INNER JOIN Category C
    ON C.Id = P.CategoryId

LEFT JOIN ProductVariantMapping PVM
    ON PVM.Id = WC.VariantId

LEFT JOIN ProductVariantDetails PVD
    ON PVD.VariantId = PVM.Id

	LEFT JOIN Attribute A
    ON A.Id = PVD.AttributeId

LEFT JOIN AttributeValue AV
    ON AV.Id = PVD.AttributeValueId

LEFT JOIN ProductImages PI
    ON PI.ProductId = P.Id
    AND PI.VariantId = 0
    AND PI.IsPrimary = 1
    AND PI.IsActive = 1
    AND PI.IsDeleted = 0

LEFT JOIN
(
    SELECT
        VariantId,
        SUM(ISNULL(AvailableStock,0))
        - SUM(ISNULL(ReservedStock,0)) AS TotalAvailableStock
    FROM ProductStock
    GROUP BY VariantId
) PS
    ON PS.VariantId = PVM.Id

WHERE WC.CustomerId = @CustomerId
  AND WC.IsDeleted = 0
  AND WC.IsActive = 1

GROUP BY
    WC.Id,
    WC.ProductId,
    P.ProductName,
    WC.VariantId,
    P.CategoryId,
    C.CategoryName,
	PVM.Price,PVM.DiscountPercent, PVM.SellPrice,
    PVM.SKU,
    PI.ImagePath,
    PS.TotalAvailableStock,
	wc.PackingType,
    WC.CreatedDate

ORDER BY WC.CreatedDate DESC;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_Wishlist_Save]    Script Date: 12-Sep-26 10:53:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Wishlist_Save]
(
@Id INT = NULL,
    @CustomerId INT,
    @ProductId INT= NULL,
    @VariantId INT = NULL,
	@PackingType VARCHAR(20) = NULL,
    @Operated_By INT,
    @Action VARCHAR(20),
    @Response VARCHAR(100) OUTPUT
)
AS
BEGIN
    SET NOCOUNT ON;

    SET @Response = 'E|Contact system administrator|0';

    IF(@Action = 'INSERT')
    BEGIN
        IF EXISTS
        (
            SELECT 1
            FROM WishlistCustomer WITH(NOLOCK)
            WHERE CustomerId = @CustomerId
            AND ProductId = @ProductId
            AND ISNULL(VariantId,0) = ISNULL(@VariantId,0)
			 AND ISNULL(PackingType,'') = ISNULL(@PackingType,'')
            AND IsDeleted = 0
        )
        BEGIN
            SET @Response = 'E|Product already exists in wishlist|0';
            RETURN;
        END

        INSERT INTO WishlistCustomer
        (
            CustomerId,
            ProductId,
            VariantId,
			PackingType,
            IsActive,
            IsDeleted,
            CreatedBy,
            CreatedDate
        )
        VALUES
        (
            @CustomerId,
            @ProductId,
            @VariantId,
			 @PackingType,
            1,
            0,
            @Operated_By,
            GETDATE()
        );

        SET @Response = 'S|Product added to wishlist successfully|0';
    END

  ELSE IF(@Action = 'REMOVE')
   BEGIN

    UPDATE WishlistCustomer
    SET
        IsDeleted = 1,
        IsActive = 0,
        LastModifiedBy = @Operated_By,
        LastModifiedDate = GETDATE()
    WHERE Id = @Id
      AND CustomerId = @CustomerId
      AND IsDeleted = 0;

    SET @Response = 'S|Product removed from wishlist successfully|0';

   END
END

GO
