USE [padhyacl_HridhayConnect]
GO
/****** Object:  Table [dbo].[Attribute]    Script Date: 01-07-2026 17:14:27 ******/
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
/****** Object:  Table [dbo].[AttributeValue]    Script Date: 01-07-2026 17:14:28 ******/
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
/****** Object:  Table [dbo].[Cart]    Script Date: 01-07-2026 17:14:28 ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 01-07-2026 17:14:28 ******/
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
/****** Object:  Table [dbo].[Collection]    Script Date: 01-07-2026 17:14:28 ******/
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
/****** Object:  Table [dbo].[CollectionMapping]    Script Date: 01-07-2026 17:14:28 ******/
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
/****** Object:  Table [dbo].[Country]    Script Date: 01-07-2026 17:14:28 ******/
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
/****** Object:  Table [dbo].[Coupons]    Script Date: 01-07-2026 17:14:28 ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 01-07-2026 17:14:28 ******/
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
/****** Object:  Table [dbo].[CustomerAddress]    Script Date: 01-07-2026 17:14:28 ******/
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
/****** Object:  Table [dbo].[CustomerCart]    Script Date: 01-07-2026 17:14:28 ******/
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
/****** Object:  Table [dbo].[ForgetPassword]    Script Date: 01-07-2026 17:14:28 ******/
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
/****** Object:  Table [dbo].[HomePageComponent]    Script Date: 01-07-2026 17:14:28 ******/
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
/****** Object:  Table [dbo].[HomePageComponentItem]    Script Date: 01-07-2026 17:14:28 ******/
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
/****** Object:  Table [dbo].[Inquiries]    Script Date: 01-07-2026 17:14:28 ******/
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
/****** Object:  Table [dbo].[InquiryReplies]    Script Date: 01-07-2026 17:14:28 ******/
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
/****** Object:  Table [dbo].[InquiryStatusHistory]    Script Date: 01-07-2026 17:14:28 ******/
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
/****** Object:  Table [dbo].[LOV_MASTER]    Script Date: 01-07-2026 17:14:28 ******/
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
/****** Object:  Table [dbo].[Menus]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[NotificationMaster]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[OfferApplicability]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[OfferBenefits]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[OfferConditions]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[Offers]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[OfferUsage]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[OrderDeliveryStatus]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[OrderItems]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[OrderRewardSlab]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[Orders]    Script Date: 01-07-2026 17:14:29 ******/
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
	[RazorpayOrderId] [nvarchar](100) NULL,
	[RazorpayPaymentId] [nvarchar](100) NULL,
	[RazorpaySignature] [nvarchar](255) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[ProductPriceHistory]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[Products]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[ProductStock]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[ProductStockHistory]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[ProductVariantDetails]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[ProductVariantMapping]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[Reviews]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[Reward]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[RewardSettings]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[RewardUsageHistory]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[RolePermissions]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 01-07-2026 17:14:29 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[User_ForgetPassword]    Script Date: 01-07-2026 17:14:29 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 01-07-2026 17:14:30 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishlistCustomer]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[CheckUserAuthenticationForUserMaster]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_AddToCart]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_AddToCart_Offersdemo]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ApplyOffersToCart]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ApplyOffersToCart_demo]    Script Date: 01-07-2026 17:14:30 ******/
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
	SELECT cc.CustomerId, p.ProductName, cc.ProductId, cc.VariantId, p.CategoryId, cc.Quantity, pvm.SellPrice, (cc.Quantity * pvm.SellPrice) AS LineTotal
	INTO #CartItems
	FROM CustomerCart cc
	JOIN ProductVariantMapping pvm ON pvm.Id = cc.VariantId AND pvm.ProductId = cc.ProductId
	JOIN Products p ON p.Id = cc.ProductId
	WHERE cc.CustomerId = @CustomerId and cc.IsActive = 1;

	SELECT C.ProductId, P.ProductName, C.VariantId, P.VariantAttributeValues_Only, C.CategoryId, P.CategoryName, C.Quantity, C.SellPrice As Price, (C.Quantity * C.SellPrice) as Total, P.SKU, P.ImagePath, P.TotalAvailableStock
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
/****** Object:  StoredProcedure [dbo].[SP_ApplyOffersToCart_OLD]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Attribute_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Attribute_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_AttributeValue_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_AttributeValue_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Category_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Category_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_CategorySKU_GenerateUnique]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ChangePassword]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_CheckAuthentication]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Checkout]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Country_Combo]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Country_Delete]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Country_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Country_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Coupons_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Coupons_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Customer_Cart_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Customer_Cart_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Customer_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Customer_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_CustomerAddress_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_CustomerAddress_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_CustomerDashboard_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_CustomerLogin]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_DD_Category_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_DD_Product]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_DD_User]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ForgotPassword_GenerateOTP]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ForgotPassword_ResetPassword]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ForgotPassword_VerifyOTP]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GenerateOrderNumber]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetCart]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_GetOrderByCustomer]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_HomePageComponent_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_HomePageComponent_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Inquiry_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Inquiry_History_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Inquiry_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Inquiry_Status_Change]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LOV_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Lov_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LovDtl_Delete]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LovDtl_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[Sp_Love_Combo]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LovMaster_Delete]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Menus_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Menus_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Notification_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Notification_Master]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Notification_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Offer_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Offer_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Order_Detail_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_OrderRewardSlab_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_OrderRewardSlab_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Orders_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Orders_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Product_Combo]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Product_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Product_Get2]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Product_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ProductStock_Adjust]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ProductStock_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ReleaseExpiredReservations]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_RemoveFromCart]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Reviews_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
BEGIN

SET NOCOUNT ON;

---------------------------------------
-- SINGLE RECORD
---------------------------------------

DECLARE @Total INT
DECLARE @Filtered INT

IF @Id >0
BEGIN

SELECT
R.Id,
R.ProductId,
R.UserId,
P.ProductName,
--U.UserName,
(c.FirstName + ' ' + c.LastName) as UserName,
R.Rating,
R.ReviewText,
R.IsApproved,
R.IsActive,
R.CreatedDate

FROM Reviews R
LEFT JOIN Products P ON R.ProductId = P.Id
LEFT JOIN Customer c ON R.UserId = c.Id
WHERE R.Id = @Id
AND R.IsDeleted = 0

RETURN

END

IF @Id = -1 AND @ProductId IS NOT NULL
BEGIN
SELECT @Total = COUNT(*)
FROM Reviews
WHERE IsDeleted = 0 AND (@ProductID = NULL or ProductId = @ProductID)

SELECT @Filtered = COUNT(*)
FROM Reviews R
LEFT JOIN Products P ON R.ProductId = P.Id
LEFT JOIN Customer c ON R.UserId = c.Id
WHERE R.IsDeleted = 0
AND (@ProductID = NULL or r.ProductId = @ProductID)

AND (
 @Search IS NULL
 OR P.ProductName LIKE '%' + @Search + '%'
 OR (c.FirstName+c.LastName) LIKE '%' + @Search + '%'
 OR R.ReviewText LIKE '%' + @Search + '%'
)
SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords
SELECT
R.Id,
R.ProductId,
R.UserId,
P.ProductName,
--U.UserName,
(c.FirstName + ' ' + c.LastName) as UserName,
R.Rating,
R.ReviewText,
R.IsApproved,
R.IsActive,
R.CreatedDate

FROM Reviews R
LEFT JOIN Products P ON R.ProductId = P.Id
LEFT JOIN Customer c ON R.UserId = c.Id
WHERE R.IsDeleted = 0 AND (@ProductID = NULL or R.ProductId = @ProductID)

RETURN

end

---------------------------------------
-- SORT COLUMN MAP
---------------------------------------

DECLARE @OrderBy NVARCHAR(100)

SET @OrderBy =
CASE @SortColumnIndex
 WHEN 0 THEN 'R.Id'
 WHEN 1 THEN 'R.Id'
 WHEN 2 THEN 'P.ProductName'
WHEN 3 THEN '(c.FirstName + '' '' + c.LastName)'
 WHEN 4 THEN 'R.Rating'
 WHEN 5 THEN 'R.ReviewText'
 WHEN 6 THEN 'R.IsApproved'
 ELSE 'R.Id'
END

IF @SortDirection NOT IN ('ASC','DESC')
SET @SortDirection = 'DESC'

---------------------------------------
-- COUNTS
---------------------------------------


SELECT @Total = COUNT(*)
FROM Reviews
WHERE IsDeleted = 0

SELECT @Filtered = COUNT(*)
FROM Reviews R
LEFT JOIN Products P ON R.ProductId = P.Id
LEFT JOIN Customer c ON R.UserId = c.Id
WHERE R.IsDeleted = 0
AND (
 @Search IS NULL
 OR P.ProductName LIKE '%' + @Search + '%'
 OR (c.FirstName+c.LastName) LIKE '%' + @Search + '%'
 OR R.ReviewText LIKE '%' + @Search + '%'
)

SELECT @Total AS TotalRecords, @Filtered AS FilteredRecords

---------------------------------------
-- DATA
---------------------------------------

DECLARE @SQL NVARCHAR(MAX)

SET @SQL = '
SELECT
 ROW_NUMBER() OVER (ORDER BY ' + @OrderBy + ' ' + @SortDirection + ') + @Start AS SrNo,
 R.Id,
 P.ProductName,
 --U.UserName,
(c.FirstName + '' '' + c.LastName) as UserName,
 R.Rating,
 R.ReviewText,
 R.IsApproved,
 R.IsActive,
 R.CreatedDate

FROM Reviews R
LEFT JOIN Products P ON R.ProductId = P.Id
LEFT JOIN Customer c ON R.UserId = c.Id

WHERE R.IsDeleted = 0
'

IF @Search IS NOT NULL
SET @SQL += '
AND (
 P.ProductName LIKE ''%'' + @Search + ''%''
OR (c.FirstName + '' '' + c.LastName) LIKE ''%'' + @Search + ''%''
 OR R.ReviewText LIKE ''%'' + @Search + ''%''
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
/****** Object:  StoredProcedure [dbo].[SP_Reviews_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Reward_Add]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_RewardHistory_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_RewardSettings_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_RewardSettings_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Roles_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Roles_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_SimilarProduct_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_State_Combo]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_State_Delete]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_State_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_State_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_User_ForgotPassword_GenerateOTP]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_User_ForgotPassword_ResetPassword]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_User_ForgotPassword_VerifyOTP]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_UserMenuAccess]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Users_Get]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Users_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Variant_Combo]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Wishlist_List]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Wishlist_List_New]    Script Date: 01-07-2026 17:14:30 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Wishlist_Save]    Script Date: 01-07-2026 17:14:30 ******/
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
USE [padhyacl_HridhayConnect]
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
