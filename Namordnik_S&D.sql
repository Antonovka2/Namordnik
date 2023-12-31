USE [master]
GO
/****** Object:  Database [Pepsi]    Script Date: 29.09.2023 20:59:47 ******/
CREATE DATABASE [Pepsi]
GO
USE [Pepsi]
GO
/****** Object:  Table [dbo].[CehNum]    Script Date: 29.09.2023 20:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CehNum](
	[CHName] [tinyint] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 29.09.2023 20:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[MaterialName] [nvarchar](30) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaterialType] [int] NULL,
	[MCountPack] [tinyint] NULL,
	[EdIzm] [nvarchar](2) NULL,
	[MCountStock] [smallint] NULL,
	[MMin] [tinyint] NULL,
	[Price] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 29.09.2023 20:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[MTName] [nvarchar](30) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterials]    Script Date: 29.09.2023 20:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Products] [int] NULL,
	[Material] [int] NULL,
	[PMCount] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 29.09.2023 20:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductName] [nvarchar](100) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Artikul] [int] NULL,
	[MinPrice] [smallint] NULL,
	[PImage] [nvarchar](300) NULL,
	[ProductType] [int] NULL,
	[PeopleCount] [tinyint] NULL,
	[CehNum] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 29.09.2023 20:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[PTName] [nvarchar](30) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CehNum] ON 

INSERT [dbo].[CehNum] ([CHName], [Id]) VALUES (4, 1)
INSERT [dbo].[CehNum] ([CHName], [Id]) VALUES (9, 2)
INSERT [dbo].[CehNum] ([CHName], [Id]) VALUES (2, 3)
INSERT [dbo].[CehNum] ([CHName], [Id]) VALUES (10, 4)
INSERT [dbo].[CehNum] ([CHName], [Id]) VALUES (5, 5)
INSERT [dbo].[CehNum] ([CHName], [Id]) VALUES (6, 6)
INSERT [dbo].[CehNum] ([CHName], [Id]) VALUES (8, 7)
INSERT [dbo].[CehNum] ([CHName], [Id]) VALUES (7, 8)
INSERT [dbo].[CehNum] ([CHName], [Id]) VALUES (1, 9)
INSERT [dbo].[CehNum] ([CHName], [Id]) VALUES (3, 10)
SET IDENTITY_INSERT [dbo].[CehNum] OFF
GO
SET IDENTITY_INSERT [dbo].[Material] ON 

INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Вата серый 1x1', 1, 1, 7, N' м', 191, 34, 6009)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Ткань белый 2x2', 2, 2, 10, N' м', 713, 18, 13742)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Металлический стержень белый 0', 3, 3, 9, N' к', 280, 12, 10633)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Силикон серый 1x1', 4, 4, 2, N' м', 981, 12, 2343)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Силикон белый 0x3', 5, 4, 8, N' к', 307, 17, 12097)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Силикон белый 1x3', 6, 4, 4, N' к', 345, 46, 13550)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Ткань серый 0x3', 7, 2, 10, N' м', 965, 17, 15210)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Резинка зеленый 1x0', 8, 5, 8, N' к', 256, 9, 32616)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Металлический стержень белый 2', 9, 3, 9, N' м', 65, 36, 6753)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Ткань синий 3x3', 10, 2, 5, N' м', 387, 39, 32910)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Ткань белый 3x2', 11, 2, 9, N' м', 398, 25, 782)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Вата розовый 1x0', 12, 1, 3, N' м', 589, 32, 35776)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Вата серый 3x2', 13, 1, 5, N' к', 471, 40, 20453)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Ткань розовый 0x0', 14, 2, 3, N' м', 654, 29, 41101)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Металлический стержень цветной', 15, 3, 4, N' м', 988, 49, 55742)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Резинка синий 1x0', 16, 5, 3, N' к', 191, 11, 1407)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Металлический стержень цветной', 17, 3, 8, N' м', 173, 26, 6137)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Ткань цветной 2x1', 18, 2, 2, N' м', 993, 34, 15628)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Силикон белый 2x0', 19, 4, 10, N' м', 851, 38, 22538)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Силикон зеленый 3x1', 20, 4, 2, N' м', 776, 46, 17312)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Вата серый 3x3', 21, 1, 1, N' к', 237, 12, 19528)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Вата белый 2x0', 22, 1, 8, N' к', 983, 49, 38432)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Вата розовый 3x1', 23, 1, 3, N' к', 246, 41, 4015)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Ткань синий 2x0', 24, 2, 4, N' м', 146, 16, 19507)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Металлический стержень зеленый', 25, 3, 4, N' м', 478, 34, 32205)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Резинка зеленый 0x0', 26, 5, 7, N' м', 594, 19, 42640)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Ткань синий 0x2', 27, 2, 8, N' к', 841, 21, 27338)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Ткань зеленый 2x2', 28, 2, 4, N' м', 692, 7, 55083)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Металлический стержень синий 0', 29, 3, 9, N' м', 259, 20, 9715)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Резинка белый 3x3', 30, 5, 1, N' м', 586, 26, 35230)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Резинка зеленый 3x0', 31, 5, 10, N' к', 976, 40, 41227)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Ткань белый 1x3', 32, 2, 8, N' м', 492, 9, 38232)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Силикон цветной 1x0', 33, 4, 10, N' м', 843, 28, 4664)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Силикон зеленый 0x3', 34, 4, 9, N' к', 124, 35, 24117)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Вата серый 0x1', 35, 1, 8, N' м', 25, 38, 42948)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Металлический стержень белый 3', 36, 3, 9, N' м', 749, 30, 9136)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Резинка синий 3x1', 37, 5, 4, N' к', 232, 36, 36016)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Металлический стержень синий 3', 38, 3, 6, N' м', 336, 24, 26976)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Силикон белый 1x2', 39, 4, 2, N' м', 793, 30, 33801)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Резинка цветной 1x1', 40, 5, 8, N' м', 347, 13, 26244)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Силикон розовый 1x3', 41, 4, 9, N' м', 997, 25, 3874)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Резинка синий 3x2', 42, 5, 5, N' м', 284, 31, 4031)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Резинка розовый 1x0', 43, 5, 1, N' м', 265, 21, 36574)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Резинка зеленый 0x3', 44, 5, 8, N' к', 856, 17, 5349)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Резинка цветной 0x1', 45, 5, 8, N' м', 290, 32, 47198)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Вата розовый 3x3', 46, 1, 10, N' м', 536, 31, 2517)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Резинка цветной 0x2', 47, 5, 10, N' м', 189, 31, 55495)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Вата серый 3x0', 48, 1, 8, N' к', 48, 32, 49181)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Резинка серый 3x3', 49, 5, 4, N' м', 373, 8, 51550)
INSERT [dbo].[Material] ([MaterialName], [Id], [MaterialType], [MCountPack], [EdIzm], [MCountStock], [MMin], [Price]) VALUES (N'Резинка серый 0x0', 50, 5, 7, N' м', 395, 20, 43414)
SET IDENTITY_INSERT [dbo].[Material] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialType] ON 

INSERT [dbo].[MaterialType] ([MTName], [Id]) VALUES (N' Вата', 1)
INSERT [dbo].[MaterialType] ([MTName], [Id]) VALUES (N' Ткань', 2)
INSERT [dbo].[MaterialType] ([MTName], [Id]) VALUES (N' Стержень', 3)
INSERT [dbo].[MaterialType] ([MTName], [Id]) VALUES (N' Силикон', 4)
INSERT [dbo].[MaterialType] ([MTName], [Id]) VALUES (N' Резинка', 5)
SET IDENTITY_INSERT [dbo].[MaterialType] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductMaterials] ON 

INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (1, 31, 43, 9)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (2, 29, 30, 19)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (3, 4, 30, 19)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (4, 46, 21, 18)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (5, 6, 21, 2)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (6, 6, 43, 15)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (7, 30, 21, 9)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (8, 5, 20, 4)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (9, 49, 20, 13)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (10, 6, 20, 5)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (11, 42, 20, 12)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (12, 37, 4, 15)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (13, 10, 23, 2)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (14, 23, 12, 12)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (15, 33, 16, 19)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (16, 3, 14, 18)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (17, 31, 14, 20)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (18, 25, 14, 9)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (19, 5, 14, 18)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (20, 29, 16, 4)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (21, 44, 14, 2)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (22, 30, 23, 13)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (23, 37, 16, 6)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (24, 24, 6, 19)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (25, 2, 15, 16)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (26, 44, 24, 19)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (27, 22, 37, 4)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (28, 49, 6, 15)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (29, 43, 37, 17)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (30, 12, 6, 3)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (31, 13, 25, 1)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (32, 5, 28, 14)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (33, 25, 6, 10)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (34, 21, 49, 19)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (35, 33, 6, 13)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (36, 35, 15, 2)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (37, 38, 49, 3)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (38, 11, 42, 20)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (39, 38, 13, 13)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (40, 40, 42, 19)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (41, 32, 38, 2)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (42, 23, 38, 15)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (43, 24, 26, 5)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (44, 28, 1, 19)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (45, 35, 50, 17)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (46, 8, 26, 19)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (47, 50, 50, 17)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (48, 2, 35, 5)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (49, 4, 8, 20)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (50, 16, 27, 18)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (51, 10, 44, 20)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (52, 16, 32, 8)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (53, 36, 8, 1)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (54, 9, 45, 14)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (55, 9, 32, 9)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (56, 3, 45, 11)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (57, 18, 48, 11)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (58, 45, 45, 20)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (59, 5, 22, 11)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (60, 48, 27, 16)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (61, 12, 17, 1)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (62, 30, 27, 1)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (63, 49, 35, 2)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (64, 36, 11, 1)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (65, 23, 36, 2)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (66, 24, 29, 5)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (67, 37, 29, 6)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (68, 38, 3, 10)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (69, 1, 3, 12)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (70, 25, 36, 7)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (71, 27, 29, 4)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (72, 29, 36, 16)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (73, 20, 41, 4)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (74, 30, 36, 18)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (75, 1, 41, 10)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (76, 44, 29, 9)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (77, 3, 3, 9)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (78, 10, 29, 9)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (79, 13, 34, 9)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (80, 15, 9, 19)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (81, 17, 11, 3)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (82, 36, 3, 19)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (83, 22, 11, 14)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (84, 6, 31, 19)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (85, 41, 19, 17)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (86, 41, 31, 16)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (87, 5, 7, 7)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (88, 23, 33, 4)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (89, 3, 31, 2)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (90, 22, 2, 12)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (91, 15, 7, 4)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (92, 12, 47, 3)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (93, 26, 7, 10)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (94, 10, 7, 8)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (95, 48, 33, 16)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (96, 48, 46, 3)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (97, 35, 47, 2)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (98, 39, 7, 20)
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (99, 39, 31, 1)
GO
INSERT [dbo].[ProductMaterials] ([Id], [Products], [Material], [PMCount]) VALUES (100, 40, 2, 8)
SET IDENTITY_INSERT [dbo].[ProductMaterials] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Moon" (Элипс) P3', 1, 59922, 2690, N'5fb128cd1e2b9.jpg', 1, 5, 1)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Повязка санитарно–гигиеническая многоразовая с логотипом СОЮЗСПЕЦОДЕЖДА', 2, 5028556, 49, NULL, 2, 5, 2)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Повязка санитарно–гигиеническая многоразовая черная', 3, 5028272, 59, NULL, 2, 4, 1)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Маска одноразовая трехслойная из нетканого материала, нестерильная', 4, 5028247, 6, N'5fb128cc69235.jpg', 2, 3, 3)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Повязка санитарно–гигиеническая многоразовая с принтом', 5, 5028229, 49, NULL, 2, 2, 4)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Маска из нетканого материала KN95', 6, 5030981, 59, N'5fb128cc719a6.jpg', 3, 3, 5)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Маска из нетканого материала с клапаном KN95', 7, 5029784, 79, N'5fb128cc753e3.jpg', 3, 3, 1)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор У-2К', 8, 58953, 95, N'5fb128cc7941f.jpg', 3, 2, 6)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор 9101 FFP1', 9, 5026662, 189, N'5fb128cc7d798.jpg', 4, 5, 7)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор противоаэрозольный 9312', 10, 59043, 399, N'5fb128cc80a10.jpg', 4, 4, 8)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор 3M 8112 противоаэрозольный с клапаном выдоха', 11, 58376, 299, N'5fb128cc84474.jpg', 4, 3, 9)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор 3M 8101 противоаэрозольный', 12, 58375, 149, N'5fb128cc87b90.jpg', 4, 1, 1)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Алина" 110', 13, 59324, 129, N'5fb128cc8b750.jpg', 4, 3, 2)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Алина" 100', 14, 58827, 99, N'5fb128cc8f4dd.jpg', 4, 2, 7)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Нева" 109', 15, 59898, 129, N'5fb128cc9414b.jpg', 4, 4, 9)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Юлия" 109', 16, 59474, 129, N'5fb128cc97ff4.jpg', 4, 4, 7)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Юлия" 119', 17, 59472, 149, N'5fb128cc9bd36.jpg', 4, 3, 8)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор 3M с клапаном 9162', 18, 5033136, 349, N'5fb128cc9f069.jpg', 4, 2, 2)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор 3M 9152 FFP2', 19, 5028048, 390, N'5fb128cca31d9.jpg', 4, 2, 7)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор противоаэрозольный 9322', 20, 58796, 449, N'5fb128cca6910.jpg', 4, 4, 1)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор с клапаном 9926', 21, 58568, 699, N'5fb128cca9d9b.jpg', 4, 3, 5)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор 3M 8102 противоаэрозольный', 22, 58466, 199, N'5fb128ccae21a.jpg', 4, 3, 2)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор 3M 8122', 23, 58445, 299, N'5fb128ccb1958.jpg', 4, 3, 6)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор M1200VWC FFP2 Delta Plus (Дельта Плюс)', 24, 5031919, 349, N'5fb128ccb4e8c.jpg', 4, 2, 7)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор RK6021', 25, 5030026, 290, N'5fb128ccb97a0.jpg', 4, 5, 7)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор RK6020', 26, 5030020, 129, N'5fb128ccbd227.jpg', 4, 3, 5)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор Алина 210', 27, 5030072, 290, N'5fb128ccc1592.jpg', 4, 1, 5)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор Алина 211', 28, 5030062, 290, N'5fb128ccc4a86.jpg', 4, 1, 6)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Алина" 200', 29, 58826, 149, N'5fb128ccc9a9e.jpg', 4, 4, 5)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Алина" П', 30, 58825, 290, N'5fb128cccdbee.jpg', 4, 4, 5)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Алина" АВ', 31, 58584, 249, N'5fb128ccd133c.jpg', 4, 2, 5)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Нева" 210', 32, 59736, 109, N'5fb128ccd5dc2.jpg', 4, 1, 10)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Нева" 200', 33, 59735, 79, N'5fb128ccd8ff6.jpg', 4, 2, 10)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор полумаска НРЗ-0102 FFP2 NR D', 34, 5027238, 149, N'5fb128ccdca1e.jpg', 4, 4, 1)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Юлия" 219', 35, 59475, 249, N'5fb128cce0042.jpg', 4, 4, 7)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Юлия" 215', 36, 59473, 349, N'5fb128cce39fa.jpg', 4, 3, 1)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Юлия" 209', 37, 59470, 179, N'5fb128cce7971.jpg', 4, 2, 7)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор M1300V2С FFP3 Delta Plus (Дельта Плюс)', 38, 5031924, 490, N'5fb128cceae7c.jpg', 4, 5, 3)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор RK6030', 39, 5030022, 390, N'5fb128ccef256.jpg', 4, 3, 6)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Алина" 310', 40, 58850, 490, N'5fb128ccf3dd2.jpg', 4, 5, 6)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Нева" 310', 41, 59739, 289, N'5fb128cd0544b.jpg', 4, 4, 10)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Юлия" 319', 42, 59471, 490, N'5fb128cd08e3f.jpg', 4, 4, 7)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Elipse" (Элипс) ABEK1P3', 43, 5027980, 4990, N'5fb128cd0d0b1.jpg', 4, 2, 9)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Elipse" (Элипс) A2P3', 44, 5027965, 4490, N'5fb128cd10ec2.jpg', 1, 4, 3)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Elipse" (Элипс) А1', 45, 5027958, 3190, N'5fb128cd157f9.jpg', 1, 2, 1)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Elipse" (Элипс) P3 (анти-запах)', 46, 59923, 2790, N'5fb128cd19baa.jpg', 1, 1, 2)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Elipse" (Элипс) P3', 47, 59922, 2690, N'5fb128cd1e2b9.jpg', 1, 5, 1)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Elipse" (Элипс) A1P3', 48, 59921, 5690, N'5fb128cd2215f.jpg', 1, 3, 2)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Elipse" (Элипс) ABEK1', 49, 59920, 5690, N'5fb128cd268bf.jpg', 1, 2, 7)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор-полумаска "3М" серия 6000', 50, 58974, 3490, N'5fb128cd2ab69.jpg', 1, 5, 2)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор-полумаска Исток 300/400', 51, 59334, 490, N'5fb128cd2ef7a.jpg', 1, 4, 8)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Комплект для защиты дыхания J-SET 6500 JETA', 52, 4969295, 2490, N'5fb128cd331c4.jpg', 1, 4, 1)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Лицевая маска Elipse Integra А1P3', 53, 5029610, 9890, N'5fb128cd3674d.jpg', 1, 2, 4)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Лицевая маска Elipse Integra P3', 54, 5029091, 7490, N'5fb128cd3af5c.jpg', 5, 5, 2)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Лицевая маска Elipse Integra (Элипс интегра) P3 (анти-запах)', 55, 60360, 7590, N'5fb128cd3e7e4.jpg', 5, 2, 1)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полнолицевая маска 5950 JETA', 56, 4958042, 11490, N'5fb128cd41ece.jpg', 5, 1, 5)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Сменный патрон с фильтром 6054 для масок и полумасок "3М" серии 6000', 57, 59271, 1890, N'5fb128cd4672c.jpg', 6, 4, 3)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Сменный патрон с фильтром 6059 для масок и полумасок "3М" серии 6000', 58, 59253, 2290, N'5fb128cd4c99d.jpg', 7, 2, 2)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Сменный фильтр 6510 A1 JETA', 59, 5028197, 990, N'5fb128cd50a70.jpg', 7, 5, 2)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Запасные фильтры к полумаске Elipse ABEK1P3', 60, 5027978, 2990, N'5fb128cd5433e.jpg', 7, 3, 6)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Запасные фильтры к полумаске Elipse A2P3', 61, 5027961, 2590, N'5fb128cd5838d.jpg', 8, 2, 2)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Запасные фильтры к полумаске Elipse (Элипс) А1', 62, 5027921, 1290, N'5fb128cd5bb7d.jpg', 8, 3, 1)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Сменный фильтр 6541 ABEK1 JETA', 63, 4958040, 1290, N'5fb128cd5ff78.jpg', 7, 4, 6)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Запасные фильтры к полумаске "Elipse" (Элипс) P3 (анти-запах)', 64, 59919, 1690, N'5fb128cd63666.jpg', 8, 4, 1)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Запасные фильтры к полумаске "Elipse" (Элипс) P3', 65, 59918, 1390, N'5fb128cd66df6.jpg', 8, 4, 8)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Запасные фильтры к полумаске "Elipse" (Элипс) A1P3', 66, 59917, 2190, N'5fb128cd6a2b6.jpg', 8, 1, 10)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Запасные фильтры к полумаске "Elipse" (Элипс) ABEK1', 67, 59916, 2590, N'5fb128cd6e4ee.jpg', 8, 3, 4)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Запасные фильтры (пара) АВЕ1 к полумаскам "Адвантейдж"', 68, 59708, 1490, N'5fb128cd71db3.jpg', 8, 2, 10)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Запасной фильтр к полумаске Исток-300 (РПГ-67) марка В', 69, 67661, 110, N'5fb128cd7518c.jpg', 8, 5, 2)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Запасной фильтр к полумаске Исток-300 (РПГ-67) марка А', 70, 67660, 110, N'5fb128cd78fce.jpg', 8, 3, 9)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Держатель предфильтра 5101 JETA', 71, 4958041, 199, N'5fb128cd7d2cd.jpg', 8, 1, 8)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Держатели предфильтра для масок и полумасок "3М" серии 6000', 72, 58431, 264, N'5fb128cd80a06.jpg', 9, 1, 1)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Предфильтр Р2 (4 шт) 6020 JETA', 73, 4958039, 380, N'5fb128cd8417e.jpg', 9, 1, 8)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Предфильтры для масок и полумасок "3М" серии 6000', 74, 58917, 409, N'5fb128cd8818d.jpg', 10, 5, 10)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Мадонна" 110', 75, 59324, 129, N'5fb128cc8b750.jpg', 4, 3, 2)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Витязь" 100', 76, 58827, 99, N'5fb128cc8f4dd.jpg', 4, 2, 7)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Серёга" 109', 77, 59898, 129, N'5fb128cc9414b.jpg', 4, 4, 9)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Амперметр" 109', 78, 59474, 129, N'5fb128cc97ff4.jpg', 4, 4, 7)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Фирюза" 110', 79, 59324, 129, N'5fb128cc8b750.jpg', 4, 3, 2)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Красный" 100', 80, 58827, 99, N'5fb128cc8f4dd.jpg', 4, 2, 7)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Волга" 109', 81, 59898, 129, N'5fb128cc9414b.jpg', 4, 4, 9)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Мадонна" 220', 82, 59474, 129, N'5fb128cc97ff4.jpg', 4, 4, 7)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Витязь" 220', 83, 59324, 129, N'5fb128cc8b750.jpg', 4, 3, 2)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Серёга" 220', 84, 58827, 99, N'5fb128cc8f4dd.jpg', 4, 2, 7)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Амперметр" 220', 85, 59898, 129, N'5fb128cc9414b.jpg', 4, 4, 9)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Фирюза" 220', 86, 59474, 129, N'5fb128cc97ff4.jpg', 4, 4, 7)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Красный" 220', 87, 59324, 129, N'5fb128cc8b750.jpg', 4, 3, 2)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Респиратор "Волга" 220', 88, 58827, 99, N'5fb128cc8f4dd.jpg', 4, 2, 7)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Sunset" ABEK1P3', 89, 5027980, 4990, N'5fb128cd0d0b1.jpg', 4, 2, 9)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Sunset" A2P3', 90, 5027965, 4490, N'5fb128cd10ec2.jpg', 1, 4, 3)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Sunset" А1', 91, 5027958, 3190, N'5fb128cd157f9.jpg', 1, 2, 1)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Sunset" P3 (анти-запах)', 92, 59923, 2790, N'5fb128cd19baa.jpg', 1, 1, 2)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Sunset" (Элипс) P3', 93, 59922, 2690, N'5fb128cd1e2b9.jpg', 1, 5, 1)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Sunset" A1P3', 94, 59921, 5690, N'5fb128cd2215f.jpg', 1, 3, 2)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Sunset" ABEK1', 95, 59920, 5690, N'5fb128cd268bf.jpg', 1, 2, 7)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Moon" ABEK1', 96, 59920, 5690, N'5fb128cd268bf.jpg', 1, 2, 7)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Moon" ABEK1P3', 97, 5027980, 4990, N'5fb128cd0d0b1.jpg', 4, 2, 9)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Moon" A2P3', 98, 5027965, 4490, N'5fb128cd10ec2.jpg', 1, 4, 3)
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Moon" А1', 99, 5027958, 3190, N'5fb128cd157f9.jpg', 1, 2, 1)
GO
INSERT [dbo].[Products] ([ProductName], [Id], [Artikul], [MinPrice], [PImage], [ProductType], [PeopleCount], [CehNum]) VALUES (N'Полумаска "Moon" P3 (анти-запах)', 100, 59923, 2790, N'5fb128cd19baa.jpg', 1, 1, 2)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([PTName], [Id]) VALUES (N'Полумаски', 1)
INSERT [dbo].[ProductType] ([PTName], [Id]) VALUES (N'Повязки', 2)
INSERT [dbo].[ProductType] ([PTName], [Id]) VALUES (N'Маски', 3)
INSERT [dbo].[ProductType] ([PTName], [Id]) VALUES (N'Респираторы', 4)
INSERT [dbo].[ProductType] ([PTName], [Id]) VALUES (N'На лицо', 5)
INSERT [dbo].[ProductType] ([PTName], [Id]) VALUES (N'Полнолицевые', 6)
INSERT [dbo].[ProductType] ([PTName], [Id]) VALUES (N'Сменные части', 7)
INSERT [dbo].[ProductType] ([PTName], [Id]) VALUES (N'Запасные части', 8)
INSERT [dbo].[ProductType] ([PTName], [Id]) VALUES (N'Держители', 9)
INSERT [dbo].[ProductType] ([PTName], [Id]) VALUES (N'Предфильтры', 10)
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD FOREIGN KEY([MaterialType])
REFERENCES [dbo].[MaterialType] ([Id])
GO
ALTER TABLE [dbo].[ProductMaterials]  WITH CHECK ADD FOREIGN KEY([Material])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[ProductMaterials]  WITH CHECK ADD FOREIGN KEY([Products])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CehNum])
REFERENCES [dbo].[CehNum] ([Id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([ProductType])
REFERENCES [dbo].[ProductType] ([Id])
GO
USE [master]
GO
ALTER DATABASE [Pepsi] SET  READ_WRITE 
GO
