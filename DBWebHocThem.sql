USE [master]
GO
/****** Object:  Database [DBWebHocThem]    Script Date: 3/15/2023 2:31:59 AM ******/
CREATE DATABASE [DBWebHocThem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBAppWebHocThem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBAppWebHocThem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBAppWebHocThem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBAppWebHocThem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBWebHocThem] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBWebHocThem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBWebHocThem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBWebHocThem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBWebHocThem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBWebHocThem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBWebHocThem] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBWebHocThem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBWebHocThem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBWebHocThem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBWebHocThem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBWebHocThem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBWebHocThem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBWebHocThem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBWebHocThem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBWebHocThem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBWebHocThem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBWebHocThem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBWebHocThem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBWebHocThem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBWebHocThem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBWebHocThem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBWebHocThem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBWebHocThem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBWebHocThem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBWebHocThem] SET  MULTI_USER 
GO
ALTER DATABASE [DBWebHocThem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBWebHocThem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBWebHocThem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBWebHocThem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBWebHocThem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBWebHocThem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DBWebHocThem] SET QUERY_STORE = OFF
GO
USE [DBWebHocThem]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NULL,
	[Email] [nvarchar](128) NOT NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BienLai]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BienLai](
	[ID] [int] NOT NULL,
	[SoTien] [float] NULL,
	[NoiDung] [nvarchar](50) NULL,
 CONSTRAINT [PK_BienLai] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ca]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ca](
	[ID] [int] NOT NULL,
	[ThongTinCa] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ca] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaDiem]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaDiem](
	[ID] [int] NOT NULL,
	[TenDiaDiem] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhongHoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiemThi]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiemThi](
	[NgayThi] [date] NOT NULL,
	[LopThi] [int] NOT NULL,
	[Users] [nvarchar](128) NOT NULL,
	[Diem] [float] NULL,
 CONSTRAINT [PK_DiemThi_1] PRIMARY KEY CLUSTERED 
(
	[NgayThi] ASC,
	[LopThi] ASC,
	[Users] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaHoc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenKhoaHoc] [nvarchar](50) NULL,
	[GiaoVien1] [nvarchar](128) NULL,
	[MonHoc] [int] NOT NULL,
	[Levels] [float] NOT NULL,
	[NgayKhaiGiang] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[HocPhi] [float] NULL,
	[MoTa] [nvarchar](200) NULL,
	[HinhAnh] [nvarchar](200) NULL,
 CONSTRAINT [PK_KhoaHoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[MonHoc] ASC,
	[Levels] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KyThi]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KyThi](
	[CaThi] [int] NULL,
	[TenKyThi] [nvarchar](50) NULL,
	[LopThi] [int] NOT NULL,
	[NgayThi] [date] NOT NULL,
 CONSTRAINT [PK_KyThi_1] PRIMARY KEY CLUSTERED 
(
	[LopThi] ASC,
	[NgayThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Levels]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Levels](
	[TenLevels] [nvarchar](50) NULL,
	[MonHoc] [int] NOT NULL,
	[DiemTB] [float] NOT NULL,
 CONSTRAINT [PK_Levels_1] PRIMARY KEY CLUSTERED 
(
	[MonHoc] ASC,
	[DiemTB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[MonHoc] [int] NULL,
	[Levels] [float] NULL,
	[KhoaHoc] [int] NULL,
	[GiaoVien] [nvarchar](128) NULL,
	[SoBuoiHoc] [int] NULL,
	[Ngay1] [date] NULL,
	[WD] [nvarchar](50) NULL,
 CONSTRAINT [PK_LopHoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[ID] [int] NOT NULL,
	[TenMonHoc] [nvarchar](50) NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDangKy]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDangKy](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BienLai] [int] NULL,
	[Lop] [int] NULL,
	[Users] [nvarchar](128) NULL,
	[NoiDungDK] [nvarchar](50) NULL,
	[NgayDK] [date] NULL,
	[XacNhan] [bit] NOT NULL,
 CONSTRAINT [PK_HocPhi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDanhGia]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDanhGia](
	[DiemDG] [int] NULL,
	[NoiDungDG] [nvarchar](200) NULL,
	[PhieuDangKy] [int] NOT NULL,
 CONSTRAINT [PK_PhieuDanhGia_1] PRIMARY KEY CLUSTERED 
(
	[PhieuDangKy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThoiKhoaBieu]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThoiKhoaBieu](
	[ThoiGian] [date] NOT NULL,
	[LopHoc] [int] NOT NULL,
	[Ca] [int] NOT NULL,
	[DiaDiem] [int] NULL,
 CONSTRAINT [PK_ThoiKhoaBieu_1] PRIMARY KEY CLUSTERED 
(
	[ThoiGian] ASC,
	[LopHoc] ASC,
	[Ca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [nvarchar](128) NOT NULL,
	[SDT] [nvarchar](50) NULL,
	[TenUser] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[HinhAnh] [nvarchar](200) NULL,
	[GioiTinh] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (1, N'Giao vien')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (2, N'Admin')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'duonghiep131@gmail.com', 2)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'GV1@GMAIL.COM', 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'GV2@GMAIL.COM', 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'GV3@GMAIL.COM', 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'GV4@GMAIL.COM', 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user1@gmail.com', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user2@gmail.com', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'user3@gmail.com', NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'2ea582e9-1197-4a3c-ae75-8a8bb286ffc9', N'Admin', 1, N'AEaZNk5sy+RPBrqMs7e5dkzPacCOo5TXSer8yClEr8ld+/7zNeoj94bDLLPBiGJyhQ==', N'fa2bf91b-3bc7-4e80-87e8-ddd3509e2632', NULL, 0, 0, NULL, 1, 0, N'duonghiep131@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c578e688-74e1-4b3e-9f79-bf8f9e113a34', N'GV1', 1, N'AGMW+lX4635+Yx6K9h+6LOSrAbzXcf1y43exNpWrOAcNKELqLWHk0mfLQJG0SRiL1g==', N'654700c1-9a61-4768-b677-c00a7f6b4f94', NULL, 0, 0, NULL, 1, 0, N'gv1@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b13a9ba8-d9ec-4a14-a91f-8931b3e97c30', N'GV2', 1, N'AMul2WQXpf25N+kWbVSg94aUeLbB9CQ5AmsKHAn3IEnhUQH42a8bzXKBp6oSHgnlcQ==', N'2c9efb91-6a50-41e6-8176-3d413a7829bc', NULL, 0, 0, NULL, 1, 0, N'gv2@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'589ccc1b-a8f6-4ca4-b5ac-ab06dd306621', N'GV3', 1, N'ALGNQaWO5IDBKG58ODyACknmpsmJlu2+gF4wvugf5mCui48RajPxpGUC4p+ZNPz6dg==', N'87efc107-2887-4356-b7c3-760615ca0b1f', NULL, 0, 0, NULL, 1, 0, N'gv3@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'dca21e40-4de3-4090-a87f-f3af9da10a82', N'GV4', 1, N'ACtKWilN3MSX2CitqCNgYoGzESlJoy14o7bHqESN7Nqimal2Q7mXsyiR4Gp0qTqvGw==', N'bff858e4-597d-47df-8434-46c359762039', NULL, 0, 0, NULL, 1, 0, N'gv4@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'502e2f5d-73c8-46b5-8205-494ef0032cc0', N'USER1', 1, N'AH8QI67Pz7ozfV/cEEm+08CsYGbFN/LZ8w81CEjUk521mpiUa93j1SgIdu6UgqZLhw==', N'1a400688-a809-49b3-9254-54353eeee7c0', NULL, 1, 0, NULL, 1, 0, N'user1@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'cfc620f2-30ad-4ee1-a01b-87da82f23bbb', N'USER2', 1, N'AAzuL1+OvS/vjNt4utPhSBsKsYb7IC9mdptNtV6dkQW4NxWGRaDsteDv6spZvYsxfg==', N'4b34c9b0-d5e8-461d-81fe-63aaeaf84add', NULL, 0, 0, NULL, 1, 0, N'user2@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'f38d57af-c42b-4547-aba4-a86e024a1e74', N'USER3', 1, N'AOIaT4XJiXBn/B7inoWs2nxHPmgPl9g3x0Tn01G7JGuMOg56tSYGqRzEvkeNgKkT8Q==', N'a5db9be7-b264-43e5-a9a3-f2d6299660a5', NULL, 0, 0, NULL, 1, 0, N'user3@gmail.com')
GO
INSERT [dbo].[BienLai] ([ID], [SoTien], [NoiDung]) VALUES (1, 25000, N'HocPhi')
INSERT [dbo].[BienLai] ([ID], [SoTien], [NoiDung]) VALUES (2, 50000, N'HocPhi')
INSERT [dbo].[BienLai] ([ID], [SoTien], [NoiDung]) VALUES (3, 24999, N'Thieu')
INSERT [dbo].[BienLai] ([ID], [SoTien], [NoiDung]) VALUES (4, 49999, N'Thieu')
INSERT [dbo].[BienLai] ([ID], [SoTien], [NoiDung]) VALUES (5, 100000, N'5')
INSERT [dbo].[BienLai] ([ID], [SoTien], [NoiDung]) VALUES (6, 100, N'Thieu')
GO
INSERT [dbo].[Ca] ([ID], [ThongTinCa]) VALUES (1, N'7h30 -11h30')
INSERT [dbo].[Ca] ([ID], [ThongTinCa]) VALUES (2, N'12h30 - 4h30')
GO
INSERT [dbo].[DiaDiem] ([ID], [TenDiaDiem]) VALUES (1, N'AB')
INSERT [dbo].[DiaDiem] ([ID], [TenDiaDiem]) VALUES (2, N'E')
INSERT [dbo].[DiaDiem] ([ID], [TenDiaDiem]) VALUES (3, N'U')
GO
INSERT [dbo].[DiemThi] ([NgayThi], [LopThi], [Users], [Diem]) VALUES (CAST(N'2022-11-10' AS Date), 2, N'user1@gmail.com', NULL)
INSERT [dbo].[DiemThi] ([NgayThi], [LopThi], [Users], [Diem]) VALUES (CAST(N'2022-11-10' AS Date), 2, N'user2@gmail.com', 4)
INSERT [dbo].[DiemThi] ([NgayThi], [LopThi], [Users], [Diem]) VALUES (CAST(N'2022-11-10' AS Date), 6, N'user1@gmail.com', NULL)
INSERT [dbo].[DiemThi] ([NgayThi], [LopThi], [Users], [Diem]) VALUES (CAST(N'2022-11-14' AS Date), 6, N'user1@gmail.com', NULL)
INSERT [dbo].[DiemThi] ([NgayThi], [LopThi], [Users], [Diem]) VALUES (CAST(N'2022-11-18' AS Date), 6, N'user1@gmail.com', NULL)
INSERT [dbo].[DiemThi] ([NgayThi], [LopThi], [Users], [Diem]) VALUES (CAST(N'2022-11-20' AS Date), 2, N'user1@gmail.com', NULL)
INSERT [dbo].[DiemThi] ([NgayThi], [LopThi], [Users], [Diem]) VALUES (CAST(N'2022-11-20' AS Date), 2, N'user2@gmail.com', 5)
INSERT [dbo].[DiemThi] ([NgayThi], [LopThi], [Users], [Diem]) VALUES (CAST(N'2022-11-22' AS Date), 2, N'user1@gmail.com', NULL)
INSERT [dbo].[DiemThi] ([NgayThi], [LopThi], [Users], [Diem]) VALUES (CAST(N'2022-11-22' AS Date), 2, N'user2@gmail.com', 3.5)
INSERT [dbo].[DiemThi] ([NgayThi], [LopThi], [Users], [Diem]) VALUES (CAST(N'2022-11-22' AS Date), 9, N'user3@gmail.com', 8)
INSERT [dbo].[DiemThi] ([NgayThi], [LopThi], [Users], [Diem]) VALUES (CAST(N'2022-11-24' AS Date), 9, N'user3@gmail.com', 8.9)
INSERT [dbo].[DiemThi] ([NgayThi], [LopThi], [Users], [Diem]) VALUES (CAST(N'2022-11-28' AS Date), 9, N'user3@gmail.com', 9.4)
GO
SET IDENTITY_INSERT [dbo].[KhoaHoc] ON 

INSERT [dbo].[KhoaHoc] ([ID], [TenKhoaHoc], [GiaoVien1], [MonHoc], [Levels], [NgayKhaiGiang], [NgayKetThuc], [HocPhi], [MoTa], [HinhAnh]) VALUES (1, N'TIENGANHCOBAN', N'gv1@gmail.com', 1, 5, CAST(N'2022-10-20' AS Date), CAST(N'2023-03-30' AS Date), 25000, NULL, N'images\banner_kh1 (1).jpg')
INSERT [dbo].[KhoaHoc] ([ID], [TenKhoaHoc], [GiaoVien1], [MonHoc], [Levels], [NgayKhaiGiang], [NgayKetThuc], [HocPhi], [MoTa], [HinhAnh]) VALUES (2, N'TOANCOBAN', N'gv2@gmail.com', 2, 5, CAST(N'2022-10-20' AS Date), CAST(N'2023-03-30' AS Date), 25000, NULL, N'images\banner_kh2 (1).jpg')
INSERT [dbo].[KhoaHoc] ([ID], [TenKhoaHoc], [GiaoVien1], [MonHoc], [Levels], [NgayKhaiGiang], [NgayKetThuc], [HocPhi], [MoTa], [HinhAnh]) VALUES (3, N'VATLYNANGCAO', N'gv3@gmail.com', 3, 9, CAST(N'2022-10-20' AS Date), CAST(N'2023-03-30' AS Date), 50000, NULL, N'images\banner_kh2 (1).jpg')
INSERT [dbo].[KhoaHoc] ([ID], [TenKhoaHoc], [GiaoVien1], [MonHoc], [Levels], [NgayKhaiGiang], [NgayKetThuc], [HocPhi], [MoTa], [HinhAnh]) VALUES (4, N'TOEICNANGCAO', N'gv4@gmail.com', 4, 900, CAST(N'2022-10-20' AS Date), CAST(N'2023-03-30' AS Date), 50000, NULL, N'images\banner_kh3 (1).jpg')
INSERT [dbo].[KhoaHoc] ([ID], [TenKhoaHoc], [GiaoVien1], [MonHoc], [Levels], [NgayKhaiGiang], [NgayKetThuc], [HocPhi], [MoTa], [HinhAnh]) VALUES (5, N'HOANANGCAO', NULL, 5, 9, CAST(N'2022-12-10' AS Date), CAST(N'2023-03-30' AS Date), 100000, NULL, N'images\banner_kh2 (1).jpg')
SET IDENTITY_INSERT [dbo].[KhoaHoc] OFF
GO
INSERT [dbo].[KyThi] ([CaThi], [TenKyThi], [LopThi], [NgayThi]) VALUES (2, N'A', 2, CAST(N'2022-11-10' AS Date))
INSERT [dbo].[KyThi] ([CaThi], [TenKyThi], [LopThi], [NgayThi]) VALUES (2, N'B', 2, CAST(N'2022-11-20' AS Date))
INSERT [dbo].[KyThi] ([CaThi], [TenKyThi], [LopThi], [NgayThi]) VALUES (NULL, N'C', 2, CAST(N'2022-11-22' AS Date))
INSERT [dbo].[KyThi] ([CaThi], [TenKyThi], [LopThi], [NgayThi]) VALUES (1, N'A', 6, CAST(N'2022-11-10' AS Date))
INSERT [dbo].[KyThi] ([CaThi], [TenKyThi], [LopThi], [NgayThi]) VALUES (NULL, N'B', 6, CAST(N'2022-11-14' AS Date))
INSERT [dbo].[KyThi] ([CaThi], [TenKyThi], [LopThi], [NgayThi]) VALUES (NULL, N'C', 6, CAST(N'2022-11-18' AS Date))
INSERT [dbo].[KyThi] ([CaThi], [TenKyThi], [LopThi], [NgayThi]) VALUES (1, N'A', 9, CAST(N'2022-11-22' AS Date))
INSERT [dbo].[KyThi] ([CaThi], [TenKyThi], [LopThi], [NgayThi]) VALUES (1, N'B', 9, CAST(N'2022-11-24' AS Date))
INSERT [dbo].[KyThi] ([CaThi], [TenKyThi], [LopThi], [NgayThi]) VALUES (1, N'C', 9, CAST(N'2022-11-28' AS Date))
GO
INSERT [dbo].[Levels] ([TenLevels], [MonHoc], [DiemTB]) VALUES (N'Trung Binh', 1, 5)
INSERT [dbo].[Levels] ([TenLevels], [MonHoc], [DiemTB]) VALUES (N'Kha', 1, 7.5)
INSERT [dbo].[Levels] ([TenLevels], [MonHoc], [DiemTB]) VALUES (N'Gioi', 1, 8)
INSERT [dbo].[Levels] ([TenLevels], [MonHoc], [DiemTB]) VALUES (N'Gioi', 2, 4)
INSERT [dbo].[Levels] ([TenLevels], [MonHoc], [DiemTB]) VALUES (N'Kha', 2, 5)
INSERT [dbo].[Levels] ([TenLevels], [MonHoc], [DiemTB]) VALUES (N'Kha', 2, 7.5)
INSERT [dbo].[Levels] ([TenLevels], [MonHoc], [DiemTB]) VALUES (N'Kha', 3, 5)
INSERT [dbo].[Levels] ([TenLevels], [MonHoc], [DiemTB]) VALUES (N'Gioi', 3, 9)
INSERT [dbo].[Levels] ([TenLevels], [MonHoc], [DiemTB]) VALUES (N'Gioi', 4, 900)
INSERT [dbo].[Levels] ([TenLevels], [MonHoc], [DiemTB]) VALUES (N'Gioi', 5, 9)
GO
SET IDENTITY_INSERT [dbo].[Lop] ON 

INSERT [dbo].[Lop] ([ID], [TenLop], [SoLuong], [MonHoc], [Levels], [KhoaHoc], [GiaoVien], [SoBuoiHoc], [Ngay1], [WD]) VALUES (1, N'19DTHC1', 12, 1, 5, 1, N'gv1@gmail.com', 10, CAST(N'2022-11-10' AS Date), NULL)
INSERT [dbo].[Lop] ([ID], [TenLop], [SoLuong], [MonHoc], [Levels], [KhoaHoc], [GiaoVien], [SoBuoiHoc], [Ngay1], [WD]) VALUES (2, N'19DTHC2', 1, 2, 5, 2, N'gv2@gmail.com', 10, CAST(N'2022-11-10' AS Date), N'2,3,4')
INSERT [dbo].[Lop] ([ID], [TenLop], [SoLuong], [MonHoc], [Levels], [KhoaHoc], [GiaoVien], [SoBuoiHoc], [Ngay1], [WD]) VALUES (3, N'19DTHC3', 18, 4, 900, 4, N'gv4@gmail.com', 10, NULL, NULL)
INSERT [dbo].[Lop] ([ID], [TenLop], [SoLuong], [MonHoc], [Levels], [KhoaHoc], [GiaoVien], [SoBuoiHoc], [Ngay1], [WD]) VALUES (4, N'19DTHC4', 15, 3, 9, 3, N'gv3@gmail.com', 10, CAST(N'2022-11-10' AS Date), NULL)
INSERT [dbo].[Lop] ([ID], [TenLop], [SoLuong], [MonHoc], [Levels], [KhoaHoc], [GiaoVien], [SoBuoiHoc], [Ngay1], [WD]) VALUES (5, N'19DTHC5', 19, 1, 5, 1, N'gv1@gmail.com', 10, NULL, NULL)
INSERT [dbo].[Lop] ([ID], [TenLop], [SoLuong], [MonHoc], [Levels], [KhoaHoc], [GiaoVien], [SoBuoiHoc], [Ngay1], [WD]) VALUES (6, N'19DTHC6', 13, 2, 5, 2, N'gv2@gmail.com', 10, CAST(N'2022-11-10' AS Date), N'3,5,7,6')
INSERT [dbo].[Lop] ([ID], [TenLop], [SoLuong], [MonHoc], [Levels], [KhoaHoc], [GiaoVien], [SoBuoiHoc], [Ngay1], [WD]) VALUES (7, N'19DTHC7', 20, 3, 9, 3, N'gv3@gmail.com', 10, CAST(N'2022-11-10' AS Date), N'2,3,4,5')
INSERT [dbo].[Lop] ([ID], [TenLop], [SoLuong], [MonHoc], [Levels], [KhoaHoc], [GiaoVien], [SoBuoiHoc], [Ngay1], [WD]) VALUES (8, N'19DTHC8', 20, 1, 5, 1, N'gv1@gmail.com', 10, NULL, NULL)
INSERT [dbo].[Lop] ([ID], [TenLop], [SoLuong], [MonHoc], [Levels], [KhoaHoc], [GiaoVien], [SoBuoiHoc], [Ngay1], [WD]) VALUES (9, N'19DTHC9', 19, 5, 9, 5, NULL, 10, CAST(N'2022-11-10' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Lop] OFF
GO
INSERT [dbo].[MonHoc] ([ID], [TenMonHoc]) VALUES (1, N'TIENGANH')
INSERT [dbo].[MonHoc] ([ID], [TenMonHoc]) VALUES (2, N'TOAN')
INSERT [dbo].[MonHoc] ([ID], [TenMonHoc]) VALUES (3, N'VATLY')
INSERT [dbo].[MonHoc] ([ID], [TenMonHoc]) VALUES (4, N'TOEIC')
INSERT [dbo].[MonHoc] ([ID], [TenMonHoc]) VALUES (5, N'HOA')
GO
SET IDENTITY_INSERT [dbo].[PhieuDangKy] ON 

INSERT [dbo].[PhieuDangKy] ([ID], [BienLai], [Lop], [Users], [NoiDungDK], [NgayDK], [XacNhan]) VALUES (39, NULL, 1, N'user2@gmail.com', NULL, NULL, 1)
INSERT [dbo].[PhieuDangKy] ([ID], [BienLai], [Lop], [Users], [NoiDungDK], [NgayDK], [XacNhan]) VALUES (40, NULL, 3, N'user2@gmail.com', NULL, NULL, 1)
INSERT [dbo].[PhieuDangKy] ([ID], [BienLai], [Lop], [Users], [NoiDungDK], [NgayDK], [XacNhan]) VALUES (41, NULL, 4, N'user2@gmail.com', NULL, NULL, 1)
INSERT [dbo].[PhieuDangKy] ([ID], [BienLai], [Lop], [Users], [NoiDungDK], [NgayDK], [XacNhan]) VALUES (42, NULL, 2, N'user2@gmail.com', NULL, NULL, 1)
INSERT [dbo].[PhieuDangKy] ([ID], [BienLai], [Lop], [Users], [NoiDungDK], [NgayDK], [XacNhan]) VALUES (45, NULL, 6, N'user2@gmail.com', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[PhieuDangKy] OFF
GO
INSERT [dbo].[PhieuDanhGia] ([DiemDG], [NoiDungDG], [PhieuDangKy]) VALUES (5, N'DATA', 39)
INSERT [dbo].[PhieuDanhGia] ([DiemDG], [NoiDungDG], [PhieuDangKy]) VALUES (6, N'DATA', 40)
INSERT [dbo].[PhieuDanhGia] ([DiemDG], [NoiDungDG], [PhieuDangKy]) VALUES (5, N'DATA', 41)
INSERT [dbo].[PhieuDanhGia] ([DiemDG], [NoiDungDG], [PhieuDangKy]) VALUES (6, N'DATA', 42)
INSERT [dbo].[PhieuDanhGia] ([DiemDG], [NoiDungDG], [PhieuDangKy]) VALUES (5, N'DATA', 45)
GO
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-10' AS Date), 1, 1, 2)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-10' AS Date), 2, 2, 1)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-10' AS Date), 4, 2, 3)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-10' AS Date), 6, 1, 1)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-11' AS Date), 2, 2, 2)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-11' AS Date), 6, 1, 1)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-12' AS Date), 2, 1, 1)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-12' AS Date), 2, 2, 2)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-13' AS Date), 1, 2, 2)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-13' AS Date), 2, 1, 1)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-13' AS Date), 4, 2, 1)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-13' AS Date), 6, 2, 1)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-14' AS Date), 2, 2, 2)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-14' AS Date), 6, 1, 1)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-15' AS Date), 2, 2, 1)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-15' AS Date), 6, 1, 1)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-16' AS Date), 6, 1, 1)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-16' AS Date), 6, 2, 1)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-17' AS Date), 6, 1, 1)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-17' AS Date), 6, 2, 1)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-18' AS Date), 6, 1, 1)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-20' AS Date), 1, 1, 1)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-20' AS Date), 2, 1, 3)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-20' AS Date), 2, 2, 1)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-22' AS Date), 2, 1, 1)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-22' AS Date), 9, 1, NULL)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-24' AS Date), 9, 1, NULL)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-26' AS Date), 9, 1, NULL)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-11-28' AS Date), 9, 1, 1)
INSERT [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca], [DiaDiem]) VALUES (CAST(N'2022-12-08' AS Date), 7, 1, 1)
GO
INSERT [dbo].[Users] ([ID], [SDT], [TenUser], [DiaChi], [HinhAnh], [GioiTinh]) VALUES (N'duonghiep131@gmail.com', N'8435678', N'Admin', N'475 DBP', N'', 0)
INSERT [dbo].[Users] ([ID], [SDT], [TenUser], [DiaChi], [HinhAnh], [GioiTinh]) VALUES (N'gv1@gmail.com', N'84356986', N'GV1', N'179 Ql13', N'images\anh-gv.jpg', 0)
INSERT [dbo].[Users] ([ID], [SDT], [TenUser], [DiaChi], [HinhAnh], [GioiTinh]) VALUES (N'gv2@gmail.com', N'8422345', N'GV2', N'179 Ql13', N'images/anh-gv-2.jpg', 0)
INSERT [dbo].[Users] ([ID], [SDT], [TenUser], [DiaChi], [HinhAnh], [GioiTinh]) VALUES (N'gv3@gmail.com', N'849388', N'GV3', N'179 Ql13', N'images\anh-gv-3.jpg', 1)
INSERT [dbo].[Users] ([ID], [SDT], [TenUser], [DiaChi], [HinhAnh], [GioiTinh]) VALUES (N'gv4@gmail.com', N'845000', N'GV4', N'179 Ql13', N'images\anh-gv-4.jpg', 1)
INSERT [dbo].[Users] ([ID], [SDT], [TenUser], [DiaChi], [HinhAnh], [GioiTinh]) VALUES (N'user1@gmail.com', N'8435878444', N'USER1', N'179 Ql13', NULL, 1)
INSERT [dbo].[Users] ([ID], [SDT], [TenUser], [DiaChi], [HinhAnh], [GioiTinh]) VALUES (N'user2@gmail.com', N'8495878', N'USER2', N'475 DBP', N'images/', 0)
INSERT [dbo].[Users] ([ID], [SDT], [TenUser], [DiaChi], [HinhAnh], [GioiTinh]) VALUES (N'user3@gmail.com', N'843299', N'USER3', N'179 Ql13', NULL, 0)
GO
ALTER TABLE [dbo].[PhieuDangKy] ADD  CONSTRAINT [DF_PhieuDangKy_XacNhan]  DEFAULT ((0)) FOR [XacNhan]
GO
ALTER TABLE [dbo].[PhieuDanhGia] ADD  CONSTRAINT [DF_PhieuDanhGia_DiemDG]  DEFAULT ((5)) FOR [DiemDG]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_ID]  DEFAULT ((1)) FOR [ID]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_GioiTinh]  DEFAULT ((0)) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers1] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserName])
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers1]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers1] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserName])
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers1]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers1] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UserName])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers1]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[DiemThi]  WITH CHECK ADD  CONSTRAINT [FK_DiemThi_KyThi1] FOREIGN KEY([LopThi], [NgayThi])
REFERENCES [dbo].[KyThi] ([LopThi], [NgayThi])
GO
ALTER TABLE [dbo].[DiemThi] CHECK CONSTRAINT [FK_DiemThi_KyThi1]
GO
ALTER TABLE [dbo].[DiemThi]  WITH CHECK ADD  CONSTRAINT [FK_DiemThi_Users] FOREIGN KEY([Users])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[DiemThi] CHECK CONSTRAINT [FK_DiemThi_Users]
GO
ALTER TABLE [dbo].[KhoaHoc]  WITH CHECK ADD  CONSTRAINT [FK_KhoaHoc_Levels1] FOREIGN KEY([MonHoc], [Levels])
REFERENCES [dbo].[Levels] ([MonHoc], [DiemTB])
GO
ALTER TABLE [dbo].[KhoaHoc] CHECK CONSTRAINT [FK_KhoaHoc_Levels1]
GO
ALTER TABLE [dbo].[KhoaHoc]  WITH CHECK ADD  CONSTRAINT [FK_KhoaHoc_Users] FOREIGN KEY([GiaoVien1])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[KhoaHoc] CHECK CONSTRAINT [FK_KhoaHoc_Users]
GO
ALTER TABLE [dbo].[KyThi]  WITH CHECK ADD  CONSTRAINT [FK_KyThi_ThoiKhoaBieu] FOREIGN KEY([NgayThi], [LopThi], [CaThi])
REFERENCES [dbo].[ThoiKhoaBieu] ([ThoiGian], [LopHoc], [Ca])
GO
ALTER TABLE [dbo].[KyThi] CHECK CONSTRAINT [FK_KyThi_ThoiKhoaBieu]
GO
ALTER TABLE [dbo].[Levels]  WITH CHECK ADD  CONSTRAINT [FK_Levels_MonHoc] FOREIGN KEY([MonHoc])
REFERENCES [dbo].[MonHoc] ([ID])
GO
ALTER TABLE [dbo].[Levels] CHECK CONSTRAINT [FK_Levels_MonHoc]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_KhoaHoc1] FOREIGN KEY([KhoaHoc], [MonHoc], [Levels])
REFERENCES [dbo].[KhoaHoc] ([ID], [MonHoc], [Levels])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_KhoaHoc1]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_Users] FOREIGN KEY([GiaoVien])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_Users]
GO
ALTER TABLE [dbo].[PhieuDangKy]  WITH CHECK ADD  CONSTRAINT [FK_HocPhi_LopHoc] FOREIGN KEY([Lop])
REFERENCES [dbo].[Lop] ([ID])
GO
ALTER TABLE [dbo].[PhieuDangKy] CHECK CONSTRAINT [FK_HocPhi_LopHoc]
GO
ALTER TABLE [dbo].[PhieuDangKy]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDangKy_BienLai] FOREIGN KEY([BienLai])
REFERENCES [dbo].[BienLai] ([ID])
GO
ALTER TABLE [dbo].[PhieuDangKy] CHECK CONSTRAINT [FK_PhieuDangKy_BienLai]
GO
ALTER TABLE [dbo].[PhieuDangKy]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDangKy_Users] FOREIGN KEY([Users])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[PhieuDangKy] CHECK CONSTRAINT [FK_PhieuDangKy_Users]
GO
ALTER TABLE [dbo].[PhieuDanhGia]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDanhGia_PhieuDangKy] FOREIGN KEY([PhieuDangKy])
REFERENCES [dbo].[PhieuDangKy] ([ID])
GO
ALTER TABLE [dbo].[PhieuDanhGia] CHECK CONSTRAINT [FK_PhieuDanhGia_PhieuDangKy]
GO
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD  CONSTRAINT [FK_ThoiKhoaBieu_Ca] FOREIGN KEY([Ca])
REFERENCES [dbo].[Ca] ([ID])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu] CHECK CONSTRAINT [FK_ThoiKhoaBieu_Ca]
GO
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD  CONSTRAINT [FK_ThoiKhoaBieu_DiaDiem] FOREIGN KEY([DiaDiem])
REFERENCES [dbo].[DiaDiem] ([ID])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu] CHECK CONSTRAINT [FK_ThoiKhoaBieu_DiaDiem]
GO
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD  CONSTRAINT [FK_ThoiKhoaBieu_LopHoc] FOREIGN KEY([LopHoc])
REFERENCES [dbo].[Lop] ([ID])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu] CHECK CONSTRAINT [FK_ThoiKhoaBieu_LopHoc]
GO
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD  CONSTRAINT [FK_ThoiKhoaBieu_PhongHoc] FOREIGN KEY([DiaDiem])
REFERENCES [dbo].[DiaDiem] ([ID])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu] CHECK CONSTRAINT [FK_ThoiKhoaBieu_PhongHoc]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_AspNetUsers] FOREIGN KEY([ID])
REFERENCES [dbo].[AspNetUsers] ([UserName])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_AspNetUsers]
GO
ALTER TABLE [dbo].[KhoaHoc]  WITH CHECK ADD  CONSTRAINT [CK_KhoaHoc] CHECK  (([NGAYKETTHUC]>[NGAYKHAIGIANG]))
GO
ALTER TABLE [dbo].[KhoaHoc] CHECK CONSTRAINT [CK_KhoaHoc]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [CK_Lop] CHECK  (([SoLuong]>=(0)))
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [CK_Lop]
GO
/****** Object:  StoredProcedure [dbo].[P_Confirm]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROC [dbo].[P_Confirm] @USER NVARCHAR(128), @ID INT, @BL INT, @OUT INT OUTPUT
AS 
BEGIN
	--DECLARE @BL FLOAT
	--DECLARE @KH FLOAT
	--DECLARE @PDK INT
	--SELECT @BL = B.SoTien, @KH = KH.HocPhi, @PDK = PDK.ID FROM inserted PDK INNER JOIN BienLai B ON B.ID = PDK.BienLai INNER JOIN LOP L ON L.ID = PDK.Lop INNER JOIN KhoaHoc KH ON KH.MonHoc = L.MonHoc AND KH.ID = L.KhoaHoc AND KH.Levels = L.Levels WHERE PDK.XacNhan = 0
	SELECT @ID = PD.ID FROM PhieuDangKy PD WHERE PD.ID = @ID AND PD.ID IN ( SELECT PDK.ID FROM PhieuDangKy PDK INNER JOIN LOP L ON L.ID = PDK.Lop INNER JOIN KhoaHoc K ON K.ID = L.KhoaHoc AND K.MonHoc = L.MonHoc AND L.Levels = K.Levels INNER JOIN BienLai BL ON BL.ID = PDK.BienLai WHERE PDK.Users = @USER AND BL.SoTien < K.HocPhi)
	IF(@ID IS NOT NULL)
	BEGIN
		UPDATE PhieuDangKy SET BienLai = @BL WHERE ID = @ID
		SET @OUT = 1
		RETURN
	END
	SET @OUT = 0
	--UPDATE PhieuDangKy SET XacNhan =
	--(CASE
	--	WHEN @BL >= @KH THEN 1
	--	ELSE 0
	--	END
	--) WHERE ID = @PDK
END
GO
/****** Object:  StoredProcedure [dbo].[P_DDG]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[P_DDG] @ID NVARCHAR(128) ,@DDG INT OUTPUT
AS
    BEGIN     
			SET @DDG = ( SELECT AVG(PDG.DiemDG) AS 'DIEMDANHGIA' FROM KhoaHoc K INNER JOIN LOP L ON L.KhoaHoc = K.ID AND L.Levels = K.Levels AND L.MonHoc = K.MonHoc INNER JOIN PhieuDangKy PDK ON PDK.Lop = L.ID INNER JOIN PhieuDanhGia PDG ON PDK.ID = PDG.PhieuDangKy WHERE K.GiaoVien1 = @ID OR L.GiaoVien = @ID)
		--SELECT COUNT (PD.ID) AS SOLUONGGD,COUNT (DISTINCT PD.IDPhong) AS SOLUONGPHONG,SUM(PD.TienCoc) AS TONGTIEN, COUNT(DISTINCT PD.IDUser) AS SOLUONGKHACH FROM PhieuDat PD, Phong P WHERE PD.IDPhong = P.ID AND P.TinhTrang ='dathanhtoan' AND PD.Datetime >= ''+@date1+'' AND PD.Datetime <= ''+@date2+'' 
    END
GO
/****** Object:  StoredProcedure [dbo].[P_GV1]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SELECT TOP 1 U.* FROM Users U INNER JOIN KhoaHoc K ON U.ID = K.GiaoVien INNER JOIN Lop L ON L.KhoaHoc = K.ID AND L.MonHoc = K.MonHoc AND L.ID = K.ID INNER JOIN PhieuDangKy P ON P.Lop = L.ID WHERE MAX(SELECT COUNT (*) AS 'MAX')
--GO

 CREATE PROCEDURE [dbo].[P_GV1]
 AS 
 BEGIN
	
	DECLARE @INDEX INT = 1
	DECLARE @TABLE3 TABLE(ID NVARCHAR(128), SL INT, TT INT IDENTITY(1,1))
	DECLARE @TABLE2 TABLE(ID NVARCHAR(128), SL INT)

	WHILE(@INDEX <= 4)
	BEGIN
		DECLARE @GV NVARCHAR(128) = 1
		WHILE( @GV IS NOT NULL)
		BEGIN
			DECLARE @TABLE1 TABLE(ID NVARCHAR(128))
			DECLARE @SL INT
			DECLARE @CHECK NVARCHAR(128)
			DECLARE @DDG INT


			SET @GV = (SELECT DISTINCT TOP 1 U.ID FROM Users U, KhoaHoc K, Lop L WHERE ( U.ID = K.GiaoVien1 AND U.ID NOT IN (SELECT * FROM @TABLE1)) OR ( U.ID = L.GiaoVien AND U.ID NOT IN (SELECT * FROM @TABLE1)))
			
			EXEC P_DDG @GV, @DDG OUTPUT

			IF (@DDG >= 5 )
			BEGIN
				IF(NOT EXISTS (SELECT * FROM @TABLE3 T3 WHERE T3.ID = @GV))
				BEGIN
					EXEC P_SPDK_GV @GV, @SL OUTPUT

					SET @CHECK = (SELECT T.ID FROM @TABLE2 T)

					IF(@CHECK IS NULL)
					BEGIN
						INSERT INTO @TABLE2 VALUES(@GV,@SL)
					END

					ELSE
					BEGIN
						IF(@SL > (SELECT SL FROM @TABLE2))
						BEGIN
							UPDATE @TABLE2 SET ID = @GV, SL = @SL
						END
					END
				END
			END

			INSERT INTO @TABLE1 VALUES(@GV)

		END
		INSERT INTO @TABLE3 VALUES((SELECT T.ID FROM @TABLE2 T),(SELECT T.SL FROM @TABLE2 T))
		DELETE FROM @TABLE1
		DELETE FROM @TABLE2

		SET @INDEX += 1 
	END
	--SELECT ID FROM @TABLE3 T3 WHERE TT=2
	SELECT U.*,T.SL FROM Users U, @TABLE3 T WHERE U.ID= T.ID AND T.TT = 1
 END
GO
/****** Object:  StoredProcedure [dbo].[P_GV2]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SELECT TOP 1 U.* FROM Users U INNER JOIN KhoaHoc K ON U.ID = K.GiaoVien INNER JOIN Lop L ON L.KhoaHoc = K.ID AND L.MonHoc = K.MonHoc AND L.ID = K.ID INNER JOIN PhieuDangKy P ON P.Lop = L.ID WHERE MAX(SELECT COUNT (*) AS 'MAX')
--GO

 CREATE PROCEDURE [dbo].[P_GV2]
 AS 
 BEGIN
	
	DECLARE @INDEX INT = 1
	DECLARE @TABLE3 TABLE(ID NVARCHAR(128), SL INT, TT INT IDENTITY(1,1))
	DECLARE @TABLE2 TABLE(ID NVARCHAR(128), SL INT)

	WHILE(@INDEX <= 4)
	BEGIN
		DECLARE @GV NVARCHAR(128) = 1
		WHILE( @GV IS NOT NULL)
		BEGIN
			DECLARE @TABLE1 TABLE(ID NVARCHAR(128))
			DECLARE @SL INT
			DECLARE @CHECK NVARCHAR(128)
			DECLARE @DDG INT


			SET @GV = (SELECT DISTINCT TOP 1 U.ID FROM Users U, KhoaHoc K, Lop L WHERE ( U.ID = K.GiaoVien1 AND U.ID NOT IN (SELECT * FROM @TABLE1)) OR ( U.ID = L.GiaoVien AND U.ID NOT IN (SELECT * FROM @TABLE1)))
			
			EXEC P_DDG @GV, @DDG OUTPUT

			IF (@DDG >= 5 )
			BEGIN
				IF(NOT EXISTS (SELECT * FROM @TABLE3 T3 WHERE T3.ID = @GV))
				BEGIN
					EXEC P_SPDK_GV @GV, @SL OUTPUT

					SET @CHECK = (SELECT T.ID FROM @TABLE2 T)

					IF(@CHECK IS NULL)
					BEGIN
						INSERT INTO @TABLE2 VALUES(@GV,@SL)
					END

					ELSE
					BEGIN
						IF(@SL > (SELECT SL FROM @TABLE2))
						BEGIN
							UPDATE @TABLE2 SET ID = @GV, SL = @SL
						END
					END
				END
			END

			INSERT INTO @TABLE1 VALUES(@GV)

		END
		INSERT INTO @TABLE3 VALUES((SELECT T.ID FROM @TABLE2 T),(SELECT T.SL FROM @TABLE2 T))
		DELETE FROM @TABLE1
		DELETE FROM @TABLE2

		SET @INDEX += 1 
	END
	--SELECT ID FROM @TABLE3 T3 WHERE TT=2
	SELECT U.*,T.SL FROM Users U, @TABLE3 T WHERE U.ID= T.ID AND T.TT = 2
 END
GO
/****** Object:  StoredProcedure [dbo].[P_GV3]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SELECT TOP 1 U.* FROM Users U INNER JOIN KhoaHoc K ON U.ID = K.GiaoVien INNER JOIN Lop L ON L.KhoaHoc = K.ID AND L.MonHoc = K.MonHoc AND L.ID = K.ID INNER JOIN PhieuDangKy P ON P.Lop = L.ID WHERE MAX(SELECT COUNT (*) AS 'MAX')
--GO

 CREATE PROCEDURE [dbo].[P_GV3]
 AS 
 BEGIN
	
	DECLARE @INDEX INT = 1
	DECLARE @TABLE3 TABLE(ID NVARCHAR(128), SL INT, TT INT IDENTITY(1,1))
	DECLARE @TABLE2 TABLE(ID NVARCHAR(128), SL INT)

	WHILE(@INDEX <= 4)
	BEGIN
		DECLARE @GV NVARCHAR(128) = 1
		WHILE( @GV IS NOT NULL)
		BEGIN
			DECLARE @TABLE1 TABLE(ID NVARCHAR(128))
			DECLARE @SL INT
			DECLARE @CHECK NVARCHAR(128)
			DECLARE @DDG INT


			SET @GV = (SELECT DISTINCT TOP 1 U.ID FROM Users U, KhoaHoc K, Lop L WHERE ( U.ID = K.GiaoVien1 AND U.ID NOT IN (SELECT * FROM @TABLE1)) OR ( U.ID = L.GiaoVien AND U.ID NOT IN (SELECT * FROM @TABLE1)))
			
			EXEC P_DDG @GV, @DDG OUTPUT

			IF (@DDG >= 5 )
			BEGIN
				IF(NOT EXISTS (SELECT * FROM @TABLE3 T3 WHERE T3.ID = @GV))
				BEGIN
					EXEC P_SPDK_GV @GV, @SL OUTPUT

					SET @CHECK = (SELECT T.ID FROM @TABLE2 T)

					IF(@CHECK IS NULL)
					BEGIN
						INSERT INTO @TABLE2 VALUES(@GV,@SL)
					END

					ELSE
					BEGIN
						IF(@SL > (SELECT SL FROM @TABLE2))
						BEGIN
							UPDATE @TABLE2 SET ID = @GV, SL = @SL
						END
					END
				END
			END

			INSERT INTO @TABLE1 VALUES(@GV)

		END
		INSERT INTO @TABLE3 VALUES((SELECT T.ID FROM @TABLE2 T),(SELECT T.SL FROM @TABLE2 T))
		DELETE FROM @TABLE1
		DELETE FROM @TABLE2

		SET @INDEX += 1 
	END
	--SELECT ID FROM @TABLE3 T3 WHERE TT=2
	SELECT U.*,T.SL FROM Users U, @TABLE3 T WHERE U.ID= T.ID AND T.TT = 3
 END
GO
/****** Object:  StoredProcedure [dbo].[P_GV4]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SELECT TOP 1 U.* FROM Users U INNER JOIN KhoaHoc K ON U.ID = K.GiaoVien INNER JOIN Lop L ON L.KhoaHoc = K.ID AND L.MonHoc = K.MonHoc AND L.ID = K.ID INNER JOIN PhieuDangKy P ON P.Lop = L.ID WHERE MAX(SELECT COUNT (*) AS 'MAX')
--GO

 CREATE PROCEDURE [dbo].[P_GV4]
 AS 
 BEGIN
	
	DECLARE @INDEX INT = 1
	DECLARE @TABLE3 TABLE(ID NVARCHAR(128), SL INT, TT INT IDENTITY(1,1))
	DECLARE @TABLE2 TABLE(ID NVARCHAR(128), SL INT)

	WHILE(@INDEX <= 4)
	BEGIN
		DECLARE @GV NVARCHAR(128) = 1
		WHILE( @GV IS NOT NULL)
		BEGIN
			DECLARE @TABLE1 TABLE(ID NVARCHAR(128))
			DECLARE @SL INT
			DECLARE @CHECK NVARCHAR(128)
			DECLARE @DDG INT


			SET @GV = (SELECT DISTINCT TOP 1 U.ID FROM Users U, KhoaHoc K, Lop L WHERE ( U.ID = K.GiaoVien1 AND U.ID NOT IN (SELECT * FROM @TABLE1)) OR ( U.ID = L.GiaoVien AND U.ID NOT IN (SELECT * FROM @TABLE1)))
			
			EXEC P_DDG @GV, @DDG OUTPUT

			IF (@DDG >= 5 )
			BEGIN
				IF(NOT EXISTS (SELECT * FROM @TABLE3 T3 WHERE T3.ID = @GV))
				BEGIN
					EXEC P_SPDK_GV @GV, @SL OUTPUT

					SET @CHECK = (SELECT T.ID FROM @TABLE2 T)

					IF(@CHECK IS NULL)
					BEGIN
						INSERT INTO @TABLE2 VALUES(@GV,@SL)
					END

					ELSE
					BEGIN
						IF(@SL > (SELECT SL FROM @TABLE2))
						BEGIN
							UPDATE @TABLE2 SET ID = @GV, SL = @SL
						END
					END
				END
			END

			INSERT INTO @TABLE1 VALUES(@GV)

		END
		INSERT INTO @TABLE3 VALUES((SELECT T.ID FROM @TABLE2 T),(SELECT T.SL FROM @TABLE2 T))
		DELETE FROM @TABLE1
		DELETE FROM @TABLE2

		SET @INDEX += 1 
	END
	--SELECT ID FROM @TABLE3 T3 WHERE TT=2
	SELECT U.*,T.SL FROM Users U, @TABLE3 T WHERE U.ID= T.ID AND T.TT = 4
 END
GO
/****** Object:  StoredProcedure [dbo].[P_KH1]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SELECT TOP 1 U.* FROM Users U INNER JOIN KhoaHoc K ON U.ID = K.GiaoVien INNER JOIN Lop L ON L.KhoaHoc = K.ID AND L.MonHoc = K.MonHoc AND L.ID = K.ID INNER JOIN PhieuDangKy P ON P.Lop = L.ID WHERE MAX(SELECT COUNT (*) AS 'MAX')
--GO

 CREATE PROCEDURE [dbo].[P_KH1]
 AS 
 BEGIN
	
	DECLARE @INDEX INT = 1
	DECLARE @TABLE3 TABLE(KH INT,MH INT, LV FLOAT, SL INT, TT INT IDENTITY(1,1))
	DECLARE @TABLE2 TABLE(KH INT,MH INT, LV FLOAT, SL INT)

	DECLARE @TABLEKH TABLE(KH INT,MH INT, LV FLOAT)

	WHILE(@INDEX <= 4)
	BEGIN
		--DECLARE @ID INT = 1
		
		DECLARE @KH INT = 1
		DECLARE @MH INT = 1
		DECLARE @LV FLOAT = 1
		DECLARE @LOP INT = 1

		WHILE( @KH IS NOT NULL AND @MH IS NOT NULL AND @LV IS NOT NULL)
		BEGIN
			DECLARE @TABLE1 TABLE(KH INT,MH INT, LV FLOAT)
			DECLARE @SL INT
			DECLARE @CHECK INT
			DECLARE @SBH INT

		--	DECLARE @KH INT = 1
		--DECLARE @MH INT = 1
		--DECLARE @LV FLOAT = 1

		--	DECLARE @TABLEKH TABLE(ID INT IDENTITY(1,1),KH INT,MH INT, LV FLOAT)
			INSERT INTO @TABLEKH(KH,MH,LV) SELECT TOP 1 K.ID, K.MonHoc, K.Levels FROM KhoaHoc K WHERE NOT EXISTS( SELECT * FROM @TABLE1 KH WHERE K.ID = KH.KH AND K.MonHoc = KH.MH AND K.Levels = KH.LV)
			
			--INSERT INTO @TABLEKH(KH,MH,LV) SELECT TOP 1 K.ID, K.MonHoc, K.Levels FROM KhoaHoc K WHERE K.ID NOT IN (SELECT KH.KH FROM @TABLE1 KH) AND K.MonHoc NOT IN (SELECT KH.MH FROM @TABLE1 KH) AND K.Levels NOT IN (SELECT KH.LV FROM @TABLE1 KH)

			SET @KH = (SELECT KH.KH FROM @TABLEKH KH)
			SET @MH = (SELECT KH.MH FROM @TABLEKH KH)
			SET @LV = (SELECT KH.LV FROM @TABLEKH KH)

			DELETE FROM @TABLEKH
			--SET @ID = (SELECT KH.ID FROM @TABLEKH KH)
			SET @LOP = 1
			DECLARE @TABLELOP TABLE(ID INT)
			WHILE ( @LOP IS NOT NULL)
			BEGIN
				SET @LOP = (SELECT TOP 1 K.ID FROM LOP K WHERE K.KhoaHoc = @KH AND K.MonHoc = @MH AND K.Levels = @LV AND K.ID NOT IN (SELECT ID FROM @TABLELOP))
				SET @SBH = (SELECT (SELECT DATEDIFF(DAY,GETDATE(),K.NgayKetThuc)*2) - L.SoBuoiHoc FROM KhoaHoc K JOIN Lop L ON L.KhoaHoc = K.ID AND L.MonHoc = K.MonHoc AND L.Levels =K.Levels WHERE K.ID = @KH AND K.MonHoc = @MH AND K.Levels = @LV AND L.ID = @LOP)
				
				--SELECT @SBH

				IF @LOP IS NOT NULL
				BEGIN INSERT INTO @TABLELOP VALUES(@LOP)
				END
				
				IF (@SBH >= 0 )
				BEGIN
					IF(NOT EXISTS (SELECT * FROM @TABLE3 T3 WHERE T3.KH = @KH AND T3.MH = @MH AND T3.LV = @LV))

					BEGIN
						EXEC P_SPDK_KH @KH,@MH,@LV, @SL OUTPUT

						SET @CHECK = (SELECT COUNT(*) FROM @TABLE2 T)

						IF(@CHECK = 0)
						BEGIN
							INSERT INTO @TABLE2 VALUES(@KH,@MH,@LV,@SL)
						END

						ELSE
						BEGIN
							IF(@SL > (SELECT SL FROM @TABLE2))
							BEGIN
								UPDATE @TABLE2 SET KH = @KH,MH = @MH, LV = @LV, SL = @SL
							END
						END
					END
				END
			END

			INSERT INTO @TABLE1 VALUES(@KH,@MH,@LV)

		END
		INSERT INTO @TABLE3 SELECT T.KH,T.MH,T.LV,T.SL FROM @TABLE2 T
		DELETE FROM @TABLE1
		DELETE FROM @TABLE2
		DELETE FROM @TABLELOP
		SET @INDEX += 1 
	END

	--SELECT * FROM @TABLE3 T3 WHERE TT=1
	--SELECT U.*,T.SL FROM Users U, @TABLE3 T WHERE U.ID= T.ID AND T.TT = 1
	SELECT K.*,T.SL FROM KhoaHoc K, @TABLE3 T WHERE K.ID = T.KH AND K.MonHoc = T.MH AND K.Levels = T.LV AND T.TT=1
 END
GO
/****** Object:  StoredProcedure [dbo].[P_KH2]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SELECT TOP 1 U.* FROM Users U INNER JOIN KhoaHoc K ON U.ID = K.GiaoVien INNER JOIN Lop L ON L.KhoaHoc = K.ID AND L.MonHoc = K.MonHoc AND L.ID = K.ID INNER JOIN PhieuDangKy P ON P.Lop = L.ID WHERE MAX(SELECT COUNT (*) AS 'MAX')
--GO

 CREATE PROCEDURE [dbo].[P_KH2]
 AS 
 BEGIN
	
	DECLARE @INDEX INT = 1
	DECLARE @TABLE3 TABLE(KH INT,MH INT, LV FLOAT, SL INT, TT INT IDENTITY(1,1))
	DECLARE @TABLE2 TABLE(KH INT,MH INT, LV FLOAT, SL INT)

	DECLARE @TABLEKH TABLE(KH INT,MH INT, LV FLOAT)

	WHILE(@INDEX <= 6)
	BEGIN
		--DECLARE @ID INT = 1
		
		DECLARE @KH INT = 1
		DECLARE @MH INT = 1
		DECLARE @LV FLOAT = 1
		DECLARE @LOP INT = 1

		WHILE( @KH IS NOT NULL AND @MH IS NOT NULL AND @LV IS NOT NULL)
		BEGIN
			DECLARE @TABLE1 TABLE(KH INT,MH INT, LV FLOAT)
			DECLARE @SL INT
			DECLARE @CHECK INT
			DECLARE @SBH INT

		--	DECLARE @KH INT = 1
		--DECLARE @MH INT = 1
		--DECLARE @LV FLOAT = 1

		--	DECLARE @TABLEKH TABLE(ID INT IDENTITY(1,1),KH INT,MH INT, LV FLOAT)
			INSERT INTO @TABLEKH(KH,MH,LV) SELECT TOP 1 K.ID, K.MonHoc, K.Levels FROM KhoaHoc K WHERE NOT EXISTS( SELECT * FROM @TABLE1 KH WHERE K.ID = KH.KH AND K.MonHoc = KH.MH AND K.Levels = KH.LV) AND NOT EXISTS( SELECT * FROM @TABLE3 KH WHERE K.ID = KH.KH AND K.MonHoc = KH.MH AND K.Levels = KH.LV)
			
			--INSERT INTO @TABLEKH(KH,MH,LV) SELECT TOP 1 K.ID, K.MonHoc, K.Levels FROM KhoaHoc K WHERE K.ID NOT IN (SELECT KH.KH FROM @TABLE1 KH) AND K.MonHoc NOT IN (SELECT KH.MH FROM @TABLE1 KH) AND K.Levels NOT IN (SELECT KH.LV FROM @TABLE1 KH)

			SET @KH = (SELECT KH.KH FROM @TABLEKH KH)
			SET @MH = (SELECT KH.MH FROM @TABLEKH KH)
			SET @LV = (SELECT KH.LV FROM @TABLEKH KH)

			DELETE FROM @TABLEKH
			--SET @ID = (SELECT KH.ID FROM @TABLEKH KH)
			SET @LOP = 1
			DECLARE @TABLELOP TABLE(ID INT)
			WHILE ( @LOP IS NOT NULL)
			BEGIN
				SET @LOP = (SELECT TOP 1 K.ID FROM LOP K WHERE K.KhoaHoc = @KH AND K.MonHoc = @MH AND K.Levels = @LV AND K.ID NOT IN (SELECT ID FROM @TABLELOP))
				SET @SBH = (SELECT (SELECT DATEDIFF(DAY,GETDATE(),K.NgayKetThuc)*2) - L.SoBuoiHoc FROM KhoaHoc K JOIN Lop L ON L.KhoaHoc = K.ID AND L.MonHoc = K.MonHoc AND L.Levels =K.Levels WHERE K.ID = @KH AND K.MonHoc = @MH AND K.Levels = @LV AND L.ID = @LOP)
				--SELECT @SBH
				IF @LOP IS NOT NULL
				BEGIN INSERT INTO @TABLELOP VALUES(@LOP)
				END
				
				IF (@SBH >= 0 )
				BEGIN
					IF(NOT EXISTS (SELECT * FROM @TABLE3 T3 WHERE T3.KH = @KH AND T3.MH = @MH AND T3.LV = @LV))

					BEGIN
						EXEC P_SPDK_KH @KH,@MH,@LV, @SL OUTPUT

						SET @CHECK = (SELECT COUNT(*) FROM @TABLE2 T)

						IF(@CHECK = 0)
						BEGIN
							INSERT INTO @TABLE2 VALUES(@KH,@MH,@LV,@SL)
						END

						ELSE
						BEGIN
							IF(@SL > (SELECT SL FROM @TABLE2))
							BEGIN
								UPDATE @TABLE2 SET KH = @KH,MH = @MH, LV = @LV, SL = @SL
							END
						END
					END
				END
			END
			
			INSERT INTO @TABLE1 VALUES(@KH,@MH,@LV)
		END
		INSERT INTO @TABLE3 SELECT T.KH,T.MH,T.LV,T.SL FROM @TABLE2 T
		DELETE FROM @TABLE1
		DELETE FROM @TABLE2
		DELETE FROM @TABLELOP
		SET @INDEX += 1
	END
	--SELECT * FROM @TABLE3 T3 WHERE TT=1
	--SELECT U.*,T.SL FROM Users U, @TABLE3 T WHERE U.ID= T.ID AND T.TT = 1
	SELECT K.*,T.SL FROM KhoaHoc K, @TABLE3 T WHERE K.ID = T.KH AND K.MonHoc = T.MH AND K.Levels = T.LV AND T.TT=2
 END
GO
/****** Object:  StoredProcedure [dbo].[P_KH3]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SELECT TOP 1 U.* FROM Users U INNER JOIN KhoaHoc K ON U.ID = K.GiaoVien INNER JOIN Lop L ON L.KhoaHoc = K.ID AND L.MonHoc = K.MonHoc AND L.ID = K.ID INNER JOIN PhieuDangKy P ON P.Lop = L.ID WHERE MAX(SELECT COUNT (*) AS 'MAX')
--GO

 CREATE PROCEDURE [dbo].[P_KH3]
 AS 
 BEGIN
	
	DECLARE @INDEX INT = 1
	DECLARE @TABLE3 TABLE(KH INT,MH INT, LV FLOAT, SL INT, TT INT IDENTITY(1,1))
	DECLARE @TABLE2 TABLE(KH INT,MH INT, LV FLOAT, SL INT)

	DECLARE @TABLEKH TABLE(KH INT,MH INT, LV FLOAT)

	WHILE(@INDEX <= 6)
	BEGIN
		--DECLARE @ID INT = 1
		
		DECLARE @KH INT = 1
		DECLARE @MH INT = 1
		DECLARE @LV FLOAT = 1
		DECLARE @LOP INT = 1

		WHILE( @KH IS NOT NULL AND @MH IS NOT NULL AND @LV IS NOT NULL)
		BEGIN
			DECLARE @TABLE1 TABLE(KH INT,MH INT, LV FLOAT)
			DECLARE @SL INT
			DECLARE @CHECK INT
			DECLARE @SBH INT

		--	DECLARE @KH INT = 1
		--DECLARE @MH INT = 1
		--DECLARE @LV FLOAT = 1

		--	DECLARE @TABLEKH TABLE(ID INT IDENTITY(1,1),KH INT,MH INT, LV FLOAT)
			INSERT INTO @TABLEKH(KH,MH,LV) SELECT TOP 1 K.ID, K.MonHoc, K.Levels FROM KhoaHoc K WHERE NOT EXISTS( SELECT * FROM @TABLE1 KH WHERE K.ID = KH.KH AND K.MonHoc = KH.MH AND K.Levels = KH.LV) AND NOT EXISTS( SELECT * FROM @TABLE3 KH WHERE K.ID = KH.KH AND K.MonHoc = KH.MH AND K.Levels = KH.LV)
			
			--INSERT INTO @TABLEKH(KH,MH,LV) SELECT TOP 1 K.ID, K.MonHoc, K.Levels FROM KhoaHoc K WHERE K.ID NOT IN (SELECT KH.KH FROM @TABLE1 KH) AND K.MonHoc NOT IN (SELECT KH.MH FROM @TABLE1 KH) AND K.Levels NOT IN (SELECT KH.LV FROM @TABLE1 KH)

			SET @KH = (SELECT KH.KH FROM @TABLEKH KH)
			SET @MH = (SELECT KH.MH FROM @TABLEKH KH)
			SET @LV = (SELECT KH.LV FROM @TABLEKH KH)

			DELETE FROM @TABLEKH
			--SET @ID = (SELECT KH.ID FROM @TABLEKH KH)
			SET @LOP = 1
			DECLARE @TABLELOP TABLE(ID INT)
			WHILE ( @LOP IS NOT NULL)
			BEGIN
				SET @LOP = (SELECT TOP 1 K.ID FROM LOP K WHERE K.KhoaHoc = @KH AND K.MonHoc = @MH AND K.Levels = @LV AND K.ID NOT IN (SELECT ID FROM @TABLELOP))
				SET @SBH = (SELECT (SELECT DATEDIFF(DAY,GETDATE(),K.NgayKetThuc)*2) - L.SoBuoiHoc FROM KhoaHoc K JOIN Lop L ON L.KhoaHoc = K.ID AND L.MonHoc = K.MonHoc AND L.Levels =K.Levels WHERE K.ID = @KH AND K.MonHoc = @MH AND K.Levels = @LV AND L.ID = @LOP)
				--SELECT @SBH
				IF @LOP IS NOT NULL
				BEGIN INSERT INTO @TABLELOP VALUES(@LOP)
				END
				
				IF (@SBH >= 0 )
				BEGIN
					IF(NOT EXISTS (SELECT * FROM @TABLE3 T3 WHERE T3.KH = @KH AND T3.MH = @MH AND T3.LV = @LV))

					BEGIN
						EXEC P_SPDK_KH @KH,@MH,@LV, @SL OUTPUT

						SET @CHECK = (SELECT COUNT(*) FROM @TABLE2 T)

						IF(@CHECK = 0)
						BEGIN
							INSERT INTO @TABLE2 VALUES(@KH,@MH,@LV,@SL)
						END

						ELSE
						BEGIN
							IF(@SL > (SELECT SL FROM @TABLE2))
							BEGIN
								UPDATE @TABLE2 SET KH = @KH,MH = @MH, LV = @LV, SL = @SL
							END
						END
					END
				END
			END
			
			INSERT INTO @TABLE1 VALUES(@KH,@MH,@LV)
		END
		INSERT INTO @TABLE3 SELECT T.KH,T.MH,T.LV,T.SL FROM @TABLE2 T
		DELETE FROM @TABLE1
		DELETE FROM @TABLE2
		DELETE FROM @TABLELOP
		SET @INDEX += 1
	END
	--SELECT * FROM @TABLE3 T3 WHERE TT=1
	--SELECT U.*,T.SL FROM Users U, @TABLE3 T WHERE U.ID= T.ID AND T.TT = 1
	SELECT K.*,T.SL FROM KhoaHoc K, @TABLE3 T WHERE K.ID = T.KH AND K.MonHoc = T.MH AND K.Levels = T.LV AND T.TT=3
 END
GO
/****** Object:  StoredProcedure [dbo].[P_KYTHICA]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[P_KYTHICA] @NT DATE, @LT INT, @CA INT
AS 
BEGIN

	DECLARE @LOP INT = 1, @DIADIEM INT, @CHECK INT

	WHILE (@LOP IS NOT NULL)
	BEGIN
	
		SET @LOP = ( SELECT TOP 1 K.LopThi FROM KyThi K WHERE K.NgayThi = @NT AND K.CaThi = @CA)

		SELECT @DIADIEM = TKB.DiaDiem FROM ThoiKhoaBieu TKB WHERE TKB.ThoiGian = @NT AND TKB.LopHoc = @LOP AND TKB.Ca = @CA

		SELECT @CHECK = TKB.DiaDiem FROM ThoiKhoaBieu TKB WHERE TKB.ThoiGian = @NT AND TKB.LopHoc = @LT AND TKB.Ca = @CA
		IF(@DIADIEM = @CHECK )
		BEGIN
			RETURN
		END
	END
	--SELECT * FROM ThoiKhoaBieu TKB INNER JOIN KyThi K ON K.NgayThi = TKB.ThoiGian WHERE TKB.Ca = @CA
	UPDATE KyThi SET CaThi = (CASE 
	WHEN @CA IN (SELECT TKB.CA FROM ThoiKhoaBieu TKB WHERE TKB.ThoiGian = @NT AND TKB.LopHoc = @LT) THEN @CA
	ELSE NULL
	END)
	WHERE NgayThi = @NT AND LopThi = @LT
END
GO
/****** Object:  StoredProcedure [dbo].[P_PDK]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[P_PDK] @BL INT, @LOP INT, @ND NVARCHAR(50), @DATE DATE, @USER NVARCHAR(128), @OUT INT OUTPUT
AS
BEGIN
	DECLARE @TABLE TABLE(TG DATE)
	--DECLARE @KG DATE
	DECLARE @TKB DATE = '11/11/2022'
	--SET @TKB =(SELECT TKB.ThoiGian FROM ThoiKhoaBieu TKB WHERE TKB.ThoiGian NOT IN (SELECT ThoiGian FROM ThoiKhoaBieu))
	--SELECT @TKB
	DECLARE @CHECK1 INT
	DECLARE @CHECK2 NVARCHAR(128)

	SELECT @CHECK2 = U.ID FROM Users U WHERE U.ID = @USER

	IF(@CHECK2 IS NULL)
	BEGIN
		SET @OUT = 2
		RETURN
	END
	--DECLARE @CHECK3 INT
	--SELECT TOP 1 @TG = TKB.ThoiGian,@LH= TKB.LopHoc FROM ThoiKhoaBieu TKB WHERE NOT EXISTS (SELECT * FROM ThoiKhoaBieu TKB WHERE TKB.ThoiGian IN(SELECT T.TG FROM @TABLE T) AND TKB.LopHoc IN (SELECT T.LH FROM @TABLE T))
	 WHILE (@TKB IS NOT NULL)
	 BEGIN
		
		SET @TKB = (SELECT DISTINCT TOP 1 TKB.ThoiGian FROM ThoiKhoaBieu TKB WHERE TKB.LopHoc IN (SELECT PDK.Lop FROM PhieuDangKy PDK WHERE PDK.Users = @USER) AND TKB.ThoiGian NOT IN (SELECT * FROM @TABLE))

		SELECT @CHECK1 = L.SoLuong FROM Lop L WHERE L.ID = @LOP
		--SELECT @CHECK1 = COUNT(*) FROM ThoiKhoaBieu TKB WHERE TKB.ThoiGian = @TKB AND TKB.LopHoc IN (SELECT PDK.Lop FROM PhieuDangKy PDK WHERE PDK.Users = @USER) OR (TKB.LopHoc = @LOP AND TKB.ThoiGian = @TKB)
		--IF(@CHECK1 >= 3)
		IF EXISTS (SELECT TKB.* FROM ThoiKhoaBieu TKB WHERE TKB.ThoiGian = @TKB AND TKB.LopHoc IN (SELECT PDK.Lop FROM PhieuDangKy PDK WHERE PDK.Users = @USER) AND TKB.Ca IN (SELECT TKB.Ca FROM ThoiKhoaBieu TKB WHERE TKB.LopHoc = @LOP AND TKB.ThoiGian = @TKB) OR @CHECK1 <= 0)
		BEGIN
			SET @OUT = 0
			RETURN
		END

		INSERT INTO @TABLE VALUES(@TKB)
	END
	INSERT INTO PhieuDangKy(BienLai,Lop,NoiDungDK,NgayDK,Users) VALUES(@BL,@LOP,@ND,@DATE,@USER)
	SET @OUT = 1
	--WHILE ( @TG IS NOT NULL AND @LH IS NOT NULL)
	--BEGIN
	--SELECT @KG = K.NgayKhaiGiang, @KT = K.NgayKetThuc,@CHECK2 = K.SoBuoiHoc FROM KhoaHoc K INNER JOIN LOP L ON L.KhoaHoc = K.ID AND L.MonHoc = K.MonHoc AND L.Levels = K.Levels WHERE L.ID = @LOP AND ( K.GiaoVien1 = @GV OR L.GiaoVien = @GV )
	--SELECT @CHECK3 = TKB.DiaDiem FROM ThoiKhoaBieu TKB WHERE TKB.ThoiGian = @DATE AND TKB.Ca = @CA
	--SELECT @CHECK1 = COUNT(TKB.Ca) FROM KhoaHoc K INNER JOIN LOP L ON L.KhoaHoc = K.ID AND L.MonHoc = K.MonHoc AND L.Levels = K.Levels INNER JOIN ThoiKhoaBieu TKB ON L.ID = TKB.LopHoc WHERE L.ID = @LOP


	--IF(@CHECK2 IS NULL OR @DATE < @KG OR @DATE > @KT OR (@CHECK1 + 1) > @CHECK2 OR @DD = @CHECK3) 
	

	--INSERT INTO ThoiKhoaBieu VALUES(@DATE, @LOP,@CA,@DD)

	--(CASE 
	--	WHEN ThoiGian < (SELECT K.NgayKhaiGiang FROM ThoiKhoaBieu TKB INNER JOIN LOP L ON TKB.LopHoc = L.ID INNER JOIN KhoaHoc K ON K.ID = L.KhoaHoc AND K.MonHoc = L.MonHoc AND L.Levels = K.Levels WHERE LopHoc = @LH AND ThoiGian = @TG) THEN (SELECT K.NgayKhaiGiang FROM ThoiKhoaBieu TKB INNER JOIN LOP L ON TKB.LopHoc = L.ID INNER JOIN KhoaHoc K ON K.ID = L.KhoaHoc AND K.MonHoc = L.MonHoc AND L.Levels = K.Levels WHERE LopHoc = @LH AND ThoiGian = @TG)
	--	ELSE ThoiGian

	--	END
	--) WHERE ThoiGian = @TG AND LopHoc = @LH
	--	INSERT INTO @TABLE VALUES(@TG,@LH)
	--END
END

--SELECT TKB.ThoiGian,TKB.LopHoc,TKB.Ca,DD.TenDiaDiem FROM ThoiKhoaBieu TKB, DiaDiem DD WHERE TKB.LopHoc IN (SELECT PDK.Lop FROM PhieuDangKy PDK WHERE PDK.Users = 2) AND DD.ID = TKB.DiaDiem
GO
/****** Object:  StoredProcedure [dbo].[P_SPDK_GV]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[P_SPDK_GV] @ID NVARCHAR(128) ,@SL INT OUTPUT
AS
    BEGIN     
			SET @SL = ( SELECT COUNT(*) AS 'SOLUONG' FROM KhoaHoc K INNER JOIN LOP L ON L.KhoaHoc = K.ID AND L.Levels = K.Levels AND L.MonHoc = K.MonHoc INNER JOIN PhieuDangKy P ON P.Lop = L.ID WHERE K.GiaoVien1 = @ID OR L.GiaoVien = @ID)
		--SELECT COUNT (PD.ID) AS SOLUONGGD,COUNT (DISTINCT PD.IDPhong) AS SOLUONGPHONG,SUM(PD.TienCoc) AS TONGTIEN, COUNT(DISTINCT PD.IDUser) AS SOLUONGKHACH FROM PhieuDat PD, Phong P WHERE PD.IDPhong = P.ID AND P.TinhTrang ='dathanhtoan' AND PD.Datetime >= ''+@date1+'' AND PD.Datetime <= ''+@date2+''
    END
GO
/****** Object:  StoredProcedure [dbo].[P_SPDK_KH]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[P_SPDK_KH] @ID INT,@MH INT, @LV FLOAT ,@SL INT OUTPUT
AS
    BEGIN     
			SET @SL = ( SELECT COUNT(*) AS 'SOLUONG' FROM LOP L INNER JOIN PhieuDangKy P ON P.Lop = L.ID WHERE L.KhoaHoc = @ID AND L.MonHoc = @MH AND L.Levels = @LV)
		--SELECT COUNT (PD.ID) AS SOLUONGGD,COUNT (DISTINCT PD.IDPhong) AS SOLUONGPHONG,SUM(PD.TienCoc) AS TONGTIEN, COUNT(DISTINCT PD.IDUser) AS SOLUONGKHACH FROM PhieuDat PD, Phong P WHERE PD.IDPhong = P.ID AND P.TinhTrang ='dathanhtoan' AND PD.Datetime >= ''+@date1+'' AND PD.Datetime <= ''+@date2+''
    END
GO
/****** Object:  StoredProcedure [dbo].[P_TKB]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[P_TKB] @DATE DATE, @LOP INT, @CA INT, @DD INT, @GV NVARCHAR(128), @OUT INT OUTPUT
AS
BEGIN
	--DECLARE @TABLE TABLE(TG DATE, LH INT)
	DECLARE @KG DATE
	DECLARE @KT DATE
	DECLARE @CHECK1 INT
	DECLARE @CHECK2 INT
	DECLARE @CHECK3 INT
	--SELECT TOP 1 @TG = TKB.ThoiGian,@LH= TKB.LopHoc FROM ThoiKhoaBieu TKB WHERE NOT EXISTS (SELECT * FROM ThoiKhoaBieu TKB WHERE TKB.ThoiGian IN(SELECT T.TG FROM @TABLE T) AND TKB.LopHoc IN (SELECT T.LH FROM @TABLE T))
	SELECT @GV = U.ID FROM Users U WHERE U.ID = @GV
	IF(@GV IS NULL)
	BEGIN
		SET @OUT = 2
		RETURN
	END
	--WHILE ( @TG IS NOT NULL AND @LH IS NOT NULL)
	--BEGIN
	DECLARE @NUM NVARCHAR(128)
	SET @NUM = ( SELECT DATEPART(WEEKDAY,@DATE))
	SELECT @KG = K.NgayKhaiGiang, @KT = K.NgayKetThuc,@CHECK2 = L.SoBuoiHoc FROM KhoaHoc K INNER JOIN LOP L ON L.KhoaHoc = K.ID AND L.MonHoc = K.MonHoc AND L.Levels = K.Levels WHERE L.ID = @LOP AND L.GiaoVien = @GV AND (K.NgayKetThuc >= GETDATE()) AND L.WD LIKE '%'+@NUM+'%'
	SELECT @CHECK3 = TKB.DiaDiem FROM ThoiKhoaBieu TKB WHERE TKB.ThoiGian = @DATE AND TKB.Ca = @CA
	SELECT @CHECK1 = COUNT(TKB.Ca) FROM KhoaHoc K INNER JOIN LOP L ON L.KhoaHoc = K.ID AND L.MonHoc = K.MonHoc AND L.Levels = K.Levels INNER JOIN ThoiKhoaBieu TKB ON L.ID = TKB.LopHoc WHERE L.ID = @LOP

	IF(@CHECK2 IS NULL OR @DATE < @KG OR @DATE > @KT OR (@CHECK1 + 1) > @CHECK2 OR @DD = @CHECK3) 
	BEGIN
		SET @OUT = 0
		RETURN
	END

	IF(EXISTS (SELECT * FROM ThoiKhoaBieu TKB WHERE TKB.ThoiGian = @DATE AND TKB.LopHoc = @LOP AND TKB.Ca = @CA))
	BEGIN
		UPDATE ThoiKhoaBieu SET DiaDiem = @DD WHERE ThoiGian = @DATE AND LopHoc = @LOP AND Ca = @CA
		SET @OUT = 3
		RETURN
	END

	INSERT INTO ThoiKhoaBieu VALUES(@DATE, @LOP,@CA,@DD)
	SET @OUT = 1
	--(CASE 
	--	WHEN ThoiGian < (SELECT K.NgayKhaiGiang FROM ThoiKhoaBieu TKB INNER JOIN LOP L ON TKB.LopHoc = L.ID INNER JOIN KhoaHoc K ON K.ID = L.KhoaHoc AND K.MonHoc = L.MonHoc AND L.Levels = K.Levels WHERE LopHoc = @LH AND ThoiGian = @TG) THEN (SELECT K.NgayKhaiGiang FROM ThoiKhoaBieu TKB INNER JOIN LOP L ON TKB.LopHoc = L.ID INNER JOIN KhoaHoc K ON K.ID = L.KhoaHoc AND K.MonHoc = L.MonHoc AND L.Levels = K.Levels WHERE LopHoc = @LH AND ThoiGian = @TG)
	--	ELSE ThoiGian

	--	END
	--) WHERE ThoiGian = @TG AND LopHoc = @LH
	--	INSERT INTO @TABLE VALUES(@TG,@LH)
	--END
END
GO
/****** Object:  StoredProcedure [dbo].[tCHAMTHI]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[tCHAMTHI] @USER NVARCHAR(128)
AS
BEGIN
	SELECT D.* FROM DiemThi D INNER JOIN LOP L ON L.ID = D.LOPTHI INNER JOIN KyThi K ON K.NgayThi = D.NGAYTHI AND K.LOPTHI = D.LOPTHI WHERE D.Diem IS NULL AND L.GiaoVien = @USER AND K.CATHI IS NOT NULL
END
GO
/****** Object:  StoredProcedure [dbo].[tCONFIRM]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROC [dbo].[tCONFIRM] @USER NVARCHAR(128)
AS 
BEGIN
	--DECLARE @BL FLOAT
	--DECLARE @KH FLOAT
	--DECLARE @PDK INT
	--SELECT @BL = B.SoTien, @KH = KH.HocPhi, @PDK = PDK.ID FROM inserted PDK INNER JOIN BienLai B ON B.ID = PDK.BienLai INNER JOIN LOP L ON L.ID = PDK.Lop INNER JOIN KhoaHoc KH ON KH.MonHoc = L.MonHoc AND KH.ID = L.KhoaHoc AND KH.Levels = L.Levels WHERE PDK.XacNhan = 0
	SELECT PDK.*,BL.SoTien FROM PhieuDangKy PDK INNER JOIN LOP L ON L.ID = PDK.Lop INNER JOIN KhoaHoc K ON K.ID = L.KhoaHoc AND K.MonHoc = L.MonHoc AND L.Levels = K.Levels INNER JOIN BienLai BL ON BL.ID = PDK.BienLai WHERE PDK.Users = @USER AND PDK.XacNhan = 0 AND PDK.Lop IS NOT NULL
	--SELECT @ID = PD.ID FROM PhieuDangKy PD WHERE PD.ID = @ID AND PD.ID IN ( )
	--IF(@ID IS NOT NULL)
	--BEGIN
	--	UPDATE PhieuDangKy SET BienLai = @BL WHERE ID = @ID
	--	SET @OUT = 1
	--	RETURN
	--END
	--SET @OUT = 0
	--UPDATE PhieuDangKy SET XacNhan =
	--(CASE
	--	WHEN @BL >= @KH THEN 1
	--	ELSE 0
	--	END
	--) WHERE ID = @PDK
END
GO
/****** Object:  StoredProcedure [dbo].[tGIANGVIEN]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[tGIANGVIEN]
AS
BEGIN
	SELECT DISTINCT U.* FROM Users U, Lop L WHERE U.ID = L.GiaoVien
END
GO
/****** Object:  StoredProcedure [dbo].[tKETQUA]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROC [dbo].[tKETQUA] @USER NVARCHAR(128)
 AS
 BEGIN
	SELECT DISTINCT KH.* FROM KhoaHoc KH INNER JOIN LOP L ON L.KhoaHoc = KH.ID AND L.MonHoc = KH.MonHoc AND L.Levels = KH.Levels INNER JOIN PhieuDangKy PDK ON PDK.Lop = L.ID WHERE PDK.XacNhan = 1 AND KH.NgayKetThuc < GETDATE() AND PDK.Users = @USER	
 END
GO
/****** Object:  StoredProcedure [dbo].[tKETQUAKH]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROC [dbo].[tKETQUAKH] @USER NVARCHAR(128),@KH INT, @MH INT, @LV FLOAT
 AS
 BEGIN
	--DECLARE @LOP INT = 1
	DECLARE @TABLE TABLE(DA FLOAT,DTB FLOAT, DCT FLOAT, KQ NVARCHAR(200))
	--DECLARE @TABLE1 TABLE(ID INT)
	DECLARE @CHECK1 FLOAT
	DECLARE @CHECK2 INT
	DECLARE @DCT FLOAT, @DTB FLOAT, @DA FLOAT,@KQ NVARCHAR(200)
	--WHILE (@LOP IS NOT NULL)
	--BEGIN

	--	SET @LOP = ( SELECT TOP 1 L.ID FROM LOP L INNER JOIN PhieuDangKy PDK ON PDK.Lop = L.ID WHERE PDK.Users = @USER AND L.KhoaHoc = @KH AND L.MonHoc = @MH AND L.Levels = @LV AND L.ID NOT IN (SELECT ID FROM @TABLE))
	--	--SET @LOP= ( SELECT TOP 1 ID FROM LOP L WHERE L.ID NOT IN (SELECT ID FROM @TABLE))
	--	--SET @CHECK1 = (SELECT DISTINCT  L.ID FROM ThoiKhoaBieu TKB INNER JOIN Lop L ON L.ID = TKB.LopHoc INNER JOIN KhoaHoc KH ON KH.ID = L.KhoaHoc AND KH.MonHoc = L.MonHoc AND KH.Levels = L.Levels WHERE TKB.LopHoc = @LOP AND (SELECT COUNT(ThoiGian) FROM ThoiKhoaBieu WHERE LopHoc = @LOP)>=KH.SoBuoiHoc)
	--	--SELECT @CHECK2 = COUNT(*) FROM KyThi K WHERE K.LOPTHI = @LOP
	--	SELECT @MIN = MIN(TKB.ThoiGian) FROM ThoiKhoaBieu TKB WHERE TKB.LopHoc = @LOP
	--END
		SELECT @DTB = AVG(D.Diem) FROM DiemThi D INNER JOIN LOP L ON L.ID = D.LOPTHI INNER JOIN KhoaHoc KH ON KH.ID = L.KhoaHoc AND KH.MonHoc = L.MonHoc AND KH.Levels = L.Levels INNER JOIN KyThi K ON K.NgayThi = D.NGAYTHI AND K.LOPTHI = D.LOPTHI WHERE D.LOPTHI IN (SELECT KH.ID FROM Lop KH WHERE KH.KhoaHoc = @KH AND KH.MonHoc = @MH AND KH.Levels = @LV) AND D.Users = @USER AND K.TenKyThi NOT LIKE 'A'
		SELECT @CHECK1 = KH.Levels - @DTB FROM KhoaHoc KH WHERE KH.ID = @KH AND KH.MonHoc = @MH AND KH.Levels = @LV
		IF(@CHECK1 > 0)
		BEGIN
			SET @KQ = N'KHÔNG ĐẠT, BẠN THIẾU '+CONVERT(nvarchar,@CHECK1,128)+N' ĐIỂM'
		END
		IF(@CHECK1 <=0)
		BEGIN
			SET @KQ = N'ĐẠT'
		END
		SELECT @DA =AVG(D.Diem) FROM DiemThi D INNER JOIN LOP L ON L.ID = D.LOPTHI INNER JOIN KhoaHoc KH ON KH.ID = L.KhoaHoc AND KH.MonHoc = L.MonHoc AND KH.Levels = L.Levels INNER JOIN KyThi K ON K.NgayThi = D.NGAYTHI AND K.LOPTHI = D.LOPTHI WHERE D.LOPTHI IN (SELECT KH.ID FROM Lop KH WHERE KH.KhoaHoc = @KH AND KH.MonHoc = @MH AND KH.Levels = @LV) AND D.Users = @USER AND K.TenKyThi LIKE 'A'
		
		SELECT @DCT = @DTB - @DA
		INSERT INTO @TABLE VALUES(@DA,@DTB,@DCT,@KQ)
		SELECT * FROM @TABLE
 END
GO
/****** Object:  StoredProcedure [dbo].[tKETQUAKHALL]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROC [dbo].[tKETQUAKHALL]
AS 
BEGIN
	DECLARE @OUT FLOAT
	DECLARE @TABLE3 TABLE(U NVARCHAR(128), KH INT,MH INT, LV FLOAT, DTB FLOAT, TT INT IDENTITY(1,1))
	DECLARE @TABLE2 TABLE(U NVARCHAR(128), KH INT,MH INT, LV FLOAT, TLV NVARCHAR(128), DTB FLOAT)

	DECLARE @TABLEKH TABLE(KH INT,MH INT, LV FLOAT)
		--DECLARE @ID INT = 1
	DECLARE @TABLEUSER TABLE(U NVARCHAR(128))
	DECLARE @KH INT = 1
	DECLARE @MH INT = 1
	DECLARE @LV FLOAT = 1
	DECLARE @DG FLOAT
	DECLARE @TLV NVARCHAR(128)
	DECLARE @TABLE1 TABLE(KH INT,MH INT, LV FLOAT)

	WHILE( @KH IS NOT NULL AND @MH IS NOT NULL AND @LV IS NOT NULL)
	BEGIN
		DECLARE @USER NVARCHAR(128) = 1
	--	DECLARE @KH INT = 1
	--DECLARE @MH INT = 1
	--DECLARE @LV FLOAT = 1

	--	DECLARE @TABLEKH TABLE(ID INT IDENTITY(1,1),KH INT,MH INT, LV FLOAT)
		INSERT INTO @TABLEKH(KH,MH,LV) SELECT TOP 1 K.ID, K.MonHoc, K.Levels FROM KhoaHoc K WHERE NOT EXISTS( SELECT * FROM @TABLE1 KH WHERE K.ID = KH.KH AND K.MonHoc = KH.MH AND K.Levels = KH.LV)
			
		--INSERT INTO @TABLEKH(KH,MH,LV) SELECT TOP 1 K.ID, K.MonHoc, K.Levels FROM KhoaHoc K WHERE K.ID NOT IN (SELECT KH.KH FROM @TABLE1 KH) AND K.MonHoc NOT IN (SELECT KH.MH FROM @TABLE1 KH) AND K.Levels NOT IN (SELECT KH.LV FROM @TABLE1 KH)

		SET @KH = (SELECT KH.KH FROM @TABLEKH KH)
		SET @MH = (SELECT KH.MH FROM @TABLEKH KH)
		SET @LV = (SELECT KH.LV FROM @TABLEKH KH)

		DELETE FROM @TABLEKH

		WHILE (@USER IS NOT NULL)
		BEGIN
			SET @USER = (SELECT TOP 1 U.ID FROM Users U WHERE U.ID NOT IN (SELECT T.U FROM @TABLEUSER T))
			
			EXECUTE tOUTKETQUAKH @USER,@KH,@MH,@LV,@OUT OUTPUT

			SELECT @DG = L.DiemTB, @TLV= L.TenLevels FROM KhoaHoc KH INNER JOIN Levels L ON KH.MonHoc = L.MonHoc WHERE KH.ID = @KH AND KH.MonHoc = @MH AND KH.Levels = @LV AND L.TenLevels LIKE 'Gioi'

			IF(@OUT  >= @DG)
			BEGIN
				INSERT INTO @TABLE2 VALUES(@USER,@KH,@MH,@LV,@TLV,@OUT)
			END
			INSERT INTO @TABLEUSER VALUES(@USER)
		END

		INSERT INTO @TABLE1 VALUES(@KH,@MH,@LV)
		DELETE FROM @TABLEUSER
	END
	SELECT * FROM @TABLE2
	--INSERT INTO @TABLE3 SELECT T.U,T.KH,T.MH,T.LV,T.DTB FROM @TABLE2 T
	--DELETE FROM @TABLE1DELETE FROM @TABLE2

	--SELECT * FROM @TABLE3 T3 WHERE TT=1
	--SELECT U.*,T.SL FROM Users U, @TABLE3 T WHERE U.ID= T.ID AND T.TT = 1
	--SELECT K.*,T.DTB FROM KhoaHoc K, @TABLE3 T WHERE K.ID = T.KH AND K.MonHoc = T.MH AND K.Levels = T.LV AND T.TT=1
	
	--DECLARE @USER NVARCHAR(128)
	--SELECT @USER = I.UserName FROM inserted I
	--INSERT INTO AspNetUserRoles(UserId) VALUES(@USER)
	--SELECT PDK.* FROM PhieuDangKy PDK INNER JOIN LOP L ON L.ID = PDK.Lop WHERE PDK.BienLai IS NULL AND L.GiaoVien IS NULL
	--SELECT L.* FROM LOP L INNER JOIN KhoaHoc KH ON L.KhoaHoc = KH.ID AND L.MonHoc = KH.MonHoc AND L.Levels = KH.Levels INNER JOIN PhieuDangKy PDK ON PDK.Lop = L.ID WHERE L.GiaoVien IS NULL AND KH.NgayKhaiGiang >= GETDATE() AND PDK.XacNhan = 0
END
GO
/****** Object:  StoredProcedure [dbo].[tKHOAHOC]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[tKHOAHOC]
AS
BEGIN
	SELECT DISTINCT K.* FROM KhoaHoc K WHERE (SELECT DATEDIFF(DAY,GETDATE(),K.NgayKetThuc)*2) - 10 >=0
END
GO
/****** Object:  StoredProcedure [dbo].[tKYTHI]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROC [dbo].[tKYTHI] @USER NVARCHAR(128)
 AS
 BEGIN
	SELECT DISTINCT K.* FROM KyThi K INNER JOIN  LOP L ON K.LOPTHI = L.ID INNER JOIN  KhoaHoc KH ON L.KhoaHoc = KH.ID AND L.MonHoc = KH.MonHoc AND L.Levels = KH.Levels INNER JOIN PhieuDangKy PDK ON PDK.Lop = L.ID WHERE PDK.Users = @USER AND PDK.XacNhan = 1 AND KH.NgayKetThuc >= GETDATE() AND K.CATHI IS NOT NULL
	--TẠO KỲ THI = TẠO ĐIỂM THI NULL
END
GO
/****** Object:  StoredProcedure [dbo].[tKYTHICA]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[tKYTHICA] @USER NVARCHAR(128)
AS 
BEGIN
	SELECT K.* FROM KyThi K INNER JOIN LOP L ON L.ID = K.LopThi INNER JOIN KhoaHoc KH ON KH.ID = L.KhoaHoc AND KH.MonHoc = L.MonHoc AND L.Levels = KH.Levels WHERE K.CaThi IS NULL AND KH.NgayKetThuc >= GETDATE() AND L.GiaoVien = @USER
END
GO
/****** Object:  StoredProcedure [dbo].[tLOPCT]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[tLOPCT] @USER NVARCHAR(128), @LOP INT
AS
BEGIN
	SELECT DISTINCT U.* FROM Users U INNER JOIN PhieuDangKy PDK ON PDK.Users = U.ID INNER JOIN LOP L ON L.ID = PDK.Lop WHERE L.GiaoVien = @USER AND L.ID = @LOP AND PDK.BienLai IS NOT NULL
END
GO
/****** Object:  StoredProcedure [dbo].[tLOPGV]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[tLOPGV] @USER NVARCHAR(128)
AS
BEGIN
	SELECT DISTINCT L.* FROM LOP L INNER JOIN KhoaHoc KH ON KH.ID = L.KhoaHoc AND KH.MonHoc = L.MonHoc AND KH.Levels = L.Levels WHERE  (KH.GiaoVien1 = @USER OR L.GiaoVien = @USER) AND KH.NgayKetThuc >= GETDATE()
END
GO
/****** Object:  StoredProcedure [dbo].[tLOPHOC]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[tLOPHOC]
AS
BEGIN
	DECLARE @LOP INT = 1
	DECLARE @TABLE TABLE(ID INT)
	DECLARE @TABLE1 TABLE(ID INT)
	--DECLARE @CHECK INT
	WHILE (@LOP IS NOT NULL)
	BEGIN
		SET @LOP= ( SELECT TOP 1 ID FROM LOP L WHERE L.ID NOT IN (SELECT ID FROM @TABLE))
		INSERT INTO @TABLE1 SELECT DISTINCT L.ID FROM ThoiKhoaBieu TKB INNER JOIN Lop L ON L.ID = TKB.LopHoc INNER JOIN KhoaHoc KH ON KH.ID = L.KhoaHoc AND KH.MonHoc = L.MonHoc AND KH.Levels = L.Levels WHERE TKB.LopHoc = @LOP AND (SELECT COUNT(ThoiGian) FROM ThoiKhoaBieu WHERE LopHoc = @LOP)>=L.SoBuoiHoc AND L.ID = @LOP
		INSERT INTO @TABLE VALUES (@LOP)
	END
		SELECT L.*,K.TenKhoaHoc FROM Lop L, KhoaHoc K WHERE L.KhoaHoc = K.ID AND L.MonHoc = K.MonHoc AND L.Levels = K.Levels AND (SELECT DATEDIFF(DAY,GETDATE(),K.NgayKetThuc)*2) - L.SoBuoiHoc >=0 AND L.ID IN (SELECT * FROM @TABLE1)
END
GO
/****** Object:  StoredProcedure [dbo].[tLOPHOCKH]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[tLOPHOCKH] @KH INT, @MH INT, @LV FLOAT
AS
BEGIN
	DECLARE @LOP INT = 1
	DECLARE @TABLE TABLE(ID INT)
	DECLARE @TABLE1 TABLE(ID INT)
	--DECLARE @CHECK INT
	WHILE (@LOP IS NOT NULL)
	BEGIN
		SET @LOP= ( SELECT TOP 1 ID FROM LOP L WHERE L.ID NOT IN (SELECT ID FROM @TABLE))
		INSERT INTO @TABLE1 SELECT DISTINCT L.ID FROM ThoiKhoaBieu TKB INNER JOIN Lop L ON L.ID = TKB.LopHoc INNER JOIN KhoaHoc KH ON KH.ID = L.KhoaHoc AND KH.MonHoc = L.MonHoc AND KH.Levels = L.Levels WHERE TKB.LopHoc = @LOP AND (SELECT COUNT(ThoiGian) FROM ThoiKhoaBieu WHERE LopHoc = @LOP)>=L.SoBuoiHoc AND L.ID = @LOP
		INSERT INTO @TABLE VALUES (@LOP)
	END
		SELECT L.* FROM Lop L, KhoaHoc K WHERE L.KhoaHoc = K.ID AND L.MonHoc = K.MonHoc AND L.Levels = K.Levels AND (SELECT DATEDIFF(DAY,GETDATE(),K.NgayKetThuc)*2) - L.SoBuoiHoc >=0 AND L.ID IN (SELECT * FROM @TABLE1) AND L.KhoaHoc = @KH AND L.MonHoc = @MH AND L.Levels = @LV
END
GO
/****** Object:  StoredProcedure [dbo].[tLOPPDG]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[tLOPPDG] @USER NVARCHAR(128)
AS
BEGIN
	SELECT L.*,PDK.ID FROM PhieuDangKy PDK INNER JOIN LOP L ON L.ID = PDK.Lop INNER JOIN KhoaHoc KH ON KH.ID = L.KhoaHoc AND KH.MonHoc = L.MonHoc AND KH.Levels = L.Levels WHERE PDK.XacNhan = 1 AND KH.NgayKetThuc < GETDATE() AND PDK.Users = @USER
	--SELECT DISTINCT L.* FROM Users U INNER JOIN PhieuDangKy PDK ON PDK.Users = U.ID INNER JOIN LOP L ON L.ID = PDK.Lop WHERE L.GiaoVien = @USER OR PDK.Users = @USER
END
GO
/****** Object:  StoredProcedure [dbo].[tLOPUSER]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[tLOPUSER] @USER NVARCHAR(128)
AS
BEGIN
	SELECT DISTINCT L.* FROM Users U, PhieuDangKy PDK, LOP L  INNER JOIN KhoaHoc KH ON KH.ID = L.KhoaHoc AND KH.MonHoc = L.MonHoc AND KH.Levels = L.Levels WHERE ( L.GiaoVien = @USER OR (PDK.Users = @USER AND PDK.Users = U.ID AND L.ID = PDK.Lop)) AND KH.NgayKetThuc >= GETDATE()
END
GO
/****** Object:  StoredProcedure [dbo].[tOUTKETQUAKH]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROC [dbo].[tOUTKETQUAKH] @USER NVARCHAR(128),@KH INT, @MH INT, @LV FLOAT, @OUT FLOAT OUTPUT
 AS
 BEGIN
	--DECLARE @LOP INT = 1
	DECLARE @TABLE TABLE(DA FLOAT,DTB FLOAT, DCT FLOAT, KQ NVARCHAR(200))
	--DECLARE @TABLE1 TABLE(ID INT)
	DECLARE @CHECK1 FLOAT
	DECLARE @CHECK2 INT
	DECLARE @DCT FLOAT, @DTB FLOAT, @DA FLOAT,@KQ NVARCHAR(200)
	--WHILE (@LOP IS NOT NULL)
	--BEGIN

	--	SET @LOP = ( SELECT TOP 1 L.ID FROM LOP L INNER JOIN PhieuDangKy PDK ON PDK.Lop = L.ID WHERE PDK.Users = @USER AND L.KhoaHoc = @KH AND L.MonHoc = @MH AND L.Levels = @LV AND L.ID NOT IN (SELECT ID FROM @TABLE))
	--	--SET @LOP= ( SELECT TOP 1 ID FROM LOP L WHERE L.ID NOT IN (SELECT ID FROM @TABLE))
	--	--SET @CHECK1 = (SELECT DISTINCT  L.ID FROM ThoiKhoaBieu TKB INNER JOIN Lop L ON L.ID = TKB.LopHoc INNER JOIN KhoaHoc KH ON KH.ID = L.KhoaHoc AND KH.MonHoc = L.MonHoc AND KH.Levels = L.Levels WHERE TKB.LopHoc = @LOP AND (SELECT COUNT(ThoiGian) FROM ThoiKhoaBieu WHERE LopHoc = @LOP)>=KH.SoBuoiHoc)
	--	--SELECT @CHECK2 = COUNT(*) FROM KyThi K WHERE K.LOPTHI = @LOP
	--	SELECT @MIN = MIN(TKB.ThoiGian) FROM ThoiKhoaBieu TKB WHERE TKB.LopHoc = @LOP
	--END
		SELECT @DTB = AVG(D.Diem) FROM DiemThi D INNER JOIN LOP L ON L.ID = D.LOPTHI INNER JOIN KhoaHoc KH ON KH.ID = L.KhoaHoc AND KH.MonHoc = L.MonHoc AND KH.Levels = L.Levels INNER JOIN KyThi K ON K.NgayThi = D.NGAYTHI AND K.LOPTHI = D.LOPTHI WHERE D.LOPTHI IN (SELECT KH.ID FROM Lop KH WHERE KH.KhoaHoc = @KH AND KH.MonHoc = @MH AND KH.Levels = @LV) AND D.Users = @USER AND K.TenKyThi NOT LIKE 'A'
		SELECT @CHECK1 = KH.Levels - @DTB FROM KhoaHoc KH WHERE KH.ID = @KH AND KH.MonHoc = @MH AND KH.Levels = @LV
		IF(@CHECK1 > 0)
		BEGIN
			SET @KQ = N'KHÔNG ĐẠT, BẠN THIẾU '+CONVERT(nvarchar,@CHECK1,128)+N' ĐIỂM'
		END
		IF(@CHECK1 <=0)
		BEGIN
			SET @KQ = N'ĐẠT'
		END
		SELECT @DA =AVG(D.Diem) FROM DiemThi D INNER JOIN LOP L ON L.ID = D.LOPTHI INNER JOIN KhoaHoc KH ON KH.ID = L.KhoaHoc AND KH.MonHoc = L.MonHoc AND KH.Levels = L.Levels INNER JOIN KyThi K ON K.NgayThi = D.NGAYTHI AND K.LOPTHI = D.LOPTHI WHERE D.LOPTHI IN (SELECT KH.ID FROM Lop KH WHERE KH.KhoaHoc = @KH AND KH.MonHoc = @MH AND KH.Levels = @LV) AND D.Users = @USER AND K.TenKyThi LIKE 'A'
		
		SELECT @DCT = @DTB - @DA
		SET @OUT = @DTB
		INSERT INTO @TABLE VALUES(@DA,@DTB,@DCT,@KQ)
 END
GO
/****** Object:  StoredProcedure [dbo].[tTHOIKHOABIEU]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[tTHOIKHOABIEU] @USER NVARCHAR(128)
AS
BEGIN
	SELECT TKB.ThoiGian,TKB.LopHoc,TKB.Ca,DD.TenDiaDiem FROM ThoiKhoaBieu TKB, DiaDiem DD, KhoaHoc KH, Lop L WHERE (TKB.LopHoc IN (SELECT PDK.Lop FROM PhieuDangKy PDK, LOP L WHERE PDK.Lop= L.ID AND PDK.Users = @USER AND PDK.XacNhan = 1) OR NOT EXISTS(SELECT PDK.Lop FROM PhieuDangKy PDK JOIN LOP LO  ON PDK.Lop= LO.ID, AspNetUserRoles RO WHERE RO.UserId = @USER AND RO.RoleId IS NULL)) AND DD.ID = TKB.DiaDiem AND L.ID = TKB.LopHoc AND L.KhoaHoc = KH.ID AND L.MonHoc = KH.MonHoc AND L.Levels = KH.Levels AND KH.NgayKetThuc >= GETDATE()
END
GO
/****** Object:  StoredProcedure [dbo].[tTUYENDUNG]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROC [dbo].[tTUYENDUNG]

AS 
BEGIN
	--DECLARE @USER NVARCHAR(128)
	--SELECT @USER = I.UserName FROM inserted I
	--INSERT INTO AspNetUserRoles(UserId) VALUES(@USER)
	SELECT L.* FROM LOP L INNER JOIN KhoaHoc KH ON L.KhoaHoc = KH.ID AND L.MonHoc = KH.MonHoc AND L.Levels = KH.Levels WHERE L.GiaoVien IS NULL AND KH.NgayKhaiGiang >= GETDATE()
END
GO
/****** Object:  StoredProcedure [dbo].[tUNGTUYEN]    Script Date: 3/15/2023 2:32:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROC [dbo].[tUNGTUYEN]
AS 
BEGIN
	--DECLARE @USER NVARCHAR(128)
	--SELECT @USER = I.UserName FROM inserted I
	--INSERT INTO AspNetUserRoles(UserId) VALUES(@USER)
	SELECT PDK.* FROM PhieuDangKy PDK INNER JOIN LOP L ON L.ID = PDK.Lop WHERE PDK.BienLai IS NULL AND L.GiaoVien IS NULL
	--SELECT L.* FROM LOP L INNER JOIN KhoaHoc KH ON L.KhoaHoc = KH.ID AND L.MonHoc = KH.MonHoc AND L.Levels = KH.Levels INNER JOIN PhieuDangKy PDK ON PDK.Lop = L.ID WHERE L.GiaoVien IS NULL AND KH.NgayKhaiGiang >= GETDATE() AND PDK.XacNhan = 0
END
GO
CREATE TRIGGER [dbo].[T_EMAIL]
   ON  [dbo].[AspNetUsers]
   FOR INSERT,DELETE,UPDATE
AS 
BEGIN
	DECLARE @NAME NVARCHAR(128), @ID NVARCHAR(128)
	SELECT @NAME = u.TenUser, @ID = I.UserName FROM inserted I join Users U on u.ID = i.UserName
	UPDATE AspNetUsers SET Email = @NAME WHERE UserName = @ID
END
GO

ALTER TABLE [dbo].[AspNetUsers] ENABLE TRIGGER [T_EMAIL]
GO


/****** Object:  Trigger [dbo].[T_ROLE]    Script Date: 3/24/2023 10:56:11 PM ******/

GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[T_ROLE]
   ON  [dbo].[AspNetUsers] FOR INSERT
AS 
BEGIN
	DECLARE @USER NVARCHAR(128)
	SELECT @USER = I.UserName FROM inserted I
	INSERT INTO AspNetUserRoles(UserId) VALUES(@USER)
END
GO

ALTER TABLE [dbo].[AspNetUsers] ENABLE TRIGGER [T_ROLE]
GO

/****** Object:  Trigger [dbo].[T_GV1]    Script Date: 3/24/2023 10:57:05 PM ******/

GO


CREATE TRIGGER [dbo].[T_GV1] ON [dbo].[Lop] FOR UPDATE, INSERT
 AS
 BEGIN
	--DECLARE @TAB TABLE(ID INT,MONHOC INT,LEV FLOAT)
	--INSERT INTO @TAB SELECT I.ID,I.MonHoc,I.Levels FROM inserted I WHERE I.SoBuoiHoc > (SELECT DATEADD(DAY,DATEDIFF(DAY,I.NgayKhaiGiang,I.NgayKetThuc),0) * 2)
	DECLARE @KH INT
	DECLARE @ID INT

	DECLARE @GV1 NVARCHAR(128)
	
	SELECT @ID= L.ID, @GV1=I.GiaoVien1 FROM KhoaHoc I INNER JOIN inserted L ON L.KhoaHoc = I.ID AND L.MonHoc = I.MonHoc AND L.Levels = I.Levels
	
	IF ( @GV1 IS NOT NULL)
	BEGIN
		UPDATE Lop SET GiaoVien = @GV1 WHERE ID = @ID
	END
	--SELECT * FROM KhoaHoc K WHERE K.NgayKhaiGiang > ()
	--SELECT K.* FROM inserted I, KhoaHoc K WHERE K.ID = I.ID AND K.MonHoc = I.MonHoc AND K.Levels = I.Levels
 END
