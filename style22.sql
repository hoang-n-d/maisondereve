USE [master]
GO
/****** Object:  Database [style]    Script Date: 03/06/2024 9:35:41 CH ******/
CREATE DATABASE [style]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'style', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\style.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'style_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\style_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [style] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [style].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [style] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [style] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [style] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [style] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [style] SET ARITHABORT OFF 
GO
ALTER DATABASE [style] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [style] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [style] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [style] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [style] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [style] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [style] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [style] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [style] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [style] SET  ENABLE_BROKER 
GO
ALTER DATABASE [style] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [style] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [style] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [style] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [style] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [style] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [style] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [style] SET RECOVERY FULL 
GO
ALTER DATABASE [style] SET  MULTI_USER 
GO
ALTER DATABASE [style] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [style] SET DB_CHAINING OFF 
GO
ALTER DATABASE [style] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [style] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [style] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [style] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'style', N'ON'
GO
ALTER DATABASE [style] SET QUERY_STORE = OFF
GO
USE [style]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 03/06/2024 9:35:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[role] [int] NULL,
	[address] [nvarchar](100) NULL,
	[phone] [nvarchar](100) NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Background]    Script Date: 03/06/2024 9:35:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Background](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[pricePerSquare] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 03/06/2024 9:35:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[image] [ntext] NULL,
	[detail] [ntext] NULL,
	[title] [nvarchar](100) NULL,
	[createDate] [date] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 03/06/2024 9:35:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CeilingHouse]    Script Date: 03/06/2024 9:35:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CeilingHouse](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[pricePerSquare] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interior]    Script Date: 03/06/2024 9:35:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interior](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[price] [int] NULL,
	[image] [ntext] NULL,
	[detail] [ntext] NULL,
	[cate_id] [int] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 03/06/2024 9:35:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[order_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[interior_id] [int] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 03/06/2024 9:35:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[orderDate] [date] NULL,
	[address] [ntext] NULL,
	[phone] [ntext] NULL,
	[user_id] [int] NULL,
	[note] [ntext] NULL,
	[status] [int] NULL,
	[style_id] [int] NULL,
	[typeHouseID] [int] NULL,
	[backgroundID] [int] NULL,
	[wallID] [int] NULL,
	[ceilID] [int] NULL,
	[height] [int] NULL,
	[long] [int] NULL,
	[width] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 03/06/2024 9:35:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [ntext] NULL,
	[detail] [ntext] NULL,
	[information] [ntext] NULL,
	[result] [ntext] NULL,
	[location] [ntext] NULL,
	[area] [int] NULL,
	[completeYear] [int] NULL,
	[value] [int] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quotation]    Script Date: 03/06/2024 9:35:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quotation](
	[quotation_id] [int] IDENTITY(1,1) NOT NULL,
	[quotation_status] [nvarchar](100) NULL,
	[createDate] [date] NULL,
	[style_id] [int] NULL,
	[square] [int] NULL,
	[account_id] [int] NULL,
	[width] [int] NULL,
	[height] [int] NULL,
	[length] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[quotation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuotationDetail]    Script Date: 03/06/2024 9:35:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuotationDetail](
	[quotation_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[quotation_id] [int] NULL,
	[interior_id] [int] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[quotation_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Style]    Script Date: 03/06/2024 9:35:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Style](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[image] [ntext] NULL,
	[detail] [ntext] NULL,
	[pricePerSquare] [int] NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeHouse]    Script Date: 03/06/2024 9:35:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeHouse](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[pricePerSquare] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wall]    Script Date: 03/06/2024 9:35:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wall](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[pricePerSquare] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [username], [password], [role], [address], [phone], [status]) VALUES (1, N'admin', N'1', 1, N'HCM City', N'0123456789', 1)
