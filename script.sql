USE [master]
GO
/****** Object:  Database [PRN292_TED_SHOP]    Script Date: 07/23/2021 23:09:56 ******/
CREATE DATABASE [PRN292_TED_SHOP] ON  PRIMARY 
( NAME = N'PRN292_TED_SHOP', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\PRN292_TED_SHOP.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PRN292_TED_SHOP_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\PRN292_TED_SHOP_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PRN292_TED_SHOP] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRN292_TED_SHOP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRN292_TED_SHOP] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [PRN292_TED_SHOP] SET ANSI_NULLS OFF
GO
ALTER DATABASE [PRN292_TED_SHOP] SET ANSI_PADDING OFF
GO
ALTER DATABASE [PRN292_TED_SHOP] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [PRN292_TED_SHOP] SET ARITHABORT OFF
GO
ALTER DATABASE [PRN292_TED_SHOP] SET AUTO_CLOSE ON
GO
ALTER DATABASE [PRN292_TED_SHOP] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [PRN292_TED_SHOP] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [PRN292_TED_SHOP] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [PRN292_TED_SHOP] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [PRN292_TED_SHOP] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [PRN292_TED_SHOP] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [PRN292_TED_SHOP] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [PRN292_TED_SHOP] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [PRN292_TED_SHOP] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [PRN292_TED_SHOP] SET  ENABLE_BROKER
GO
ALTER DATABASE [PRN292_TED_SHOP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [PRN292_TED_SHOP] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [PRN292_TED_SHOP] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [PRN292_TED_SHOP] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [PRN292_TED_SHOP] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [PRN292_TED_SHOP] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [PRN292_TED_SHOP] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [PRN292_TED_SHOP] SET  READ_WRITE
GO
ALTER DATABASE [PRN292_TED_SHOP] SET RECOVERY SIMPLE
GO
ALTER DATABASE [PRN292_TED_SHOP] SET  MULTI_USER
GO
ALTER DATABASE [PRN292_TED_SHOP] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [PRN292_TED_SHOP] SET DB_CHAINING OFF
GO
USE [PRN292_TED_SHOP]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 07/23/2021 23:09:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](60) NULL,
	[Address] [varchar](255) NULL,
	[Phone] [varchar](20) NULL,
	[BankAccount] [varchar](20) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Staff] ([StaffID], [Name], [Address], [Phone], [BankAccount]) VALUES (N'48cddf63-619c-4767-ade7-3c481f4970d4', N'Minh Hien', N'Ha Noi - Vietnam', N'0578599856', N'2548796358')