GO

ALTER TABLE [dbo].[Lop] ENABLE TRIGGER [T_GV1]
GO

/****** Object:  Trigger [dbo].[T_Confirm]    Script Date: 3/24/2023 10:59:52 PM ******/

GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[T_Confirm]
   ON  [dbo].[PhieuDangKy]
   FOR INSERT,UPDATE
AS 
BEGIN
	DECLARE @BL FLOAT
	DECLARE @HP FLOAT
	DECLARE @PDK INT

	DECLARE @ID INT,@LOP INT

	

	DECLARE @COUNT INT = 0
	DECLARE @CHECK1 INT,@CHECK2 INT,@USER NVARCHAR(128)
	DECLARE @TABLE1 TABLE(PDK INT)
		
	SELECT @ID = PDK.ID,@CHECK1 = PDK.BienLai, @USER = PDK.Users FROM inserted PDK WHERE PDK.BienLai IN ( SELECT I.BienLai FROM PhieuDangKy I WHERE I.ID != PDK.ID )

	DECLARE @KH INT
	DECLARE @MH INT
	DECLARE @LV FLOAT
	
	SELECT @KH = KH.ID, @MH = KH.MonHoc, @LV = KH.Levels FROM KhoaHoc KH INNER JOIN Lop L ON KH.MonHoc = L.MonHoc AND KH.ID = L.KhoaHoc AND KH.Levels = L.Levels INNER JOIN PhieuDangKy I ON I.Lop = L.ID WHERE I.ID = @ID

	IF(@ID IS NULL)
	BEGIN

		SELECT @BL = B.SoTien, @HP = KH.HocPhi, @PDK = PDK.ID FROM inserted PDK INNER JOIN BienLai B ON B.ID = PDK.BienLai INNER JOIN LOP L ON L.ID = PDK.Lop INNER JOIN KhoaHoc KH ON KH.MonHoc = L.MonHoc AND KH.ID = L.KhoaHoc AND KH.Levels = L.Levels WHERE PDK.XacNhan = 0
		UPDATE PhieuDangKy SET XacNhan =
		(CASE
			WHEN @BL >= @HP THEN 1
			ELSE 0
			END
		) WHERE ID = @PDK
		RETURN
	END
	--KHONG CHO PHEP THEM BIEN LAI KHI NANG CAP TAI KHOAN
	WHILE (@ID IS NOT NULL)
	BEGIN
		INSERT INTO @TABLE1 VALUES (@ID)

		SET @ID = (SELECT TOP 1 PDK.ID FROM PhieuDangKy PDK WHERE PDK.ID NOT IN (SELECT * FROM @TABLE1))
		SET @LOP= (SELECT PDK.Lop FROM PhieuDangKy PDK WHERE PDK.ID = @ID)
		SELECT @CHECK2 = PDK.ID FROM PhieuDangKy PDK INNER JOIN LOP L ON L.ID = PDK.Lop INNER JOIN KhoaHoc KH ON KH.MonHoc = L.MonHoc AND KH.ID = L.KhoaHoc AND KH.Levels = L.Levels WHERE PDK.ID = @ID AND PDK.BienLai = @CHECK1 AND ( NOT EXISTS ( SELECT * FROM PhieuDangKy PDK INNER JOIN LOP L ON L.ID = PDK.Lop INNER JOIN KhoaHoc KH ON KH.MonHoc = L.MonHoc AND KH.ID = L.KhoaHoc AND KH.Levels = L.Levels WHERE PDK.ID = @ID AND KH.ID = @KH AND KH.MonHoc = @MH AND KH.Levels = @LV AND PDK.BienLai = @CHECK1) OR PDK.Users != @USER )
		
		IF(@CHECK2 IS NOT NULL OR @LOP IS NULL)
		BEGIN
			RETURN
		END
	END
	SELECT @BL = B.SoTien, @HP = KH.HocPhi, @PDK = PDK.ID FROM inserted PDK INNER JOIN BienLai B ON B.ID = PDK.BienLai INNER JOIN LOP L ON L.ID = PDK.Lop INNER JOIN KhoaHoc KH ON KH.MonHoc = L.MonHoc AND KH.ID = L.KhoaHoc AND KH.Levels = L.Levels WHERE PDK.XacNhan = 0
	UPDATE PhieuDangKy SET XacNhan =
	(CASE
		WHEN @BL >= @HP THEN 1
		ELSE 0
		END
	) WHERE ID = @PDK
