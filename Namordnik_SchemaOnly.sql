USE [master]
GO
/****** Object:  Database [Pepsi]    Script Date: 29.09.2023 21:00:48 ******/
CREATE DATABASE [Pepsi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pepsi', FILENAME = N'C:\Users\mcrib\Pepsi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Pepsi_log', FILENAME = N'C:\Users\mcrib\Pepsi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Pepsi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pepsi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pepsi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pepsi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pepsi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pepsi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pepsi] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pepsi] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Pepsi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pepsi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pepsi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pepsi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pepsi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pepsi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pepsi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pepsi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pepsi] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Pepsi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pepsi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pepsi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pepsi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pepsi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pepsi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pepsi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pepsi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Pepsi] SET  MULTI_USER 
GO
ALTER DATABASE [Pepsi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pepsi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pepsi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pepsi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Pepsi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Pepsi] SET QUERY_STORE = OFF
GO
USE [Pepsi]
GO
/****** Object:  Table [dbo].[CehNum]    Script Date: 29.09.2023 21:00:48 ******/
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
/****** Object:  Table [dbo].[Material]    Script Date: 29.09.2023 21:00:48 ******/
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
/****** Object:  Table [dbo].[MaterialType]    Script Date: 29.09.2023 21:00:48 ******/
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
/****** Object:  Table [dbo].[ProductMaterials]    Script Date: 29.09.2023 21:00:48 ******/
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
/****** Object:  Table [dbo].[Products]    Script Date: 29.09.2023 21:00:48 ******/
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
/****** Object:  Table [dbo].[ProductType]    Script Date: 29.09.2023 21:00:48 ******/
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