INSERT [dbo].[Staff] ([StaffID], [Name], [Address], [Phone], [BankAccount]) VALUES (N'5afd19fb-3879-4511-9a02-59aaba5b4280', N'Thu Thuy', N'Ha Noi - Vietnam', N'0578599856', N'2548796358')
INSERT [dbo].[Staff] ([StaffID], [Name], [Address], [Phone], [BankAccount]) VALUES (N'36bdce36-2d3d-4678-b52b-60c4863b8b50', N'Thu Hien', N'Ha Noi - Vietnam', N'0578599856', N'2548796358')
INSERT [dbo].[Staff] ([StaffID], [Name], [Address], [Phone], [BankAccount]) VALUES (N'5080a2ab-0b6a-435f-8bf0-7219b6123a74', NULL, NULL, NULL, NULL)
INSERT [dbo].[Staff] ([StaffID], [Name], [Address], [Phone], [BankAccount]) VALUES (N'6e583b61-5495-4cab-83e9-736613b8df37', NULL, NULL, NULL, NULL)
INSERT [dbo].[Staff] ([StaffID], [Name], [Address], [Phone], [BankAccount]) VALUES (N'a826af02-c534-4c86-a1f6-755ba971257e', NULL, NULL, NULL, NULL)
INSERT [dbo].[Staff] ([StaffID], [Name], [Address], [Phone], [BankAccount]) VALUES (N'79df2650-48bc-4732-a093-929b57ce1c22', NULL, NULL, NULL, NULL)
INSERT [dbo].[Staff] ([StaffID], [Name], [Address], [Phone], [BankAccount]) VALUES (N'55576d8a-a178-411b-b3a3-9911af765750', NULL, NULL, NULL, NULL)
INSERT [dbo].[Staff] ([StaffID], [Name], [Address], [Phone], [BankAccount]) VALUES (N'a0bb42ac-86c3-402c-8ac5-adb292b1dec9', NULL, NULL, NULL, NULL)
INSERT [dbo].[Staff] ([StaffID], [Name], [Address], [Phone], [BankAccount]) VALUES (N'52c8c375-38cb-43dd-829b-aefea413dcd4', NULL, NULL, NULL, NULL)
INSERT [dbo].[Staff] ([StaffID], [Name], [Address], [Phone], [BankAccount]) VALUES (N'a316e353-e03e-41f7-8de3-cf7f0a6214b5', NULL, NULL, NULL, NULL)
INSERT [dbo].[Staff] ([StaffID], [Name], [Address], [Phone], [BankAccount]) VALUES (N'a3e1dc35-b947-4399-9c8e-fcb249480ea8', NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[ProductType]    Script Date: 07/23/2021 23:09:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductType](
	[ProductTypeID] [uniqueidentifier] NOT NULL,
	[Type_name] [varchar](255) NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ProductTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 07/23/2021 23:09:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](60) NULL,
	[Phone] [varchar](20) NULL,
	[Address] [varchar](255) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Import]    Script Date: 07/23/2021 23:09:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Import](
	[ImportID] [uniqueidentifier] NOT NULL,
	[StaffID] [uniqueidentifier] NULL,
	[ImportDate] [date] NULL,
 CONSTRAINT [PK_Import] PRIMARY KEY CLUSTERED 
(
	[ImportID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 07/23/2021 23:09:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[Username] [varchar](30) NOT NULL,
	[Password] [varchar](30) NULL,
	[Role] [nvarchar](20) NULL,
	[AccountID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 07/23/2021 23:09:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [uniqueidentifier] NOT NULL,
	[ProductTypeID] [uniqueidentifier] NULL,
	[Produce_country] [varchar](50) NULL,
	[Name] [varchar](60) NULL,
	[Description] [varchar](3000) NULL,
	[User_guide] [varchar](3000) NULL,
	[Price] [float] NULL,
	[Sell_price] [float] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 07/23/2021 23:09:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [uniqueidentifier] NOT NULL,
	[CustomerID] [uniqueidentifier] NULL,
	[Order_date] [date] NULL,
	[Total_amount] [float] NULL,
	[StaffID] [uniqueidentifier] NULL,
	[Deliver_date] [date] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_details]    Script Date: 07/23/2021 23:09:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_details](
	[OrderID] [uniqueidentifier] NOT NULL,
	[OrderLine] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NULL,
	[ProductID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Order_details] PRIMARY KEY CLUSTERED 
(
	[OrderLine] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Import_details]    Script Date: 07/23/2021 23:09:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Import_details](
	[ImportID] [uniqueidentifier] NOT NULL,
	[ImportLine] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [uniqueidentifier] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Import_details] PRIMARY KEY CLUSTERED 
(
	[ImportLine] ASC,
	[ImportID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Import_Staff]    Script Date: 07/23/2021 23:09:56 ******/
ALTER TABLE [dbo].[Import]  WITH CHECK ADD  CONSTRAINT [FK_Import_Staff] FOREIGN KEY([StaffID])
REFERENCES [dbo].[Staff] ([StaffID])
GO
ALTER TABLE [dbo].[Import] CHECK CONSTRAINT [FK_Import_Staff]
GO
/****** Object:  ForeignKey [FK_Account_Customer]    Script Date: 07/23/2021 23:09:56 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Customer] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Customer]
GO
/****** Object:  ForeignKey [FK_Account_Staff]    Script Date: 07/23/2021 23:09:56 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Staff] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Staff] ([StaffID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Staff]
GO
/****** Object:  ForeignKey [FK_Product_ProductType]    Script Date: 07/23/2021 23:09:56 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ProductTypeID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
/****** Object:  ForeignKey [FK_Orders_Customer]    Script Date: 07/23/2021 23:09:56 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customer]
GO
/****** Object:  ForeignKey [FK_Orders_Staff]    Script Date: 07/23/2021 23:09:56 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Staff] FOREIGN KEY([StaffID])
REFERENCES [dbo].[Staff] ([StaffID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Staff]
GO
/****** Object:  ForeignKey [FK_Order_details_Orders]    Script Date: 07/23/2021 23:09:56 ******/
ALTER TABLE [dbo].[Order_details]  WITH CHECK ADD  CONSTRAINT [FK_Order_details_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[Order_details] CHECK CONSTRAINT [FK_Order_details_Orders]
GO
/****** Object:  ForeignKey [FK_Order_details_Product]    Script Date: 07/23/2021 23:09:56 ******/
ALTER TABLE [dbo].[Order_details]  WITH CHECK ADD  CONSTRAINT [FK_Order_details_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Order_details] CHECK CONSTRAINT [FK_Order_details_Product]
GO
/****** Object:  ForeignKey [FK_Import_details_Import]    Script Date: 07/23/2021 23:09:56 ******/
ALTER TABLE [dbo].[Import_details]  WITH CHECK ADD  CONSTRAINT [FK_Import_details_Import] FOREIGN KEY([ImportID])
REFERENCES [dbo].[Import] ([ImportID])
GO
ALTER TABLE [dbo].[Import_details] CHECK CONSTRAINT [FK_Import_details_Import]
GO
/****** Object:  ForeignKey [FK_Import_details_Product]    Script Date: 07/23/2021 23:09:56 ******/
ALTER TABLE [dbo].[Import_details]  WITH CHECK ADD  CONSTRAINT [FK_Import_details_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Import_details] CHECK CONSTRAINT [FK_Import_details_Product]
GO