END
GO

ALTER TABLE [dbo].[PhieuDangKy] ENABLE TRIGGER [T_Confirm]
GO


/****** Object:  Trigger [dbo].[T_DIEMTHI]    Script Date: 3/24/2023 11:01:28 PM ******/

GO

CREATE TRIGGER [dbo].[T_DIEMTHI] ON [dbo].[PhieuDangKy] FOR INSERT,UPDATE
AS
BEGIN
	DECLARE @MIN DATE, @MAX DATE, @AVG DATE
	DECLARE @USER NVARCHAR(128)
	DECLARE @LOP INT
	DECLARE @CHECK2 INT
	DECLARE @CHECK1 INT
	SELECT @USER = I.Users, @LOP = I.Lop FROM inserted I INNER JOIN Lop L ON L.ID = I.Lop WHERE I.XacNhan = 1 AND I.BienLai IS NOT NULL AND L.GiaoVien IS NOT NULL
	SELECT @MIN = MIN(TKB.ThoiGian),@MAX = MAX(TKB.ThoiGian), @AVG = (SELECT DATEADD(DAY,(SELECT DATEDIFF(DAY,MIN(TKB.ThoiGian),MAX(TKB.ThoiGian))/2),MIN(TKB.ThoiGian))) FROM ThoiKhoaBieu TKB WHERE TKB.LopHoc = @LOP
	SET @AVG = (SELECT TOP 1 TKB.ThoiGian FROM ThoiKhoaBieu TKB WHERE TKB.ThoiGian >= @AVG AND TKB.LopHoc = @LOP ORDER BY TKB.ThoiGian)
	SELECT @CHECK2 = COUNT(*) FROM KyThi K WHERE K.LOPTHI = @LOP
	SELECT @CHECK1 = COUNT(*) FROM DiemThi D WHERE D.Users = @USER AND D.LOPTHI = @LOP
	IF @CHECK2 >=3 AND @USER IS NOT NULL AND @CHECK1 <3
	BEGIN
		INSERT INTO DiemThi VALUES(@MIN,@LOP,@USER,NULL)
		INSERT INTO DiemThi VALUES(@AVG,@LOP,@USER,NULL)
		INSERT INTO DiemThi VALUES(@MAX,@LOP,@USER,NULL)
	END
