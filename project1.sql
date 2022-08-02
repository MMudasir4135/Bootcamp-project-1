USE [master]
GO
/****** Object:  Database [mudasir4135]    Script Date: 8/2/2022 7:17:17 AM ******/
CREATE DATABASE [mudasir4135]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'mudasir4135', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\mudasir4135.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'mudasir4135_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\mudasir4135_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [mudasir4135] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mudasir4135].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mudasir4135] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mudasir4135] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mudasir4135] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mudasir4135] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mudasir4135] SET ARITHABORT OFF 
GO
ALTER DATABASE [mudasir4135] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [mudasir4135] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [mudasir4135] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mudasir4135] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mudasir4135] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mudasir4135] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mudasir4135] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mudasir4135] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mudasir4135] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mudasir4135] SET  DISABLE_BROKER 
GO
ALTER DATABASE [mudasir4135] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mudasir4135] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mudasir4135] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mudasir4135] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mudasir4135] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mudasir4135] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [mudasir4135] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mudasir4135] SET RECOVERY FULL 
GO
ALTER DATABASE [mudasir4135] SET  MULTI_USER 
GO
ALTER DATABASE [mudasir4135] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mudasir4135] SET DB_CHAINING OFF 
GO
ALTER DATABASE [mudasir4135] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [mudasir4135] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [mudasir4135] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [mudasir4135] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [mudasir4135] SET QUERY_STORE = OFF
GO
USE [mudasir4135]
GO
/****** Object:  Table [dbo].[accountant]    Script Date: 8/2/2022 7:17:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accountant](
	[userid] [varchar](50) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[role] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ulogin]    Script Date: 8/2/2022 7:17:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ulogin](
	[userid] [varchar](50) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[role] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [mudasir4135] SET  READ_WRITE 
GO
