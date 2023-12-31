USE [master]
GO
/****** Object:  Database [ElectonicsStore]    Script Date: 2023-06-07 오전 3:22:21 ******/
CREATE DATABASE [ElectonicsStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ElectonicsStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.ADMIN\MSSQL\DATA\ElectonicsStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ElectonicsStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.ADMIN\MSSQL\DATA\ElectonicsStore.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ElectonicsStore] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ElectonicsStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ElectonicsStore] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [ElectonicsStore] SET ANSI_NULLS ON 
GO
ALTER DATABASE [ElectonicsStore] SET ANSI_PADDING ON 
GO
ALTER DATABASE [ElectonicsStore] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [ElectonicsStore] SET ARITHABORT ON 
GO
ALTER DATABASE [ElectonicsStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ElectonicsStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ElectonicsStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ElectonicsStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ElectonicsStore] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [ElectonicsStore] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [ElectonicsStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ElectonicsStore] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [ElectonicsStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ElectonicsStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ElectonicsStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ElectonicsStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ElectonicsStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ElectonicsStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ElectonicsStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ElectonicsStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ElectonicsStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ElectonicsStore] SET RECOVERY FULL 
GO
ALTER DATABASE [ElectonicsStore] SET  MULTI_USER 
GO
ALTER DATABASE [ElectonicsStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ElectonicsStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ElectonicsStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ElectonicsStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ElectonicsStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ElectonicsStore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ElectonicsStore', N'ON'
GO
ALTER DATABASE [ElectonicsStore] SET QUERY_STORE = ON
GO
ALTER DATABASE [ElectonicsStore] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ElectonicsStore]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2023-06-07 오전 3:22:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2023-06-07 오전 3:22:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](100) NULL,
	[Description] [nchar](500) NULL,
	[ImageUrl] [nchar](150) NULL,
	[Price] [decimal](8, 0) NULL,
	[Quantity] [int] NULL,
	[CategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2023-06-07 오전 3:22:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NULL,
	[Email] [nchar](50) NULL,
	[Password] [nchar](50) NULL,
	[Role] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'휴대폰                                               ')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'테블릿                                               ')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (3, N'노트북                                               ')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (4, N'액세서리                                              ')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (5, N'카메라                                               ')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Description], [ImageUrl], [Price], [Quantity], [CategoryId]) VALUES (1, N'아이폰 14                                                                                              ', N'Apple이 2022년 9월 7일 오전 10시(한국시간 9월 8일 오전 2시)에 공개한 iOS 스마트폰. iPhone 시리즈의 16번째 모델이다.
                                                                                                                                                                                                                                                                                                                                                                                                                                 ', N'/img/iphone14.png                                                                                                                                     ', CAST(2400000 AS Decimal(8, 0)), 20, 1)
INSERT [dbo].[Product] ([Id], [Name], [Description], [ImageUrl], [Price], [Quantity], [CategoryId]) VALUES (2, N'아이폰 13                                                                                              ', N'2021년에 출시된 Apple의 iPhone 모델 중 하나이다. 한국 시각으로 2021년 9월 15일 오전 2시에, 미국 시간으로는 2021년 9월 14일 오전 10시에 공개되었다.
                                                                                                                                                                                                                                                                                                                                                                                                             ', N'/img/iphone13.png                                                                                                                                     ', CAST(3000000 AS Decimal(8, 0)), 20, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Name], [Email], [Password], [Role]) VALUES (1, N'admin                                             ', N'admin@123.com                                     ', N'1                                                 ', N'Admin                                             ')
INSERT [dbo].[User] ([Id], [Name], [Email], [Password], [Role]) VALUES (2, N'guest                                             ', N'guest@mail.com                                    ', N'1                                                 ', N'User                                              ')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
USE [master]
GO
ALTER DATABASE [ElectonicsStore] SET  READ_WRITE 
GO