END
GO

ALTER TABLE [dbo].[PhieuDangKy] ENABLE TRIGGER [T_DIEMTHI]
GO

/****** Object:  Trigger [dbo].[T_NANGCAPTAIKHOAN]    Script Date: 3/24/2023 11:02:07 PM ******/

GO

CREATE TRIGGER [dbo].[T_NANGCAPTAIKHOAN] ON [dbo].[PhieuDangKy] FOR INSERT,UPDATE
AS
BEGIN
	--DECLARE @MIN DATE, @MAX DATE, @AVG DATE
	DECLARE @USER NVARCHAR(128)
	--DECLARE @LOP INT
	DECLARE @CHECK1 NVARCHAR(128)
	DECLARE @CONFIRM INT
	--DECLARE @CHECK2 INT
	
	SELECT @USER = I.NoiDungDK, @CONFIRM = I.XacNhan FROM inserted I WHERE I.Users IS NULL
	SELECT @CHECK1 = R.UserId FROM AspNetUserRoles R WHERE R.UserId = @USER
	IF(@CHECK1 IS NOT NULL)
	BEGIN
		UPDATE AspNetUserRoles SET RoleId = 
		(CASE WHEN @CONFIRM=0 THEN NULL
		ELSE 1
		END) WHERE UserId = @CHECK1
		RETURN
	END
	--SELECT @MIN = MIN(TKB.ThoiGian),@MAX = MAX(TKB.ThoiGian), @AVG = (SELECT DATEADD(DAY,(SELECT DATEDIFF(DAY,MIN(TKB.ThoiGian),MAX(TKB.ThoiGian))/2),MIN(TKB.ThoiGian))) FROM ThoiKhoaBieu TKB WHERE TKB.LopHoc = @LOP
	--SET @AVG = (SELECT TOP 1 TKB.ThoiGian FROM ThoiKhoaBieu TKB WHERE TKB.ThoiGian >= @AVG AND TKB.LopHoc = @LOP ORDER BY TKB.ThoiGian)
	--SELECT @CHECK2 = COUNT(*) FROM KyThi K WHERE K.LOPTHI = @LOP
	--SELECT @CHECK1 = COUNT(*) FROM DiemThi D WHERE D.Users = @USER AND D.LOPTHI = @LOP
	--IF @CHECK2 >=3 AND @USER IS NOT NULL AND @CHECK1 <3
	--BEGIN
	--	INSERT INTO DiemThi VALUES(@MIN,@LOP,@USER,NULL)
	--	INSERT INTO DiemThi VALUES(@AVG,@LOP,@USER,NULL)
	--	INSERT INTO DiemThi VALUES(@MAX,@LOP,@USER,NULL)
	--END
