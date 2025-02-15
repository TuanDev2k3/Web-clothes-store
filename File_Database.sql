USE [BaicuoikyLTW]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/18/2024 2:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 4/18/2024 2:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/18/2024 2:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/18/2024 2:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/18/2024 2:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/18/2024 2:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/18/2024 2:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Lock] [bit] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 4/18/2024 2:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 4/18/2024 2:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HoaDonId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProductPrice] [float] NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 4/18/2024 2:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProDuctId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[AplicationUserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/18/2024 2:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AplicationUserId] [nvarchar](450) NOT NULL,
	[Toatal] [float] NOT NULL,
	[OrderTime] [datetime2](7) NOT NULL,
	[OrderStatus] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/18/2024 2:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[SanPhamID] [int] NOT NULL,
	[QuantityInStock] [float] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/18/2024 2:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231017075102_SanPham', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231017090035_SanPham', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231018072511_Product', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231018074928_Product', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231018081905_Product', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231019135704_User', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231021081336_GioHang', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231102133550_HoaDon_CTHD', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231103061051_Phone', N'7.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240405144623_KhoVLock', N'7.0.12')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1f7d33f3-9680-43f5-80d6-76ff721cb418', N'User', N'USER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7f35d364-96d6-4e8d-83dd-6f583be16a73', N'Admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'714cca54-74b2-4c84-81d6-2213056ed406', N'7f35d364-96d6-4e8d-83dd-6f583be16a73')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7b0e6486-d5bd-4920-8d57-f148fd7d621a', N'1f7d33f3-9680-43f5-80d6-76ff721cb418')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c6d5ac5d-f5e3-4db8-a1a1-ab1a2ee28eee', N'1f7d33f3-9680-43f5-80d6-76ff721cb418')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Discriminator], [Name], [Phone], [Lock]) VALUES (N'714cca54-74b2-4c84-81d6-2213056ed406', N'thanhadmin@gmail.com', N'THANHADMIN@GMAIL.COM', N'thanhadmin@gmail.com', N'THANHADMIN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELG7rFboFGtdeeKaPED/Fq6dVrNs2IwlScH41bKOHGaFtYmkIZlQ26NtsIrqjdDlfg==', N'DHBP5AP666657W567VPEPGBCY5QAF753', N'6876e31f-fbf0-4cbe-a990-d94db7aa5281', NULL, 0, 0, NULL, 1, 0, N'Giang điền', N'AplicationUser', N'Nguyễn Vũ Trung Thành', N'0913142075', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Discriminator], [Name], [Phone], [Lock]) VALUES (N'7b0e6486-d5bd-4920-8d57-f148fd7d621a', N'triadmin@gmail.com', N'TRIADMIN@GMAIL.COM', N'triadmin@gmail.com', N'TRIADMIN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEIMfhFeSykXeIbF7SzxGYQcAFXE7bdpzUr1ueXQz7712f61V+VxfgziAQZ8BVKLN9Q==', N'RTHXTR265LWVFU7DY2VAU6C2P5PGWY4J', N'06ef3505-4071-40cd-aad7-09e39a2327e7', NULL, 0, 0, NULL, 1, 0, N'cây gáo-giang điền -trảng bom -đồng nai', N'AplicationUser', N'Nguyễn Vũ Trung Thành', N'0913142075', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Address], [Discriminator], [Name], [Phone], [Lock]) VALUES (N'c6d5ac5d-f5e3-4db8-a1a1-ab1a2ee28eee', N'thanhtrung2111@gmail.com', N'THANHTRUNG2111@GMAIL.COM', N'thanhtrung2111@gmail.com', N'THANHTRUNG2111@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEL9oR07O2N3n8GvKSftB7sghgO1MV/CaIH7NviDEXIpU6FXCjkf1V+mpLwN89D8hDg==', N'GLN55M74VAHL2AJJO6K4ZSHWQCMR3NNS', N'9344ecde-1c4f-4d3a-b314-5ebba59b1c47', NULL, 0, 0, NULL, 1, 0, N'cây gáo-giang điền -trảng bom -đồng nai', N'AplicationUser', N'Nguyễn Vũ Trung Thành', N'0913142075', NULL)
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] ON 

INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [ProductId], [Quantity], [ProductPrice]) VALUES (1, 21, 1124, 1, 30)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [ProductId], [Quantity], [ProductPrice]) VALUES (2, 21, 1128, 1, 10)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [ProductId], [Quantity], [ProductPrice]) VALUES (3, 22, 1130, 4, 80)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [ProductId], [Quantity], [ProductPrice]) VALUES (4, 24, 1131, 6, 120)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [ProductId], [Quantity], [ProductPrice]) VALUES (5, 24, 1129, 2, 20)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [ProductId], [Quantity], [ProductPrice]) VALUES (6, 25, 1130, 3, 60)
INSERT [dbo].[ChiTietHoaDon] ([Id], [HoaDonId], [ProductId], [Quantity], [ProductPrice]) VALUES (7, 25, 1129, 3, 30)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([Id], [AplicationUserId], [Toatal], [OrderTime], [OrderStatus], [PhoneNumber], [Name], [Address]) VALUES (21, N'714cca54-74b2-4c84-81d6-2213056ed406', 40, CAST(N'2024-04-17T23:26:44.6998154' AS DateTime2), N'Đang xác nhận', N'0987654321', N'Nguyễn Vũ Trung Thành', N'Giang điền')
INSERT [dbo].[HoaDon] ([Id], [AplicationUserId], [Toatal], [OrderTime], [OrderStatus], [PhoneNumber], [Name], [Address]) VALUES (22, N'714cca54-74b2-4c84-81d6-2213056ed406', 80, CAST(N'2024-04-18T10:18:57.1587943' AS DateTime2), N'Đang xác nhận', N'4', N'Nguyễn Vũ Trung Thành', N'Giang điền')
INSERT [dbo].[HoaDon] ([Id], [AplicationUserId], [Toatal], [OrderTime], [OrderStatus], [PhoneNumber], [Name], [Address]) VALUES (24, N'714cca54-74b2-4c84-81d6-2213056ed406', 140, CAST(N'2024-04-18T12:34:36.3251355' AS DateTime2), N'Đang xác nhận', N'0', N'Nguyễn Vũ Trung Thành', N'Giang điền')
INSERT [dbo].[HoaDon] ([Id], [AplicationUserId], [Toatal], [OrderTime], [OrderStatus], [PhoneNumber], [Name], [Address]) VALUES (25, N'714cca54-74b2-4c84-81d6-2213056ed406', 90, CAST(N'2024-04-18T12:43:00.6073597' AS DateTime2), N'Đang xác nhận', N'0', N'Nguyễn Vũ Trung', N'Giang điền')
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1123, N'TK jeans shirt', 20, N'Local', N'Upload\SanPham\JEANSJACKET-X1.webp', 27, 8)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1124, N'TK trousersJean', 30, N'Local', N'Upload\SanPham\Blue_LJEBGCLP155UB0102FW23_1.webp', 21, 8)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1126, N'TK trousersKaki', 30, N'Local', N'Upload\SanPham\QuanThunNam.webp', 21, 9)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1128, N'TK Hodie', 10, N'Local', N'Upload\SanPham\sp1.jpg', 27, 8)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1129, N'TK T-shirt Rabbit', 10, N'Local', N'Upload\SanPham\MT_2e7da9e8-3140-41ff-b4d9-bb9a87af103f.webp', 25, 8)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1130, N'TK T-shirt Yellow', 20, N'Local', N'Upload\SanPham\Levents® Classic Oversized Tee.webp', 25, 10)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1131, N'TK T-shirt GlobalGreen', 20, N'Local', N'Upload\SanPham\MT_3e0a4cad-1d80-45e9-bf27-0b012db097de.webp', 21, 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1132, N'TK T-shirtLevent', 20, N'Local', N'Upload\SanPham\MT_4ce83555-ebcc-4e4b-878a-b59235728862_533x.webp', 21, 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1133, N'TK T-shirtLeventRed', 20, N'Local', N'Upload\SanPham\MT_a376dc59-11a1-4b18-838c-9ba6db2829ce_533x.webp', 25, 11)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1134, N'TK T-shirtLoRem', 20, N'Local', N'Upload\SanPham\MT_a737bca4-94be-4271-9fe3-5f7de78fe56d.webp', 25, 8)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1135, N'TK T-shirtLoRemBlack', 20, N'Local', N'Upload\SanPham\MT_b82dc813-ad51-45c4-abc6-bc04bd3c69da.webp', 25, 9)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1136, N'TK T-shirtRabitRed', 20, N'Local', N'Upload\SanPham\MT_d8070ab5-7722-4af5-90ba-7e34ef2f739c.webp', 25, 10)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1137, N'TK T-shirtNBA', 50, N'Local', N'Upload\SanPham\MT_dbcfeefd-44db-462f-9614-90a3b2fe5819_533x.webp', 25, 7)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1138, N'TK T-shirt longsteeves', 60, N'Local', N'Upload\SanPham\Pink_LTSOVCOA434UP0101SS24_1.webp', 25, 2)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1139, N'TK Polo', 41, N'Local', N'Upload\SanPham\Polo.webp', 26, 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1140, N'TK PoloClassicBlack', 39, N'Local', N'Upload\SanPham\Polo2.webp', 26, 11)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1141, N'TK PoloClassic', 39, N'Local', N'Upload\SanPham\Polo3.webp', 26, 6)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1142, N'TK PoloBlack', 39, N'Local', N'Upload\SanPham\Polo4.webp', 26, 8)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1143, N'TK Polo green border', 39, N'Local', N'Upload\SanPham\Polo5.webp', 26, 19)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1144, N'TK Polo border Black', 29, N'Local', N'Upload\SanPham\PO6.webp', 26, 20)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1145, N'TK Polo long sleeves', 59, N'Local', N'Upload\SanPham\Polo7.webp', 26, 10)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1146, N'TK Polo long sleeves white', 59, N'Local', N'Upload\SanPham\Polo8.webp', 26, 11)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1147, N'TK Polo white', 29, N'Local', N'Upload\SanPham\Polo9.webp', 26, 7)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1148, N'TK Polo brown', 39, N'Local', N'Upload\SanPham\Polo10.webp', 26, 7)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1149, N'TK Shirt Short Yellow', 40, N'Local', N'Upload\SanPham\Shirt1.webp', 22, 8)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1150, N'TK Shirt long sleeve Yellow', 39, N'Local', N'Upload\SanPham\Shirt2.webp', 22, 7)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1151, N'TK Shirt long sleeve Pink', 39, N'Local', N'Upload\SanPham\Shirt3.webp', 22, 7)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1152, N'TK Shirt long sleeve Black', 39, N'Local', N'Upload\SanPham\Shirt4.webp', 22, 7)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1153, N'TK Shirt long sleeve White', 39, N'Local', N'Upload\SanPham\Shirt5.webp', 22, 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1154, N'TK Shirt long sleeve Classic', 39, N'Local', N'Upload\SanPham\Shirt6.webp', 22, 9)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1155, N'TK Shirt long sleeve Blue', 39, N'Local', N'Upload\SanPham\Shirt7.webp', 22, 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1156, N'TK Shirt long sleeve Classic Blue', 39, N'Local', N'Upload\SanPham\Shirt8.webp', 21, 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1157, N'TK Shirt Short Black', 29, N'Local', N'Upload\SanPham\Shirt9.webp', 22, 7)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1158, N'TK Shirt long sleeve ', 39, N'Local', N'Upload\SanPham\Shirt10.webp', 22, 7)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1159, N'TK TrouserJean', 49, N'Local', N'Upload\SanPham\Pant1.webp', 21, 10)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1160, N'TK TrouserJeanMale', 49, N'Local', N'Upload\SanPham\Pant2.webp', 21, 11)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1161, N'TK trouser Western Cream', 39, N'Local', N'Upload\SanPham\Pant3.webp', 27, 7)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1162, N'TK Trouser  Elastic pants', 39, N'Local', N'Upload\SanPham\Pant4.webp', 21, 9)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1165, N'TK Levents® Dragon Sweater/ Red', 25, N'Local', N'Upload\SanPham\Red_LSWOVCOK403UR0102SS24_1.webp', 28, 100)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1166, N'TK Levents® Classic Sweater/ Cream', 23, N'Local', N'Upload\SanPham\MT_12596c42-5af0-49bd-af64-eb53fefa4d7b.webp', 28, 30)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1167, N'TK Levents® Classic Sweater/ Red Coral', 24, N'Local', N'Upload\SanPham\CLASSICSWEATER-REDCORAL6.webp', 28, 56)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1168, N'TK Levents® "My Animals" Series Panther Knit Sweater/ Red', 30, N'Local', N'Upload\SanPham\KNITANIMAL-R1_1.webp', 28, 36)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1169, N'TK Levents® Ribbon Rabit Sweater/ Black', 51, N'Local', N'Upload\SanPham\Black_LSWOVCOK426UD0102SS24_1_533x.webp', 28, 75)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1170, N'TK Levents® Classic Sweater/ Blue', 64, N'Local', N'Upload\SanPham\MT_11b95cf9-8c7f-4255-9d56-2e4598093798.webp', 28, 64)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1171, N'TK Levents® "My Animals" Series Panther Knit Sweater/ Cream', 35, N'Local', N'Upload\SanPham\KNITANIMAL-C1_1.webp', 28, 63)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1172, N'TK Levents® Classic Sweater/ Black', 37, N'Local', N'Upload\SanPham\CLASSICSWEATER-MT.webp', 28, 42)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1173, N'TK Levents® Punch Varsity Black/ Red', 43, N'Local', N'Upload\SanPham\VARSITYJACKET2022-B1.webp', 29, 42)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1174, N'TK Levents® Punch Varsity Green/ Cream', 36, N'Local', N'Upload\SanPham\VARSITYJACKET2022-G1.webp', 21, 23)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1175, N'TK Levents® Classic Block Jacket/ Black', 63, N'Local', N'Upload\SanPham\Black_LJABOCLM114UD0102FW23_1.webp', 29, 64)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1176, N'TK Levents® Line Jacket/ Black', 46, N'Local', N'Upload\SanPham\MT-BLACK.webp', 29, 54)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1177, N'TK Levents® Classic 2Tone Wrinkle Nylon Jacket/ Black', 63, N'Local', N'Upload\SanPham\MT_c3664fcb-20b3-4a53-b82a-f6b8ed90306f.webp', 29, 35)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1178, N'TK Levents® Classic 2Tone Wrinkle Nylon Jacket/ Blue', 64, N'Local', N'Upload\SanPham\MT_98a1b422-df59-459c-a916-33d16eaae7e3.webp', 29, 64)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1179, N'TK Levents® Classic Denim Jacket/ Black', 43, N'Local', N'Upload\SanPham\JEANSJACKET-D1.webp', 29, 64)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1180, N'TK Levents® Sporty Jacket/ Red', 78, N'Local', N'Upload\SanPham\WINDJACKET2022-R1.webp', 29, 64)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1181, N'TK Levents® Heart Knit Cardigan/ Cream', 63, N'Local', N'Upload\SanPham\MT_c16bf2b5-8e12-4206-ac0e-f873abff21bc.webp', 30, 35)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1182, N'TK Levents® Heart Knit Cardigan/ Black', 74, N'Local', N'Upload\SanPham\MT_3c356f8c-3336-4d0d-a6a6-6a62f725eb09.webp', 30, 64)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1183, N'TK Levents® Classic Zipper Hoodie/ Black', 36, N'Local', N'Upload\SanPham\MT_81ad5a40-e94a-49ff-bad1-42895c57fda9.webp', 31, 23)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1184, N'TK Levents® Classic Zipper Hoodie/ Blue', 63, N'Local', N'Upload\SanPham\1_19b20b0b-63dc-45fc-9316-c90d7c341b94.webp', 31, 64)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1185, N'TK Levents® Classic Zipper Hoodie/ Grey', 53, N'Local', N'Upload\SanPham\HOODIEGREY-MT.webp', 31, 23)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1186, N'TK Levents® Classic Zipper Hoodie/ Dark Green', 62, N'Local', N'Upload\SanPham\MT_c0bb79f8-1b81-4bcf-800e-f3856f0bad09.webp', 31, 42)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1187, N'TK Levents® Classic Zipper Hoodie/ Dark Red', 83, N'Local', N'Upload\SanPham\mt_c6a38d42-d595-4056-aa07-287a626b3301_533x.webp', 31, 32)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1188, N'TK Levents® Mini Logo Zipper Hoodie/ Olive Green', 90, N'Local', N'Upload\SanPham\HOODIE2022-ZIPO1.webp', 31, 32)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1189, N'TK Levents® Basic Zipper Hoodie/ Blue', 52, N'Local', N'Upload\SanPham\1b9347a774f40f945813ff0431be894e.webp', 31, 23)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1190, N'TK jacketbasicWhite', 50, N'Local', N'Upload\SanPham\jacket3.webp', 27, 9)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1191, N'TK jacketbasicBlack', 70, N'Local', N'Upload\SanPham\jacket4.webp', 27, 10)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1192, N'TK jacketbasicRed', 60, N'Local', N'Upload\SanPham\jacket5.webp', 27, 9)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1193, N'TK jacketbasicONEBlack', 80, N'Local', N'Upload\SanPham\jacket6.webp', 27, 7)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1194, N'TK jacketBumberblack', 70, N'Local', N'Upload\SanPham\jacket7.webp', 27, 11)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1195, N'TK jacket BumberGreen', 70, N'Local', N'Upload\SanPham\jacket8.webp', 27, 7)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1196, N'TK jacket SweatherRed', 60, N'Local', N'Upload\SanPham\jacket9.webp', 27, 9)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1197, N'TK jacket SweatherBlack', 70, N'Local', N'Upload\SanPham\jacket10.webp', 27, 10)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1198, N'TK Sortpanbasic', 30, N'Local', N'Upload\SanPham\SortsPan1.webp', 28, 10)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1199, N'TK SortpanBlack', 30, N'Local', N'Upload\SanPham\Sortpans2.webp', 27, 8)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1200, N'TK SortpanbasicCream', 30, N'Local', N'Upload\SanPham\SortPhans3.webp', 28, 7)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1201, N'TK SortpanBasic man', 39, N'Local', N'Upload\SanPham\SortPhans4.webp', 32, 8)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1202, N'TK SortpanbasicBlue', 39, N'Local', N'Upload\SanPham\SortPhans5.webp', 32, 7)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1203, N'TK SortpanbasicRed', 39, N'Local', N'Upload\SanPham\SortPans6.webp', 32, 7)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1204, N'TK SortPan manBlack', 39, N'Local', N'Upload\SanPham\SortPans7.webp', 32, 8)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1205, N'TK Sortphan green', 39, N'Local', N'Upload\SanPham\SortPans8.webp', 32, 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1206, N'TK SortpanBlue', 0, N'Local', N'Upload\SanPham\SortPans9.webp', 32, 11)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1207, N'TK SortpanbasicGreen', 39, N'Local', N'Upload\SanPham\Sortpan10.webp', 32, 8)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1208, N'TK Sortpanbasic', 60, N'Local', N'Upload\SanPham\SortsPan1.webp', 32, 8)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1209, N'TK Sortpanbasicwhite', 39, N'Local', N'Upload\SanPham\SortPhans4.webp', 32, 9)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1210, N'TK ZipperBasicBlack', 0, N'Local', N'Upload\SanPham\Zipper1.webp', 33, 8)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1211, N'TK ZipperBasicWhite', 80, N'Local', N'Upload\SanPham\Zipper2.webp', 33, 11)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1212, N'TK ZipperBasicGray', 79, N'Local', N'Upload\SanPham\Zipper3.webp', 33, 9)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1213, N'TK ZipperBasicGreen', 60, N'Local', N'Upload\SanPham\Zipper4.webp', 33, 8)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1214, N'TK ZipperBasicRed', 70, N'Local', N'Upload\SanPham\Zipper5.webp', 33, 10)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1215, N'TK ZipperOrange', 70, N'Local', N'Upload\SanPham\Zipper6.webp', 33, 11)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1216, N'TK ZipperWhite', 70, N'Local', N'Upload\SanPham\Zipper7.webp', 33, 10)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1217, N'TK ZipperBasicMan', 0, N'Local', N'Upload\SanPham\Zipper8.webp', 33, 9)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1218, N'TK ZipperBlack', 59, N'Local', N'Upload\SanPham\Zipper9.webp', 33, 11)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1219, N'TK Zipper Hi fight Black', 0, N'Local', N'Upload\SanPham\Zipper10.webp', 33, 11)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1220, N'TK BagLevent Black', 49, N'Local', N'Upload\SanPham\New1.webp', 30, 8)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1221, N'TK BagBasicBlack', 40, N'Local', N'Upload\SanPham\New2.webp', 30, 10)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1222, N'TK TrouserWestern Green', 50, N'Local', N'Upload\SanPham\New3.webp', 30, 11)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1223, N'TK SortpanbasicGreen', 39, N'Local', N'Upload\SanPham\New4.webp', 30, 10)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1224, N'TK T-shirt Yellow', 39, N'Local', N'Upload\SanPham\New5.webp', 30, 9)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1225, N'TK Shirt long sleeve Pink', 49, N'Local', N'Upload\SanPham\New6.webp', 30, 11)
GO
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1226, N'TK Shirt Short Red', 39, N'Local', N'Upload\SanPham\New7.webp', 30, 11)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1227, N'TK Hodie Heart Black', 80, N'Local', N'Upload\SanPham\New8.webp', 30, 11)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1228, N'TK T-shirt Flower', 20, N'Local', N'Upload\SanPham\New9.webp', 30, 9)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Description], [ImageUrl], [SanPhamID], [QuantityInStock]) VALUES (1229, N'TK bagBlack', 39, N'Local', N'Upload\SanPham\New10.webp', 30, 11)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([Id], [Name], [Description]) VALUES (21, N'Trouser', N'Quan Nam')
INSERT [dbo].[SanPham] ([Id], [Name], [Description]) VALUES (22, N'Shirt', N'No')
INSERT [dbo].[SanPham] ([Id], [Name], [Description]) VALUES (25, N'T-Shirt', N'No')
INSERT [dbo].[SanPham] ([Id], [Name], [Description]) VALUES (26, N'PoLo', N'No')
INSERT [dbo].[SanPham] ([Id], [Name], [Description]) VALUES (27, N'Jacket', N'No')
INSERT [dbo].[SanPham] ([Id], [Name], [Description]) VALUES (28, N'Sweater', N'No')
INSERT [dbo].[SanPham] ([Id], [Name], [Description]) VALUES (29, N'Varsity ', N'No')
INSERT [dbo].[SanPham] ([Id], [Name], [Description]) VALUES (30, N'Cardigan', N'No')
INSERT [dbo].[SanPham] ([Id], [Name], [Description]) VALUES (31, N'Zipper Hoodie', N'No')
INSERT [dbo].[SanPham] ([Id], [Name], [Description]) VALUES (32, N'ShortPans', N'No')
INSERT [dbo].[SanPham] ([Id], [Name], [Description]) VALUES (33, N'New Arrival', N'No')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [QuantityInStock]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT (N'') FOR [Description]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon_HoaDonId] FOREIGN KEY([HoaDonId])
REFERENCES [dbo].[HoaDon] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon_HoaDonId]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_Product_ProductId]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_AspNetUsers_AplicationUserId] FOREIGN KEY([AplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_AspNetUsers_AplicationUserId]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_Product_ProDuctId] FOREIGN KEY([ProDuctId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_Product_ProDuctId]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_AspNetUsers_AplicationUserId] FOREIGN KEY([AplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_AspNetUsers_AplicationUserId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_SanPham_SanPhamID] FOREIGN KEY([SanPhamID])
REFERENCES [dbo].[SanPham] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_SanPham_SanPhamID]
GO
