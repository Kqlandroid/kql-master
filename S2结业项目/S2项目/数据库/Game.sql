USE [master]
GO
/****** Object:  Database [PlayGameDB]    Script Date: 08/31/2015 15:54:55 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'PlayGameDB')
BEGIN
CREATE DATABASE [PlayGameDB] ON  PRIMARY 
( NAME = N'PlayGameDB', FILENAME = N'C:\PlayGameDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PlayGameDB_log', FILENAME = N'C:\PlayGameDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END
GO
ALTER DATABASE [PlayGameDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PlayGameDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PlayGameDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [PlayGameDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [PlayGameDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [PlayGameDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [PlayGameDB] SET ARITHABORT OFF
GO
ALTER DATABASE [PlayGameDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [PlayGameDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [PlayGameDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [PlayGameDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [PlayGameDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [PlayGameDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [PlayGameDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [PlayGameDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [PlayGameDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [PlayGameDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [PlayGameDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [PlayGameDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [PlayGameDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [PlayGameDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [PlayGameDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [PlayGameDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [PlayGameDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [PlayGameDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [PlayGameDB] SET  READ_WRITE
GO
ALTER DATABASE [PlayGameDB] SET RECOVERY FULL
GO
ALTER DATABASE [PlayGameDB] SET  MULTI_USER
GO
ALTER DATABASE [PlayGameDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [PlayGameDB] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'PlayGameDB', N'ON'
GO
USE [PlayGameDB]
GO
/****** Object:  ForeignKey [FK_sale_admin]    Script Date: 08/31/2015 15:54:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_sale_admin]') AND parent_object_id = OBJECT_ID(N'[dbo].[sale]'))
ALTER TABLE [dbo].[sale] DROP CONSTRAINT [FK_sale_admin]
GO
/****** Object:  ForeignKey [FK_sale_Game]    Script Date: 08/31/2015 15:54:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_sale_Game]') AND parent_object_id = OBJECT_ID(N'[dbo].[sale]'))
ALTER TABLE [dbo].[sale] DROP CONSTRAINT [FK_sale_Game]
GO
/****** Object:  ForeignKey [FK_yellow_admin]    Script Date: 08/31/2015 15:54:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_yellow_admin]') AND parent_object_id = OBJECT_ID(N'[dbo].[yellow]'))
ALTER TABLE [dbo].[yellow] DROP CONSTRAINT [FK_yellow_admin]
GO
/****** Object:  ForeignKey [FK_yellow_Game1]    Script Date: 08/31/2015 15:54:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_yellow_Game1]') AND parent_object_id = OBJECT_ID(N'[dbo].[yellow]'))
ALTER TABLE [dbo].[yellow] DROP CONSTRAINT [FK_yellow_Game1]
GO
/****** Object:  ForeignKey [FK_yellow_sale]    Script Date: 08/31/2015 15:54:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_yellow_sale]') AND parent_object_id = OBJECT_ID(N'[dbo].[yellow]'))
ALTER TABLE [dbo].[yellow] DROP CONSTRAINT [FK_yellow_sale]
GO
/****** Object:  Check [CK_yellow]    Script Date: 08/31/2015 15:54:57 ******/
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_yellow]') AND parent_object_id = OBJECT_ID(N'[dbo].[yellow]'))
BEGIN
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_yellow]') AND parent_object_id = OBJECT_ID(N'[dbo].[yellow]'))
ALTER TABLE [dbo].[yellow] DROP CONSTRAINT [CK_yellow]