INSERT [dbo].[Account] ([id], [username], [password], [role], [address], [phone], [status]) VALUES (2, N'user', N'1234', 0, N'HD', N'0123456789', 1)
INSERT [dbo].[Account] ([id], [username], [password], [role], [address], [phone], [status]) VALUES (3, N'staff1', N'1', 2, N'DN', N'0123456789', 1)
INSERT [dbo].[Account] ([id], [username], [password], [role], [address], [phone], [status]) VALUES (4, N'staff2', N'1', 2, N'HD', N'0123456789', 1)
INSERT [dbo].[Account] ([id], [username], [password], [role], [address], [phone], [status]) VALUES (1002, N'staff3', N'123456', 2, N'HD', N'0123456789', 1)
INSERT [dbo].[Account] ([id], [username], [password], [role], [address], [phone], [status]) VALUES (1003, N'user2', N'1', 0, N'HN', N'0123456789', 1)
INSERT [dbo].[Account] ([id], [username], [password], [role], [address], [phone], [status]) VALUES (1004, N'user1', N'12345', 0, N'Hai Duong', N'09755896652', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Background] ON 
INSERT [dbo].[Background] ([id], [name], [pricePerSquare]) VALUES (1, N'None', 0)
INSERT [dbo].[Background] ([id], [name], [pricePerSquare]) VALUES (2, N'Brick floor', 5)
INSERT [dbo].[Background] ([id], [name], [pricePerSquare]) VALUES (3, N'Pine wood floor', 12)
INSERT [dbo].[Background] ([id], [name], [pricePerSquare]) VALUES (4, N'Oak floor', 15)
SET IDENTITY_INSERT [dbo].[Background] OFF
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([id], [account_id], [image], [detail], [title], [createDate], [status]) VALUES (1, 3, N'https://149658287.v2.pressablecdn.com/wp-content/uploads/2021/06/Emily_Henderson_1-1140x836.jpg', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum', N'Modern Design Century', CAST(N'2024-02-03' AS Date), 1)
INSERT [dbo].[Blog] ([id], [account_id], [image], [detail], [title], [createDate], [status]) VALUES (2, 3, N'https://149658287.v2.pressablecdn.com/wp-content/uploads/2021/12/chrislovesjulia1.jpg', N'Podcasting operational change management inside of workflows to establish a framework. Taking seamless key performance indicators offline to maximise the long tail. Keeping your eye on the ball while performing a deep dive on the start-up mentality to derive convergence on integration.', N'Views With Model', CAST(N'2024-02-03' AS Date), 1)
INSERT [dbo].[Blog] ([id], [account_id], [image], [detail], [title], [createDate], [status]) VALUES (3, 3, N'https://www.decorilla.com/online-decorating/wp-content/uploads/2018/11/best-interior-design-blogs-feature.jpg', N'Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line.', N'Luxury is not only', CAST(N'2024-02-03' AS Date), 1)
INSERT [dbo].[Blog] ([id], [account_id], [image], [detail], [title], [createDate], [status]) VALUES (4, 4, N'https://blog.taylormorrison.com/wp-content/uploads/2022/12/Home-design-house-1024x683.jpg', N'Podcasting operational change management inside of workflows to establish a framework. Taking seamless key performance indicators offline to maximise the long tail. Keeping your eye on the ball while performing a deep dive on the start-up mentality to derive convergence on integration.', N'Build Style God', CAST(N'2024-02-03' AS Date), 1)
INSERT [dbo].[Blog] ([id], [account_id], [image], [detail], [title], [createDate], [status]) VALUES (5, 4, N'https://images.squarespace-cdn.com/content/v1/5f2ff4e5f0bfea6754825eb2/1701347756101-DBR65UICXXM2EKRRAY3V/image-asset.jpeg', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum', N'Taking House', CAST(N'2024-02-03' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Sofa')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Table')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'Chair')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'Bed')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[CeilingHouse] ON 
INSERT [dbo].[CeilingHouse] ([id], [name], [pricePerSquare]) VALUES (1, N'None', 0)
INSERT [dbo].[CeilingHouse] ([id], [name], [pricePerSquare]) VALUES (2, N'Wooden ceiling', 8)
INSERT [dbo].[CeilingHouse] ([id], [name], [pricePerSquare]) VALUES (3, N'Plaster ceiling', 3)
SET IDENTITY_INSERT [dbo].[CeilingHouse] OFF
GO
SET IDENTITY_INSERT [dbo].[Interior] ON 

INSERT [dbo].[Interior] ([id], [name], [price], [image], [detail], [cate_id], [status]) VALUES (1, N'Modular Sofa', 250, N'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTMBR7uxUVsS2GmN6TKFk_j9MvjjtYRRYONSYVKYHjlaAO3VOS0lgONLTq98zKjZaCLep8aRUxzJyEO4a7KKtzJS7UapP2XmcKobMrEZUg&usqp=CAc', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum', 1, 1)
INSERT [dbo].[Interior] ([id], [name], [price], [image], [detail], [cate_id], [status]) VALUES (2, N'Minnoti Lawrence', 300, N'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcR8LGJBCoHjVjBRF7cWLkbd_7xFF8GHlLLeE1erprmuhdqbBLc6Fh4aLJaBWnwFaO414PxmolRxrVInC-LCLDeQg9VwiXYjGwI2KDkcrw4Y4AYiMYqmVV6Pfw&usqp=CAc', N'Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line.', 1, 1)
INSERT [dbo].[Interior] ([id], [name], [price], [image], [detail], [cate_id], [status]) VALUES (3, N'Korea Sopha', 300, N'https://kika.vn/wp-content/uploads/2023/10/ghe-sofa-dep-SF306.jpg', N'Podcasting operational change management inside of workflows to establish a framework. Taking seamless key performance indicators offline to maximise the long tail. Keeping your eye on the ball while performing a deep dive on the start-up mentality to derive convergence on integration.', 1, 1)
INSERT [dbo].[Interior] ([id], [name], [price], [image], [detail], [cate_id], [status]) VALUES (4, N'Kenedy Heel', 280, N'https://kika.vn/wp-content/uploads/2023/08/sofa-vang-goc-chat-luong-tot.jpg', N'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI.', 1, 1)
INSERT [dbo].[Interior] ([id], [name], [price], [image], [detail], [cate_id], [status]) VALUES (5, N'King Table', 300, N'data:image/jpeg;base64,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', N'Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line.', 2, 1)
INSERT [dbo].[Interior] ([id], [name], [price], [image], [detail], [cate_id], [status]) VALUES (6, N'Furnite', 350, N'data:image/jpeg;base64,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', N'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI.', 2, 1)
INSERT [dbo].[Interior] ([id], [name], [price], [image], [detail], [cate_id], [status]) VALUES (7, N'Luxury Camble', 550, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_r74uoKr_oa7OCE8YMal7eDZpH16RqTCPrQ&usqp=CAU', N'Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line.', 2, 1)
INSERT [dbo].[Interior] ([id], [name], [price], [image], [detail], [cate_id], [status]) VALUES (8, N'Harbor', 450, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgcFyo2L4eu_R7uk2bF5q_bEuu0v3kmMOeMA&usqp=CAU', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum', 3, 1)
INSERT [dbo].[Interior] ([id], [name], [price], [image], [detail], [cate_id], [status]) VALUES (9, N'Lambor', 420, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3f57qUnqQGBgXcGfRLDqPP4SbHXNhw1q3Mw&usqp=CAU', N'Podcasting operational change management inside of workflows to establish a framework. Taking seamless key performance indicators offline to maximise the long tail. Keeping your eye on the ball while performing a deep dive on the start-up mentality to derive convergence on integration.', 3, 1)
INSERT [dbo].[Interior] ([id], [name], [price], [image], [detail], [cate_id], [status]) VALUES (10, N'Huwang Shou', 400, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqSAMr8o6JN_NFrXfh5KkCXtQc1U8IxtAmcg&usqp=CAU', N'Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line.', 3, 1)
INSERT [dbo].[Interior] ([id], [name], [price], [image], [detail], [cate_id], [status]) VALUES (11, N'Luna Gummy', 500, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN3__LexYJraU53Pgiy89OCDoAwdgEYOjX3rLeIGPKhi_pdx4jcJGWfTz9g5sBBrBrsW8&usqp=CAU', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum', 3, 1)
INSERT [dbo].[Interior] ([id], [name], [price], [image], [detail], [cate_id], [status]) VALUES (17, N'Premium Bed', 500, N'data:image/jpeg;base64,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', N'Podcasting operational change management inside of workflows to establish a framework. Taking seamless key performance indicators offline to maximise the long tail. Keeping your eye on the ball while performing a deep dive on the start-up mentality to derive convergence on integration.', 4, 1)
INSERT [dbo].[Interior] ([id], [name], [price], [image], [detail], [cate_id], [status]) VALUES (21, N'Luxury King', 600, N'data:image/jpeg;base64,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', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum', 4, 0)
INSERT [dbo].[Interior] ([id], [name], [price], [image], [detail], [cate_id], [status]) VALUES (22, N'Stylish Bedroom Luxury', 600, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_aigJezgpWBi4IV2MVniT6e3Lvn7gku5JJA&usqp=CAU', N'Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line.', 4, 1)
INSERT [dbo].[Interior] ([id], [name], [price], [image], [detail], [cate_id], [status]) VALUES (23, N'Light Bedroom Owl', 600, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLriMcEs_yPf9XxFdN9oDBhCt9lyNeUqK8Ng&usqp=CAU', N'Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI.', 4, 1)
INSERT [dbo].[Interior] ([id], [name], [price], [image], [detail], [cate_id], [status]) VALUES (1002, N'King Chair Luxury', 250, N'https://media.designcafe.com/wp-content/uploads/2022/03/15152233/dining-chair-designs-for-your-dining-room.jpg', N'No comment about this item', 3, 1)
SET IDENTITY_INSERT [dbo].[Interior] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [interior_id], [quantity]) VALUES (1007, 1004, 1, 3)
INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [interior_id], [quantity]) VALUES (1008, 1004, 2, 4)
INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [interior_id], [quantity]) VALUES (1009, 1005, 1, 1)
INSERT [dbo].[OrderDetail] ([order_detail_id], [order_id], [interior_id], [quantity]) VALUES (2005, 1006, 2, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([order_id], [orderDate], [address], [phone], [user_id], [note], [status], [style_id], [typeHouseID], [backgroundID], [wallID], [ceilID], [height], [long], [width]) VALUES (1004, CAST(N'2024-03-29' AS Date), N'HN', N'0123456789', 2, N'No thanks', 0, 1, 3, 3, 3, 2, 50, 50, 50)
INSERT [dbo].[Orders] ([order_id], [orderDate], [address], [phone], [user_id], [note], [status], [style_id], [typeHouseID], [backgroundID], [wallID], [ceilID], [height], [long], [width]) VALUES (1005, CAST(N'2024-03-29' AS Date), N'HD', N'0123456789', 1003, N'JK', 2, 1, 1, 1, 1, 1, 5, 5, 5)
INSERT [dbo].[Orders] ([order_id], [orderDate], [address], [phone], [user_id], [note], [status], [style_id], [typeHouseID], [backgroundID], [wallID], [ceilID], [height], [long], [width]) VALUES (1006, CAST(N'2024-05-25' AS Date), N'HN', N'0913955636', 2, N'Thiết kế cẩn thận tỉ mỉ', 1, 1, 1, 1, 1, 1, 50, 50, 50)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([id], [image], [detail], [information], [result], [location], [area], [completeYear], [value], [status]) VALUES (1, N'https://images.pexels.com/photos/1643383/pexels-photo-1643383.jpeg?cs=srgb&dl=pexels-vecislavas-popa-1643383.jpg&fm=jpg', N'Well we’re movin’ on up to the east side. To a deluxe apartment in the sky. The weather started getting rough – the tiny ship was tossed. If not for the courage of the fearless crew the Minnow would be lost. the Minnow would be lost. We’re gonna do it. On your mark get set and go now. Got a dream and we just know now we’re gonna make our dream come true. I have always wanted to have a neighbor just like you. I’ve always wanted to live in a neighborhood with you.', N'These men promptly escaped from a maximum security stockade to the Los Angeles underground. Love exciting and new. Come aboard were expecting you. Love life''s sweetest reward Let it flow it floats back to you. Well the first thing you know ol'' Jeds a mil lionaire infolk said Jed move away.', N'That’s just a little bit more than the law will allow. We’re gonna do it. On your mark get set and go now. Got a dream and we just know now we’re gonna make our dream come true. Makin their way the only way they know how. That’s just a little bit more than the law will allow.', N'New York', 1100, 2021, 8000000, 1)
INSERT [dbo].[Project] ([id], [image], [detail], [information], [result], [location], [area], [completeYear], [value], [status]) VALUES (3, N'https://images2.alphacoders.com/134/1347182.png', N'Well we’re movin’ on up to the east side. To a deluxe apartment in the sky. The weather started getting rough – the tiny ship was tossed. If not for the courage of the fearless crew the Minnow would be lost. the Minnow would be lost. We’re gonna do it. On your mark get set and go now. Got a dream and we just know now we’re gonna make our dream come true. I have always wanted to have a neighbor just like you. I’ve always wanted to live in a neighborhood with you.', N'These men promptly escaped from a maximum security stockade to the Los Angeles underground. Love exciting and new. Come aboard were expecting you. Love life''s sweetest reward Let it flow it floats back to you. Well the first thing you know ol'' Jeds a mil lionaire infolk said Jed move away.', N'That’s just a little bit more than the law will allow. We’re gonna do it. On your mark get set and go now. Got a dream and we just know now we’re gonna make our dream come true. Makin their way the only way they know how. That’s just a little bit more than the law will allow.', N'Tokyo', 1200, 2020, 9000000, 1)
INSERT [dbo].[Project] ([id], [image], [detail], [information], [result], [location], [area], [completeYear], [value], [status]) VALUES (4, N'https://w0.peakpx.com/wallpaper/117/421/HD-wallpaper-living-room-modern-interior-design-stylish-interior-design-of-the-living-room-gray-green-living-room-luxurious-interiors.jpg', N'These men promptly escaped from a maximum security stockade to the Los Angeles underground. Love exciting and new. Come aboard were expecting you. Love life''s sweetest reward Let it flow it floats back to you. Well the first thing you know ol'' Jeds a mil lionaire infolk said Jed move away.', N'Well we’re movin’ on up to the east side. To a deluxe apartment in the sky. The weather started getting rough – the tiny ship was tossed. If not for the courage of the fearless crew the Minnow would be lost. the Minnow would be lost. We’re gonna do it. On your mark get set and go now. Got a dream and we just know now we’re gonna make our dream come true. I have always wanted to have a neighbor just like you. I’ve always wanted to live in a neighborhood with you.', N'That’s just a little bit more than the law will allow. We’re gonna do it. On your mark get set and go now. Got a dream and we just know now we’re gonna make our dream come true. Makin their way the only way they know how. That’s just a little bit more than the law will allow.', N'Ha Noi', 1100, 2022, 10000000, 1)
INSERT [dbo].[Project] ([id], [image], [detail], [information], [result], [location], [area], [completeYear], [value], [status]) VALUES (5, N'https://noahinterior.in/wp-content/uploads/2021/09/living-rooms-designs-1.jpg', N'That’s just a little bit more than the law will allow. We’re gonna do it. On your mark get set and go now. Got a dream and we just know now we’re gonna make our dream come true. Makin their way the only way they know how. That’s just a little bit more than the law will allow.', N'These men promptly escaped from a maximum security stockade to the Los Angeles underground. Love exciting and new. Come aboard were expecting you. Love life''s sweetest reward Let it flow it floats back to you. Well the first thing you know ol'' Jeds a mil lionaire infolk said Jed move away.', N'Well we’re movin’ on up to the east side. To a deluxe apartment in the sky. The weather started getting rough – the tiny ship was tossed. If not for the courage of the fearless crew the Minnow would be lost. the Minnow would be lost. We’re gonna do it. On your mark get set and go now. Got a dream and we just know now we’re gonna make our dream come true. I have always wanted to have a neighbor just like you. I’ve always wanted to live in a neighborhood with you.', N'Phnom Penh', 1000, 2023, 7000000, 1)
INSERT [dbo].[Project] ([id], [image], [detail], [information], [result], [location], [area], [completeYear], [value], [status]) VALUES (6, N'https://e0.pxfuel.com/wallpapers/284/847/desktop-wallpaper-home-and-interior-design-high-definition.jpg', N'These men promptly escaped from a maximum security stockade to the Los Angeles underground. Love exciting and new. Come aboard were expecting you. Love life''s sweetest reward Let it flow it floats back to you. Well the first thing you know ol'' Jeds a mil lionaire infolk said Jed move away.', N'These men promptly escaped from a maximum security stockade to the Los Angeles underground. Love exciting and new. Come aboard were expecting you. Love life''s sweetest reward Let it flow it floats back to you. Well the first thing you know ol'' Jeds a mil lionaire infolk said Jed move away.', N'That’s just a little bit more than the law will allow. We’re gonna do it. On your mark get set and go now. Got a dream and we just know now we’re gonna make our dream come true. Makin their way the only way they know how. That’s just a little bit more than the law will allow.', N'HCM City', 1500, 2024, 9000000, 1)
INSERT [dbo].[Project] ([id], [image], [detail], [information], [result], [location], [area], [completeYear], [value], [status]) VALUES (7, N'https://cdn.pixabay.com/photo/2014/12/27/14/37/living-room-581073_640.jpg', N'Well we’re movin’ on up to the east side. To a deluxe apartment in the sky. The weather started getting rough – the tiny ship was tossed. If not for the courage of the fearless crew the Minnow would be lost. the Minnow would be lost. We’re gonna do it. On your mark get set and go now. Got a dream and we just know now we’re gonna make our dream come true. I have always wanted to have a neighbor just like you. I’ve always wanted to live in a neighborhood with you.', N'Well we’re movin’ on up to the east side. To a deluxe apartment in the sky. The weather started getting rough – the tiny ship was tossed. If not for the courage of the fearless crew the Minnow would be lost. the Minnow would be lost. We’re gonna do it. On your mark get set and go now. Got a dream and we just know now we’re gonna make our dream come true. I have always wanted to have a neighbor just like you. I’ve always wanted to live in a neighborhood with you.', N'Well we’re movin’ on up to the east side. To a deluxe apartment in the sky. The weather started getting rough – the tiny ship was tossed. If not for the courage of the fearless crew the Minnow would be lost. the Minnow would be lost. We’re gonna do it. On your mark get set and go now. Got a dream and we just know now we’re gonna make our dream come true. I have always wanted to have a neighbor just like you. I’ve always wanted to live in a neighborhood with you.', N'Da Nang', 1800, 2024, 10000000, 1)
SET IDENTITY_INSERT [dbo].[Project] OFF
GO
SET IDENTITY_INSERT [dbo].[Style] ON 
INSERT [dbo].[Style] ([id], [name], [image], [detail], [pricePerSquare], [status]) VALUES (1, N'None', N'https://img.freepik.com/premium-photo/inspiring-office-interior-design-transitional-style-generative-ai-aig-31_31965-208771.jpg', N'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley. I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees.', 0, 1)
INSERT [dbo].[Style] ([id], [name], [image], [detail], [pricePerSquare], [status]) VALUES (2, N'Transitional Design', N'https://img.freepik.com/premium-photo/inspiring-office-interior-design-transitional-style-generative-ai-aig-31_31965-208771.jpg', N'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley. I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees.', 300, 1)
INSERT [dbo].[Style] ([id], [name], [image], [detail], [pricePerSquare], [status]) VALUES (3, N'Traditional Design', N'https://media.architecturaldigest.com/photos/56d5f5e9ce4f38152ccc8553/16:9/w_2560%2Cc_limit/corrigan-paris-apartment-01.jpg', N'I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley. I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees.', 300, 1)
INSERT [dbo].[Style] ([id], [name], [image], [detail], [pricePerSquare], [status]) VALUES (4, N'Modern Architecture', N'https://cdn-bnokp.nitrocdn.com/QNoeDwCprhACHQcnEmHgXDhDpbEOlRHH/assets/images/optimized/rev-f6e6959/www.decorilla.com/online-decorating/wp-content/uploads/2022/10/Interior-design-styles-Modern-open-living-room-dining-and-kitchen-by-Michelle-B.jpeg', N'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley. I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees.', 350, 1)
INSERT [dbo].[Style] ([id], [name], [image], [detail], [pricePerSquare], [status]) VALUES (5, N'Electic Style', N'https://cdn-bnokp.nitrocdn.com/QNoeDwCprhACHQcnEmHgXDhDpbEOlRHH/assets/images/optimized/rev-f6e6959/www.decorilla.com/online-decorating/wp-content/uploads/2022/10/Different-design-styles-in-one-eclectic-mixed-interior-by-Lori-D.jpg', N'I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley. I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees.', 400, 1)
INSERT [dbo].[Style] ([id], [name], [image], [detail], [pricePerSquare], [status]) VALUES (6, N'Compotorary Style', N'https://cdn-bnokp.nitrocdn.com/QNoeDwCprhACHQcnEmHgXDhDpbEOlRHH/assets/images/optimized/rev-f6e6959/www.decorilla.com/online-decorating/wp-content/uploads/2022/10/Contemporary-interior-design-styles-by-Marisol-O.jpg', N'When you look at interior design styles throughout history contemporary interior design is the one style that is always evolving. The contemporary design style will most likely continue to change over the course of the twenty-first century. Contemporary refers to anything of the present moment. This unique interior design style borrows from various time periods which creates an environment fit to last a lifetime.', 600, 1)
SET IDENTITY_INSERT [dbo].[Style] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeHouse] ON 
INSERT [dbo].[TypeHouse] ([id], [name], [pricePerSquare]) VALUES (1, N'None', 0)
INSERT [dbo].[TypeHouse] ([id], [name], [pricePerSquare]) VALUES (2, N'Level 4 House', 10)
INSERT [dbo].[TypeHouse] ([id], [name], [pricePerSquare]) VALUES (3, N'City House', 15)
INSERT [dbo].[TypeHouse] ([id], [name], [pricePerSquare]) VALUES (4, N'Department House', 18)
SET IDENTITY_INSERT [dbo].[TypeHouse] OFF
GO
SET IDENTITY_INSERT [dbo].[Wall] ON 
INSERT [dbo].[Wall] ([id], [name], [pricePerSquare]) VALUES (1, N'None', 0)
INSERT [dbo].[Wall] ([id], [name], [pricePerSquare]) VALUES (2, N'Paint', 5)
INSERT [dbo].[Wall] ([id], [name], [pricePerSquare]) VALUES (3, N'Brick', 7)
INSERT [dbo].[Wall] ([id], [name], [pricePerSquare]) VALUES (4, N'Wallpaper', 10)
SET IDENTITY_INSERT [dbo].[Wall] OFF
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Interior]  WITH CHECK ADD FOREIGN KEY([cate_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([interior_id])
REFERENCES [dbo].[Interior] ([id])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [con_order] FOREIGN KEY([user_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [con_order]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_order_id] FOREIGN KEY([typeHouseID])
REFERENCES [dbo].[TypeHouse] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [fk_order_id]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_order_id2] FOREIGN KEY([backgroundID])
REFERENCES [dbo].[Background] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [fk_order_id2]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_order_id3] FOREIGN KEY([wallID])
REFERENCES [dbo].[Wall] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [fk_order_id3]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_order_id4] FOREIGN KEY([ceilID])
REFERENCES [dbo].[CeilingHouse] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [fk_order_id4]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Style] FOREIGN KEY([style_id])
REFERENCES [dbo].[Style] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Style]
GO
ALTER TABLE [dbo].[QuotationDetail]  WITH CHECK ADD FOREIGN KEY([interior_id])
REFERENCES [dbo].[Interior] ([id])
GO
ALTER TABLE [dbo].[QuotationDetail]  WITH CHECK ADD FOREIGN KEY([quotation_id])
REFERENCES [dbo].[Quotation] ([quotation_id])
GO
USE [master]
GO
ALTER DATABASE [style] SET  READ_WRITE 
GO
