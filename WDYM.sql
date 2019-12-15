USE [master]
GO
/****** Object:  Database [Milestone3]    Script Date: 12/14/2019 9:11:56 PM ******/
CREATE DATABASE [Milestone3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Milestone3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Milestone3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Milestone3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Milestone3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Milestone3] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Milestone3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Milestone3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Milestone3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Milestone3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Milestone3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Milestone3] SET ARITHABORT OFF 
GO
ALTER DATABASE [Milestone3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Milestone3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Milestone3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Milestone3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Milestone3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Milestone3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Milestone3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Milestone3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Milestone3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Milestone3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Milestone3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Milestone3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Milestone3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Milestone3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Milestone3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Milestone3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Milestone3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Milestone3] SET RECOVERY FULL 
GO
ALTER DATABASE [Milestone3] SET  MULTI_USER 
GO
ALTER DATABASE [Milestone3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Milestone3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Milestone3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Milestone3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Milestone3] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Milestone3', N'ON'
GO
ALTER DATABASE [Milestone3] SET QUERY_STORE = OFF
GO
USE [Milestone3]
GO
/****** Object:  Table [dbo].[Cards]    Script Date: 12/14/2019 9:11:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cards](
	[cardID] [int] NOT NULL,
	[text] [varchar](1000) NULL,
	[photo] [varbinary](max) NULL,
	[drawing] [image] NULL,
 CONSTRAINT [PK_Cards] PRIMARY KEY CLUSTERED 
(
	[cardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeckCards]    Script Date: 12/14/2019 9:11:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeckCards](
	[cardID] [int] NOT NULL,
	[deckID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Decks]    Script Date: 12/14/2019 9:11:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Decks](
	[deckID] [int] NOT NULL,
	[deckName] [varchar](100) NULL,
	[deckType] [varchar](100) NULL,
 CONSTRAINT [PK_Decks] PRIMARY KEY CLUSTERED 
(
	[deckID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlayerDecks]    Script Date: 12/14/2019 9:11:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlayerDecks](
	[deckID] [int] NOT NULL,
	[playerID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Players]    Script Date: 12/14/2019 9:11:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Players](
	[playerID] [int] NOT NULL,
	[userName] [varchar](100) NOT NULL,
	[password] [varbinary](100) NOT NULL,
	[firstName] [varchar](100) NULL,
	[lastName] [varchar](100) NULL,
	[email] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Players] PRIMARY KEY CLUSTERED 
(
	[playerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prompts]    Script Date: 12/14/2019 9:11:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prompts](
	[promptID] [int] IDENTITY(1,1) NOT NULL,
	[text] [varchar](1000) NULL,
 CONSTRAINT [PK_Prompts] PRIMARY KEY CLUSTERED 
(
	[promptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DeckCards]  WITH CHECK ADD  CONSTRAINT [FK_DeckCards_Cards] FOREIGN KEY([cardID])
REFERENCES [dbo].[Cards] ([cardID])
GO
ALTER TABLE [dbo].[DeckCards] CHECK CONSTRAINT [FK_DeckCards_Cards]
GO
ALTER TABLE [dbo].[DeckCards]  WITH CHECK ADD  CONSTRAINT [FK_DeckCards_Decks] FOREIGN KEY([deckID])
REFERENCES [dbo].[Decks] ([deckID])
GO
ALTER TABLE [dbo].[DeckCards] CHECK CONSTRAINT [FK_DeckCards_Decks]
GO
ALTER TABLE [dbo].[PlayerDecks]  WITH CHECK ADD  CONSTRAINT [FK_PlayerDecks_Decks] FOREIGN KEY([deckID])
REFERENCES [dbo].[Decks] ([deckID])
GO
ALTER TABLE [dbo].[PlayerDecks] CHECK CONSTRAINT [FK_PlayerDecks_Decks]
GO
ALTER TABLE [dbo].[PlayerDecks]  WITH CHECK ADD  CONSTRAINT [FK_PlayerDecks_Players] FOREIGN KEY([playerID])
REFERENCES [dbo].[Players] ([playerID])
GO
ALTER TABLE [dbo].[PlayerDecks] CHECK CONSTRAINT [FK_PlayerDecks_Players]
GO
/****** Object:  StoredProcedure [dbo].[spCardsLength]    Script Date: 12/14/2019 9:11:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spCardsLength]
	
AS
BEGIN
	select count(*) from Cards
END
GO
/****** Object:  StoredProcedure [dbo].[spSelectCardImg]    Script Date: 12/14/2019 9:11:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[spSelectCardImg] 
	@cardID as int
AS
BEGIN
	SELECT photo FROM Cards WHERE cardID = @cardID
END
GO
/****** Object:  StoredProcedure [dbo].[spSelectCardText]    Script Date: 12/14/2019 9:11:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[spSelectCardText] 
	@cardID as int
AS
BEGIN
	SELECT text FROM Cards WHERE cardID = @cardID
END
GO
/****** Object:  StoredProcedure [dbo].[spSelectPromptText]    Script Date: 12/14/2019 9:11:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSelectPromptText] 
	@promptID as int
AS
BEGIN
	SELECT text FROM Prompts WHERE promptID = @promptID
END
GO
USE [master]
GO
ALTER DATABASE [Milestone3] SET  READ_WRITE 
GO