END
GO
/****** Object:  Table [dbo].[yellow]    Script Date: 08/31/2015 15:54:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_yellow_admin]') AND parent_object_id = OBJECT_ID(N'[dbo].[yellow]'))
ALTER TABLE [dbo].[yellow] DROP CONSTRAINT [FK_yellow_admin]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_yellow_Game1]') AND parent_object_id = OBJECT_ID(N'[dbo].[yellow]'))
ALTER TABLE [dbo].[yellow] DROP CONSTRAINT [FK_yellow_Game1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_yellow_sale]') AND parent_object_id = OBJECT_ID(N'[dbo].[yellow]'))
ALTER TABLE [dbo].[yellow] DROP CONSTRAINT [FK_yellow_sale]
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_yellow]') AND parent_object_id = OBJECT_ID(N'[dbo].[yellow]'))
ALTER TABLE [dbo].[yellow] DROP CONSTRAINT [CK_yellow]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_yellow_gy_gain]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[yellow] DROP CONSTRAINT [DF_yellow_gy_gain]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_yellow_gy_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[yellow] DROP CONSTRAINT [DF_yellow_gy_time]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[yellow]') AND type in (N'U'))
DROP TABLE [dbo].[yellow]
GO
/****** Object:  Table [dbo].[sale]    Script Date: 08/31/2015 15:54:57 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_sale_admin]') AND parent_object_id = OBJECT_ID(N'[dbo].[sale]'))
ALTER TABLE [dbo].[sale] DROP CONSTRAINT [FK_sale_admin]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_sale_Game]') AND parent_object_id = OBJECT_ID(N'[dbo].[sale]'))
ALTER TABLE [dbo].[sale] DROP CONSTRAINT [FK_sale_Game]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sale]') AND type in (N'U'))
DROP TABLE [dbo].[sale]
GO
/****** Object:  Table [dbo].[AD]    Script Date: 08/31/2015 15:54:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AD]') AND type in (N'U'))
DROP TABLE [dbo].[AD]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 08/31/2015 15:54:57 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_admin_admin_manage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[admin] DROP CONSTRAINT [DF_admin_admin_manage]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_admin_admin_price]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[admin] DROP CONSTRAINT [DF_admin_admin_price]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[admin]') AND type in (N'U'))
DROP TABLE [dbo].[admin]
GO
/****** Object:  Table [dbo].[Game]    Script Date: 08/31/2015 15:54:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Game]') AND type in (N'U'))
DROP TABLE [dbo].[Game]
GO
/****** Object:  Table [dbo].[Game]    Script Date: 08/31/2015 15:54:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Game]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Game](
	[game_id] [int] IDENTITY(1,1) NOT NULL,
	[game_name] [nvarchar](50) NOT NULL,
	[game_co] [nvarchar](50) NULL,
 CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED 
(
	[game_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Game] ON
INSERT [dbo].[Game] ([game_id], [game_name], [game_co]) VALUES (1, N'英雄联盟s', N'拳头公司')
INSERT [dbo].[Game] ([game_id], [game_name], [game_co]) VALUES (2, N'剑灵', N'腾讯')
INSERT [dbo].[Game] ([game_id], [game_name], [game_co]) VALUES (3, N'地下城勇士', N'腾讯')
INSERT [dbo].[Game] ([game_id], [game_name], [game_co]) VALUES (4, N'天龙八部', N'腾讯')
INSERT [dbo].[Game] ([game_id], [game_name], [game_co]) VALUES (5, N'御龙在天', N'腾讯')
INSERT [dbo].[Game] ([game_id], [game_name], [game_co]) VALUES (6, N'梦幻西游', N'腾讯')
INSERT [dbo].[Game] ([game_id], [game_name], [game_co]) VALUES (7, N'私服传奇', N'腾讯')
INSERT [dbo].[Game] ([game_id], [game_name], [game_co]) VALUES (8, N'大天使之剑', N'网页')
INSERT [dbo].[Game] ([game_id], [game_name], [game_co]) VALUES (9, N'传奇霸主', N'网页')
INSERT [dbo].[Game] ([game_id], [game_name], [game_co]) VALUES (10, N'黑暗之光', N'网页')
INSERT [dbo].[Game] ([game_id], [game_name], [game_co]) VALUES (11, N'秦时明月', N'网页')
INSERT [dbo].[Game] ([game_id], [game_name], [game_co]) VALUES (12, N'火影忍者', N'网页')
INSERT [dbo].[Game] ([game_id], [game_name], [game_co]) VALUES (13, N'热血海贼王', N'网页')
INSERT [dbo].[Game] ([game_id], [game_name], [game_co]) VALUES (14, N'傲剑2', N'网页')
SET IDENTITY_INSERT [dbo].[Game] OFF
/****** Object:  Table [dbo].[admin]    Script Date: 08/31/2015 15:54:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[admin]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[admin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[admin_name] [nvarchar](50) NOT NULL,
	[admin_pwd] [nvarchar](50) NOT NULL,
	[admin_email] [nvarchar](50) NOT NULL,
	[admin_phone] [nvarchar](50) NOT NULL,
	[admin_ic] [nvarchar](50) NOT NULL,
	[admin_address] [nvarchar](50) NULL,
	[admin_sex] [char](2) NOT NULL,
	[admin_birthday] [datetime] NOT NULL,
	[admin_manage] [int] NOT NULL CONSTRAINT [DF_admin_admin_manage]  DEFAULT ((2)),
	[admin_price] [int] NOT NULL CONSTRAINT [DF_admin_admin_price]  DEFAULT ((0)),
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'admin', N'COLUMN',N'admin_manage'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1为管理员，2为用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin', @level2type=N'COLUMN',@level2name=N'admin_manage'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'admin', N'COLUMN',N'admin_price'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'admin', @level2type=N'COLUMN',@level2name=N'admin_price'
GO
SET IDENTITY_INSERT [dbo].[admin] ON
INSERT [dbo].[admin] ([admin_id], [admin_name], [admin_pwd], [admin_email], [admin_phone], [admin_ic], [admin_address], [admin_sex], [admin_birthday], [admin_manage], [admin_price]) VALUES (2, N'admin', N'admin', N'101412014@qq.com', N'15687925448', N'320322199000000000', N'江苏南京', N'女', CAST(0x0000869900000000 AS DateTime), 1, 2951)
INSERT [dbo].[admin] ([admin_id], [admin_name], [admin_pwd], [admin_email], [admin_phone], [admin_ic], [admin_address], [admin_sex], [admin_birthday], [admin_manage], [admin_price]) VALUES (6, N'aaaa', N'123456', N'www.1002143192@qq.com', N'15682289078', N'513022199402240173', N'四川达州16号', N'男', CAST(0x00008BC500000000 AS DateTime), 2, 1169)
INSERT [dbo].[admin] ([admin_id], [admin_name], [admin_pwd], [admin_email], [admin_phone], [admin_ic], [admin_address], [admin_sex], [admin_birthday], [admin_manage], [admin_price]) VALUES (7, N'Nancy', N'654321', N'1002664427@qq.com', N'15950814014', N'320723199610274251', N'江苏连云港', N'男', CAST(0x00008A2300000000 AS DateTime), 2, 1100)
INSERT [dbo].[admin] ([admin_id], [admin_name], [admin_pwd], [admin_email], [admin_phone], [admin_ic], [admin_address], [admin_sex], [admin_birthday], [admin_manage], [admin_price]) VALUES (8, N'Jake', N'jake123', N'571857673@qq.com', N'15895973844', N'320723199603055561', N'江苏扬州', N'女', CAST(0x0000893700000000 AS DateTime), 2, 1200)
INSERT [dbo].[admin] ([admin_id], [admin_name], [admin_pwd], [admin_email], [admin_phone], [admin_ic], [admin_address], [admin_sex], [admin_birthday], [admin_manage], [admin_price]) VALUES (9, N'Lucky', N'lucky123', N'978494407@qq.com', N'15705184638', N'320723199506284433', N'江苏盐城', N'男', CAST(0x0000883C00000000 AS DateTime), 2, 1300)
INSERT [dbo].[admin] ([admin_id], [admin_name], [admin_pwd], [admin_email], [admin_phone], [admin_ic], [admin_address], [admin_sex], [admin_birthday], [admin_manage], [admin_price]) VALUES (10, N'bdqn', N'jbit', N'37405444@qq.com', N'15950769755', N'32072319940615', N'江苏灌云', N'男', CAST(0x000086C200000000 AS DateTime), 2, 1400)
INSERT [dbo].[admin] ([admin_id], [admin_name], [admin_pwd], [admin_email], [admin_phone], [admin_ic], [admin_address], [admin_sex], [admin_birthday], [admin_manage], [admin_price]) VALUES (11, N'Faker', N'faker123', N'290555480@qq.com', N'15950769722', N'320723198312054242', N'湖南常德', N'男', CAST(0x000077BD00000000 AS DateTime), 2, 1500)
INSERT [dbo].[admin] ([admin_id], [admin_name], [admin_pwd], [admin_email], [admin_phone], [admin_ic], [admin_address], [admin_sex], [admin_birthday], [admin_manage], [admin_price]) VALUES (12, N'Flame', N'flame456', N'355907936@qq.com', N'15105184638', N'320756199011046650', N'江苏下车', N'男', CAST(0x0000819B00000000 AS DateTime), 2, 1600)
INSERT [dbo].[admin] ([admin_id], [admin_name], [admin_pwd], [admin_email], [admin_phone], [admin_ic], [admin_address], [admin_sex], [admin_birthday], [admin_manage], [admin_price]) VALUES (13, N'Madlife', N'madlife321', N'247663760@qq.com', N'15950768195', N'320723198410274251', N'江苏上车', N'女', CAST(0x0000790400000000 AS DateTime), 2, 1700)
SET IDENTITY_INSERT [dbo].[admin] OFF
/****** Object:  Table [dbo].[AD]    Script Date: 08/31/2015 15:54:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AD](
	[ad_id] [int] IDENTITY(1,1) NOT NULL,
	[ad_name] [nvarchar](100) NOT NULL,
	[ad_url] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_AD] PRIMARY KEY CLUSTERED 
(
	[ad_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[AD] ON
INSERT [dbo].[AD] ([ad_id], [ad_name], [ad_url]) VALUES (2, N'愿望墙专区', N'assets/images/rain_1-320x240.jpg')
INSERT [dbo].[AD] ([ad_id], [ad_name], [ad_url]) VALUES (3, N'七夕特别篇', N'assets/images/min_icons_thumb1-320x240.jpg')
INSERT [dbo].[AD] ([ad_id], [ad_name], [ad_url]) VALUES (4, N'秒杀商城', N'assets/images/flat_icons_thumb.jpg')
INSERT [dbo].[AD] ([ad_id], [ad_name], [ad_url]) VALUES (5, N'名人访谈', N'assets/images/bike-320x240.jpg')
INSERT [dbo].[AD] ([ad_id], [ad_name], [ad_url]) VALUES (6, N'福利专区', N'assets/images/bike-320x240.jpg')
INSERT [dbo].[AD] ([ad_id], [ad_name], [ad_url]) VALUES (7, N'游戏专区', N'assets/images/six_1-320x240.jpg')
SET IDENTITY_INSERT [dbo].[AD] OFF
/****** Object:  Table [dbo].[sale]    Script Date: 08/31/2015 15:54:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sale]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sale](
	[sl_id] [int] IDENTITY(1,1) NOT NULL,
	[sl_title] [nvarchar](50) NOT NULL,
	[sl_Content] [nvarchar](50) NOT NULL,
	[admin_id] [int] NOT NULL,
	[sl_price] [int] NOT NULL,
	[sl_time] [datetime] NOT NULL,
	[sl_gameid] [int] NOT NULL,
	[sl_url] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_sale] PRIMARY KEY CLUSTERED 
(
	[sl_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[sale] ON
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (1, N'英雄联盟店铺', N'英雄联盟 LOL 琴瑟仙女 琴女 永久终极皮肤 DJ 娑娜 ', 6, 250, CAST(0x0000A43B00000000 AS DateTime), 1, N'images/women/LOL/lol_fenlei_1.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (2, N'剑灵', N'腾讯游戏j剑灵点卡/剑灵5000点券剑灵50元5000点卷★官', 7, 300, CAST(0x0000A52D00000000 AS DateTime), 2, N'images/wangluo/jl/jl_fenlei_1.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (3, N'地下城与勇士活动', N'地下城与勇士100元点券/DNF点卡/DNF点', 6, 350, CAST(0x0000A50E00000000 AS DateTime), 3, N'images/wangluo/dnf/dnf_fenlei_2.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (7, N'剑灵', N'洒洒水 ', 6, 400, CAST(0x0000A49200000000 AS DateTime), 2, N'images/women/LOL/lol_fenlei_4.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (11, N'英雄联盟', N'英雄联盟 LOL 琴瑟仙女 琴女 永久终极皮肤 DJ 娑娜 ', 2, 450, CAST(0x0000A4B000000000 AS DateTime), 1, N'images/women/LOL/lol_fenlei_5.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (12, N'地下城与勇士', N'  萨阿萨德斯阿斯', 2, 500, CAST(0x0000A50C00000000 AS DateTime), 3, N'images/wangluo/dnf/dnf_fenlei_2.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (13, N'英雄联盟店铺', N'英雄联盟 LOL 琴瑟仙女 琴女 永久终极皮肤 DJ 娑娜 
19900点 ', 2, 100, CAST(0x0000A43B00000000 AS DateTime), 1, N'images/wangluo/lol/lol_fenlei_1.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (14, N'地下城与勇士旗舰店', N'地下城与勇士100元点券/DNF点卡/DNF点
卷/DNF10000点券 自动充值 ', 6, 50, CAST(0x0000A52D00000000 AS DateTime), 2, N'images/wangluo/dnf/dnf_fenlei_2.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (15, N'剑灵充值中心', N'腾讯游戏j剑灵点卡/剑灵5000点券剑灵50元5000点卷★官
方自动充值 ', 7, 20, CAST(0x0000A50E00000000 AS DateTime), 3, N'images/wangluo/jl/jl_fenlei_1.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (16, N'天龙八部永远的经典', N'搜狐新天龙八部3点卡畅游一卡通100元2000点数
4000元宝 自动充值', 8, 40, CAST(0x0000A49200000000 AS DateTime), 4, N'images/wangluo/tlbb/tlbb_fenlei_1.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (17, N'御龙在天', N'腾讯御龙在天10元1000金子 御龙在天金子1000金直充', 9, 30, CAST(0x0000A4B000000000 AS DateTime), 5, N'images/wangluo/ylzt/ylzt_fenlei_1.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (18, N'梦幻西游', N'梦幻西游2点卡10元100点/网易一卡通10元100点/可寄售★自
动充值', 10, 70, CAST(0x0000A50C00000000 AS DateTime), 6, N'images/wangluo/mhxy/mhxy_fenlei_1.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (19, N'私服传奇', N'37玩传奇霸业10元1000元宝37wan传奇霸业首充37游戏充值官
网充值 ', 12, 30, CAST(0x0000A4EB00000000 AS DateTime), 7, N'images/wangluo/sfcq/sfcq_fenlei_3.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (22, N'黑暗之光', N'360YY37黑暗之光盛世三国2天书世界礼包福利号帐号元宝
100=300元 ', 2, 40, CAST(0x0000A4CC00000000 AS DateTime), 10, N'images/wangye/hazg/hazg_fenlei_2.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (23, N'秦时明月', N'秦时明月典藏兵器 官方正版墨眉鲨齿太阿蚩尤剑霸王枪武器
模型', 6, 100, CAST(0x0000A4CA00000000 AS DateTime), 11, N'images/wangye/qsmy/qsmy_fenlei_1.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (24, N'火影忍者', N'腾讯网页游戏 30元点卡火影忍者ol元宝充值300点券 点卷 到
账Q币 ', 7, 30, CAST(0x0000A43200000000 AS DateTime), 12, N'images/wangye/hyrz/hyrz_fenlei_1.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (25, N'热血海贼王', N'网页游戏 热血海贼王单机版 服务端 橙装 副本 BOSS 带修
改工具 ', 8, 50, CAST(0x0000A41300000000 AS DateTime), 13, N'images/wangye/rxhzw/rxhzw_fenlei_1.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (26, N'傲剑2', N'卖家代充|哥们网页游戏100元点卡 傲剑2元宝1000 万世1000元宝 
', 9, 40, CAST(0x0000A43300000000 AS DateTime), 14, N'images/wangye/aj2/aj2_fenlei_1.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (27, N'英雄联盟皮肤实惠价', N'LOL 英雄联盟 潮汐海灵 小鱼人新皮肤 兔宝宝 兔
尾巴 菲兹 4500点 ', 10, 40, CAST(0x0000A41300000000 AS DateTime), 1, N'images/wangluo/lol/lol_fenlei_2.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (28, N'地下城与勇士代练店', N'dnf游戏币浙江一区重庆广西四川广东3江苏1湖北2
福建4二5金币电信', 12, 20, CAST(0x0000A48F00000000 AS DateTime), 2, N'images/wangluo/dnf/dnf_fenlei_4.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (31, N'梦幻西游', N'网易一卡通30元300点卡 梦幻西游2点卡 梦幻西游 可寄售自
动充值', 2, 30, CAST(0x0000A48E00000000 AS DateTime), 5, N'images/wangluo/mhxy/mhxy_fenlei_2.jpg')
INSERT [dbo].[sale] ([sl_id], [sl_title], [sl_Content], [admin_id], [sl_price], [sl_time], [sl_gameid], [sl_url]) VALUES (32, N'私服传奇', N'网页游戏传奇霸业元宝充值打折扣 福利号礼包托号返利号扶
持号 ', 6, 100, CAST(0x0000A4B000000000 AS DateTime), 6, N'images/wangluo/sfcq/sfcq_fenlei_4.jpg')
SET IDENTITY_INSERT [dbo].[sale] OFF
/****** Object:  Table [dbo].[yellow]    Script Date: 08/31/2015 15:54:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[yellow]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[yellow](
	[gy_id] [int] IDENTITY(1,1) NOT NULL,
	[game_typeid] [int] NOT NULL,
	[gy_price] [int] NOT NULL,
	[gy_sum] [int] NOT NULL,
	[gy_amount] [int] NOT NULL,
	[gy_salePriceid] [int] NOT NULL,
	[gy_purchasePriceid] [int] NULL,
	[gy_gain] [int] NOT NULL CONSTRAINT [DF_yellow_gy_gain]  DEFAULT ((1)),
	[gy_time] [datetime] NOT NULL CONSTRAINT [DF_yellow_gy_time]  DEFAULT (getdate())
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[yellow]') AND name = N'IX_yellow')
CREATE NONCLUSTERED INDEX [IX_yellow] ON [dbo].[yellow] 
(
	[gy_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[yellow] ON
INSERT [dbo].[yellow] ([gy_id], [game_typeid], [gy_price], [gy_sum], [gy_amount], [gy_salePriceid], [gy_purchasePriceid], [gy_gain], [gy_time]) VALUES (8, 1, 20, 1, 20, 1, 2, 1, CAST(0x0000A4FF01201707 AS DateTime))
INSERT [dbo].[yellow] ([gy_id], [game_typeid], [gy_price], [gy_sum], [gy_amount], [gy_salePriceid], [gy_purchasePriceid], [gy_gain], [gy_time]) VALUES (11, 2, 40, 1, 40, 2, 6, 1, CAST(0x0000A4FF01201707 AS DateTime))
INSERT [dbo].[yellow] ([gy_id], [game_typeid], [gy_price], [gy_sum], [gy_amount], [gy_salePriceid], [gy_purchasePriceid], [gy_gain], [gy_time]) VALUES (12, 3, 60, 1, 60, 3, 2, 1, CAST(0x0000A4FF01201707 AS DateTime))
INSERT [dbo].[yellow] ([gy_id], [game_typeid], [gy_price], [gy_sum], [gy_amount], [gy_salePriceid], [gy_purchasePriceid], [gy_gain], [gy_time]) VALUES (17, 2, 80, 1, 80, 7, 6, 1, CAST(0x0000A4FF01201707 AS DateTime))
INSERT [dbo].[yellow] ([gy_id], [game_typeid], [gy_price], [gy_sum], [gy_amount], [gy_salePriceid], [gy_purchasePriceid], [gy_gain], [gy_time]) VALUES (18, 2, 300, 2, 600, 2, 2, 1, CAST(0x0000A4FF01201707 AS DateTime))
INSERT [dbo].[yellow] ([gy_id], [game_typeid], [gy_price], [gy_sum], [gy_amount], [gy_salePriceid], [gy_purchasePriceid], [gy_gain], [gy_time]) VALUES (19, 1, 250, 1, 250, 1, 2, 1, CAST(0x0000A4FF01201707 AS DateTime))
INSERT [dbo].[yellow] ([gy_id], [game_typeid], [gy_price], [gy_sum], [gy_amount], [gy_salePriceid], [gy_purchasePriceid], [gy_gain], [gy_time]) VALUES (21, 2, 40, 1, 40, 2, 6, 1, CAST(0x0000A4FF01201707 AS DateTime))
INSERT [dbo].[yellow] ([gy_id], [game_typeid], [gy_price], [gy_sum], [gy_amount], [gy_salePriceid], [gy_purchasePriceid], [gy_gain], [gy_time]) VALUES (23, 2, 80, 1, 80, 2, 6, 1, CAST(0x0000A4FF01201707 AS DateTime))
INSERT [dbo].[yellow] ([gy_id], [game_typeid], [gy_price], [gy_sum], [gy_amount], [gy_salePriceid], [gy_purchasePriceid], [gy_gain], [gy_time]) VALUES (24, 3, 120, 1, 120, 2, 6, 1, CAST(0x0000A4FF01201707 AS DateTime))
INSERT [dbo].[yellow] ([gy_id], [game_typeid], [gy_price], [gy_sum], [gy_amount], [gy_salePriceid], [gy_purchasePriceid], [gy_gain], [gy_time]) VALUES (26, 2, 40, 1, 40, 2, 6, 1, CAST(0x0000A4FF01201707 AS DateTime))
INSERT [dbo].[yellow] ([gy_id], [game_typeid], [gy_price], [gy_sum], [gy_amount], [gy_salePriceid], [gy_purchasePriceid], [gy_gain], [gy_time]) VALUES (28, 2, 80, 1, 80, 2, 6, 1, CAST(0x0000A4FF01201707 AS DateTime))
INSERT [dbo].[yellow] ([gy_id], [game_typeid], [gy_price], [gy_sum], [gy_amount], [gy_salePriceid], [gy_purchasePriceid], [gy_gain], [gy_time]) VALUES (29, 3, 120, 1, 120, 2, 6, 1, CAST(0x0000A4FF01201707 AS DateTime))
SET IDENTITY_INSERT [dbo].[yellow] OFF
/****** Object:  Check [CK_yellow]    Script Date: 08/31/2015 15:54:57 ******/
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_yellow]') AND parent_object_id = OBJECT_ID(N'[dbo].[yellow]'))
ALTER TABLE [dbo].[yellow]  WITH CHECK ADD  CONSTRAINT [CK_yellow] CHECK  (([gy_amount]=[gy_price]*[gy_sum]))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_yellow]') AND parent_object_id = OBJECT_ID(N'[dbo].[yellow]'))
ALTER TABLE [dbo].[yellow] CHECK CONSTRAINT [CK_yellow]
GO
/****** Object:  ForeignKey [FK_sale_admin]    Script Date: 08/31/2015 15:54:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_sale_admin]') AND parent_object_id = OBJECT_ID(N'[dbo].[sale]'))
ALTER TABLE [dbo].[sale]  WITH CHECK ADD  CONSTRAINT [FK_sale_admin] FOREIGN KEY([admin_id])
REFERENCES [dbo].[admin] ([admin_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_sale_admin]') AND parent_object_id = OBJECT_ID(N'[dbo].[sale]'))
ALTER TABLE [dbo].[sale] CHECK CONSTRAINT [FK_sale_admin]
GO
/****** Object:  ForeignKey [FK_sale_Game]    Script Date: 08/31/2015 15:54:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_sale_Game]') AND parent_object_id = OBJECT_ID(N'[dbo].[sale]'))
ALTER TABLE [dbo].[sale]  WITH CHECK ADD  CONSTRAINT [FK_sale_Game] FOREIGN KEY([sl_gameid])
REFERENCES [dbo].[Game] ([game_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_sale_Game]') AND parent_object_id = OBJECT_ID(N'[dbo].[sale]'))
ALTER TABLE [dbo].[sale] CHECK CONSTRAINT [FK_sale_Game]
GO
/****** Object:  ForeignKey [FK_yellow_admin]    Script Date: 08/31/2015 15:54:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_yellow_admin]') AND parent_object_id = OBJECT_ID(N'[dbo].[yellow]'))
ALTER TABLE [dbo].[yellow]  WITH CHECK ADD  CONSTRAINT [FK_yellow_admin] FOREIGN KEY([gy_purchasePriceid])
REFERENCES [dbo].[admin] ([admin_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_yellow_admin]') AND parent_object_id = OBJECT_ID(N'[dbo].[yellow]'))
ALTER TABLE [dbo].[yellow] CHECK CONSTRAINT [FK_yellow_admin]
GO
/****** Object:  ForeignKey [FK_yellow_Game1]    Script Date: 08/31/2015 15:54:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_yellow_Game1]') AND parent_object_id = OBJECT_ID(N'[dbo].[yellow]'))
ALTER TABLE [dbo].[yellow]  WITH CHECK ADD  CONSTRAINT [FK_yellow_Game1] FOREIGN KEY([game_typeid])
REFERENCES [dbo].[Game] ([game_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_yellow_Game1]') AND parent_object_id = OBJECT_ID(N'[dbo].[yellow]'))
ALTER TABLE [dbo].[yellow] CHECK CONSTRAINT [FK_yellow_Game1]
GO
/****** Object:  ForeignKey [FK_yellow_sale]    Script Date: 08/31/2015 15:54:57 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_yellow_sale]') AND parent_object_id = OBJECT_ID(N'[dbo].[yellow]'))
ALTER TABLE [dbo].[yellow]  WITH CHECK ADD  CONSTRAINT [FK_yellow_sale] FOREIGN KEY([gy_salePriceid])
REFERENCES [dbo].[sale] ([sl_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_yellow_sale]') AND parent_object_id = OBJECT_ID(N'[dbo].[yellow]'))
ALTER TABLE [dbo].[yellow] CHECK CONSTRAINT [FK_yellow_sale]
GO
