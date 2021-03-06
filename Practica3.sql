USE [master]
GO
/****** Object:  Database [Pagina web]    Script Date: 07/10/2017 03:06:30 p.m. ******/
CREATE DATABASE [Pagina web]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pagina web', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Pagina web.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Pagina web_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Pagina web_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Pagina web] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pagina web].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pagina web] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pagina web] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pagina web] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pagina web] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pagina web] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pagina web] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Pagina web] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Pagina web] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pagina web] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pagina web] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pagina web] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pagina web] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pagina web] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pagina web] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pagina web] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pagina web] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Pagina web] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pagina web] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pagina web] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pagina web] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pagina web] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pagina web] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pagina web] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pagina web] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Pagina web] SET  MULTI_USER 
GO
ALTER DATABASE [Pagina web] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pagina web] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pagina web] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pagina web] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Pagina web]
GO
/****** Object:  Table [dbo].[CapituloManga]    Script Date: 07/10/2017 03:06:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CapituloManga](
	[IDCapituloManga] [uniqueidentifier] NOT NULL,
	[Tomo] [int] NOT NULL,
	[NumeroCapitulo] [int] NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[Descripción] [varchar](max) NOT NULL,
	[URL] [varchar](max) NOT NULL,
	[Nivel-Acceso] [int] NOT NULL,
	[IDManga] [uniqueidentifier] NOT NULL,
	[IDRegistroCapMan] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_CapituloManga] PRIMARY KEY CLUSTERED 
(
	[IDCapituloManga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Detalles-RCM]    Script Date: 07/10/2017 03:06:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Detalles-RCM](
	[IDDetalles-RCM] [uniqueidentifier] NOT NULL,
	[Atributos] [varchar](50) NOT NULL,
	[ValorActual] [varchar](50) NOT NULL,
	[ValorPasado] [varchar](50) NOT NULL,
	[IDRegistroCapMan] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Detalles-RCM] PRIMARY KEY CLUSTERED 
(
	[IDDetalles-RCM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Detalles-RM]    Script Date: 07/10/2017 03:06:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Detalles-RM](
	[IDDetalles-RM] [uniqueidentifier] NOT NULL,
	[Atributos] [varchar](50) NOT NULL,
	[ValorActual] [varchar](50) NOT NULL,
	[ValorPasado] [varchar](50) NOT NULL,
	[IDRegistroManga] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Detalles-RM] PRIMARY KEY CLUSTERED 
(
	[IDDetalles-RM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 07/10/2017 03:06:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Genero](
	[IDGenero] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[IDGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Manga]    Script Date: 07/10/2017 03:06:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manga](
	[IDManga] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[Estado] [varchar](20) NOT NULL,
	[Descarga] [text] NOT NULL,
	[Nivel-Acceso] [int] NOT NULL,
	[IDGenero] [uniqueidentifier] NOT NULL,
	[IDRegistroManga] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Manga] PRIMARY KEY CLUSTERED 
(
	[IDManga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RegistroCapituloM]    Script Date: 07/10/2017 03:06:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegistroCapituloM](
	[IDRegistroCapMan] [uniqueidentifier] NOT NULL,
	[FechaHora] [date] NOT NULL,
	[Estado] [varchar](20) NOT NULL,
 CONSTRAINT [PK_RegistroCapituloM] PRIMARY KEY CLUSTERED 
(
	[IDRegistroCapMan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RegistroManga]    Script Date: 07/10/2017 03:06:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegistroManga](
	[IDRegistroManga] [uniqueidentifier] NOT NULL,
	[FechaHora] [date] NOT NULL,
	[Estado] [varchar](20) NOT NULL,
 CONSTRAINT [PK_RegistroManga] PRIMARY KEY CLUSTERED 
(
	[IDRegistroManga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 07/10/2017 03:06:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[IDRoles] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Nivel-Acceso] [int] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[IDRoles] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 07/10/2017 03:06:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[IDUsuario] [uniqueidentifier] NOT NULL,
	[Email] [varchar](70) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFinal] [date] NOT NULL,
	[IDRoles] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IDUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[CapituloManga]  WITH CHECK ADD  CONSTRAINT [FK_CapituloManga_Manga] FOREIGN KEY([IDManga])
REFERENCES [dbo].[Manga] ([IDManga])
GO
ALTER TABLE [dbo].[CapituloManga] CHECK CONSTRAINT [FK_CapituloManga_Manga]
GO
ALTER TABLE [dbo].[CapituloManga]  WITH CHECK ADD  CONSTRAINT [FK_CapituloManga_RegistroCapituloM] FOREIGN KEY([IDRegistroCapMan])
REFERENCES [dbo].[RegistroCapituloM] ([IDRegistroCapMan])
GO
ALTER TABLE [dbo].[CapituloManga] CHECK CONSTRAINT [FK_CapituloManga_RegistroCapituloM]
GO
ALTER TABLE [dbo].[Detalles-RCM]  WITH CHECK ADD  CONSTRAINT [FK_Detalles-RCM_RegistroCapituloM] FOREIGN KEY([IDRegistroCapMan])
REFERENCES [dbo].[RegistroCapituloM] ([IDRegistroCapMan])
GO
ALTER TABLE [dbo].[Detalles-RCM] CHECK CONSTRAINT [FK_Detalles-RCM_RegistroCapituloM]
GO
ALTER TABLE [dbo].[Detalles-RM]  WITH CHECK ADD  CONSTRAINT [FK_Detalles-RM_RegistroManga] FOREIGN KEY([IDRegistroManga])
REFERENCES [dbo].[RegistroManga] ([IDRegistroManga])
GO
ALTER TABLE [dbo].[Detalles-RM] CHECK CONSTRAINT [FK_Detalles-RM_RegistroManga]
GO
ALTER TABLE [dbo].[Manga]  WITH CHECK ADD  CONSTRAINT [FK_Manga_Genero] FOREIGN KEY([IDGenero])
REFERENCES [dbo].[Genero] ([IDGenero])
GO
ALTER TABLE [dbo].[Manga] CHECK CONSTRAINT [FK_Manga_Genero]
GO
ALTER TABLE [dbo].[Manga]  WITH CHECK ADD  CONSTRAINT [FK_Manga_RegistroManga] FOREIGN KEY([IDRegistroManga])
REFERENCES [dbo].[RegistroManga] ([IDRegistroManga])
GO
ALTER TABLE [dbo].[Manga] CHECK CONSTRAINT [FK_Manga_RegistroManga]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Roles] FOREIGN KEY([IDRoles])
REFERENCES [dbo].[Roles] ([IDRoles])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Roles]
GO
USE [master]
GO
ALTER DATABASE [Pagina web] SET  READ_WRITE 
GO