END
GO

ALTER TABLE [dbo].[PhieuDangKy] ENABLE TRIGGER [T_NANGCAPTAIKHOAN]
GO

/****** Object:  Trigger [dbo].[T_SOLUONG]    Script Date: 3/24/2023 11:02:17 PM ******/

GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[T_SOLUONG]
   ON  [dbo].[PhieuDangKy]
   FOR INSERT
AS 
BEGIN
	
	DECLARE @LOP INT
	SELECT @LOP = I.Lop FROM inserted I
	UPDATE LOP SET SoLuong -= 1 WHERE ID = @LOP
END
GO

ALTER TABLE [dbo].[PhieuDangKy] ENABLE TRIGGER [T_SOLUONG]
GO


/****** Object:  Trigger [dbo].[T_TUYENDUNG]    Script Date: 3/24/2023 11:02:32 PM ******/

GO

CREATE TRIGGER [dbo].[T_TUYENDUNG] ON [dbo].[PhieuDangKy] FOR INSERT,UPDATE
AS
BEGIN
	--DECLARE @MIN DATE, @MAX DATE, @AVG DATE
	DECLARE @USER NVARCHAR(128)
	DECLARE @LOP INT
	DECLARE @CF INT
	DECLARE @CHECK1 NVARCHAR(128)
	DECLARE @CHECK2 INT
	SELECT @USER = I.Users, @LOP = I.Lop,@CF = I.XacNhan FROM inserted I INNER JOIN LOP L ON L.ID = I.Lop WHERE I.BienLai IS NULL
	SELECT @CHECK1 = R.UserId, @CHECK2 = R.RoleId FROM AspNetUserRoles R WHERE R.UserId = @USER
	IF(@CHECK1 IS NOT NULL AND @CHECK2 = 1)
	BEGIN
		UPDATE LOP SET GiaoVien = 
		(CASE WHEN GiaoVien IS NULL AND @CF = 1 THEN @USER
		WHEN @CF = 0 THEN NULL
		END) WHERE ID = @LOP
	END
	--SELECT @MIN = MIN(TKB.ThoiGian),@MAX = MAX(TKB.ThoiGian), @AVG = (SELECT DATEADD(DAY,(SELECT DATEDIFF(DAY,MIN(TKB.ThoiGian),MAX(TKB.ThoiGian))/2),MIN(TKB.ThoiGian))) FROM ThoiKhoaBieu TKB WHERE TKB.LopHoc = @LOP
	--SET @AVG = (SELECT TOP 1 TKB.ThoiGian FROM ThoiKhoaBieu TKB WHERE TKB.ThoiGian >= @AVG AND TKB.LopHoc = @LOP ORDER BY TKB.ThoiGian)
	--SELECT @CHECK2 = COUNT(*) FROM KyThi K WHERE K.LOPTHI = @LOP
	--SELECT @CHECK1 = COUNT(*) FROM DiemThi D WHERE D.Users = @USER AND D.LOPTHI = @LOP
	--IF @CHECK2 >=3 AND @USER IS NOT NULL AND @CHECK1 <3
	--BEGIN
	--	INSERT INTO DiemThi VALUES(@MIN,@LOP,@USER,NULL)
	--	INSERT INTO DiemThi VALUES(@AVG,@LOP,@USER,NULL)
	--	INSERT INTO DiemThi VALUES(@MAX,@LOP,@USER,NULL)
	--END
