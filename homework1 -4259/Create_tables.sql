Use Karavan_4259
GO
SET ANSI_NULLS ON 
GO

CREATE TABLE [dbo].[kadministrator]
(
	[id_admin] [numeric](18,0) IDENTITY(1,1) NOT NULL,
    [username] [nvarchar](50) NULL,
    [password] [nvarchar](50) NULL,
    [ime] [nvarchar](50) NULL,
	[telefon] [nvarchar](50) NULL,
  CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
    [id_admin] ASC
))

CREATE TABLE [dbo].[jazik]
(
	[id_jazik] [numeric](18,0) IDENTITY(1,1) NOT NULL,
	[jazik] [nvarchar](50) NULL,
 CONSTRAINT [PK_jazik] PRIMARY KEY CLUSTERED 
(
    [id_jazik] ASC
))

CREATE TABLE [dbo].[knovost]
(
	[id_novost] [numeric](18,0) IDENTITY(1,1) NOT NULL,
	[adm_id_adminn] [numeric](18,0) NULL,
	[naslov] [nvarchar] (50) NULL, 
	[opis] [nvarchar] (1500) NULL,
	[datum_od] [datetime] NULL,
	[datum_do] [datetime] NULL,
 CONSTRAINT [PK_novost] PRIMARY KEY CLUSTERED 
(
    [id_novost] ASC
))

CREATE TABLE [dbo].[kdokument]
(
	[id_dokument] [numeric](18,0) IDENTITY(1,1) NOT NULL,
	[naslov] [nvarchar] (50) NULL,
	[jazik_id_jazikd] [numeric](18, 0) NULL,
	[dokument] [nvarchar] (50) NULL,
	[prikaz] [numeric](18, 0) NULL, 
 CONSTRAINT [PK_dokument] PRIMARY KEY CLUSTERED 
(
    [id_dokument] ASC
))

CREATE TABLE [dbo].[email]
(
	[id_posetitel] [numeric](18,0) IDENTITY(1,1) NOT NULL,
	[ime] [nvarchar] (50) NULL,
	[mail] [nvarchar] (50) NULL,	
 CONSTRAINT [PK_posetitel] PRIMARY KEY CLUSTERED 
(
    [id_posetitel] ASC
))

CREATE TABLE [dbo].[email_grupa]
(
	[id_grupa] [numeric](18,0) IDENTITY(1,1) NOT NULL,
	[jazik_id_jazikm] [numeric](18, 0) NULL, 
	[naziv] [nvarchar] (50) NULL,
	[aktivna] [numeric](18, 0) NULL, 	
 CONSTRAINT [PK_grupa] PRIMARY KEY CLUSTERED 
(
    [id_grupa] ASC
))

CREATE TABLE [dbo].[email_poraka]
(
	[id_poraka] [numeric](18,0) IDENTITY(1,1) NOT NULL,
	[grupa_id_grupa] [numeric](18, 0) NULL,
	[datum] [datetime] NULL,
	[naslov] [nvarchar] (50) NULL,
	[tekst] [nvarchar] (500) NULL, 	
 CONSTRAINT [PK_poraka] PRIMARY KEY CLUSTERED 
(
    [id_poraka] ASC
))

CREATE TABLE [dbo].[mailing]
(
	[email_id_posetitel] [numeric](18,0) IDENTITY(1,1) NOT NULL,
	[email_ID_GRUPA] [numeric](18, 0) NULL,	
)

CREATE TABLE [dbo].[galerija]
(
	[id_galerija] [numeric](18,0) IDENTITY(1,1) NOT NULL,
	[preview] [numeric](18, 0) NULL, 	
 CONSTRAINT [PK_galerija] PRIMARY KEY CLUSTERED 
(
    [id_galerija] ASC
))

CREATE TABLE [dbo].[galerija_opis]
(
	[gal_id_galerija] [numeric](18, 0) NULL,
	[jazik_id_jazikg] [numeric](18, 0) NULL,
	[naslov] [nvarchar] (50) NULL,
	[opis] [nvarchar] (500) NULL,
)

CREATE TABLE [dbo].[galerija_slika]
(
	[id_slika] [numeric](18,0) IDENTITY(1,1) NOT NULL,
	[gal_id_galerijas] [numeric](18, 0) NULL,
	[opisslika] [nvarchar] (300) NULL,
	[slika] [nvarchar] (50) NULL,
	[opisslikaeng] [nvarchar] (300) NULL, 
 CONSTRAINT [PK_slika] PRIMARY KEY CLUSTERED 
(
    [id_slika] ASC
))

