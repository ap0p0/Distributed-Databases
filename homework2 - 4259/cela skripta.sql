USE [master]
GO
/****** Object:  Database [Karavan_4259]    Script Date: 10/28/2020 4:43:33 AM ******/
CREATE DATABASE [Karavan_4259]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Karavan_4259', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Karavan_4259.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Karavan_4259_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Karavan_4259_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Karavan_4259] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Karavan_4259].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Karavan_4259] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Karavan_4259] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Karavan_4259] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Karavan_4259] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Karavan_4259] SET ARITHABORT OFF 
GO
ALTER DATABASE [Karavan_4259] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Karavan_4259] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Karavan_4259] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Karavan_4259] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Karavan_4259] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Karavan_4259] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Karavan_4259] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Karavan_4259] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Karavan_4259] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Karavan_4259] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Karavan_4259] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Karavan_4259] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Karavan_4259] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Karavan_4259] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Karavan_4259] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Karavan_4259] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Karavan_4259] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Karavan_4259] SET RECOVERY FULL 
GO
ALTER DATABASE [Karavan_4259] SET  MULTI_USER 
GO
ALTER DATABASE [Karavan_4259] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Karavan_4259] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Karavan_4259] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Karavan_4259] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Karavan_4259] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Karavan_4259', N'ON'
GO
ALTER DATABASE [Karavan_4259] SET QUERY_STORE = OFF
GO
USE [Karavan_4259]
GO
/****** Object:  Table [dbo].[email]    Script Date: 10/28/2020 4:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email](
	[id_posetitel] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[ime] [nvarchar](50) NULL,
	[mail] [nvarchar](50) NULL,
 CONSTRAINT [PK_posetitel] PRIMARY KEY CLUSTERED 
(
	[id_posetitel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[email_grupa]    Script Date: 10/28/2020 4:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email_grupa](
	[id_grupa] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[jazik_id_jazikm] [numeric](18, 0) NULL,
	[naziv] [nvarchar](50) NULL,
	[aktivna] [numeric](18, 0) NULL,
 CONSTRAINT [PK_grupa] PRIMARY KEY CLUSTERED 
(
	[id_grupa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[email_poraka]    Script Date: 10/28/2020 4:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email_poraka](
	[id_poraka] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[grupa_id_grupa] [numeric](18, 0) NULL,
	[datum] [datetime] NULL,
	[naslov] [nvarchar](50) NULL,
	[tekst] [nvarchar](500) NULL,
 CONSTRAINT [PK_poraka] PRIMARY KEY CLUSTERED 
(
	[id_poraka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[galerija]    Script Date: 10/28/2020 4:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[galerija](
	[id_galerija] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[preview] [numeric](18, 0) NULL,
 CONSTRAINT [PK_galerija] PRIMARY KEY CLUSTERED 
(
	[id_galerija] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[galerija_opis]    Script Date: 10/28/2020 4:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[galerija_opis](
	[gal_id_galerija] [numeric](18, 0) NULL,
	[jazik_id_jazikg] [numeric](18, 0) NULL,
	[naslov] [nvarchar](50) NULL,
	[opis] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[galerija_slika]    Script Date: 10/28/2020 4:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[galerija_slika](
	[id_slika] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[gal_id_galerijas] [numeric](18, 0) NULL,
	[opisslika] [nvarchar](300) NULL,
	[slika] [nvarchar](50) NULL,
	[opisslikaeng] [nvarchar](300) NULL,
 CONSTRAINT [PK_slika] PRIMARY KEY CLUSTERED 
(
	[id_slika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jazik]    Script Date: 10/28/2020 4:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jazik](
	[id_jazik] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[jazik] [nvarchar](50) NULL,
 CONSTRAINT [PK_jazik] PRIMARY KEY CLUSTERED 
(
	[id_jazik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kadministrator]    Script Date: 10/28/2020 4:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kadministrator](
	[id_admin] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[ime] [nvarchar](50) NULL,
	[telefon] [nvarchar](50) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[id_admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kdokument]    Script Date: 10/28/2020 4:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kdokument](
	[id_dokument] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[naslov] [nvarchar](50) NULL,
	[jazik_id_jazikd] [numeric](18, 0) NULL,
	[dokument] [nvarchar](50) NULL,
	[prikaz] [numeric](18, 0) NULL,
 CONSTRAINT [PK_dokument] PRIMARY KEY CLUSTERED 
(
	[id_dokument] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[knovost]    Script Date: 10/28/2020 4:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[knovost](
	[id_novost] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[adm_id_adminn] [numeric](18, 0) NULL,
	[naslov] [nvarchar](50) NULL,
	[opis] [nvarchar](1500) NULL,
	[datum_od] [datetime] NULL,
	[datum_do] [datetime] NULL,
	[jazik_id_jazikn] [numeric](18, 0) NULL,
 CONSTRAINT [PK_novost] PRIMARY KEY CLUSTERED 
(
	[id_novost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mailing]    Script Date: 10/28/2020 4:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mailing](
	[email_id_posetitel] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[email_id_grupa] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[email_grupa]  WITH CHECK ADD  CONSTRAINT [FK_email_grupa_jazik] FOREIGN KEY([jazik_id_jazikm])
REFERENCES [dbo].[jazik] ([id_jazik])
GO
ALTER TABLE [dbo].[email_grupa] CHECK CONSTRAINT [FK_email_grupa_jazik]
GO
ALTER TABLE [dbo].[email_poraka]  WITH CHECK ADD  CONSTRAINT [FK_email_poraka_email_grupa] FOREIGN KEY([grupa_id_grupa])
REFERENCES [dbo].[email_grupa] ([id_grupa])
GO
ALTER TABLE [dbo].[email_poraka] CHECK CONSTRAINT [FK_email_poraka_email_grupa]
GO
ALTER TABLE [dbo].[galerija_opis]  WITH CHECK ADD  CONSTRAINT [FK_galerija_opis_galerija] FOREIGN KEY([gal_id_galerija])
REFERENCES [dbo].[galerija] ([id_galerija])
GO
ALTER TABLE [dbo].[galerija_opis] CHECK CONSTRAINT [FK_galerija_opis_galerija]
GO
ALTER TABLE [dbo].[galerija_opis]  WITH CHECK ADD  CONSTRAINT [FK_galerija_opis_jazik] FOREIGN KEY([jazik_id_jazikg])
REFERENCES [dbo].[jazik] ([id_jazik])
GO
ALTER TABLE [dbo].[galerija_opis] CHECK CONSTRAINT [FK_galerija_opis_jazik]
GO
ALTER TABLE [dbo].[galerija_slika]  WITH CHECK ADD  CONSTRAINT [FK_galerija_slika_galerija] FOREIGN KEY([gal_id_galerijas])
REFERENCES [dbo].[galerija] ([id_galerija])
GO
ALTER TABLE [dbo].[galerija_slika] CHECK CONSTRAINT [FK_galerija_slika_galerija]
GO
ALTER TABLE [dbo].[kdokument]  WITH CHECK ADD  CONSTRAINT [FK_kdokument_jazik] FOREIGN KEY([jazik_id_jazikd])
REFERENCES [dbo].[jazik] ([id_jazik])
GO
ALTER TABLE [dbo].[kdokument] CHECK CONSTRAINT [FK_kdokument_jazik]
GO
ALTER TABLE [dbo].[knovost]  WITH CHECK ADD  CONSTRAINT [FK_knovost_jazik] FOREIGN KEY([jazik_id_jazikn])
REFERENCES [dbo].[jazik] ([id_jazik])
GO
ALTER TABLE [dbo].[knovost] CHECK CONSTRAINT [FK_knovost_jazik]
GO
ALTER TABLE [dbo].[knovost]  WITH CHECK ADD  CONSTRAINT [FK_knovost_kadministrator] FOREIGN KEY([adm_id_adminn])
REFERENCES [dbo].[kadministrator] ([id_admin])
GO
ALTER TABLE [dbo].[knovost] CHECK CONSTRAINT [FK_knovost_kadministrator]
GO
ALTER TABLE [dbo].[mailing]  WITH CHECK ADD  CONSTRAINT [FK_mailing_email] FOREIGN KEY([email_id_posetitel])
REFERENCES [dbo].[email] ([id_posetitel])
GO
ALTER TABLE [dbo].[mailing] CHECK CONSTRAINT [FK_mailing_email]
GO
ALTER TABLE [dbo].[mailing]  WITH CHECK ADD  CONSTRAINT [FK_mailing_email_grupa] FOREIGN KEY([email_id_grupa])
REFERENCES [dbo].[email_grupa] ([id_grupa])
GO
ALTER TABLE [dbo].[mailing] CHECK CONSTRAINT [FK_mailing_email_grupa]
GO
/****** Object:  StoredProcedure [dbo].[vezba3]    Script Date: 10/28/2020 4:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[vezba3]
	@var3 as nvarchar(50)
AS
BEGIN

	SELECT ime, COUNT(Email_Id_Grupa) as GroupNum
	FROM Email AS E
    INNER JOIN
    Mailing AS M
    on M.Email_Id_Posetitel = E.id_posetitel 
	GROUP BY ime
	ORDER BY GroupNum
END
GO
/****** Object:  StoredProcedure [dbo].[zadaca1]    Script Date: 10/28/2020 4:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[zadaca1]
	@var1 as int
AS
BEGIN

	SET NOCOUNT ON;

	SELECT naslov, opis, gal_id_galerija
	FROM galerija_opis
	WHERE @var1 = jazik_id_jazikg
END
GO
/****** Object:  StoredProcedure [dbo].[zadaca2]    Script Date: 10/28/2020 4:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[zadaca2]
	@var2 as nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;

	SELECT ime, jazik
	FROM kadministrator AS KA
	INNER JOIN
	knovost as KN
	ON KA.id_admin = KN.adm_id_adminn
	INNER JOIN
	jazik AS J
	ON J.id_jazik = KN.jazik_id_jazikn
	WHERE @var2 = KN.naslov
END
GO
/****** Object:  StoredProcedure [dbo].[zadaca4]    Script Date: 10/28/2020 4:43:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[zadaca4]
	@var4 as nvarchar(50)
AS
BEGIN

	SET NOCOUNT ON;

	SELECT naslov, tekst
	FROM email_poraka AS EP
	INNER JOIN
	email_grupa AS EG
	ON EP.grupa_id_grupa = EG.id_grupa
	WHERE EG.aktivna = 1 
END
GO
USE [master]
GO
ALTER DATABASE [Karavan_4259] SET  READ_WRITE 
GO