END
GO

ALTER TABLE [dbo].[PhieuDangKy] ENABLE TRIGGER [T_TUYENDUNG]
GO


/****** Object:  Trigger [dbo].[T_DDG]    Script Date: 3/24/2023 11:03:02 PM ******/

GO

CREATE TRIGGER [dbo].[T_DDG] ON [dbo].[PhieuDanhGia] FOR UPDATE, INSERT
 AS
 BEGIN
	--DECLARE @TAB TABLE(ID INT,MONHOC INT,LEV FLOAT)
	--INSERT INTO @TAB SELECT I.ID,I.MonHoc,I.Levels FROM inserted I WHERE I.SoBuoiHoc > (SELECT DATEADD(DAY,DATEDIFF(DAY,I.NgayKhaiGiang,I.NgayKetThuc),0) * 2)
	UPDATE PhieuDanhGia SET DiemDG = 
	(CASE 
		WHEN DiemDG > 10 THEN 10
		WHEN DiemDG < 1 THEN 1
		ELSE DiemDG END
	)
	--SELECT * FROM KhoaHoc K WHERE K.NgayKhaiGiang > ()
	--SELECT K.* FROM inserted I, KhoaHoc K WHERE K.ID = I.ID AND K.MonHoc = I.MonHoc AND K.Levels = I.Levels
 END
