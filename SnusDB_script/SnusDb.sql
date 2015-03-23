USE [SnusSiteDb]
GO
/****** Object:  Table [dbo].[Coments]    Script Date: 23.03.2015 16:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coments](
	[Id] [int] NOT NULL,
	[User_Id] [int] NOT NULL,
	[Text] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Coments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countres]    Script Date: 23.03.2015 16:01:23 ******/
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
/****** Object:  Table [dbo].[File]    Script Date: 23.03.2015 16:01:23 ******/
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
/****** Object:  Table [dbo].[Locations]    Script Date: 23.03.2015 16:01:23 ******/
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
/****** Object:  Table [dbo].[Order_History]    Script Date: 23.03.2015 16:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_History](
	[Id] [int] NOT NULL,
	[Create_Date] [nchar](10) NOT NULL,
	[User_Id] [int] NOT NULL,
 CONSTRAINT [PK_Order_History] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order_Product]    Script Date: 23.03.2015 16:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Product](
	[Order_Id] [bigint] NOT NULL,
	[Product_Id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 23.03.2015 16:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] NOT NULL,
	[Create_Date] [nchar](10) NOT NULL,
	[Summary_Price] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 23.03.2015 16:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] NOT NULL,
	[Name] [nchar](10) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
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
/****** Object:  Table [dbo].[Product_Coment]    Script Date: 23.03.2015 16:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Coment](
	[Product_Id] [int] NOT NULL,
	[Coment_Id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product_Image]    Script Date: 23.03.2015 16:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Image](
	[Product_Id] [int] NOT NULL,
	[Image_Id] [bigint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 23.03.2015 16:01:23 ******/
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
/****** Object:  Table [dbo].[Types]    Script Date: 23.03.2015 16:01:23 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 23.03.2015 16:01:23 ******/
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
ALTER TABLE [dbo].[Order_History]  WITH CHECK ADD  CONSTRAINT [FK_Order_History_Users] FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Order_History] CHECK CONSTRAINT [FK_Order_History_Users]
GO
ALTER TABLE [dbo].[Order_Product]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product_Orders] FOREIGN KEY([Order_Id])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[Order_Product] CHECK CONSTRAINT [FK_Order_Product_Orders]
GO
ALTER TABLE [dbo].[Order_Product]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product_Product] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Order_Product] CHECK CONSTRAINT [FK_Order_Product_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Types] FOREIGN KEY([Type_Id])
REFERENCES [dbo].[Types] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Types]
GO
ALTER TABLE [dbo].[Product_Coment]  WITH CHECK ADD  CONSTRAINT [FK_Product_Coment_Coments] FOREIGN KEY([Coment_Id])
REFERENCES [dbo].[Coments] ([Id])
GO
ALTER TABLE [dbo].[Product_Coment] CHECK CONSTRAINT [FK_Product_Coment_Coments]
GO
ALTER TABLE [dbo].[Product_Coment]  WITH CHECK ADD  CONSTRAINT [FK_Product_Coment_Product] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Product_Coment] CHECK CONSTRAINT [FK_Product_Coment_Product]
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
