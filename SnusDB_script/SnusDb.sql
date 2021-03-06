USE [master]
GO
/****** Object:  Database [SnusSiteDb]    Script Date: 29.03.2015 12:51:55 ******/
CREATE DATABASE [SnusSiteDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SnusSiteDb', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\SnusSiteDb.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SnusSiteDb_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\SnusSiteDb_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SnusSiteDb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SnusSiteDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SnusSiteDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SnusSiteDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SnusSiteDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SnusSiteDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SnusSiteDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [SnusSiteDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SnusSiteDb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SnusSiteDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SnusSiteDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SnusSiteDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SnusSiteDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SnusSiteDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SnusSiteDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SnusSiteDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SnusSiteDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SnusSiteDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SnusSiteDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SnusSiteDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SnusSiteDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SnusSiteDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SnusSiteDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SnusSiteDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SnusSiteDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SnusSiteDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SnusSiteDb] SET  MULTI_USER 
GO
ALTER DATABASE [SnusSiteDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SnusSiteDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SnusSiteDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SnusSiteDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SnusSiteDb]
GO
/****** Object:  Table [dbo].[Coments]    Script Date: 29.03.2015 12:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coments](
	[Id] [int] NOT NULL,
	[User_Id] [int] NOT NULL,
	[Text] [nchar](10) NOT NULL,
	[Products_Id] [int] NOT NULL,
 CONSTRAINT [PK_Coments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countres]    Script Date: 29.03.2015 12:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countres](
	[Id] [int] NOT NULL,
	[Name] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Countres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[File]    Script Date: 29.03.2015 12:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Path] [nchar](10) NOT NULL,
	[Name] [nchar](10) NOT NULL,
	[Description] [nchar](10) NOT NULL,
	[FileType_Id] [nchar](10) NOT NULL,
 CONSTRAINT [PK_File] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Locations]    Script Date: 29.03.2015 12:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[Id] [int] NOT NULL,
	[Country_Id] [int] NOT NULL,
	[City] [nchar](10) NOT NULL,
	[Address] [nchar](10) NOT NULL,
	[Telephone] [nchar](10) NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order_Product]    Script Date: 29.03.2015 12:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Product](
	[Order_Id] [bigint] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Price_Id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 29.03.2015 12:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] NOT NULL,
	[Create_Date] [nchar](10) NOT NULL,
	[User_Id] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Price_History]    Script Date: 29.03.2015 12:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price_History](
	[Id] [int] NOT NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Price_History] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 29.03.2015 12:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] NOT NULL,
	[Name] [nchar](10) NOT NULL,
	[Price_Id] [int] NOT NULL,
	[Description] [nchar](10) NULL,
	[Count] [int] NOT NULL,
	[Type_Id] [int] NOT NULL,
	[Nicotine] [nchar](10) NOT NULL,
	[Rating] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product_Image]    Script Date: 29.03.2015 12:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Image](
	[Product_Id] [int] NOT NULL,
	[Image_Id] [bigint] NOT NULL,
 CONSTRAINT [PK_Product_Image] PRIMARY KEY CLUSTERED 
(
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 29.03.2015 12:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nchar](10) NOT NULL,
	[Name] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Types]    Script Date: 29.03.2015 12:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Types](
	[Id] [int] NOT NULL,
	[Name] [nchar](10) NULL,
 CONSTRAINT [PK_Types] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 29.03.2015 12:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] NOT NULL,
	[FirstName] [nchar](10) NOT NULL,
	[SecondName] [nchar](10) NOT NULL,
	[Age] [nchar](10) NOT NULL,
	[Role_Id] [nchar](10) NOT NULL,
	[Sex] [nchar](10) NULL,
	[Email] [nchar](10) NOT NULL,
	[Password] [nchar](10) NOT NULL,
	[Location_Id] [int] NOT NULL,
	[CurrentOrder_Id] [bigint] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Coments]  WITH CHECK ADD  CONSTRAINT [FK_Coments_Product] FOREIGN KEY([Products_Id])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Coments] CHECK CONSTRAINT [FK_Coments_Product]
GO
ALTER TABLE [dbo].[Coments]  WITH CHECK ADD  CONSTRAINT [FK_Coments_Users] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Coments] CHECK CONSTRAINT [FK_Coments_Users]
GO
ALTER TABLE [dbo].[Locations]  WITH CHECK ADD  CONSTRAINT [FK_Locations_Countres] FOREIGN KEY([Country_Id])
REFERENCES [dbo].[Countres] ([Id])
GO
ALTER TABLE [dbo].[Locations] CHECK CONSTRAINT [FK_Locations_Countres]
GO
ALTER TABLE [dbo].[Order_Product]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product_Orders] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[Order_Product] CHECK CONSTRAINT [FK_Order_Product_Orders]
GO
ALTER TABLE [dbo].[Order_Product]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product_Price_History] FOREIGN KEY([Price_Id])
REFERENCES [dbo].[Price_History] ([Id])
GO
ALTER TABLE [dbo].[Order_Product] CHECK CONSTRAINT [FK_Order_Product_Price_History]
GO
ALTER TABLE [dbo].[Order_Product]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product_Product] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Order_Product] CHECK CONSTRAINT [FK_Order_Product_Product]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Orders] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Orders]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Product] FOREIGN KEY([Price_Id])
REFERENCES [dbo].[Price_History] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Types] FOREIGN KEY([Type_Id])
REFERENCES [dbo].[Types] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Types]
GO
ALTER TABLE [dbo].[Product_Image]  WITH CHECK ADD  CONSTRAINT [FK_Product_Image_Product] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Product_Image] CHECK CONSTRAINT [FK_Product_Image_Product]
GO
ALTER TABLE [dbo].[Product_Image]  WITH CHECK ADD  CONSTRAINT [FK_Product_Image_Product_Image] FOREIGN KEY([Image_Id])
REFERENCES [dbo].[File] ([Id])
GO
ALTER TABLE [dbo].[Product_Image] CHECK CONSTRAINT [FK_Product_Image_Product_Image]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Locations] FOREIGN KEY([Location_Id])
REFERENCES [dbo].[Locations] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Locations]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Orders] FOREIGN KEY([CurrentOrder_Id])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Orders]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
USE [master]
GO
ALTER DATABASE [SnusSiteDb] SET  READ_WRITE 
GO