GO

ALTER TABLE [dbo].[PhieuDanhGia] ENABLE TRIGGER [T_DDG]
GO


/****** Object:  Trigger [dbo].[T_CA]    Script Date: 3/24/2023 11:05:10 PM ******/

GO

CREATE TRIGGER [dbo].[T_CA] ON [dbo].[ThoiKhoaBieu] FOR UPDATE, INSERT
 AS
 BEGIN
	--DECLARE @TAB TABLE(ID INT,MONHOC INT,LEV FLOAT)
	--INSERT INTO @TAB SELECT I.ID,I.MonHoc,I.Levels FROM inserted I WHERE I.SoBuoiHoc > (SELECT DATEADD(DAY,DATEDIFF(DAY,I.NgayKhaiGiang,I.NgayKetThuc),0) * 2)
	UPDATE ThoiKhoaBieu SET Ca = 
	(CASE 
		WHEN Ca > 2 THEN 2
		WHEN Ca < 1 THEN 1
		ELSE Ca END
	)
	--SELECT * FROM KhoaHoc K WHERE K.NgayKhaiGiang > ()
	--SELECT K.* FROM inserted I, KhoaHoc K WHERE K.ID = I.ID AND K.MonHoc = I.MonHoc AND K.Levels = I.Levels
 END
GO

ALTER TABLE [dbo].[ThoiKhoaBieu] ENABLE TRIGGER [T_CA]
GO



/****** Object:  Trigger [dbo].[T_KYTHI]    Script Date: 3/24/2023 11:03:36 PM ******/
GO

CREATE TRIGGER [dbo].[T_KYTHI] ON [dbo].[ThoiKhoaBieu] FOR INSERT,UPDATE
AS
BEGIN
	DECLARE @LOP INT = 1
	DECLARE @TABLE TABLE(ID INT)
	--DECLARE @TABLE1 TABLE(ID INT)
	DECLARE @CHECK1 INT
	DECLARE @CHECK2 INT
	WHILE (@LOP IS NOT NULL)
	BEGIN
		DECLARE @MIN DATE, @MAX DATE, @AVG DATE
		SET @LOP= ( SELECT TOP 1 ID FROM LOP L WHERE L.ID NOT IN (SELECT ID FROM @TABLE))
		SET @CHECK1 = (SELECT DISTINCT  L.ID FROM ThoiKhoaBieu TKB INNER JOIN Lop L ON L.ID = TKB.LopHoc INNER JOIN KhoaHoc KH ON KH.ID = L.KhoaHoc AND KH.MonHoc = L.MonHoc AND KH.Levels = L.Levels WHERE TKB.LopHoc = @LOP AND (SELECT COUNT(ThoiGian) FROM ThoiKhoaBieu WHERE LopHoc = @LOP)>=L.SoBuoiHoc)
		SELECT @CHECK2 = COUNT(*) FROM KyThi K WHERE K.LOPTHI = @LOP
		IF @CHECK1 IS NOT NULL AND @CHECK2 <3
		BEGIN
			SELECT @MIN = MIN(TKB.ThoiGian),@MAX = MAX(TKB.ThoiGian), @AVG = (SELECT DATEADD(DAY,(SELECT DATEDIFF(DAY,MIN(TKB.ThoiGian),MAX(TKB.ThoiGian))/2),MIN(TKB.ThoiGian))) FROM ThoiKhoaBieu TKB WHERE TKB.LopHoc = @LOP
			SET @AVG = (SELECT TOP 1 TKB.ThoiGian FROM ThoiKhoaBieu TKB WHERE TKB.ThoiGian >= @AVG AND TKB.LopHoc = @LOP ORDER BY TKB.ThoiGian)
			INSERT INTO KyThi(TenKyThi,NgayThi,LOPTHI) VALUES('A',@MIN,@LOP)
			INSERT INTO KyThi(TenKyThi,NgayThi,LOPTHI) VALUES('B',@AVG,@LOP)
			INSERT INTO KyThi(TenKyThi,NgayThi,LOPTHI) VALUES('C',@MAX,@LOP)
		END
		INSERT INTO @TABLE VALUES (@LOP)
	END
		--SELECT L.* FROM Lop L, KhoaHoc K WHERE L.KhoaHoc = K.ID AND L.MonHoc = K.MonHoc AND L.Levels = K.Levels AND (SELECT DATEDIFF(DAY,GETDATE(),K.NgayKetThuc)*2) - K.SoBuoiHoc >=0 AND L.ID IN (SELECT * FROM @TABLE1)
END
GO

ALTER TABLE [dbo].[ThoiKhoaBieu] ENABLE TRIGGER [T_KYTHI]
GO

/****** Object:  Trigger [dbo].[T_NGAY1]    Script Date: 3/24/2023 11:04:00 PM ******/

GO

CREATE TRIGGER [dbo].[T_NGAY1] ON [dbo].[ThoiKhoaBieu] FOR UPDATE, INSERT
 AS
 BEGIN
	--DECLARE @TAB TABLE(ID INT,MONHOC INT,LEV FLOAT)
	DECLARE @LOP INT
	SELECT @LOP = I.LopHoc FROM inserted I
	--INSERT INTO @TAB SELECT I.ID,I.MonHoc,I.Levels FROM inserted I WHERE I.SoBuoiHoc > (SELECT DATEADD(DAY,DATEDIFF(DAY,I.NgayKhaiGiang,I.NgayKetThuc),0) * 2)
	UPDATE Lop SET NGAY1 = ( SELECT MIN(I.ThoiGian) FROM ThoiKhoaBieu I WHERE ID = @LOP ) WHERE ID = @LOP
	--SELECT * FROM KhoaHoc K WHERE K.NgayKhaiGiang > ()
	--SELECT K.* FROM inserted I, KhoaHoc K WHERE K.ID = I.ID AND K.MonHoc = I.MonHoc AND K.Levels = I.Levels
 END
GO

ALTER TABLE [dbo].[ThoiKhoaBieu] ENABLE TRIGGER [T_NGAY1]
GO

/****** Object:  Trigger [dbo].[T_USERNAME]    Script Date: 3/24/2023 11:04:14 PM ******/
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[T_USERNAME]
   ON  [dbo].[Users]
   FOR INSERT,DELETE,UPDATE
AS 
BEGIN
	DECLARE @NAME NVARCHAR(128), @ID NVARCHAR(128)
	SELECT @NAME = I.TenUser, @ID = I.ID FROM inserted I
	UPDATE AspNetUsers SET Email = @NAME WHERE UserName = @ID
END
GO

ALTER TABLE [dbo].[Users] ENABLE TRIGGER [T_USERNAME]
GO
