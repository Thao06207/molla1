USE [master]
GO
/****** Object:  Database [MollaShopSpringBootAndThymeleaf]    Script Date: 22/03/2023 9:34:08 SA ******/
CREATE DATABASE [MollaShopSpringBootAndThymeleaf]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MollaShopSpringBootAndThymeleaf', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MollaShopSpringBootAndThymeleaf.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MollaShopSpringBootAndThymeleaf_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MollaShopSpringBootAndThymeleaf_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MollaShopSpringBootAndThymeleaf].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET ARITHABORT OFF 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET  MULTI_USER 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET QUERY_STORE = OFF
GO
USE [MollaShopSpringBootAndThymeleaf]
GO
/****** Object:  Table [dbo].[brands]    Script Date: 22/03/2023 9:34:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brands](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[created_date] [datetime2](7) NOT NULL,
	[last_modified_date] [datetime2](7) NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 22/03/2023 9:34:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[created_date] [datetime2](7) NOT NULL,
	[last_modified_date] [datetime2](7) NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image_product]    Script Date: 22/03/2023 9:34:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image_product](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[product_id] [bigint] NULL,
 CONSTRAINT [PK__image_pr__3213E83F1640BDDD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[likes]    Script Date: 22/03/2023 9:34:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[likes](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[created_date] [datetime2](7) NOT NULL,
	[last_modified_date] [datetime2](7) NULL,
	[product_id] [bigint] NULL,
	[user_id] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_address]    Script Date: 22/03/2023 9:34:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_address](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[created_date] [datetime2](7) NOT NULL,
	[last_modified_date] [datetime2](7) NULL,
	[address] [nvarchar](255) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[phone] [varchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 22/03/2023 9:34:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_details](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[banner] [varchar](max) NULL,
	[discount] [float] NULL,
	[name] [nvarchar](max) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[size] [varchar](50) NULL,
	[order_id] [bigint] NULL,
	[product_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 22/03/2023 9:34:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[created_date] [datetime2](7) NOT NULL,
	[last_modified_date] [datetime2](7) NULL,
	[note] [nvarchar](max) NULL,
	[pay] [int] NULL,
	[ship] [int] NULL,
	[status] [int] NULL,
	[order_address_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 22/03/2023 9:34:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[created_date] [datetime2](7) NOT NULL,
	[last_modified_date] [datetime2](7) NULL,
	[banner] [varchar](max) NULL,
	[color] [varchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[discount] [float] NULL,
	[end_day_discount] [datetime2](7) NULL,
	[info] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[price] [bigint] NULL,
	[quantity] [int] NULL,
	[start_day_discount] [datetime2](7) NULL,
	[views] [int] NULL,
	[brand_id] [bigint] NULL,
	[category_id] [bigint] NULL,
 CONSTRAINT [PK__products__3213E83FFC19A5BB] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 22/03/2023 9:34:08 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [varchar](255) NOT NULL,
	[created_date] [datetime2](7) NOT NULL,
	[last_modified_date] [datetime2](7) NULL,
	[address] [nvarchar](255) NULL,
	[avatar] [varchar](max) NULL,
	[birth_day] [datetime2](7) NULL,
	[email] [varchar](50) NOT NULL,
	[first_name] [nvarchar](50) NULL,
	[gender] [bit] NULL,
	[last_login_date] [datetime2](7) NULL,
	[last_name] [nvarchar](50) NULL,
	[login] [bit] NOT NULL,
	[password] [varchar](max) NOT NULL,
	[role] [varchar](255) NULL,
	[username] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[image_product]  WITH CHECK ADD  CONSTRAINT [FKr01evkpk9msgd6a4j55hv73ja] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[image_product] CHECK CONSTRAINT [FKr01evkpk9msgd6a4j55hv73ja]
GO
ALTER TABLE [dbo].[likes]  WITH CHECK ADD  CONSTRAINT [FK79ytfme5tdc4k9i57h0akaah2] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[likes] CHECK CONSTRAINT [FK79ytfme5tdc4k9i57h0akaah2]
GO
ALTER TABLE [dbo].[likes]  WITH CHECK ADD  CONSTRAINT [FKnvx9seeqqyy71bij291pwiwrg] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[likes] CHECK CONSTRAINT [FKnvx9seeqqyy71bij291pwiwrg]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FK4q98utpd73imf4yhttm3w0eax] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FK4q98utpd73imf4yhttm3w0eax]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD  CONSTRAINT [FKjyu2qbqt8gnvno9oe9j2s2ldk] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[order_details] CHECK CONSTRAINT [FKjyu2qbqt8gnvno9oe9j2s2ldk]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKt0ecml6rxswu7mop3s4nc73ie] FOREIGN KEY([order_address_id])
REFERENCES [dbo].[order_address] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKt0ecml6rxswu7mop3s4nc73ie]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKa3a4mpsfdf4d2y6r8ra3sc8mv] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brands] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKa3a4mpsfdf4d2y6r8ra3sc8mv]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FKog2rp4qthbtt2lfyhfo32lsw9] FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FKog2rp4qthbtt2lfyhfo32lsw9]
GO
USE [master]
GO
ALTER DATABASE [MollaShopSpringBootAndThymeleaf] SET  READ_WRITE 
GO
