USE [master]
GO
/****** Object:  Database [MusicInstrumentsTest]    Script Date: 3.6.2017 г. 13:34:48 ******/
CREATE DATABASE [MusicInstrumentsTest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MusicInstrumentsTest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MusicInstrumentsTest.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MusicInstrumentsTest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MusicInstrumentsTest_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MusicInstrumentsTest] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MusicInstrumentsTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MusicInstrumentsTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MusicInstrumentsTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MusicInstrumentsTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MusicInstrumentsTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MusicInstrumentsTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [MusicInstrumentsTest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MusicInstrumentsTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MusicInstrumentsTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MusicInstrumentsTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MusicInstrumentsTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MusicInstrumentsTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MusicInstrumentsTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MusicInstrumentsTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MusicInstrumentsTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MusicInstrumentsTest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MusicInstrumentsTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MusicInstrumentsTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MusicInstrumentsTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MusicInstrumentsTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MusicInstrumentsTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MusicInstrumentsTest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MusicInstrumentsTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MusicInstrumentsTest] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MusicInstrumentsTest] SET  MULTI_USER 
GO
ALTER DATABASE [MusicInstrumentsTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MusicInstrumentsTest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MusicInstrumentsTest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MusicInstrumentsTest] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MusicInstrumentsTest] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MusicInstrumentsTest]
GO
/****** Object:  Table [dbo].[Answers]    Script Date: 3.6.2017 г. 13:34:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NOT NULL,
	[Text] [nvarchar](50) NOT NULL,
	[IsCorrect] [bit] NOT NULL,
 CONSTRAINT [PK_Answers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Questions]    Script Date: 3.6.2017 г. 13:34:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[TestId] [int] NOT NULL,
	[Image] [nvarchar](50) NULL,
	[Sound] [nvarchar](50) NULL,
 CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Responses]    Script Date: 3.6.2017 г. 13:34:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Responses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnswerId] [int] NOT NULL,
 CONSTRAINT [PK_Responses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tests]    Script Date: 3.6.2017 г. 13:34:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Answers] ON 

INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (1, 1, N'Арфа', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (2, 1, N'Виолончело', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (3, 1, N'Виола', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (4, 1, N'Цигулка', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (5, 2, N'Цигулка', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (6, 2, N'Виолончело', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (7, 2, N'Арфа', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (8, 2, N'Виола', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (9, 3, N'Цигулка', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (10, 3, N'Виолончело', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (11, 4, N'Арфа', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (12, 4, N'Барабан', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (13, 5, N'Валдхорна', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (14, 5, N'Флейта', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (15, 6, N'Туба', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (16, 6, N'Флейта', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (17, 7, N'Кларинет', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (18, 7, N'Туба', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (19, 7, N'Тромбон', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (20, 8, N'Тромбон', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (22, 8, N'Тромпет', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (23, 9, N'Барабан', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (24, 9, N'Чинели', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (25, 9, N'Тимпани', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (26, 10, N'Барабан', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (27, 10, N'Чинели', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (28, 11, N'Чинели', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (29, 11, N'Барабан', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (30, 12, N'Тимпани', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (31, 12, N'Чинели', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (32, 13, N'Пиано', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (33, 13, N'Барабан', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (34, 13, N'Челеста', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (35, 14, N'1', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (36, 14, N'88', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (37, 14, N'0', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (38, 15, N'Челеста', 1)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (39, 15, N'Цигулка', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (40, 16, N'Туба', 0)
INSERT [dbo].[Answers] ([Id], [QuestionId], [Text], [IsCorrect]) VALUES (41, 16, N'Пиано', 1)
SET IDENTITY_INSERT [dbo].[Answers] OFF
SET IDENTITY_INSERT [dbo].[Questions] ON 

INSERT [dbo].[Questions] ([Id], [Title], [TestId], [Image], [Sound]) VALUES (1, N'Кой е най-малкият инструмент с най-висок тон от семейство струнни?', 1, NULL, NULL)
INSERT [dbo].[Questions] ([Id], [Title], [TestId], [Image], [Sound]) VALUES (2, N'Как се нарича инструментът показан на картинката?', 1, N'harp.jpg', NULL)
INSERT [dbo].[Questions] ([Id], [Title], [TestId], [Image], [Sound]) VALUES (3, N'Кой инструмент е по-голям?', 1, NULL, NULL)
INSERT [dbo].[Questions] ([Id], [Title], [TestId], [Image], [Sound]) VALUES (4, N'Кой иструмент издава такъв звук?', 1, NULL, N'harp.mp3')
INSERT [dbo].[Questions] ([Id], [Title], [TestId], [Image], [Sound]) VALUES (5, N'Как се нарича инструментът показан на картинката?', 2, N'frenchhorn.png', NULL)
INSERT [dbo].[Questions] ([Id], [Title], [TestId], [Image], [Sound]) VALUES (6, N'Как се нарича инструментът, който звучи по този начин?', 2, NULL, N'flute.mp3')
INSERT [dbo].[Questions] ([Id], [Title], [TestId], [Image], [Sound]) VALUES (7, N'Как се нарича най-големият духов инструмент, показан на картинката?', 2, N'tuba.jpg', N'tuba.mp3')
INSERT [dbo].[Questions] ([Id], [Title], [TestId], [Image], [Sound]) VALUES (8, N'Как се нарича инструментът, показан на картинката?(името му се римува с "бонбон")', 2, N'trombone.jpg', N'trombone.mp3')
INSERT [dbo].[Questions] ([Id], [Title], [TestId], [Image], [Sound]) VALUES (9, N'Как се нарича инструментът показан на картинката?', 3, N'snaredrum.jpg', NULL)
INSERT [dbo].[Questions] ([Id], [Title], [TestId], [Image], [Sound]) VALUES (10, N'Как се нарича инструментът от картинката?', 3, N'cymbals.jpg', N'cymbal.wav')
INSERT [dbo].[Questions] ([Id], [Title], [TestId], [Image], [Sound]) VALUES (11, N'Кой инструмент звучи така?', 3, NULL, N'snare.mp3')
INSERT [dbo].[Questions] ([Id], [Title], [TestId], [Image], [Sound]) VALUES (12, N'Как се нарична инструментът от картинката?', 3, N'timpani.jpg', N'timpani.wav')
INSERT [dbo].[Questions] ([Id], [Title], [TestId], [Image], [Sound]) VALUES (13, N'Как се нарича инструментът от картинката?', 4, N'piano.png', NULL)
INSERT [dbo].[Questions] ([Id], [Title], [TestId], [Image], [Sound]) VALUES (14, N'Колко клавиша има пианото?', 4, NULL, NULL)
INSERT [dbo].[Questions] ([Id], [Title], [TestId], [Image], [Sound]) VALUES (15, N'Как се нарича инструментът от картинката?', 4, N'celesta.jpg', N'celesta.wav')
INSERT [dbo].[Questions] ([Id], [Title], [TestId], [Image], [Sound]) VALUES (16, N'Кой инструмент звучи така?', 4, NULL, N'piano.mp3')
SET IDENTITY_INSERT [dbo].[Questions] OFF
SET IDENTITY_INSERT [dbo].[Tests] ON 

INSERT [dbo].[Tests] ([Id], [Name]) VALUES (1, N'Струнни инструменти')
INSERT [dbo].[Tests] ([Id], [Name]) VALUES (2, N'Духови инструменти')
INSERT [dbo].[Tests] ([Id], [Name]) VALUES (3, N'Ударни инструменти')
INSERT [dbo].[Tests] ([Id], [Name]) VALUES (4, N'Клавишни инструменти')
SET IDENTITY_INSERT [dbo].[Tests] OFF
ALTER TABLE [dbo].[Answers]  WITH CHECK ADD  CONSTRAINT [FK_Answers_Questions] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Questions] ([Id])
GO
ALTER TABLE [dbo].[Answers] CHECK CONSTRAINT [FK_Answers_Questions]
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD  CONSTRAINT [FK_Questions_Tests] FOREIGN KEY([TestId])
REFERENCES [dbo].[Tests] ([Id])
GO
ALTER TABLE [dbo].[Questions] CHECK CONSTRAINT [FK_Questions_Tests]
GO
ALTER TABLE [dbo].[Responses]  WITH CHECK ADD  CONSTRAINT [FK_Responses_Answers] FOREIGN KEY([AnswerId])
REFERENCES [dbo].[Answers] ([Id])
GO
ALTER TABLE [dbo].[Responses] CHECK CONSTRAINT [FK_Responses_Answers]
GO
USE [master]
GO
ALTER DATABASE [MusicInstrumentsTest] SET  READ_WRITE 
GO
