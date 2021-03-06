USE [master]
GO
/****** Object:  Database [master]    Script Date: 05/22/2012 21:32:37 ******/
CREATE DATABASE [master] ON  PRIMARY 
( NAME = N'master', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\master.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'mastlog', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\mastlog.ldf' , SIZE = 1280KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [master] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [master].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [master] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [master] SET ANSI_NULLS OFF
GO
ALTER DATABASE [master] SET ANSI_PADDING OFF
GO
ALTER DATABASE [master] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [master] SET ARITHABORT OFF
GO
ALTER DATABASE [master] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [master] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [master] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [master] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [master] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [master] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [master] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [master] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [master] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [master] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [master] SET  DISABLE_BROKER
GO
ALTER DATABASE [master] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [master] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [master] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [master] SET ALLOW_SNAPSHOT_ISOLATION ON
GO
ALTER DATABASE [master] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [master] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [master] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [master] SET  READ_WRITE
GO
ALTER DATABASE [master] SET RECOVERY SIMPLE
GO
ALTER DATABASE [master] SET  MULTI_USER
GO
ALTER DATABASE [master] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [master] SET DB_CHAINING ON
GO
/****** Object:  User [NT AUTHORITY\SYSTEM]    Script Date: 05/22/2012 21:32:37 ******/
CREATE USER [NT AUTHORITY\SYSTEM] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[NT AUTHORITY\SYSTEM]
GO
/****** Object:  User [##MS_PolicyEventProcessingLogin##]    Script Date: 05/22/2012 21:32:37 ******/
CREATE USER [##MS_PolicyEventProcessingLogin##] FOR LOGIN [##MS_PolicyEventProcessingLogin##] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [##MS_AgentSigningCertificate##]    Script Date: 05/22/2012 21:32:37 ******/
CREATE USER [##MS_AgentSigningCertificate##] FOR LOGIN [##MS_AgentSigningCertificate##]
GO
/****** Object:  Role [RSExecRole]    Script Date: 05/22/2012 21:32:37 ******/
CREATE ROLE [RSExecRole] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [RSExecRole]    Script Date: 05/22/2012 21:32:37 ******/
CREATE SCHEMA [RSExecRole] AUTHORIZATION [RSExecRole]
GO
/****** Object:  Schema [NT AUTHORITY\SYSTEM]    Script Date: 05/22/2012 21:32:37 ******/
CREATE SCHEMA [NT AUTHORITY\SYSTEM] AUTHORIZATION [NT AUTHORITY\SYSTEM]
GO
/****** Object:  Table [dbo].[result]    Script Date: 05/22/2012 21:32:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[result](
	[marks] [int] NULL,
	[evaluated] [int] NULL,
	[testcode] [varchar](10) NOT NULL,
	[usn] [char](10) NOT NULL,
 CONSTRAINT [PK_result_1] PRIMARY KEY CLUSTERED 
(
	[testcode] ASC,
	[usn] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[result] ([marks], [evaluated], [testcode], [usn]) VALUES (15, 1, N'test01', N'1RV09CS001')
INSERT [dbo].[result] ([marks], [evaluated], [testcode], [usn]) VALUES (11, 1, N'test02', N'1RV09CS001')
INSERT [dbo].[result] ([marks], [evaluated], [testcode], [usn]) VALUES (15, 1, N'test02', N'1RV09CS002')
INSERT [dbo].[result] ([marks], [evaluated], [testcode], [usn]) VALUES (-1, 1, N'test03', N'1RV06CS001')
INSERT [dbo].[result] ([marks], [evaluated], [testcode], [usn]) VALUES (3, 1, N'test04', N'1RV06CS002')
INSERT [dbo].[result] ([marks], [evaluated], [testcode], [usn]) VALUES (-4, 1, N'test05', N'1RV07CS001')
INSERT [dbo].[result] ([marks], [evaluated], [testcode], [usn]) VALUES (7, 1, N'test07', N'1RV07CS002')
INSERT [dbo].[result] ([marks], [evaluated], [testcode], [usn]) VALUES (8, 1, N'test09', N'1RV08CS001')
INSERT [dbo].[result] ([marks], [evaluated], [testcode], [usn]) VALUES (3, 1, N'test11', N'1RV08CS002')
/****** Object:  Table [dbo].[administrator]    Script Date: 05/22/2012 21:32:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[administrator](
	[aid] [char](20) NOT NULL,
	[name] [varchar](20) NULL,
	[login] [varchar](20) NULL,
	[password] [varchar](20) NULL,
 CONSTRAINT [PK_administrator] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[administrator] ([aid], [name], [login], [password]) VALUES (N'admin1              ', N'H K Srinath', N'srinath', N'rvcsehod')
/****** Object:  Table [dbo].[student]    Script Date: 05/22/2012 21:32:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[name] [varchar](20) NULL,
	[usn] [char](10) NOT NULL,
	[did] [char](5) NULL,
	[batch] [char](4) NULL,
	[sem] [int] NULL,
	[login] [varchar](20) NULL,
	[password] [varchar](20) NULL,
	[aid] [char](20) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[usn] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[student] ([name], [usn], [did], [batch], [sem], [login], [password], [aid]) VALUES (N'Shravya V', N'1RV06CS001', N'd1   ', N'A1  ', 7, N'shravya', N'1rv06cs001', N'admin1              ')
INSERT [dbo].[student] ([name], [usn], [did], [batch], [sem], [login], [password], [aid]) VALUES (N'Shrujan S', N'1RV06CS002', N'd1   ', N'A2  ', 7, N'shrujan', N'1rv06cs002', N'admin1              ')
INSERT [dbo].[student] ([name], [usn], [did], [batch], [sem], [login], [password], [aid]) VALUES (N'Shreya S', N'1RV06CS003', N'd1   ', N'B1  ', 7, N'shreya', N'1rv06cs003', N'admin1              ')
INSERT [dbo].[student] ([name], [usn], [did], [batch], [sem], [login], [password], [aid]) VALUES (N'Suhaas', N'1RV06CS004', N'd1   ', N'B2  ', 7, N'suhaas', N'1rv06cs004', N'admin1              ')
INSERT [dbo].[student] ([name], [usn], [did], [batch], [sem], [login], [password], [aid]) VALUES (N'Pushkar', N'1RV07CS001', N'd1   ', N'A1  ', 5, N'pushkar', N'1rv07cs001', N'admin1              ')
INSERT [dbo].[student] ([name], [usn], [did], [batch], [sem], [login], [password], [aid]) VALUES (N'Pavan Vajram', N'1RV07CS002', N'd1   ', N'A2  ', 5, N'pavan', N'1rv07cs002', N'admin1              ')
INSERT [dbo].[student] ([name], [usn], [did], [batch], [sem], [login], [password], [aid]) VALUES (N'Pradeep', N'1RV07CS003', N'd1   ', N'B1  ', 5, N'pradeep', N'1rv07cs003', N'admin1              ')
INSERT [dbo].[student] ([name], [usn], [did], [batch], [sem], [login], [password], [aid]) VALUES (N'Gautam', N'1RV07CS004', N'd1   ', N'B2  ', 5, N'gautam', N'1rv07cs004', N'admin1              ')
INSERT [dbo].[student] ([name], [usn], [did], [batch], [sem], [login], [password], [aid]) VALUES (N'Nikhil Sai', N'1RV08CS001', N'd1   ', N'A1  ', 3, N'nikhil', N'1rv08cs001', N'admin1              ')
INSERT [dbo].[student] ([name], [usn], [did], [batch], [sem], [login], [password], [aid]) VALUES (N'Neha Sai', N'1RV08CS002', N'd1   ', N'A2  ', 3, N'neha', N'1rv08cs002', N'admin1              ')
INSERT [dbo].[student] ([name], [usn], [did], [batch], [sem], [login], [password], [aid]) VALUES (N'Diluxi S', N'1RV08CS003', N'd1   ', N'B1  ', 3, N'diluxi', N'1rv08cs003', N'admin1              ')
INSERT [dbo].[student] ([name], [usn], [did], [batch], [sem], [login], [password], [aid]) VALUES (N'Menaka N', N'1RV08CS004', N'd1   ', N'B2  ', 3, N'menaka', N'1rv08cs004', N'admin1              ')
INSERT [dbo].[student] ([name], [usn], [did], [batch], [sem], [login], [password], [aid]) VALUES (N'Priya', N'1RV09CS001', N'd1   ', N'A1  ', 1, N'priya', N'1rv09cs001', N'admin1              ')
INSERT [dbo].[student] ([name], [usn], [did], [batch], [sem], [login], [password], [aid]) VALUES (N'Soumya B', N'1RV09CS002', N'd1   ', N'A2  ', 1, N'soumya', N'1rv09cs002', N'admin1              ')
INSERT [dbo].[student] ([name], [usn], [did], [batch], [sem], [login], [password], [aid]) VALUES (N'Sumana P', N'1RV09CS003', N'd1   ', N'B1  ', 1, N'sumana', N'1rv09cs003', N'admin1              ')
INSERT [dbo].[student] ([name], [usn], [did], [batch], [sem], [login], [password], [aid]) VALUES (N'Shreya', N'1RV09CS004', N'd1   ', N'B2  ', 1, N'shreya', N'1rv09cs004', N'admin1              ')
/****** Object:  Table [dbo].[department]    Script Date: 05/22/2012 21:32:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[department](
	[did] [char](5) NOT NULL,
	[dname] [varchar](20) NULL,
	[aid] [char](20) NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[did] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[department] ([did], [dname], [aid]) VALUES (N'd1   ', N'computer science', N'admin1              ')
/****** Object:  Table [dbo].[faculty]    Script Date: 05/22/2012 21:32:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[faculty](
	[fid] [char](5) NOT NULL,
	[name] [varchar](20) NULL,
	[did] [char](5) NULL,
	[login] [varchar](20) NULL,
	[password] [varchar](20) NULL,
 CONSTRAINT [PK_faculty] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[faculty] ([fid], [name], [did], [login], [password]) VALUES (N'fac01', N'Karthik K', N'd1   ', N'karthik', N'rvcsefac01')
INSERT [dbo].[faculty] ([fid], [name], [did], [login], [password]) VALUES (N'fac02', N'Lakshmi', N'd1   ', N'lakshmi', N'rvcsefac02')
INSERT [dbo].[faculty] ([fid], [name], [did], [login], [password]) VALUES (N'fac03', N'Suraj B', N'd1   ', N'suraj', N'rvcsefac03')
INSERT [dbo].[faculty] ([fid], [name], [did], [login], [password]) VALUES (N'fac04', N'Marina D', N'd1   ', N'marina', N'rvcsefac04')
INSERT [dbo].[faculty] ([fid], [name], [did], [login], [password]) VALUES (N'fac05', N'Sherly', N'd1   ', N'sherly', N'rvcsefac05')
INSERT [dbo].[faculty] ([fid], [name], [did], [login], [password]) VALUES (N'fac06', N'June Singh', N'd1   ', N'junesingh', N'rvcsefac06')
INSERT [dbo].[faculty] ([fid], [name], [did], [login], [password]) VALUES (N'fac07', N'Helen', N'd1   ', N'helen', N'rvcsefac07')
INSERT [dbo].[faculty] ([fid], [name], [did], [login], [password]) VALUES (N'fac08', N'Monica', N'd1   ', N'monica', N'rvcsefac08')
/****** Object:  Table [dbo].[test]    Script Date: 05/22/2012 21:32:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[test](
	[testcode] [varchar](10) NOT NULL,
	[fid] [char](5) NULL,
	[sid] [varchar](5) NULL,
 CONSTRAINT [PK_test] PRIMARY KEY CLUSTERED 
(
	[testcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[test] ([testcode], [fid], [sid]) VALUES (N'test01', N'fac01', N'sub01')
INSERT [dbo].[test] ([testcode], [fid], [sid]) VALUES (N'test02', N'fac01', N'sub02')
INSERT [dbo].[test] ([testcode], [fid], [sid]) VALUES (N'test03', N'fac02', N'sub03')
INSERT [dbo].[test] ([testcode], [fid], [sid]) VALUES (N'test04', N'fac02', N'sub04')
INSERT [dbo].[test] ([testcode], [fid], [sid]) VALUES (N'test05', N'fac03', N'sub05')
INSERT [dbo].[test] ([testcode], [fid], [sid]) VALUES (N'test06', N'fac03', N'sub06')
INSERT [dbo].[test] ([testcode], [fid], [sid]) VALUES (N'test07', N'fac04', N'sub07')
INSERT [dbo].[test] ([testcode], [fid], [sid]) VALUES (N'test08', N'fac04', N'sub08')
INSERT [dbo].[test] ([testcode], [fid], [sid]) VALUES (N'test09', N'fac05', N'sub09')
INSERT [dbo].[test] ([testcode], [fid], [sid]) VALUES (N'test10', N'fac05', N'sub10')
INSERT [dbo].[test] ([testcode], [fid], [sid]) VALUES (N'test11', N'fac06', N'sub11')
INSERT [dbo].[test] ([testcode], [fid], [sid]) VALUES (N'test12', N'fac06', N'sub12')
INSERT [dbo].[test] ([testcode], [fid], [sid]) VALUES (N'test13', N'fac07', N'sub13')
INSERT [dbo].[test] ([testcode], [fid], [sid]) VALUES (N'test14', N'fac07', N'sub14')
INSERT [dbo].[test] ([testcode], [fid], [sid]) VALUES (N'test15', N'fac08', N'sub15')
INSERT [dbo].[test] ([testcode], [fid], [sid]) VALUES (N'test16', N'fac08', N'sub16')
/****** Object:  Table [dbo].[subject]    Script Date: 05/22/2012 21:32:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[subject](
	[name] [varchar](50) NULL,
	[sid] [varchar](5) NOT NULL,
	[fid] [char](5) NULL,
	[type] [varchar](20) NULL,
 CONSTRAINT [PK_subject] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[subject] ([name], [sid], [fid], [type]) VALUES (N'Basic Mechanical', N'sub01', N'fac01', N'Theory')
INSERT [dbo].[subject] ([name], [sid], [fid], [type]) VALUES (N'Basic Electronics', N'sub02', N'fac01', N'Theory and Lab')
INSERT [dbo].[subject] ([name], [sid], [fid], [type]) VALUES (N'Operating Systems', N'sub03', N'fac02', N'Theory')
INSERT [dbo].[subject] ([name], [sid], [fid], [type]) VALUES (N'Software Engineering', N'sub04', N'fac02', N'Theory and Lab')
INSERT [dbo].[subject] ([name], [sid], [fid], [type]) VALUES (N'Compiler Design', N'sub05', N'fac03', N'Theory')
INSERT [dbo].[subject] ([name], [sid], [fid], [type]) VALUES (N'Microprocessors', N'sub06', N'fac03', N'Theory and Lab')
INSERT [dbo].[subject] ([name], [sid], [fid], [type]) VALUES (N'Graph Theory', N'sub07', N'fac04', N'Theory')
INSERT [dbo].[subject] ([name], [sid], [fid], [type]) VALUES (N'Algorithms', N'sub08', N'fac04', N'Theory and Lab')
INSERT [dbo].[subject] ([name], [sid], [fid], [type]) VALUES (N'Java', N'sub09', N'fac05', N'Theory')
INSERT [dbo].[subject] ([name], [sid], [fid], [type]) VALUES (N'Data Structures', N'sub10', N'fac05', N'Theory and Lab')
INSERT [dbo].[subject] ([name], [sid], [fid], [type]) VALUES (N'Computer Networks', N'sub11', N'fac06', N'Theory')
INSERT [dbo].[subject] ([name], [sid], [fid], [type]) VALUES (N'Databases', N'sub12', N'fac06', N'Theory and Lab')
INSERT [dbo].[subject] ([name], [sid], [fid], [type]) VALUES (N'Entrepreneurship', N'sub13', N'fac07', N'Theory')
INSERT [dbo].[subject] ([name], [sid], [fid], [type]) VALUES (N'Operation Research', N'sub14', N'fac07', N'Theory and Lab')
INSERT [dbo].[subject] ([name], [sid], [fid], [type]) VALUES (N'C programming', N'sub15', N'fac08', N'Theory')
INSERT [dbo].[subject] ([name], [sid], [fid], [type]) VALUES (N'Unix', N'sub16', N'fac08', N'Theory and Lab')
/****** Object:  Table [dbo].[update_attendance]    Script Date: 05/22/2012 21:32:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[update_attendance](
	[usn] [char](10) NOT NULL,
	[fid] [char](5) NOT NULL,
	[attendance] [int] NULL,
 CONSTRAINT [PK_update_attendance] PRIMARY KEY CLUSTERED 
(
	[usn] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[update_attendance] ([usn], [fid], [attendance]) VALUES (N'1RV06CS001', N'fac01', 99)
INSERT [dbo].[update_attendance] ([usn], [fid], [attendance]) VALUES (N'1RV06CS002', N'fac01', 89)
INSERT [dbo].[update_attendance] ([usn], [fid], [attendance]) VALUES (N'1RV06CS003', N'fac01', 79)
INSERT [dbo].[update_attendance] ([usn], [fid], [attendance]) VALUES (N'1RV06CS004', N'fac01', 69)
INSERT [dbo].[update_attendance] ([usn], [fid], [attendance]) VALUES (N'1RV07CS001', N'fac01', 99)
INSERT [dbo].[update_attendance] ([usn], [fid], [attendance]) VALUES (N'1RV07CS002', N'fac01', 89)
INSERT [dbo].[update_attendance] ([usn], [fid], [attendance]) VALUES (N'1RV07CS003', N'fac01', 79)
INSERT [dbo].[update_attendance] ([usn], [fid], [attendance]) VALUES (N'1RV07CS004', N'fac01', 69)
INSERT [dbo].[update_attendance] ([usn], [fid], [attendance]) VALUES (N'1RV08CS001', N'fac01', 99)
INSERT [dbo].[update_attendance] ([usn], [fid], [attendance]) VALUES (N'1RV08CS002', N'fac01', 89)
INSERT [dbo].[update_attendance] ([usn], [fid], [attendance]) VALUES (N'1RV08CS003', N'fac01', 79)
INSERT [dbo].[update_attendance] ([usn], [fid], [attendance]) VALUES (N'1RV08CS004', N'fac01', 69)
INSERT [dbo].[update_attendance] ([usn], [fid], [attendance]) VALUES (N'1RV09CS001', N'fac01', 99)
INSERT [dbo].[update_attendance] ([usn], [fid], [attendance]) VALUES (N'1RV09CS002', N'fac01', 89)
INSERT [dbo].[update_attendance] ([usn], [fid], [attendance]) VALUES (N'1RV09CS003', N'fac01', 79)
INSERT [dbo].[update_attendance] ([usn], [fid], [attendance]) VALUES (N'1RV09CS004', N'fac01', 69)
/****** Object:  Table [dbo].[test_ready]    Script Date: 05/22/2012 21:32:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[test_ready](
	[testcode] [varchar](10) NOT NULL,
	[ready] [int] NULL,
 CONSTRAINT [PK_test_ready] PRIMARY KEY CLUSTERED 
(
	[testcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[test_ready] ([testcode], [ready]) VALUES (N'test01', 1)
INSERT [dbo].[test_ready] ([testcode], [ready]) VALUES (N'test02', 1)
INSERT [dbo].[test_ready] ([testcode], [ready]) VALUES (N'test03', 1)
INSERT [dbo].[test_ready] ([testcode], [ready]) VALUES (N'test04', 1)
INSERT [dbo].[test_ready] ([testcode], [ready]) VALUES (N'test05', 1)
INSERT [dbo].[test_ready] ([testcode], [ready]) VALUES (N'test07', 1)
INSERT [dbo].[test_ready] ([testcode], [ready]) VALUES (N'test09', 1)
INSERT [dbo].[test_ready] ([testcode], [ready]) VALUES (N'test11', 1)
INSERT [dbo].[test_ready] ([testcode], [ready]) VALUES (N'test13', 1)
INSERT [dbo].[test_ready] ([testcode], [ready]) VALUES (N'test15', 1)
/****** Object:  Table [dbo].[question]    Script Date: 05/22/2012 21:32:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[question](
	[qno] [int] NOT NULL,
	[question] [varchar](500) NULL,
	[opa] [varchar](200) NULL,
	[opb] [varchar](200) NULL,
	[opc] [varchar](200) NULL,
	[opd] [varchar](200) NULL,
	[rightop] [varchar](200) NULL,
	[testcode] [varchar](10) NOT NULL,
 CONSTRAINT [PK_question] PRIMARY KEY CLUSTERED 
(
	[qno] ASC,
	[testcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (1, N'First metal to be known to be used by man is:', N'Iron', N'Bronze', N'Silver', N'Aluminium', N'2', N'test01')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (1, N'1 Ampere of current is defined as:', N'1 volt/sec', N'1 coulomb/sec', N'1 ohm/second', N'1 coulomb', N'2', N'test02')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (1, N'Round robin scheduling is essentially the preemptive version of:', N'FIFO', N'Shortest Job First', N'Shortest Reamining Time', N'Preemptive Scheduling', N'1', N'test03')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (1, N'The state transition diagram', N'depicts relationships between data objects', N'depicts functions that transform the data flow', N'indicates how data are transformed by the system', N'indicates system reactions to external events', N'4', N'test04')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (1, N'Which of the following grammarsare not phase-structured?', N'Regular', N'Context-free', N'Context-sensitive', N'None of the above', N'4', N'test05')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (1, N'In 8086 the overflow flag is set when:', N'The sum is more than 16 bits', N'Signed numbers go out of their range after an arithmetic operation', N'Carry and sign flags are set', N'During subtraction', N'2', N'test06')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (1, N'When a vertex Q is connected by an edge to a vertex K, what is the term for the relationship between Q and K?', N'Q and K are "adjacent."', N'Q and K are "isolated."', N'Q and K are "incident."', N'Q and K are "insecure."', N'1', N'test07')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (1, N'Two main measures for the efficiency of an algorithm are', N'Processor and memory', N'Complexity and capacity', N'Time and space', N'Data and space', N'3', N'test08')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (1, N'If s = "text", what is the value returned by s.length()?', N'false', N'true', N'4', N'5', N'3', N'test09')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (1, N'Which of the following data structure is not linear data structure?', N'Arrays', N'Linked lists', N'Both of above', N'None of above', N'4', N'test10')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (1, N'How many digits of the DNIC (Data Network Identification Code) identify the country?', N'first 3', N'first 4', N'first 5', N'first 6', N'1', N'test11')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (1, N'The relational database environment has all of the following components except', N'users', N'separate files', N'database', N'query languages', N'2', N'test12')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (1, N'Any patents, trademarks , copyright or trade secrets held by the entrepreneur is known as', N'Disclosure document ', N'Patent', N'Intellectual property', N'None of the mentioned', N'3', N'test13')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (1, N'The North West Corner rule:', N'is used to find an initial feasible solution', N'is used to find an optimal solution', N'is based on the concept of minimizing opportunity cost', N'none of the above', N'1', N'test14')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (1, N'A function that calls itself for its processing is known as:', N'Inline Function', N'Nested Function', N'Overloaded Function', N'Recursive Function', N'4', N'test15')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (1, N'Which command is used to sort the lines of data in a file in reverse order', N'sort', N'sh', N'st', N'sort -r', N'4', N'test16')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (2, N'Not an example of actuator:', N'optical fibre', N'shape memory alloys', N'magneto-strictive materials', N'electromagnetic fuels', N'1', N'test01')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (2, N'The synchronous motor can be used as a capacitor:', N'By increasing excitation', N'By decreasing excitation', N'By increasing speed', N'By decreasing speed', N'1', N'test02')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (2, N'A page fault occurs:', N'when the page is not in the memory', N'when the page is in the memory', N'when the process enters the blocked state', N'when the process is in the ready state', N'1', N'test03')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (2, N'Control flow diagrams are', N'needed to model event driven systems.', N'required for all systems', N'used in place of data flow diagrams', N'useful for modeling user interfaces', N'1', N'test04')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (2, N'Representing the syntax by a grammar is advantageous because', N'it is concise', N'it is accurate', N'automation becomes easy', N'all the above', N'4', N'test05')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (2, N'The advantage of memory mapped I/O over I/O mapped I/O is', N'Faster', N'Many instructions supporting memory mapped I/O', N'Require a bigger address decoder', N'All the above', N'4', N'test06')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (2, N'Isomorphism is similar to equality, but more general. Of the following common graphs, which two are isomorphic?', N'The path graph on four vertices and the complete graph on four vertices.', N'The cyclic graph on three vertices and the complete graph on three vertices.', N'The utility graph and the complete graph on six vertices.', N'The cyclic graph on five vertices and the wheel graph on five vertices.', N'2', N'test07')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (2, N'The time factor when determining the efficiency of algorithm is measured by', N'Counting microseconds', N'Counting the number of key operations', N'Counting the number of statements', N'Counting the kilobytes of algorithm', N'2', N'test08')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (2, N'What is the difference between a TextArea and a TextField?', N'.A TextArea can handle multiple lines of text', N'A textarea can be used for output', N'TextArea is not a class', N'TextAreas are used for displaying graphics', N'1', N'test09')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (2, N'Which of the following data structure is linear data structure?', N'Trees', N'Graphs', N'Arrays', N'None of the above', N'3', N'test10')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (2, N'A station in a network forwards incoming packets by placing them on its shortest output queue. What routing algorithm is being used?', N'hot potato routing', N'flooding', N'static routing', N'delta routing', N'1', N'test11')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (2, N'The language used application programs to request data from the DBMS is ', N'DML', N'DDL', N'query language', N'any of the above', N'1', N'test12')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (2, N'he organization will never be able to make the necessary changes without:', N'Top management commitment', N'Employees', N'Workers', N'None of the mentioned', N'1', N'test13')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (2, N'Which of the following assertations is true of an optimal solution to an Linear Programming Problem?', N'Every LP has an optimal solution', N'The optimal solution always occur at extreme points', N'If an optimal solution exists, there will always be atleast one at a corner', N'All of the given', N'4', N'test14')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (2, N'We declare a function with ______ if it does not have any return type', N'long', N'double', N'void', N'int', N'3', N'test15')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (2, N'Which command is used to display the top of the file?', N'cat', N'head', N'more', N'grep', N'2', N'test16')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (3, N'Democratic material:', N'diamond', N'titanium', N'iron', N'gold', N'3', N'test01')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (3, N'The input impedance of an op-amp is :', N'High', N'Low', N'Medium', N'None of the above', N'1', N'test02')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (3, N'What is a shell ?', N'It is a hardware component', N'It is a command interpreter', N'It is a part in compiler', N'It is a tool in CPU scheduling', N'2', N'test03')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (3, N'A complex System evolves from a', N'smaller system', N'medium system', N'bigger system', N'none of the above', N'1', N'test04')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (3, N'CFG can be recognized by a', N'push down automata', N'2 way linear bounded automata', N'finite state automata', N'both a and b', N'4', N'test05')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (3, N'BHE  of 8086 microprocessor signal is used to interface the', N'Even bank memory', N'Odd bank memory', N'I/O', N'DMA', N'2', N'test06')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (3, N'The complete graph, denoted Kv (where v represents the number of vertices, and v is a positive integer),is the graph having all possible edges.Which of the following formulas gives the number of edges (e) of the complete graph on v vertices?', N'e = 2(v-1)', N'e = (1/2)v(v-1)', N'e = v-1', N'e = 2(v+1)', N'2', N'test07')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (3, N'The space factor when determining the efficiency of algorithm is measured by', N'Counting the maximum memory needed by the algorithm', N'Counting the minimum memory needed by the algorithm', N'Counting the average memory needed by the algorithm', N'Counting the maximum disk space needed by the algorithm', N'1', N'test08')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (3, N'A compound statement is:', N'A collection of one or more statements enclosed in ', N'A statement involving if and else ', N'A way of declaring variables d.A way of setting the value of a variable', N'A statement involving do and while', N'3', N'test09')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (3, N'The operation of processing each element in the list is known as', N'Sorting', N'Merging', N'Inserting', N'Traversal', N'4', N'test10')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (3, N'Frames from one LAN can be transmitted to another LAN via the device', N'Router', N'Bridge', N'Repeater', N'Modem', N'2', N'test11')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (3, N'The highest  level in the hierarchy of data organization is called', N'data bank', N'data base', N'data file', N'data record', N'2', N'test12')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (3, N'The ways entrepreneurs make decisions.', N'Entrepreneurial domain.', N'Reverse brain storming', N'Heuristics', N'Forward brain storming', N'1', N'test13')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (3, N'he scientific method in O.R. study generally involves', N'Judgement Phase', N'Research Phase', N'Action Phase', N'All of the given', N'4', N'test14')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (3, N'Arguments of a functions are separated with', N'comma', N'semicolon', N'colon', N'none of the above', N'1', N'test15')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (3, N'Which command is used to remove a directory?', N'rm', N'rmdir', N'dldir', N'rdir', N'2', N'test16')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (4, N'Strong and ductile materials:', N'polymers', N'ceramics', N'metals', N'semiconductors', N'3', N'test01')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (4, N'The output of a 2-input NAND gate with high at both the inputs will be', N'High', N'Low', N'High and Low', N'None of the above', N'2', N'test02')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (4, N'In the blocked state', N'the processes waiting for I/O are found', N'the process which is running is found', N'the processes waiting for the processor are found', N'none of the above', N'1', N'test03')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (4, N'Which of the following activities is part in the cleanroom process?', N'increment planning', N'requirements gathering', N'statistical use testing', N'all of the above', N'4', N'test04')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (4, N'A bottom up parser generates:', N'left most derivation', N'right most derivation', N'right most derivation in reverse', N'left most derivation in reverse', N'3', N'test05')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (4, N'Which of the following graphs can be drawn without edge crossings?', N'The complete graph on five vertices.', N'The wheel graph on ten vertices.', N'The complete graph on six vertices.', N'The utility graph.', N'2', N'test07')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (4, N'The following is NOT an example of a data type.', N'int', N'public', N'button', N'void', N'2', N'test09')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (4, N'Finding the location of the element with a given value is:', N'Traversal', N'Search', N'Sort', N'None of the above', N'2', N'test10')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (4, N'Which of the following condition is used to transmit two packets over a medium at the same time?', N'Contention', N'Collision', N'Synchronous', N'Asynchronous', N'2', N'test11')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (4, N'A trademark is', N'A word, symbol, name or device that a business uses to identify its goods.', N'A legal protection for information on foreign products.', N'Legal protection for intellectual works.', N'Legal protection for a U.S. product exported to another country', N'1', N'test13')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (4, N'Variables inside parenthesis of functions declarations have _____ level access.', N'local', N'global', N'module', N'universal', N'1', N'test15')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (5, N'Pick the composit from the list:', N'wood', N'steel', N'nylon', N'mica', N'1', N'test01')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (5, N'The angular velocity of geo-stationary satellite is:', N'Equal to the angular velocity of earth', N'Less than the angular velocity of earth', N'More than the angular velocity of earth', N'None of the above', N'1', N'test02')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (5, N'Virtual memory is:', N'An extremely large main memory', N'An extremely large secondary memory', N'An illusion of extremely large main memory', N'A type of memory used in super computers', N'3', N'test03')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (5, N'The box specification describes an abstraction, stimuli, and response are:', N'black box', N'state box', N'white box', N'clear box', N'4', N'test04')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (5, N'Synthesized attributecan easily be simulated by an', N'LL grammar', N'ambiguous grammar', N'LR grammar', N'none of the above', N'3', N'test05')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (5, N'There are thirty-four possible (not isomorphic) graphs with five vertices. Which of the following graphs is isomorphic to its OWN compliment?', N'The complete graph on five vertices.', N'The null graph on five vertices.', N'The path graph on five vertices.', N'The cyclic graph on five vertices.', N'4', N'test07')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (5, N'The following a legal Java statement', N'm1 = new TextField("sixty");', N'1a = 6;', N'add(m1);', N'm1.setText("Hello world);', N'3', N'test09')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (5, N'Avalanche photodiode receivers can detect hits of transmitted data by receiving', N'100 photons', N'200 photons', N'300 photons', N'400 photons', N'2', N'test11')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (5, N'locus of control is:', N'A feeling', N'Attitude', N'Atribute', N'None of the Above', N'3', N'test13')
INSERT [dbo].[question] ([qno], [question], [opa], [opb], [opc], [opd], [rightop], [testcode]) VALUES (5, N'The keyword endl', N'Ends the execution of program where it is written', N'Ends the output in cout statement', N'Ends the line in program. There can be no statements after endl', N'Ends current line and starts a new line in cout statement.', N'4', N'test15')
/****** Object:  Default [DF_result_marks]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[result] ADD  CONSTRAINT [DF_result_marks]  DEFAULT (NULL) FOR [marks]
GO
/****** Object:  Default [DF_result_evaluated]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[result] ADD  CONSTRAINT [DF_result_evaluated]  DEFAULT (NULL) FOR [evaluated]
GO
/****** Object:  Default [DF_result_testcode]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[result] ADD  CONSTRAINT [DF_result_testcode]  DEFAULT (NULL) FOR [testcode]
GO
/****** Object:  Default [DF_result_usn]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[result] ADD  CONSTRAINT [DF_result_usn]  DEFAULT (NULL) FOR [usn]
GO
/****** Object:  Default [DF_administrator_aid]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[administrator] ADD  CONSTRAINT [DF_administrator_aid]  DEFAULT (NULL) FOR [aid]
GO
/****** Object:  Default [DF_administrator_name]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[administrator] ADD  CONSTRAINT [DF_administrator_name]  DEFAULT (NULL) FOR [name]
GO
/****** Object:  Default [DF_administrator_login]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[administrator] ADD  CONSTRAINT [DF_administrator_login]  DEFAULT (NULL) FOR [login]
GO
/****** Object:  Default [DF_administrator_password]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[administrator] ADD  CONSTRAINT [DF_administrator_password]  DEFAULT (NULL) FOR [password]
GO
/****** Object:  Default [DF_student_name]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[student] ADD  CONSTRAINT [DF_student_name]  DEFAULT (NULL) FOR [name]
GO
/****** Object:  Default [DF_student_usn]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[student] ADD  CONSTRAINT [DF_student_usn]  DEFAULT (NULL) FOR [usn]
GO
/****** Object:  Default [DF_student_did]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[student] ADD  CONSTRAINT [DF_student_did]  DEFAULT (NULL) FOR [did]
GO
/****** Object:  Default [DF_student_batch]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[student] ADD  CONSTRAINT [DF_student_batch]  DEFAULT (NULL) FOR [batch]
GO
/****** Object:  Default [DF_student_sem]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[student] ADD  CONSTRAINT [DF_student_sem]  DEFAULT (NULL) FOR [sem]
GO
/****** Object:  Default [DF_student_login]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[student] ADD  CONSTRAINT [DF_student_login]  DEFAULT (NULL) FOR [login]
GO
/****** Object:  Default [DF_student_password]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[student] ADD  CONSTRAINT [DF_student_password]  DEFAULT (NULL) FOR [password]
GO
/****** Object:  Default [DF_student_aid]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[student] ADD  CONSTRAINT [DF_student_aid]  DEFAULT (NULL) FOR [aid]
GO
/****** Object:  Default [DF_department_did]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[department] ADD  CONSTRAINT [DF_department_did]  DEFAULT (NULL) FOR [did]
GO
/****** Object:  Default [DF_department_dname]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[department] ADD  CONSTRAINT [DF_department_dname]  DEFAULT (NULL) FOR [dname]
GO
/****** Object:  Default [DF_department_aid]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[department] ADD  CONSTRAINT [DF_department_aid]  DEFAULT (NULL) FOR [aid]
GO
/****** Object:  Default [DF_faculty_fid]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[faculty] ADD  CONSTRAINT [DF_faculty_fid]  DEFAULT (NULL) FOR [fid]
GO
/****** Object:  Default [DF_faculty_name]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[faculty] ADD  CONSTRAINT [DF_faculty_name]  DEFAULT (NULL) FOR [name]
GO
/****** Object:  Default [DF_faculty_did]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[faculty] ADD  CONSTRAINT [DF_faculty_did]  DEFAULT (NULL) FOR [did]
GO
/****** Object:  Default [DF_faculty_login]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[faculty] ADD  CONSTRAINT [DF_faculty_login]  DEFAULT (NULL) FOR [login]
GO
/****** Object:  Default [DF_faculty_password]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[faculty] ADD  CONSTRAINT [DF_faculty_password]  DEFAULT (NULL) FOR [password]
GO
/****** Object:  Default [DF_test_testcode]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[test] ADD  CONSTRAINT [DF_test_testcode]  DEFAULT (NULL) FOR [testcode]
GO
/****** Object:  Default [DF_test_fid]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[test] ADD  CONSTRAINT [DF_test_fid]  DEFAULT (NULL) FOR [fid]
GO
/****** Object:  Default [DF_test_sid]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[test] ADD  CONSTRAINT [DF_test_sid]  DEFAULT (NULL) FOR [sid]
GO
/****** Object:  Default [DF_subject_name]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[subject] ADD  CONSTRAINT [DF_subject_name]  DEFAULT (NULL) FOR [name]
GO
/****** Object:  Default [DF_subject_sid]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[subject] ADD  CONSTRAINT [DF_subject_sid]  DEFAULT (NULL) FOR [sid]
GO
/****** Object:  Default [DF_subject_did]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[subject] ADD  CONSTRAINT [DF_subject_did]  DEFAULT (NULL) FOR [fid]
GO
/****** Object:  Default [DF_subject_type]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[subject] ADD  CONSTRAINT [DF_subject_type]  DEFAULT (NULL) FOR [type]
GO
/****** Object:  Default [DF_update_attendance_usn]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[update_attendance] ADD  CONSTRAINT [DF_update_attendance_usn]  DEFAULT (NULL) FOR [usn]
GO
/****** Object:  Default [DF_update_attendance_fid]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[update_attendance] ADD  CONSTRAINT [DF_update_attendance_fid]  DEFAULT (NULL) FOR [fid]
GO
/****** Object:  Default [DF_update_attendance_attendance]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[update_attendance] ADD  CONSTRAINT [DF_update_attendance_attendance]  DEFAULT (NULL) FOR [attendance]
GO
/****** Object:  Default [DF_test_ready_testcode]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[test_ready] ADD  CONSTRAINT [DF_test_ready_testcode]  DEFAULT (NULL) FOR [testcode]
GO
/****** Object:  Default [DF_test_ready_ready]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[test_ready] ADD  CONSTRAINT [DF_test_ready_ready]  DEFAULT (NULL) FOR [ready]
GO
/****** Object:  Default [DF_question_qno]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[question] ADD  CONSTRAINT [DF_question_qno]  DEFAULT ((0)) FOR [qno]
GO
/****** Object:  Default [DF_question_question]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[question] ADD  CONSTRAINT [DF_question_question]  DEFAULT (NULL) FOR [question]
GO
/****** Object:  Default [DF_question_opa]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[question] ADD  CONSTRAINT [DF_question_opa]  DEFAULT (NULL) FOR [opa]
GO
/****** Object:  Default [DF_question_opb]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[question] ADD  CONSTRAINT [DF_question_opb]  DEFAULT (NULL) FOR [opb]
GO
/****** Object:  Default [DF_question_opc]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[question] ADD  CONSTRAINT [DF_question_opc]  DEFAULT (NULL) FOR [opc]
GO
/****** Object:  Default [DF_question_opd]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[question] ADD  CONSTRAINT [DF_question_opd]  DEFAULT (NULL) FOR [opd]
GO
/****** Object:  Default [DF_question_rightop]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[question] ADD  CONSTRAINT [DF_question_rightop]  DEFAULT (NULL) FOR [rightop]
GO
/****** Object:  ForeignKey [FK_student_administrator]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[student]  WITH NOCHECK ADD  CONSTRAINT [FK_student_administrator] FOREIGN KEY([aid])
REFERENCES [dbo].[administrator] ([aid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[student] CHECK CONSTRAINT [FK_student_administrator]
GO
/****** Object:  ForeignKey [FK_department_administrator1]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[department]  WITH NOCHECK ADD  CONSTRAINT [FK_department_administrator1] FOREIGN KEY([aid])
REFERENCES [dbo].[administrator] ([aid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[department] CHECK CONSTRAINT [FK_department_administrator1]
GO
/****** Object:  ForeignKey [FK_faculty_department]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[faculty]  WITH CHECK ADD  CONSTRAINT [FK_faculty_department] FOREIGN KEY([did])
REFERENCES [dbo].[department] ([did])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[faculty] CHECK CONSTRAINT [FK_faculty_department]
GO
/****** Object:  ForeignKey [FK_test_faculty]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[test]  WITH CHECK ADD  CONSTRAINT [FK_test_faculty] FOREIGN KEY([fid])
REFERENCES [dbo].[faculty] ([fid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[test] CHECK CONSTRAINT [FK_test_faculty]
GO
/****** Object:  ForeignKey [FK_subject_faculty]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[subject]  WITH CHECK ADD  CONSTRAINT [FK_subject_faculty] FOREIGN KEY([fid])
REFERENCES [dbo].[faculty] ([fid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[subject] CHECK CONSTRAINT [FK_subject_faculty]
GO
/****** Object:  ForeignKey [FK_update_attendance_faculty]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[update_attendance]  WITH CHECK ADD  CONSTRAINT [FK_update_attendance_faculty] FOREIGN KEY([fid])
REFERENCES [dbo].[faculty] ([fid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[update_attendance] CHECK CONSTRAINT [FK_update_attendance_faculty]
GO
/****** Object:  ForeignKey [FK_test_ready_test]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[test_ready]  WITH CHECK ADD  CONSTRAINT [FK_test_ready_test] FOREIGN KEY([testcode])
REFERENCES [dbo].[test] ([testcode])
GO
ALTER TABLE [dbo].[test_ready] CHECK CONSTRAINT [FK_test_ready_test]
GO
/****** Object:  ForeignKey [FK_question_test]    Script Date: 05/22/2012 21:32:38 ******/
ALTER TABLE [dbo].[question]  WITH CHECK ADD  CONSTRAINT [FK_question_test] FOREIGN KEY([testcode])
REFERENCES [dbo].[test] ([testcode])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[question] CHECK CONSTRAINT [FK_question_test]
GO
