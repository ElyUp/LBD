USE [master]
GO
/****** Object:  Database [Pagina Web]    Script Date: 30/10/2017 12:45:36 p.m. ******/
CREATE DATABASE [Pagina Web]
 CONTAINMENT = NONE
GO
ALTER DATABASE [Pagina Web] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pagina Web].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pagina Web] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pagina Web] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pagina Web] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pagina Web] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pagina Web] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pagina Web] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Pagina Web] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pagina Web] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pagina Web] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pagina Web] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pagina Web] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pagina Web] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pagina Web] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pagina Web] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pagina Web] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Pagina Web] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pagina Web] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pagina Web] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pagina Web] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pagina Web] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pagina Web] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pagina Web] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pagina Web] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Pagina Web] SET  MULTI_USER 
GO
ALTER DATABASE [Pagina Web] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pagina Web] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pagina Web] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pagina Web] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Pagina Web]
GO
/****** Object:  Table [dbo].[Anime]    Script Date: 30/10/2017 12:45:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Anime](
	[IDAnime] [int] NOT NULL,
	[Nombre] [varchar](225) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
	[Descarga] [varchar](50) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[IDGenero] [int] NOT NULL,
	[IDRegistroAnime] [int] NOT NULL,
	[IDForoAnime] [int] NOT NULL,
	[IDNoticiasAnime] [int] NOT NULL,
 CONSTRAINT [PK_Anime] PRIMARY KEY CLUSTERED 
(
	[IDAnime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CapituloAnime]    Script Date: 30/10/2017 12:45:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CapituloAnime](
	[IDCapituloAnime] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[URL] [varchar](max) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[Temporada] [varchar](50) NOT NULL,
	[NumeroCap] [int] NOT NULL,
	[Duracion] [int] NOT NULL,
	[IDRegistroCapAnime] [int] NOT NULL,
	[IDNivelAcesso] [varchar](50) NOT NULL,
	[IDAnime] [int] NOT NULL,
 CONSTRAINT [PK_CapituloAnime] PRIMARY KEY CLUSTERED 
(
	[IDCapituloAnime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CapituloManga]    Script Date: 30/10/2017 12:45:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CapituloManga](
	[IDCapituloManga] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[URL] [varchar](max) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[Temporada] [varchar](50) NOT NULL,
	[NumeroCap] [int] NOT NULL,
	[IDRegistroCapManga] [int] NOT NULL,
	[IDNivelAcceso] [varchar](50) NOT NULL,
	[IDManga] [int] NOT NULL,
 CONSTRAINT [PK_CapituloManga] PRIMARY KEY CLUSTERED 
(
	[IDCapituloManga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DetallesRAnime]    Script Date: 30/10/2017 12:45:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DetallesRAnime](
	[IDDetallesRA] [uniqueidentifier] NOT NULL,
	[Atributos] [varchar](50) NOT NULL,
	[ValorActual] [varchar](max) NOT NULL,
	[ValorPasado] [varchar](max) NOT NULL,
	[IDRegistroAnime] [int] NOT NULL,
 CONSTRAINT [PK_DetallesRAnime] PRIMARY KEY CLUSTERED 
(
	[IDDetallesRA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DetallesRCAnime]    Script Date: 30/10/2017 12:45:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DetallesRCAnime](
	[IDDetallesRCAnime] [uniqueidentifier] NOT NULL,
	[Atributos] [varchar](50) NOT NULL,
	[ValorActual] [varchar](max) NOT NULL,
	[ValorPasado] [varchar](max) NOT NULL,
	[IDRegistroCapAnime] [int] NOT NULL,
 CONSTRAINT [PK_DetallesRCAnime] PRIMARY KEY CLUSTERED 
(
	[IDDetallesRCAnime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DetallesRCManga]    Script Date: 30/10/2017 12:45:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DetallesRCManga](
	[IDDetallesRCManga] [uniqueidentifier] NOT NULL,
	[Atributos] [varchar](50) NOT NULL,
	[ValorActual] [varchar](max) NOT NULL,
	[ValorPasado] [varchar](max) NOT NULL,
	[IDRegistroCapManga] [int] NOT NULL,
 CONSTRAINT [PK_DetallesRCManga] PRIMARY KEY CLUSTERED 
(
	[IDDetallesRCManga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DetallesRManga]    Script Date: 30/10/2017 12:45:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DetallesRManga](
	[IDDetallesRManga] [uniqueidentifier] NOT NULL,
	[Atributos] [varchar](50) NOT NULL,
	[ValorActual] [varchar](max) NOT NULL,
	[ValorPasado] [varchar](max) NOT NULL,
	[IDRegistroManga] [int] NOT NULL,
 CONSTRAINT [PK_DetallesRManga] PRIMARY KEY CLUSTERED 
(
	[IDDetallesRManga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ForoAnime]    Script Date: 30/10/2017 12:45:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ForoAnime](
	[IDForoAnime] [int] NOT NULL,
	[Tema] [varchar](max) NOT NULL,
	[Autor] [varchar](50) NOT NULL,
	[Contenido] [varchar](max) NOT NULL,
	[Comentario] [varchar](max) NOT NULL,
 CONSTRAINT [PK_ForoAnime] PRIMARY KEY CLUSTERED 
(
	[IDForoAnime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ForoManga]    Script Date: 30/10/2017 12:45:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ForoManga](
	[IDForoManga] [int] NOT NULL,
	[Tema] [varchar](max) NOT NULL,
	[Autor] [varchar](50) NOT NULL,
	[Contenido] [varchar](max) NOT NULL,
	[Comentario] [varchar](max) NOT NULL,
 CONSTRAINT [PK_ForoManga] PRIMARY KEY CLUSTERED 
(
	[IDForoManga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 30/10/2017 12:45:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Genero](
	[IDGenero] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[IDGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Manga]    Script Date: 30/10/2017 12:45:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manga](
	[IDManga] [int] NOT NULL,
	[Nombre] [varchar](225) NOT NULL,
	[Estado] [varchar](max) NOT NULL,
	[Descarga] [varchar](max) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[IDGenero] [int] NOT NULL,
	[IDRegistroManga] [int] NOT NULL,
	[IDForoManga] [int] NOT NULL,
	[IDNoticiasManga] [int] NOT NULL,
 CONSTRAINT [PK_Manga] PRIMARY KEY CLUSTERED 
(
	[IDManga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NivelAcceso]    Script Date: 30/10/2017 12:45:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NivelAcceso](
	[IDNivelAcceso] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NivelAcceso] PRIMARY KEY CLUSTERED 
(
	[IDNivelAcceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NoticiasAnime]    Script Date: 30/10/2017 12:45:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NoticiasAnime](
	[IDNoticiasAnime] [int] NOT NULL,
	[Titulo] [varchar](max) NOT NULL,
	[Autor] [varchar](max) NOT NULL,
	[Noticia] [varchar](max) NOT NULL,
 CONSTRAINT [PK_NoticiasAnime] PRIMARY KEY CLUSTERED 
(
	[IDNoticiasAnime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NoticiasManga]    Script Date: 30/10/2017 12:45:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NoticiasManga](
	[IDNoticiasManga] [int] NOT NULL,
	[Titulo] [varchar](max) NOT NULL,
	[Autor] [varchar](max) NOT NULL,
	[Noticia] [varchar](max) NOT NULL,
 CONSTRAINT [PK_NoticiasManga] PRIMARY KEY CLUSTERED 
(
	[IDNoticiasManga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RegistroAnime]    Script Date: 30/10/2017 12:45:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegistroAnime](
	[IDRegistroAnime] [int] NOT NULL,
	[FechaHora] [date] NOT NULL,
	[Estatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RegistroAnime] PRIMARY KEY CLUSTERED 
(
	[IDRegistroAnime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RegistroCapAnime]    Script Date: 30/10/2017 12:45:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegistroCapAnime](
	[IDRegistroCapAnime] [int] NOT NULL,
	[FechaHora] [date] NOT NULL,
	[Estatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RegistroCapAnime] PRIMARY KEY CLUSTERED 
(
	[IDRegistroCapAnime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RegistroCapManga]    Script Date: 30/10/2017 12:45:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegistroCapManga](
	[IDRegistroCapManga] [int] NOT NULL,
	[FechaHora] [date] NOT NULL,
	[Estatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RegistroCapManga] PRIMARY KEY CLUSTERED 
(
	[IDRegistroCapManga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RegistroManga]    Script Date: 30/10/2017 12:45:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegistroManga](
	[IDRegistroManga] [int] NOT NULL,
	[FechaHora] [date] NOT NULL,
	[Estatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RegistroManga] PRIMARY KEY CLUSTERED 
(
	[IDRegistroManga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 30/10/2017 12:45:36 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[IDUsuario] [uniqueidentifier] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFinal] [date] NOT NULL,
	[IDNivelAcceso] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IDUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Anime]  WITH CHECK ADD  CONSTRAINT [FK_Anime_ForoAnime] FOREIGN KEY([IDForoAnime])
REFERENCES [dbo].[ForoAnime] ([IDForoAnime])
GO
ALTER TABLE [dbo].[Anime] CHECK CONSTRAINT [FK_Anime_ForoAnime]
GO
ALTER TABLE [dbo].[Anime]  WITH CHECK ADD  CONSTRAINT [FK_Anime_Genero] FOREIGN KEY([IDGenero])
REFERENCES [dbo].[Genero] ([IDGenero])
GO
ALTER TABLE [dbo].[Anime] CHECK CONSTRAINT [FK_Anime_Genero]
GO
ALTER TABLE [dbo].[Anime]  WITH CHECK ADD  CONSTRAINT [FK_Anime_NoticiasAnime] FOREIGN KEY([IDNoticiasAnime])
REFERENCES [dbo].[NoticiasAnime] ([IDNoticiasAnime])
GO
ALTER TABLE [dbo].[Anime] CHECK CONSTRAINT [FK_Anime_NoticiasAnime]
GO
ALTER TABLE [dbo].[Anime]  WITH CHECK ADD  CONSTRAINT [FK_Anime_RegistroAnime] FOREIGN KEY([IDRegistroAnime])
REFERENCES [dbo].[RegistroAnime] ([IDRegistroAnime])
GO
ALTER TABLE [dbo].[Anime] CHECK CONSTRAINT [FK_Anime_RegistroAnime]
GO
ALTER TABLE [dbo].[CapituloAnime]  WITH CHECK ADD  CONSTRAINT [FK_CapituloAnime_Anime] FOREIGN KEY([IDAnime])
REFERENCES [dbo].[Anime] ([IDAnime])
GO
ALTER TABLE [dbo].[CapituloAnime] CHECK CONSTRAINT [FK_CapituloAnime_Anime]
GO
ALTER TABLE [dbo].[CapituloAnime]  WITH CHECK ADD  CONSTRAINT [FK_CapituloAnime_NivelAcceso] FOREIGN KEY([IDNivelAcesso])
REFERENCES [dbo].[NivelAcceso] ([IDNivelAcceso])
GO
ALTER TABLE [dbo].[CapituloAnime] CHECK CONSTRAINT [FK_CapituloAnime_NivelAcceso]
GO
ALTER TABLE [dbo].[CapituloAnime]  WITH CHECK ADD  CONSTRAINT [FK_CapituloAnime_RegistroCapAnime] FOREIGN KEY([IDRegistroCapAnime])
REFERENCES [dbo].[RegistroCapAnime] ([IDRegistroCapAnime])
GO
ALTER TABLE [dbo].[CapituloAnime] CHECK CONSTRAINT [FK_CapituloAnime_RegistroCapAnime]
GO
ALTER TABLE [dbo].[CapituloManga]  WITH CHECK ADD  CONSTRAINT [FK_CapituloManga_Manga] FOREIGN KEY([IDManga])
REFERENCES [dbo].[Manga] ([IDManga])
GO
ALTER TABLE [dbo].[CapituloManga] CHECK CONSTRAINT [FK_CapituloManga_Manga]
GO
ALTER TABLE [dbo].[CapituloManga]  WITH CHECK ADD  CONSTRAINT [FK_CapituloManga_NivelAcceso] FOREIGN KEY([IDNivelAcceso])
REFERENCES [dbo].[NivelAcceso] ([IDNivelAcceso])
GO
ALTER TABLE [dbo].[CapituloManga] CHECK CONSTRAINT [FK_CapituloManga_NivelAcceso]
GO
ALTER TABLE [dbo].[CapituloManga]  WITH CHECK ADD  CONSTRAINT [FK_CapituloManga_RegistroCapManga] FOREIGN KEY([IDRegistroCapManga])
REFERENCES [dbo].[RegistroCapManga] ([IDRegistroCapManga])
GO
ALTER TABLE [dbo].[CapituloManga] CHECK CONSTRAINT [FK_CapituloManga_RegistroCapManga]
GO
ALTER TABLE [dbo].[DetallesRAnime]  WITH CHECK ADD  CONSTRAINT [FK_DetallesRAnime_RegistroAnime] FOREIGN KEY([IDRegistroAnime])
REFERENCES [dbo].[RegistroAnime] ([IDRegistroAnime])
GO
ALTER TABLE [dbo].[DetallesRAnime] CHECK CONSTRAINT [FK_DetallesRAnime_RegistroAnime]
GO
ALTER TABLE [dbo].[DetallesRCAnime]  WITH CHECK ADD  CONSTRAINT [FK_DetallesRCAnime_RegistroCapAnime] FOREIGN KEY([IDRegistroCapAnime])
REFERENCES [dbo].[RegistroCapAnime] ([IDRegistroCapAnime])
GO
ALTER TABLE [dbo].[DetallesRCAnime] CHECK CONSTRAINT [FK_DetallesRCAnime_RegistroCapAnime]
GO
ALTER TABLE [dbo].[DetallesRCManga]  WITH CHECK ADD  CONSTRAINT [FK_DetallesRCManga_RegistroCapManga] FOREIGN KEY([IDRegistroCapManga])
REFERENCES [dbo].[RegistroCapManga] ([IDRegistroCapManga])
GO
ALTER TABLE [dbo].[DetallesRCManga] CHECK CONSTRAINT [FK_DetallesRCManga_RegistroCapManga]
GO
ALTER TABLE [dbo].[DetallesRManga]  WITH CHECK ADD  CONSTRAINT [FK_DetallesRManga_RegistroManga] FOREIGN KEY([IDRegistroManga])
REFERENCES [dbo].[RegistroManga] ([IDRegistroManga])
GO
ALTER TABLE [dbo].[DetallesRManga] CHECK CONSTRAINT [FK_DetallesRManga_RegistroManga]
GO
ALTER TABLE [dbo].[Manga]  WITH CHECK ADD  CONSTRAINT [FK_Manga_ForoManga] FOREIGN KEY([IDForoManga])
REFERENCES [dbo].[ForoManga] ([IDForoManga])
GO
ALTER TABLE [dbo].[Manga] CHECK CONSTRAINT [FK_Manga_ForoManga]
GO
ALTER TABLE [dbo].[Manga]  WITH CHECK ADD  CONSTRAINT [FK_Manga_Genero] FOREIGN KEY([IDGenero])
REFERENCES [dbo].[Genero] ([IDGenero])
GO
ALTER TABLE [dbo].[Manga] CHECK CONSTRAINT [FK_Manga_Genero]
GO
ALTER TABLE [dbo].[Manga]  WITH CHECK ADD  CONSTRAINT [FK_Manga_NoticiasManga] FOREIGN KEY([IDNoticiasManga])
REFERENCES [dbo].[NoticiasManga] ([IDNoticiasManga])
GO
ALTER TABLE [dbo].[Manga] CHECK CONSTRAINT [FK_Manga_NoticiasManga]
GO
ALTER TABLE [dbo].[Manga]  WITH CHECK ADD  CONSTRAINT [FK_Manga_RegistroManga] FOREIGN KEY([IDRegistroManga])
REFERENCES [dbo].[RegistroManga] ([IDRegistroManga])
GO
ALTER TABLE [dbo].[Manga] CHECK CONSTRAINT [FK_Manga_RegistroManga]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_NivelAcceso] FOREIGN KEY([IDNivelAcceso])
REFERENCES [dbo].[NivelAcceso] ([IDNivelAcceso])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_NivelAcceso]
GO
USE [master]
GO
ALTER DATABASE [Pagina Web] SET  READ_WRITE 
GO

USE [Pagina Web]
GO

insert into Genero(IDGenero, Nombre)
values (1, 'Accion')

insert into Genero (IDGenero, Nombre)
values (2, 'Aventura')

insert into Genero (IDGenero, Nombre)
values (3, 'Comedia')

insert into Genero (IDGenero, Nombre)
values (4, 'Deportes')

insert into Genero (IDGenero, Nombre)
values (5, 'Carrera')

insert into Genero (IDGenero, Nombre)
values (6, 'Drama')

insert into Genero (IDGenero, Nombre)
values (7, 'Escolar')

insert into Genero (IDGenero, Nombre)
values (8, 'Ecchi')

insert into Genero (IDGenero, Nombre)
values (9, 'Fantasia')

insert into Genero (IDGenero, Nombre)
values (10, 'Ciencia Ficcion')

insert into Genero (IDGenero, Nombre)
values (11, 'Gore')

insert into Genero (IDGenero, Nombre)
values (12, 'Harem')

insert into Genero (IDGenero, Nombre)
values (13, 'Horror')

insert into Genero (IDGenero, Nombre)
values (14, 'Lucha')

insert into Genero (IDGenero, Nombre)
values (15, 'Magia')

insert into Genero (IDGenero, Nombre)
values (16, 'Misterio')

insert into Genero (IDGenero, Nombre)
values (17, 'Musica')

insert into Genero (IDGenero, Nombre)
values (18, 'Parodias')

insert into Genero (IDGenero, Nombre)
values (19, 'Rencuentros de la vida')

insert into Genero (IDGenero, Nombre)
values (20, 'Romance')

insert into Genero (IDGenero, Nombre)
values (21, 'Seinen')

insert into Genero (IDGenero, Nombre)
values (22, 'Shojo')

insert into Genero (IDGenero, Nombre)
values (23, 'Shonen')

insert into Genero (IDGenero, Nombre)
values (24, 'Vampiros')

insert into Genero (IDGenero, Nombre)
values (25, 'Yaoi')

insert into Genero (IDGenero, Nombre)
values (26, 'Yuri')

insert into Genero (IDGenero, Nombre)
values (27, 'Sobrenatural')

insert into Genero (IDGenero, Nombre)
values (28, 'Mecha')

insert into Genero (IDGenero, Nombre)
values (29, 'Psicologico')

insert into Genero (IDGenero, Nombre)
values (30, 'Thriller')


insert into NivelAcceso(IDNivelAcceso, Nombre) Values
('U', 'Usuario'),
('P', 'Premium'),
('A', 'Administrador');


insert into Usuario(IDUsuario, Email, Password, FechaInicio, FechaFinal, IDNivelAcceso) Values
(NEWID(), 'Administrador@hotmail.com', 'admin', '2017-10-29','2017-10-29', 'A'),
(NEWID(), 'chelyup@hotmail.com', 'momokun', '2017-10-29','2017-10-29', 'U'),
(NEWID(), 'momokun@hotmail.com', 'chelyup', '2017-10-29','2017-10-29', 'P'),
(NEWID(), 'laredo@hotmail.com', 'texas', '2017-10-29','2017-10-29', 'U'),
(NEWID(), 'elgalan@hotmail.com', 'musculos','2017-10-29','2017-10-29', 'P'),
(NEWID(), 'Isaias@hotmail.com', 'cienega', '2017-10-29','2017-10-29', 'U'),
(NEWID(), 'lachicapeliroja@hotmail.com', 'darks', '2017-10-29','2017-10-29', 'U'),
(NEWID(), 'jimmy@hotmail.com', 'jorgedavid', '2017-10-29','2017-10-29', 'U'),
(NEWID(), 'elquenosonrie@hotmail.com', 'elgallosdeoro', '2017-10-29','2017-10-29', 'U'),
(NEWID(), 'projectmanager@hotmail.com', 'monteverde', '2017-10-29','2017-10-29', 'U'),
(NEWID(), 'Caballero@hotmail.com', 'delzodiaco', '2017-10-29','2017-10-29', 'U');


insert into RegistroCapAnime(IDRegistroCapAnime, FechaHora, Estatus)
values (1, '2017-10-20', 'Terminado')

insert into RegistroCapAnime(IDRegistroCapAnime, FechaHora, Estatus)
values (2, '2017-10-20', 'Terminado')

insert into RegistroCapAnime(IDRegistroCapAnime, FechaHora, Estatus)
values (3, '2017-10-20', 'Emision')

insert into RegistroCapAnime(IDRegistroCapAnime, FechaHora, Estatus)
values (4, '2017-10-20', 'Terminado')

insert into RegistroCapAnime(IDRegistroCapAnime, FechaHora, Estatus)
values (5, '2017-10-20', 'Terminado')

insert into RegistroCapAnime(IDRegistroCapAnime, FechaHora, Estatus)
values (6, '2017-10-20', 'Emision')

insert into RegistroCapAnime(IDRegistroCapAnime, FechaHora, Estatus)
values (7, '2017-10-20', 'Terminado')

insert into RegistroCapAnime(IDRegistroCapAnime, FechaHora, Estatus)
values (8, '2017-10-20', 'Emision')

insert into RegistroCapAnime(IDRegistroCapAnime, FechaHora, Estatus)
values (9, '2017-10-20', 'Emision')

insert into RegistroCapAnime(IDRegistroCapAnime, FechaHora, Estatus)
values (10, '2017-10-20', 'Terminado')


insert into RegistroCapManga(IDRegistroCapManga, FechaHora, Estatus)
values (1, '2017-10-14', 'Terminado')

insert into RegistroCapManga(IDRegistroCapManga, FechaHora, Estatus)
values (2, '2017-10-14', 'Terminado')

insert into RegistroCapManga(IDRegistroCapManga, FechaHora, Estatus)
values (3, '2017-10-14', 'Emision')

insert into RegistroCapManga(IDRegistroCapManga, FechaHora, Estatus)
values (4, '2017-10-14', 'Terminado')

insert into RegistroCapManga(IDRegistroCapManga, FechaHora, Estatus)
values (5, '2017-10-14', 'Terminado')

insert into RegistroCapManga(IDRegistroCapManga, FechaHora, Estatus)
values (6, '2017-10-14', 'Emision')

insert into RegistroCapManga(IDRegistroCapManga, FechaHora, Estatus)
values (7, '2017-10-14', 'Terminado')

insert into RegistroCapManga(IDRegistroCapManga, FechaHora, Estatus)
values (8, '2017-10-14', 'Emision')

insert into RegistroCapManga(IDRegistroCapManga, FechaHora, Estatus)
values (9, '2017-10-14', 'Emision')

insert into RegistroCapManga(IDRegistroCapManga, FechaHora, Estatus)
values (10, '2017-10-14', 'Terminado')

insert into RegistroCapManga(IDRegistroCapManga, FechaHora, Estatus)
values (11, '2017-10-14', 'Terminado')

insert into RegistroCapManga(IDRegistroCapManga, FechaHora, Estatus)
values (12, '2017-10-14', 'Emision')

insert into RegistroCapManga(IDRegistroCapManga, FechaHora, Estatus)
values (13, '2017-10-14', 'Terminado')

insert into RegistroCapManga(IDRegistroCapManga, FechaHora, Estatus)
values (14, '2017-10-14', 'Emision')



insert into RegistroAnime(IDRegistroAnime, FechaHora, Estatus)
values (1, '2017-10-20', 'Terminado')

insert into RegistroAnime(IDRegistroAnime, FechaHora, Estatus)
values (2, '2017-10-20', 'Inconcluso')

insert into RegistroAnime(IDRegistroAnime, FechaHora, Estatus)
values (3, '2017-10-20', 'Emision')

insert into RegistroAnime(IDRegistroAnime, FechaHora, Estatus)
values (4, '2017-10-20', 'Terminado')

insert into RegistroAnime(IDRegistroAnime, FechaHora, Estatus)
values (5, '2017-10-20', 'Inconcluso')

insert into RegistroAnime(IDRegistroAnime, FechaHora, Estatus)
values (6, '2017-10-20', 'Emision')

insert into RegistroAnime(IDRegistroAnime, FechaHora, Estatus)
values (7, '2017-10-20', 'Terminado')

insert into RegistroAnime(IDRegistroAnime, FechaHora, Estatus)
values (8, '2017-10-20', 'Inconcluso')

insert into RegistroAnime(IDRegistroAnime, FechaHora, Estatus)
values (9, '2017-10-20', 'Emision')

insert into RegistroAnime(IDRegistroAnime, FechaHora, Estatus)
values (10, '2017-10-20', 'Terminado')




insert into RegistroManga(IDRegistroManga, FechaHora, Estatus)
values (1, '2017-10-14', 'Terminado')

insert into RegistroManga(IDRegistroManga, FechaHora, Estatus)
values (2, '2017-10-14', 'Inconcluso')

insert into RegistroManga(IDRegistroManga, FechaHora, Estatus)
values (3, '2017-10-14', 'Emision')

insert into RegistroManga(IDRegistroManga, FechaHora, Estatus)
values (4, '2017-10-14', 'Terminado')

insert into RegistroManga(IDRegistroManga, FechaHora, Estatus)
values (5, '2017-10-14', 'Inconcluso')

insert into RegistroManga(IDRegistroManga, FechaHora, Estatus)
values (6, '2017-10-14', 'Emision')

insert into RegistroManga(IDRegistroManga, FechaHora, Estatus)
values (7, '2017-10-14', 'Terminado')

insert into RegistroManga(IDRegistroManga, FechaHora, Estatus)
values (8, '2017-10-14', 'Inconcluso')

insert into RegistroManga(IDRegistroManga, FechaHora, Estatus)
values (9, '2017-10-14', 'Emision')

insert into RegistroManga(IDRegistroManga, FechaHora, Estatus)
values (10, '2017-10-14', 'Terminado')

insert into RegistroManga(IDRegistroManga, FechaHora, Estatus)
values (11, '2017-10-14', 'Inconcluso')

insert into RegistroManga(IDRegistroManga, FechaHora, Estatus)
values (12, '2017-10-14', 'Emision')

insert into RegistroManga(IDRegistroManga, FechaHora, Estatus)
values (13, '2017-10-14', 'Terminado')

insert into RegistroManga(IDRegistroManga, FechaHora, Estatus)
values (14, '2017-10-14', 'Inconcluso')



insert into DetallesRAnime(IDDetallesRA, Atributos, ValorActual, ValorPasado, IDRegistroAnime)
values 
(Newid(), 'Añadido', 'Finalizado', 'Emision', 1),
(Newid(), 'Eliminado', 'Inconcluso', 'Emision', 2),
(Newid(), 'Modificado', 'Emision', 'Espera', 3),
(Newid(), 'Añadido', 'Finalizado', 'Emision', 4),
(Newid(), 'Eliminado', 'Inconcluso', 'Emision', 5),
(Newid(), 'Modificado', 'Emision', 'Espera', 6),
(Newid(), 'Añadido', 'Finalizado', 'Emision', 7),
(Newid(), 'Eliminado', 'Inconcluso', 'Emision', 8),
(Newid(), 'Modificado', 'Emision', 'Espera', 9),
(Newid(), 'Añadido', 'Finalizado', 'Emision', 10);


insert into DetallesRCAnime(IDDetallesRCAnime, Atributos, ValorActual, ValorPasado, IDRegistroCapAnime)
values 
(Newid(), 'Añadido', 'Finalizado', 'Emision', 1),
(Newid(), 'Añadido', 'Finalizado', 'Emision', 2),
(Newid(), 'Modificado', 'Emision', 'Espera', 3),
(Newid(), 'Añadido', 'Finalizado', 'Emision', 4),
(Newid(), 'Añadido', 'Finalizado', 'Emision', 5),
(Newid(), 'Modificado', 'Emision', 'Espera', 6),
(Newid(), 'Añadido', 'Finalizado', 'Emision', 7),
(Newid(), 'Modificado', 'Emision', 'Emision', 8),
(Newid(), 'Modificado', 'Emision', 'Espera', 9),
(Newid(), 'Añadido', 'Finalizado', 'Emision', 10);


insert into DetallesRManga(IDDetallesRManga, Atributos, ValorActual, ValorPasado, IDRegistroManga)
values 
(Newid(), 'Añadido', 'Finalizado', 'Emision', 1),
(Newid(), 'Eliminado', 'Inconcluso', 'Emision', 2),
(Newid(), 'Modificado', 'Emision', 'Espera', 3),
(Newid(), 'Añadido', 'Finalizado', 'Emision', 4),
(Newid(), 'Eliminado', 'Inconcluso', 'Emision', 5),
(Newid(), 'Modificado', 'Emision', 'Espera', 6),
(Newid(), 'Añadido', 'Finalizado', 'Emision', 7),
(Newid(), 'Eliminado', 'Inconcluso', 'Emision', 8),
(Newid(), 'Modificado', 'Emision', 'Espera', 9),
(Newid(), 'Añadido', 'Finalizado', 'Emision', 10),
(Newid(), 'Eliminado', 'Inconcluso', 'Emision', 11),
(Newid(), 'Modificado', 'Emision', 'Espera', 12),
(Newid(), 'Añadido', 'Finalizado', 'Emision', 13),
(Newid(), 'Eliminado', 'Inconcluso', 'Emision', 14);


insert into DetallesRCManga(IDDetallesRCManga, Atributos, ValorActual, ValorPasado, IDRegistroCapManga)
values 
(Newid(), 'Añadido', 'Finalizado', 'Emision', 1),
(Newid(), 'Añadido', 'Finalizado', 'Emision', 2),
(Newid(), 'Modificado', 'Emision', 'Espera', 3),
(Newid(), 'Añadido', 'Finalizado', 'Emision', 4),
(Newid(), 'Añadido', 'Finalizado', 'Emision', 5),
(Newid(), 'Modificado', 'Emision', 'Espera', 6),
(Newid(), 'Añadido', 'Finalizado', 'Emision', 7),
(Newid(), 'Modificado', 'Emision', 'Emision', 8),
(Newid(), 'Modificado', 'Emision', 'Espera', 9),
(Newid(), 'Añadido', 'Finalizado', 'Emision', 10),
(Newid(), 'Añadido', 'Finalizado', 'Emision', 11),
(Newid(), 'Modificado', 'Emision', 'Espera', 12),
(Newid(), 'Añadido', 'Finalizado', 'Emision', 13),
(Newid(), 'Modificado', 'Emision', 'Emision', 14);


insert into NoticiasAnime(IDNoticiasAnime, Titulo, Autor, Noticia) Values
('1', 'Attack on Titan estrenará su tercera temporada en julio y película recopilatoria en enero', 'HazuSatark', 'La tercer temporada del anime Attack on Titan tenía anunciado su estreno para 2018, pero hoy se ha concretado que este llegará en julio del mencionado año.'),
('2', 'La película de Chuunibyou demo Koi ga Shitai! estrena un tercer teaser', 'HazuStark', 'Desde Kyoto Animation han colgado un tercer teaser de la película de Chuunibyou demo Koi ga Shitai, la cual llevará por nombre Chuunibyou demo Koi ga Shitai! -Take on Me-. '),
('3', 'La película Yo-kai Watch Shadowside: Oni-o no Fukkatsu estrena su segundo tráiler', 'HazuStark', 'La web oficial de la película Yo-kai Watch Shadowside: Oni-o no Fukkatsu, la que será la cuarta película de la franquicia Yo-kai Watch, ha revelado un segundo tráiler.'),
('4', 'DJMAX Respect muestra en vídeo sus canciones colaboración con la franquicia Guilty Gear', 'HazuStark', 'DJMAX Respect muestra en vídeo sus canciones colaboración con la franquicia Guilty Gear'),
(0,'No existe','No existe','No existe');



insert into NoticiasManga(IDNoticiasManga, Titulo, Autor, Noticia) values
(1,'El manga No Game No Life, Desu! llegará a su clímax con su siguiente capítulo','HazuStark','El número de diciembre de la revista Monthly Comic Alive de Kadokawa ha revelado que el manga spinoff No Game No Life, Desu! de Kazuya Yuizaki y Yuu Kamiya alcanzará su “clímax” con el siguiente capítulo, el cual se publicará el 27 de noviembre.'),
(2,'Los mangas de Kirby de Coro Coro Comics cuentan con más de 10 millones de copias en circulación','Shokugeki','Shogakukan ha revelado que los varios mangas de Kirby que publica la Coro Coro Comics ya cuentan con más de 10 millones de copias en circulación.'),
(3,'Mahotsukai to Dragon’s Loft será el nuevo manga de Wataru Karasuma','Shokugeki','El número de diciembre de la revista Monthly Comic Dengeki Daioh de Kadokawa ha revelado que el nuevo manga de Wataru Karasuma (Not Lives) se titulará Mahotsukai to Dragon’s Loft y debutará con un capítulo con página inicial a color en la siguiente entrega de la publicación, a la venta el 27 de noviembre.'),
(0,'No existe','No existe','No existe');



insert into ForoAnime(IDForoAnime, Tema, Autor, Contenido, Comentario ) values
(1, 'NORMAS Y REGLAS DEL FORO.','Admnistrador','Spoiler Alert! Click to show or hide
- Primero les recordare que Crunchyroll es un sitio para mayores de 13 años por lo cual cualquier contenido publicado en los foros debe ser acorde con la calificación PG-13.
- Respetar a los demás usuarios.
Cada usuario de evitar insultar, agredir y menospreciar a otro usuario sea cual sea el caso. Si un usuario falta el respeto a otro reportarlo a un Moderador y no convertirlo un problema personal. 
- Respetar a los moderadores.
Nos reservamos el derecho a editar cualquier tema, Perfil de usuario, Banear a usuarios y cualquier otra acción que sea requerida para llevar la paz y el orden en el foro.
-Buena voluntad.
En Internet se malinterpreta cualquier cosa, Hasta que no se demuestre lo contrario, Darle el beneficio de la duda.
- Evitar crear problemas personales.
Evitar crear problemas con otros usuarios, usuarios que creen problemas se les tomara como una falta.
- Evitar publicar Mensajes Privados en el foro. 
Respetemos la privacidad de los usuarios. Sin un Usuario te molesta a través de los Mensajes Privado REPORTARLO a un moderador.
- Reportar cualquier Problema, Bug o Falla en el site.
Ayudemos a mejorar el site reportando cualquier problema, Bug o Falla que presente, repórtenlo a moderadores o al soporte del site.
- NO anunciar su grupo en el foro. 
Únicamente puede ser anunciado en tu perfil.
- NO publicar enlaces que lleven a sitios como:
.-Pornografía o sitios ilegales.
.-Publicidad o sitios con fines de lucro.
.-Hospedaje de contenido potencialmente ILEGAL. Esto incluye descargas directas y sitios de streaming que tienen videos y música que se han cargado sin el consentimiento de los titulares de derechos de autor.','Aceptado');

insert into ForoAnime(IDForoAnime, Tema, Autor, Contenido, Comentario ) values
(2, '¿Cuál es tu anime favorito?','memokun@hotmail.com','Creó este tema para conocer un poco mas nuestros gustos en anime, y que mejor forma de hacerlo que dar a conocer cuáles son nuestros animes favoritos, pueden poner argumentos para enriquecer el post (sin spoilers, en tal caso de haberlo, usen su respectiva etiqueta).
También pueden dar sus opiniones sobre el anime, de esta manera podrá servir de recomendación para los demás usuarios del foro. 
Claro que para que prevalezca el orden en el tema hay que seguir las reglas, eviten hacer spam, comentarios fuera de lugar o poco constructivos para así mantener el orden y lo mas importante, respeten la opinión de los otros usuarios, recuerden que entre gustos y colores no han escrito los autores.
Cualquier duda, pregunta, inquietud o sugerencia para mejorar el tema, hacerla por mensaje privado a mi persona.','Me gusta, Akame ga Kill');

insert into ForoAnime(IDForoAnime, Tema, Autor, Contenido, Comentario ) values
(3,'[OFICIAL] ¿Qué anime es?','chelyup@hotmail','He visto que se ha vuelto recurrente la búsqueda de animes de los cuales no sabemos el nombre. Puede que sepamos la temática, tengamos alguna imagen, o bien, solamente hayamos olvidado el nombre. En este tema podrás poner los datos que sepas o recuerdes de ese anime y los otros usuarios te ayudarán a dar con él.
Reglas del foro: 
1.- Está prohibido dar enlaces a sitios ilegales.
2.- No publicar o preguntar por hentai, esta es una comunidad con gente de todas las edades.
3.- No dar respuestas falsas a sabiendas que no es el anime al cual se refieren.','Buen post')

insert into ForoAnime(IDForoAnime, Tema, Autor, Contenido, Comentario ) values
(0, 'No existe', 'no existe', 'No existe', 'No existe')



insert into ForoManga(IDForoManga, Tema, Autor, Contenido, Comentario ) values
(1, 'Fairy Tail Discusión Semanal! (Manga)
','laredo@hotmailc.om','Sii se Abre el Tema de Discusión Semanal de esta GRAN serie, Fairy Tail. a pueden Ver en Crunchyroll desde el Siguiente enlace con Subs en Ingles por ahora. http://www.crunchyroll.com/fairy-tail Aquí Hablaremos todo acerca del ANIME de la serie (El que me pongo un spoiler del manga tendrá problemas)  Personajes, Historia, Banda Sonora, todo lo que queramos discutir sobre la Serie 
Nota: Recuerden Cumplir las Normas y Reglas del foro, NO coloquen enlaces a sitios de Descarga Ilegal (Fansubs, Etc) Ni inciten a que lo hagan o su comentario sera eliminado 
','A mi no me gusta'),
(2, 'Manga en físico de Hellsing','chelyup@hotmail.com','A mediados del mes de octubre la Editorial Kamite puso en circulación su primer manga que es Hellsing en Mexico.El manga será lanzado mensualmente y tuve la oportunidad de adquirir el primer volumen y he aquí mi critica.
El formato de la manga es de estilo Tankobon (que me agrada) y cuenta con papel de una calidad aceptable, además la traducción es buena y la calidad de impresion de los dibujos no decepciona. Por lo general el manga cuenta con una buena presentación y el precio es de 80 pesos mexicanos (que son iguales a 6 dólares aproximadamente).
En conclusión, para los paisanos que tengan la oportunidad de adquirir la manga pues háganlo ya que con esto la industria puede expandirse más.','Yo quiero uno'),
(3, 'El Regreso del Manga a México [Información | Nuevos Lanzamientos]','loredo@hotmail.com','Como muchos saben tanto Editorial Panini como Editorial Kamite volvieron a publicar manga en México después de que Editorial VID quebrara.

Actualmente los mangas de Editorial Panini cuestan $69 y los mangas de Editorial Kamite van desde los $80 hasta los $95

La diferencia entre ambas editoriales es que Kamite respeta los cubre polvos y las hojas a color, también añadir que las hojas de Kamite son mas blancas y de mejor calidad (por eso su precio mas elevado)

Mientras tanto Panini apuesta por productos mas económicos que mas gente se pueda permitir comprar, sus mangas vienen sin cubre polvos y sin hojas a color, sus hojas son un poco mas opacas y de menos calidad que las de Kamite.

*Actualmente Panini esta viendo la posibilidad de incluir hojas a color ya que mucha gente las pide, pero no se sabe nada todavía.*

-Mangas que publica Panini-

Naruto
Fairy Tail
Vampire Knight
I am a Hero
Maid Sama
Defense Devil
Ataque de los Titanes
Ouran High School Host Club
Berserk
Saint Seiya The Lost Canvas
Bakuman
20th Century Boys
One Piece
Dragon Ball
Bleach
Alice 19th


-Mangas que ya termino de publicar Panini-

High School of the Dead
Sword Art Online Aincrad 

-Mangas que próximamente sacara Panini-

Sword Art Online Fairy Dance
Psychic Detective Yakumo

-Mangas que publica Kamite-

Saint Seiya Episodio G
Deadman Wonderland
Mirai Nikki
Kings Game

-Mangas que ya termino de publicar Kamite-

Hellsing
Hoshi Mamoru Inu

-Mangas que próximamente sacara Kamite-

Godeath




NOTA: Hasta el momento esta es toda la información que se tiene de los nuevos títulos a lanzar, en cuanto haya mas noticias sobre mas lanzamientos las pondré aquí.
','Perfecto, lo que esperaba'),
(0, 'No existe', 'no existe', 'No existe', 'No existe');

insert into Anime (IDAnime, Nombre, Estado, Descarga, Descripcion, IDGenero, IDRegistroAnime, IDForoAnime, IDNoticiasAnime)
values (1, 'Made In Abyss', 'Terminado', 'http://jkanime.net/made-in-abyss/', 'En esta obra, un enorme sistema de cuevas llamado el “Abismo” es el único lugar inexplorado del mundo. 
Extrañas y poderosas criaturas residen en sus profundidades, junto a preciadas reliquias que los humanos son incapaces de producir. 
Los misterios del Abismo fascinan a los humanos y estos bajan a sus profundidades. 
Los aventureros que se adentran en él son conocidos como “Cave Raiders”. 
Una joven huérfana llamada Rico vive en el pueblo de Osu en el filo del Abismo. 
Su sueño es convertirse en una “Cave Raider”, como su madre, y solventar los misterios del sistema de cuevas. 
Un día, Rico comienza a explorar las cuevas y descubre un robot con aspecto de un chico humano', '2', '1', '0', '0'),
(2, 'INUYASHIKI', 'Emision', 'http://jkanime.net/inuyashiki/', 'Ichirou Inuyashiki es un asalariado aburrido que ya está alcanzando una edad vieja. Él pasa sus días alienado en el trabajo y en la casa, pero un día él es diagnosticado con cáncer y cae en la desesperación. Allí es cuando por accidente, él recibe poderes de super-heroes.
También un estudiante de preparatoria, Hiro Shishigami, quien también estaba en el accidente y comienza a usar los poderes que recibió.
¿Es la naturaleza humana buena o mala? Estos dos han ganado grandes poderes que se mueven de acuerdo a los deseos y sentimientos de cada uno.', '1', '6', '0', '0'),
(3, 'Another', 'Terminado', 'http://jkanime.net/another/', 'La historia se centra en una clase maldita y en los hilos del destino que llevan a todos los alumnos y alumnas de la misma hasta a la muerte. Hacía 26 años iba a esa clase una chica llamada Misaki. Buena deportista, popular, caía bien a todo el mundo, las mejores notas… pero un día murió dejando un vacío enorme en sus compañeros de clases. Estos, decididos a no olvidarla, siguieron actuando como si Misaki siguiera viva hasta la graduación. 
Años después, en primavera de 1998, un chico llamado Koichi Sakakibara es transferido a esa clase para no tardar en darse cuenta de 
que hay algo raro ahí, especialmente con esa tal Misaki que siempre ve al fondo de clase dibujando sola y que lleva un parche.', '11', '4', '0', '0'),
(4, 'NEON GENESIS EVANGELION', 'Terminado', 'http://jkanime.net/evangelion/', 'Según cuentan los libros de historia, el 13 de Septiembre del 2000, un enorme meteorito chocó contra la Antártida, causando el derretimiento del Polo Sur y la consecuente inundación y destrucción de todas las ciudades costeras. 
A este evento crucial se lo denomino Segundo Impacto -El primero fue el que destruyó a los dinosaurios-. La Tierra atravesó luego de ello un estado de crisis y catástrofes naturales y más de mitad de la población humana murió. 
Han pasado 15 años desde el Segundo Impacto cuando Tokyo-3, es atacada por un misterioso ser orgánico gigante, sin embargo esto no parece ser una sorpresa para un selecto grupo de gente de una organización de la ONU llamada NERV. 
Ellos se refieren al enemigo como "Tercer Ángel" y han desarrollado unos enigmáticos robots gigantes llamados EVA con una particularidad, solo pueden ser piloteados por jóvenes de 14 años con caracteristicas no del todo claras.', '28', '10', '0', '0'),
(5, 'One Piece', 'Emision', 'http://jkanime.net/one-piece/', 'Una historia épica de piratas, donde narra la historia de "Monkey D. Luffy" quien cuando tenia 7 años, comió accidentalmente una "Akuma no mi"(Fruta del diablo) la cual le convirtió en un hombre de goma. Por otra parte "Gol D. Roger" conocido como "El rey de los Piratas" quien fuera ejecutado por la Marine, habló antes de morir, acerca de su mayor tesoro,el "One Piece" escondido en la "Gran line". Esta noticia desató la gran era de los piratas lanzando a incontables piratas a ese lugar, en busca del "One Piece" el tesoro perdido. Diez años después, Luffy inspirado en "Gol D. Roger" y un pirata de nombre Akagami no Shanks (Shanks el pelirrojo) se convierte en pirata deseando ser el próximo "Rey de los Piratas" y zarpar para conocer amigos y tener aventuras con ellos, teniendo como meta encontrar el "One Piece".', '2', '4', '0', '0'),
(6, 'Sword Art Online', 'Terminado', 'http://jkanime.net/sword-art-online/', 'Escapar es imposible hasta terminar el juego; un game over significaría una verdadera "muerte". Sin saber la "verdad" de la siguiente generación del Multijugador Masivo Online, Sword Art Online(SAO), con 10 mil usuarios unidos juntos abriendo las cortinas para esta cruel batalla a muerte. Participando solo en SAO, el protagonista Kirito ha aceptado inmediatamente la "verdad" de este MMO. Y, en el mundo del juego, un gigante castillo flotante llamado Aincrad, Kirito se distinguió a si mismo como un jugador solitario. Apuntando a terminar el juego al alcanzar la planta mas alta el solo continua avanzando arriesgadamente hasta que recibe una invitación a la fuerza de una guerrera y esgrimista experta, Asuna, con la cual tendra que hacer equipo.', '3', '4', '0', '0'),
(7, 'Dragon Ball Super', 'Emision', 'http://jkanime.net/dragon-ball-super/', 'La serie se desarrollara en la tierra, tiempo después de la lucha terrible contra Majin Buu. Por órdenes de Milk, Goku trabaja fuertemente todos los días en la agricultura. Sin embargo también tiene algunos momentos para entrenar. Por otra parte, Mr Satan, luego de haber salvado al planeta por segunda vez recibe el ¡¿Premio Mundial de la Paz?!', '3', '5', '0', '0'),
(8, 'Mirai nikki', 'Terminado', 'http://jkanime.net/mirai-nikki/', 'Amano Yukiteru es un estudiante de 2º de secundaria, que tiene problemas para hacer amigos. Él se ve a sí mismo como un espectador de su propia vida, y siempre anota lo que ve en el diario de su teléfono móvil. Atormentado por la soledad, Yukiteru comienza a imaginarse amigos como Deus Ex Machina, quien parece ser el Dios del tiempo y el espacio, y Muru Muru, la sirviente de Deus. Al ver el estado miserable de Yukiteru, Deus le da una nueva habilidad a Yukiteru. Su diario ahora registrará los acontecimientos que ocurrirán en un futuro cercano. De esta manera, Yukiteru se ve obligado a participar en un juego de supervivencia, cuyo ganador se convertirá en el sucesor de Deus.', '27', '3', '0', '0'),
(9, 'Death Note', 'Terminado', 'http://jkanime.net/death-note/', 'Light Yagami es un excelente estudiante japonés que ha tenido una vida un tanto aburrida. Esto cambia radicalmente cuando encuentra tirado en el patio de la escuela un cuaderno negro conocido como Death Note (Libreta de la Muerte), perdido por un Shinigami (Dios de la muerte) llamado Ryuk. Cualquier humano cuyo nombre sea escrito en dicho cuaderno morirá; y, Light -luego de leer las instrucciones en el mismo- ha decidido utilizar este poder para crear un mundo sin criminales, "perfecto" según su visión. Cuando los criminales comienzan a morir de forma masiva y generalmente víctimas de ataque cardíaco, las autoridades envían al legendario detective L en busca del asesino. Con L pisándole los talones: podra mantener Light su propósito incluso arriesgando su vida.', '29', '7', '0', '0'),
(10, 'One Punch Man', 'Terminado', 'http://jkanime.net/one-punch-man/', 'La serie está protagonizada por un héroe que ha entrenado tanto que se ha quedado calvo, y tiene tanta fuerza que puede acabar con cualquier enemigo de un solo puñetazo. Sin embargo, al ser tan fuerte, se aburre y se frustra porque no le cuesta nada vencer sus batallas', '18', '9', '0', '0');


insert into CapituloAnime(IDCapituloAnime, Nombre, URL, Descripcion, Temporada, NumeroCap, Duracion, IDRegistroCapAnime, IDNivelAcesso, IDAnime) values
(NEWID(),'Another-1','http://jkanime.net/another/1/','Da comienzo de la historia de Koichi Sakakibara y Misaki','1', 1, 24, '2','U',3),
(NEWID(),'One punch man-1','http://jkanime.net/one-punch-man/1/','El hombre mas fuerte de todo el mundo','1', 1, 24, '4','U',10),
(NEWID(),'inuyashiki-1','http://jkanime.net/inuyashiki/1/','Cuenta la vida de un chico de preparatoria hasta que...','1', 1, 24, '3','U',2),
(NEWID(),'Made in abyss-1','http://jkanime.net/made-in-abyss/1/','Los cave raiders','1', 1, 24, '5','U',1),
(NEWID(),'One piece-1','http://jkanime.net/one-piece/1/','El inicio del rey pirata','1', 1, 24, '5','U',5),
(NEWID(),'Mirai nikki-1','http://jkanime.net/mirai-nikki/1/','La reunion...','1', 1, 23, '6','U',8),
(NEWID(),'evangelion-1','http://jkanime.net/evangelion/1/','Los angeles caidos','1', 1, 24, '4','U',4),
(NEWID(),'Death Note-1','http://jkanime.net/death-note/1/','La libreta maldita','1', 1, 23, '2','U',9),
(NEWID(),'El mundo de las espadas','http://jkanime.net/sword-art-online/1/','El comienzo del caballero negro','1', 1, 23, '8','U',6),
(NEWID(),'Dragon Ball Super-1','http://jkanime.net/dragon-ball-super/1/','La nueva vida de los guerreros','1', 1, 22, '7','U',7);

insert into Manga(IDManga, Nombre, Estado, Descarga, Descripcion, IDGenero, IDRegistroManga, IDForoManga, IDNoticiasManga) values
(1, 'Made In Abyss','Terminado','http://es.ninemanga.com/manga/Made+in+Abyss.html','El enorme sistema de cuevas, conocido como El Abismo, es el último lugar inexplorado en el mundo. Nadie sabe que tan profundo es este agujero titánico, habitado por extrañas y maravillosas criaturas y lleno de misterio y reliquias antiguas de propósito desconocido para la humanidad. Generaciones de valientes aventureros han sido atraídos a las profundidades cripticas del Abismo. Con el paso del tiempo estos exploradores son conocidos como "Exploradores de las Profundidades". En Oath, el pueblo al borde del Abismo, vive una pequeña niña huérfana llamada Riko, que sueña con convertirse en una gran exploradora como su madre y descubrir los misterios del Abismo. Un día explorando las obscuras profundidades se encuentra con un niño, que resulta ser un robot...', '2', '1','0' ,'0'),
(2, 'Rabbit Doubt','Terminado','http://submanga.com/Doubt/completa','Esta serie gira en torno a un juego para móviles llamado "Rabbit Doubt". Los jugadores son conejos en una colonia y uno de ellos escogido al azar es en realidad un lobo disfrazado de conejo para actuar infiltrado en el grupo. Cada ronda los conejos tratan de adivinar quien es el lobo mientas éste se va comiendo a los conejos uno por uno. El jugador que adivine quien es el lobo gana pero si nadie acierta entonces es el lobo el vencedor.
Nuestra historia comienza cuando un grupo de amigos "online" (conocidos por jugar a este juego) hacen una quedada para conocerse realmente y relajarse cantando en un karaoke. De los cinco jugadores sólo acuden 4 (el quinto no iba a ir) y además se une la amiga de la infancia de uno de estos 4 jugadores. Mientras están en el karaoke alguien los anestesia y los secuestra llevándolos a un hospital psiquiátrico abandonado. Al poco de despertar se dan cuenta que cada uno de ellos tiene un código de barras oculto en su cuerpo que parece ser que cada uno abre una sola puerta. Allí descubrirán al quinto jugador que al parecer también fue secuestrado y se les anunciará una terrible pero emocionante noticia. Están metido en el juego de "Rabbit Doubt" donde uno de ellos es el lobo y mientras que no lo descubran y lo maten éste irá asesinando uno por uno a los diferentes "conejos" allí reunidos. Al principio ninguno se lo cree, pero cuando ven el cuerpo crucificado de uno de los 5 se dan cuenta de una realidad. EL JUEGO HA EMPEZADO!', '30', '11','0' ,'0' ),
(3, 'Another','Terminado','http://es.ninemanga.com/manga/Another.html',' En 1972, había cierto estudiante llamado Misaki en la escuela Yomiyama, en la clase 3-3. Misaki era muy popular entre sus compañeros, y también los maestros tenían afecto por este, así que cuando murió repentinamente a causa de un incendio, la clase 3-3 decidió continuar a...  En 1972, había cierto estudiante llamado Misaki en la escuela Yomiyama, en la clase 3-3. Misaki era muy popular entre sus compañeros, y también los maestros tenían afecto por este, así que cuando murió repentinamente a causa de un incendio, la clase 3-3 decidió continuar actuando como si estuviese vivo. Sin embargo, cuando fueron a tomar la foto de la graduación había un miembro de más en ella, en la imagen vieron a alguien que no debería estar ahí - "Misaki". En la primavera de 1998, noveno año del estudiante Kōichi Sakakibara, se traslada de Tokio a Yomiyama, la ciudad natal de su madre, porque su padre había ido a trabajar en una investigacion de la India. Su traslado fue a la escuela Yomiyama a la clase 3-3. A causa de un neumotórax Kōichi tuvo que ser hospitalizado justo cuando comenzaron las clases. Durante su hospitalización los representantes de la clase: Tomohiko Kazami y Yukari Sakuragi le hicieron una visita. Antes de recibir el alta, Kōichi conoce a una chica en el ascensor, la cual lleva el mismo uniforme de su escuela y un parche en el ojo izquierdo. Ella va al sótano del hospital donde está ubicada la morgue, diciendo que tiene que entregar algo a su "otra mitad". Su nombre: Mei Misaki. Kōichi finalmente llega a asistir a las clases y trata de adaptarse, pero no puede dejar de notar el extraño comportamiento de sus compañeros. Mei, la chica que conoció en el hospital pertenece a la misma clase, pero la mesa que utiliza es bastante más vieja y diferente al del resto la clase. Ella siempre está sola y nadie parece preocuparse por su presencia o tratar de hablar con ella. Inicialmente, Kōichi cree que es un caso de acoso escolar, pero se da cuenta de que incluso los empleados y profesores de la escuela actúan de la misma manera. El ambiente algo aterrador en su nueva clase, parece tener un oscuro secreto que ninguno de sus compañeros de clase quiere hablar. En el centro de esto parece encontrarse la misteriosa Mei Misaki. Pronto empezarian a ocurrir muertes inexplicables en la clase 3-3, como la muerte de sus compañeros de clases, Sakuragi Yukari y Takabayashi Ikuo, o de personas relacionadas a la misma, como su enfermera (hermana de un alumno de la clase) y su profesor que se suicida.', '11', '4','0' , '0'),
(4, 'NEON GENESIS EVANGELION','Terminado','http://absorbiendomangas.blogspot.mx/2015/06/neon-genesis-evangelion.html','Evangelion nos cuenta la historia de Shinji Ikari. En muchos sentidos y significados,Shinji es un fracaso como ser humano: Torpe socialmente, abandonado por un padre del que busca continuamente la aprobación, incapaz de tener una iniciativa propia... Probablemente sea uno de los personajes protagonistas más fácilmente odiables del anime... aunque también es uno de los más perdurables.
Shinji vive en un mundo que ha sido asolado quince años atrás por un terrible cataclismo llamado el Segundo Impacto, que redujo la población humana a la mitad y que se produjo tras contactar por primera vez con unos misteriosos series denominados ángeles. Tras lo ocurrido, la ONU formó una organización denominada NERV que se encarga de la protección de la Tierra.','28' , '10', '0','0' ),
(5, 'Corpse Party','Terminado','http://es.ninemanga.com/manga/Corpse%20Party%3B%20Another%20Child.html','Los estudiantes de un pequeño pueblo se dirigían a diferentes direcciones en la vida. Para Minase Tamaki, que se alojaba en la ciudad para encontrar un trabajo, puede ser que sea la última vez que ella vea a su amor platónico Shindo Yumma, que se está mudando a una nueva ciudad para asistir a una nueva escuela. Ella le pide que haga una oración que se supone que ayudara a que las personas se crucen nuevamente, incluso en caso de una separación. Pero su compañera de clase, Yuzuki Erina, oye por casualidad la conversación y, por celos, decide arruinar sus planes, invitando a toda la clase para participar en lo que se suponía que era un hechizo. Tan pronto como terminaron el hechizo, la tierra se dividió por la mitad, tragando a toda la clase, cuando se despiertan, se encuentran en una antigua escuela. Incapaces de encontrar una salida, y vagan por los pasillos, tratando de averiguar en donde se encuentran. Pero parece que el edificio no esta tan abandonado como ellos pensaban, y algo está asechando en las sombras.', '11', '13','0', '0'),
(6, 'Sword Art Online','Terminado','http://www3.mangafreak.net/Read1_Sword_Art_Online_1','Escapar es imposible hasta terminar el juego; un game over significaría una verdadera "muerte". Sin saber la "verdad" de la siguiente generación del Multijugador Masivo Online, Sword Art Online(SAO), con 10 mil usuarios unidos juntos abriendo las cortinas para esta cruel batalla a muerte. Participando solo en SAO, el protagonista Kirito ha aceptado inmediatamente la "verdad" de este MMO. Y, en el mundo del juego, un gigante castillo flotante llamado Aincrad, Kirito se distinguió a si mismo como un jugador solitario. Apuntando a terminar el juego al alcanzar la planta mas alta el solo continua avanzando arriesgadamente hasta que recibe una invitación a la fuerza de una guerrera y esgrimista experta, Asuna, con la cual tendra que hacer equipo.', '3', '4', '0', '0'),
(7, 'Dragon Ball Super','Emision','http://es.ninemanga.com/manga/Dragon%20Ball%20Super.html',' Nueva historia de Dragon Ball después de lo sucedido con Majin Buu', '3', '6', '0','0' ),
(8, 'Mirai nikki','Terminado','http://es.ninemanga.com/manga/Mirai%20Nikki.html','Amano Yukiteru es un chico solitario que gasta todo su tiempo escribiendo un diario en su teléfono móvil desde el punto de vista de un espectador y hablando con su "amigo imaginario", Deus Ex Machina, el dios del Tiempo y el Espacio. Un día, Deus, resulta no ser solo...  Amano Yukiteru es un chico solitario que gasta todo su tiempo escribiendo un diario en su teléfono móvil desde el punto de vista de un espectador y hablando con su "amigo imaginario", Deus Ex Machina, el dios del Tiempo y el Espacio. Un día, Deus, resulta no ser solo un amigo imaginario sino un dios que no solo Amano Yukiteru podía ver y escuchar, también otras 11 personas; este dios crea un juego de supervivencia, en el cual le ha dado un diario a cada uno de estas personas que predicen el futuro. Las reglas del juego son simples, los 12 dueños de los diarios deben matarse entre ellos y el último que sobreviva se convertirá en el nuevo sucesor de este. ', '27', '3','0' ,'0' ),
(9, 'Death Note','Emision','http://es.ninemanga.com/manga/Death%20Note.html','La historia es protagonizada por Light Yagami, uno de los estudiantes más sobresalientes de Japón que deseaba acabar con todos los criminales que lo rodeaban. Un día, su vida sufre un cambio radical, cuando encuentra un extraño cuaderno sobrenatural llamado «Death Note», te...  La historia es protagonizada por Light Yagami, uno de los estudiantes más sobresalientes de Japón que deseaba acabar con todos los criminales que lo rodeaban. Un día, su vida sufre un cambio radical, cuando encuentra un extraño cuaderno sobrenatural llamado «Death Note», tendido en el suelo. Detrás de dicho cuaderno habían instrucciones sobre su uso, donde decía que si se escribía el nombre de una persona y se visualizaba mentalmente el rostro de ésta, moriría de un ataque al corazón. Al principio, Light desconfiaba de la autenticidad del cuaderno, pero luego de probarlo en dos ocasiones, se da cuenta que su poder era real. Después de cinco días, recibe la visita del verdadero dueño del Death Note, un shinigami llamado Ryuk, que le cuenta que había dejado caer el Death Note a la Tierra porque se encontraba aburrido, y a su vez Light le cuenta que su objetivo era matar a todos los criminales, para así limpiar al mundo de la maldad y convertirse en el «dios del nuevo mundo». Más tarde, el número inexplicable de muertes de criminales llama la atención del FBI y la de un famoso detective privado conocido como «L». L deduce rápidamente que el asesino en serie —apodado por el público como «Kira» (キラ, «Kira»? derivado de la típica pronunciación japonesa de la palabra inglesa «killer», lit. «asesino»)— se encontraba en Japón. Asimismo, se da cuenta que Kira podía matar a las personas sin necesidad de poner un dedo sobre ellas. Light descubre que L será uno de sus mayores rivales, y se producirá un juego psicológico entre ambos', '29', '7', '0','0' ),
(10, 'One Punch Man','Emision','https://inmanga.com/ver/manga/One-Punch-Man/030de05e-ef8f-4cfe-a349-89b4599f6bf5','La historia tiene lugar en una metrópolis ficticia conocida como Ciudad Z, en Japón. El mundo se ve invadido por extraños monstruos que aparecen misteriosamente y que causan numerosos desastres a la población. Saitama es un poderoso superhéroe calvo que derrota fácilmente a los monstruos u otros villanos con un único golpe de su puño. Debido a esto, Saitama ha encontrado aburrida su fuerza y siempre está tratando de encontrar rivales más poderosos que le puedan igualar.', '18', '9','0' ,'0' );


insert into CapituloManga(IDCapituloManga, Nombre, URL, Descripcion, Temporada, NumeroCap, IDRegistroCapManga, IDNivelAcceso, IDManga) values
(NEWID(),'Another-1','http://es.ninemanga.com/chapter/Another/198057.html', 'Da comienzo de la historia de Koichi Sakakibara y Misaki','1', 1,'2','U',3),
(NEWID(),'One punch man-1','https://inmanga.com/ver/manga/One-Punch-Man/1/8dcb38ab-2677-4e39-844f-2ac891e607be','El hombre mas fuerte de todo el mundo','1', 1,'4','U',10),
(NEWID(),'Rabbit Doubt-1','http://submanga.com/Doubt/1/22948','Cuenta la vida de un chico de preparatoria hasta que...','1', 1,'3','U',2),
(NEWID(),'Made in abyss-1','http://es.ninemanga.com/chapter/Made%20in%20Abyss/581701.html','Los cave raiders','1', 1,'5','U',1),
(NEWID(),'Corpse Party','http://es.ninemanga.com/chapter/Corpse%20Party%3B%20Another%20Child/398349.html','Los estudiantes de un pequeño pueblo se dirigían a diferentes direcciones en la vida. Para Minase Tamaki, que se alojaba en la ciudad para encontrar un trabajo, puede ser que sea la última vez que ella vea a su amor platónico Shindo Yumma...','1', 1, '5','U',5),
(NEWID(),'Mirai nikki-1','http://es.ninemanga.com/chapter/Mirai%20Nikki/403607.html','La reunion...','1', 1, '6','U',8),
(NEWID(),'evangelion-1','http://www.mediafire.com/file/q5v88ps93vjdfo5/NGE+Vol.+1+-+Absorbiendo+Libros.pdf','Los angeles caidos','1', 1,'4','U',4),
(NEWID(),'Death Note-1','http://es.ninemanga.com/chapter/Death%20Note/272659.html','La libreta maldita','1', 1, '2','U',9),
(NEWID(),'El mundo de las espadas','http://jkanime.net/sword-art-online/1/','El comienzo del caballero negro','1', 1, '8','U',6),
(NEWID(),'Dragon Ball Super-1','http://es.ninemanga.com/chapter/Dragon%20Ball%20Super/382402.html','La nueva vida de los guerreros','1', 1,'7','U',7);


select Genero.Nombre
from Genero
group by Genero.Nombre
order by Genero.Nombre desc

select COUNT(CapituloManga.Temporada) as 'Cantidad de Mangas', SUM(CapituloManga.NumeroCap) as 'Suma de las temporadas', MAX(CapituloManga.NumeroCap) as 'Anime con mayor numero de capitulos'
from CapituloManga
group by CapituloManga.NumeroCap

select AVG(CapituloAnime.Duracion) as 'Suma de tiempo' , COUNT(CapituloAnime.Duracion) as 'Cantidad de capitulos', AVG(CapituloAnime.Duracion) as 'Promedio entre capitulos'
from CapituloAnime
where Duracion >= 23

Select COUNT(CapituloAnime.NumeroCap) as 'Cantidad de animes con menos de 100 cap', COUNT(CapituloAnime.Temporada)  as 'Cantidad de temporadas', MAX(CapituloAnime.Duracion) as 'capitulo mas largo'
from CapituloAnime
group by CapituloAnime.NumeroCap
having CapituloAnime.NumeroCap < 100

select top 3 Genero.Nombre
from Genero
group by Genero.Nombre
order by Genero.Nombre desc




create view VerAnimes
as
select Anime.Nombre, CapituloAnime.IDAnime
from Anime
INNER JOIN CapituloAnime on Anime.IDAnime = CapituloAnime.IDAnime

select * from VerAnimes

create view IDSMangas
as select TOP 10 Manga.IDManga, CapituloManga.Nombre
from Manga
RIGHT JOIN CapituloManga on Manga.IDManga = CapituloManga.IDManga
ORDER BY Manga.Nombre;

select * from IDSMangas

create view FIDS
as
select AVG(Anime.IDAnime) as 'prom. de animes' , AVG(Manga.IDManga) as 'prom. de Manga', AVG(Genero.IDGenero) as 'prom. de generos'
FROM Anime
left join Manga on Anime.IDAnime = Manga.IDManga
inner join Genero on Manga.IDManga = Genero.IDGenero

select * from FIDS 

Create view Gen
as
select Genero.IDGenero, Anime.IDAnime, Manga.Descripcion
from Genero
right join Anime on Anime.IDGenero = Genero.IDGenero
right join Manga on Manga.IDGenero = Anime.IDGenero

select * from Gen

create view Descargas
as
select Anime.Descarga, Genero.Nombre, Manga.Estado, Manga.IDManga
From Anime
inner join Manga on Anime.IDAnime = Manga.IDManga
inner join Genero on Manga.IDGenero = Genero.IDGenero

select * from Descargas

select *
from(
select *
from CapituloAnime
where NumeroCap >= 1
)as Parentesis
where Parentesis.Nombre <> 'Another-1'


with WithTemp as (
select Genero.Nombre as 'Genero', Anime.Nombre, CapituloAnime.IDAnime
from Anime, Genero, CapituloAnime
where Genero.IDGenero = Anime.IDGenero and Anime.IDAnime = CapituloAnime.IDAnime
)
select *
from WithTemp
where WithTemp.Genero = 'AVENTURA'


select Genero.Nombre as 'Genero', Manga.Nombre as 'Manga'
into #temp
from genero, Manga
where Genero.IDGenero = Manga.IDGenero

select *
from #temp





create Procedure ReporteAnime(@valor int)
as 
begin 
select * 
from dbo.VerAnimes
where IDAnime >4
end

exec ReporteAnime 4


create Procedure ReporteManga(@valor int)
as 
begin 
select * 
from dbo.IDSMangas
where IDManga > 2
end

exec ReporteManga 1


create Procedure ReporteFIDS(@valor int)
as 
begin 
select * 
from dbo.FIDS
where [prom. de generos] > 4
end

exec ReporteManga 1


create Procedure ReporteGenDes(@valor int)
as 
begin 
select * 
from dbo.Gen
where IDAnime <> 5 and IDGenero > 3
end

exec ReporteGenDes 6


create Procedure ReporteDescargas(@valor int)
as 
begin 
select * 
from dbo.Descargas
where IDManga <> 5 and IDManga <> 3 and IDManga <> 7
end

exec ReporteDescargas 8


create function PromedioDeCap(@Numero int, @Numero2 int, @Numero3 int, @Numero4 int)
returns float 
as
begin
	return (@Numero + @Numero2 + @Numero3 + @Numero4)/4   
	end

select dbo.PromedioDeCap(5,9,7,6) as 'suma de 4 capitulos'


create trigger DisparadorAnime
on Anime
after update 
as
begin
select * 
from inserted
end

update Anime
set Anime.Nombre = '99'
from Anime
where Anime.Nombre = 'Death Note'

create trigger DisparadorManga
on Manga
instead of update 
as 
IF UPDATE (Nombre)
	begin
		select * 
		from inserted
	end
else 
	begin
		select * 
		from Manga
end

update Manga
set Nombre = '99'
from Manga
where Nombre = 'Death Note'
