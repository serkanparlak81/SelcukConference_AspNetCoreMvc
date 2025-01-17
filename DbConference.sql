USE [DbTechConf]
GO
/****** Object:  Table [dbo].[Bildiri]    Script Date: 26.07.2018 01:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bildiri](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[YazarId] [int] NOT NULL,
	[EditorId] [int] NOT NULL,
	[EditorNotu] [nvarchar](max) NULL,
	[SayfaKimlik] [nvarchar](250) NULL,
	[Konu] [nvarchar](max) NULL,
	[Aciklama] [nvarchar](max) NULL,
	[BildiriTarih] [datetime] NOT NULL,
	[Sonuc] [int] NOT NULL,
 CONSTRAINT [PK_Bildiri] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ek]    Script Date: 26.07.2018 01:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ek](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EkYol] [nvarchar](max) NULL,
	[BildiriId] [int] NOT NULL,
 CONSTRAINT [PK_Ek] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genel]    Script Date: 26.07.2018 01:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genel](
	[BannerYol] [nvarchar](max) NULL,
	[SimgeYol] [nvarchar](max) NULL,
	[KonferanTarihi] [datetime] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Genel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HakemBildiriAtama]    Script Date: 26.07.2018 01:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HakemBildiriAtama](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BildiriId] [int] NOT NULL,
	[HakemId] [int] NOT NULL,
	[HakemNotu] [nvarchar](max) NULL,
	[Sonuc] [int] NOT NULL,
 CONSTRAINT [PK_HakemBildiriAtama] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KonuEtiketi]    Script Date: 26.07.2018 01:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KonuEtiketi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EtiketAdiTr] [nvarchar](200) NULL,
	[EtiketAdiEng] [nvarchar](200) NULL,
	[EditorId] [int] NOT NULL,
 CONSTRAINT [PK_KonuEtiketi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 26.07.2018 01:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuAdi] [nvarchar](50) NULL,
	[MenuAdiEng] [nvarchar](50) NULL,
	[SayfaIcerik] [nvarchar](max) NULL,
	[SayfaIcerikEng] [nvarchar](max) NULL,
	[ListeSira] [int] NOT NULL,
	[AltMenuId] [int] NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mesaj]    Script Date: 26.07.2018 01:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesaj](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GonderenId] [int] NOT NULL,
	[Konu] [nvarchar](250) NULL,
	[Icerik] [nvarchar](max) NULL,
	[AliciId] [int] NOT NULL,
	[Okundu] [bit] NOT NULL,
	[IletimTarihi] [datetime] NOT NULL,
 CONSTRAINT [PK_Mesaj] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaperNotify]    Script Date: 26.07.2018 01:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaperNotify](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PaperId] [int] NOT NULL,
	[UyeId] [int] NOT NULL,
	[BildiriMesaj] [nvarchar](max) NULL,
	[OkunduMu] [bit] NOT NULL,
 CONSTRAINT [PK_PaperNotify] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sehir]    Script Date: 26.07.2018 01:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sehir](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SehirAdi] [nvarchar](255) NOT NULL,
	[UlkeId] [int] NOT NULL,
 CONSTRAINT [PK_il] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ulke]    Script Date: 26.07.2018 01:36:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ulke](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UlkeAdi] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_ulke] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uye]    Script Date: 26.07.2018 01:36:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uye](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Soyadi] [nvarchar](50) NULL,
	[Sifre] [nvarchar](50) NULL,
	[Mail] [nvarchar](200) NULL,
	[Telefon] [nvarchar](100) NULL,
	[SehirId] [int] NOT NULL,
	[Kurum] [nvarchar](200) NULL,
	[ProfilYolu] [nvarchar](max) NULL,
	[Cinsiyet] [int] NOT NULL,
	[Unvan] [nvarchar](100) NULL,
	[Adres] [nvarchar](max) NULL,
	[Admin] [bit] NOT NULL,
	[Editor] [bit] NOT NULL,
	[Hakem] [bit] NOT NULL,
	[Yazar] [bit] NOT NULL,
	[BilimselKomite] [bit] NOT NULL,
	[OrganizasyonKomite] [bit] NOT NULL,
	[Aktif] [bit] NOT NULL,
 CONSTRAINT [PK_Uye] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bildiri] ON 
GO
INSERT [dbo].[Bildiri] ([Id], [YazarId], [EditorId], [EditorNotu], [SayfaKimlik], [Konu], [Aciklama], [BildiriTarih], [Sonuc]) VALUES (1, 13, 3, N'sadasdf', N'553d9583-b08d-471b-81bd-3fbf0456b419', N'Adem uslunun şeysis', N'<p>asdsss</p>', CAST(N'2018-07-26T01:27:09.380' AS DateTime), 2)
GO
INSERT [dbo].[Bildiri] ([Id], [YazarId], [EditorId], [EditorNotu], [SayfaKimlik], [Konu], [Aciklama], [BildiriTarih], [Sonuc]) VALUES (3, 9, 3, N'Onayaa', N'b69431f5-d42f-4fa1-9520-a9b08f9a551b', N'Ooy', N'<p>&nbsp;ou</p>', CAST(N'2018-07-14T00:05:01.257' AS DateTime), 3)
GO
INSERT [dbo].[Bildiri] ([Id], [YazarId], [EditorId], [EditorNotu], [SayfaKimlik], [Konu], [Aciklama], [BildiriTarih], [Sonuc]) VALUES (4, 13, 9, NULL, N'b46ee14f-7cb1-4376-8fbf-c3f8871d9c4b', N'Serkan selam', N'<p>asdasd</p>', CAST(N'2018-07-14T23:14:58.860' AS DateTime), 2)
GO
SET IDENTITY_INSERT [dbo].[Bildiri] OFF
GO
SET IDENTITY_INSERT [dbo].[Ek] ON 
GO
INSERT [dbo].[Ek] ([Id], [EkYol], [BildiriId]) VALUES (2, N'/images/ekler/1/b581c491-bdc8-4d0d-a723-fd79587d968a.docx', 1)
GO
INSERT [dbo].[Ek] ([Id], [EkYol], [BildiriId]) VALUES (5, N'/images/ekler/4/595ebf78-7d66-4658-865e-01f36255e4da.png', 4)
GO
INSERT [dbo].[Ek] ([Id], [EkYol], [BildiriId]) VALUES (6, N'/images/ekler/1/235ad0e0-9967-4c85-95b1-8d0c068d6908.png', 1)
GO
SET IDENTITY_INSERT [dbo].[Ek] OFF
GO
SET IDENTITY_INSERT [dbo].[Genel] ON 
GO
INSERT [dbo].[Genel] ([BannerYol], [SimgeYol], [KonferanTarihi], [Id]) VALUES (N'/images/banner/slide3.jpg', NULL, CAST(N'2020-01-16T00:00:00.000' AS DateTime), 3)
GO
SET IDENTITY_INSERT [dbo].[Genel] OFF
GO
SET IDENTITY_INSERT [dbo].[HakemBildiriAtama] ON 
GO
INSERT [dbo].[HakemBildiriAtama] ([Id], [BildiriId], [HakemId], [HakemNotu], [Sonuc]) VALUES (214, 3, 11, NULL, 2)
GO
INSERT [dbo].[HakemBildiriAtama] ([Id], [BildiriId], [HakemId], [HakemNotu], [Sonuc]) VALUES (215, 3, 10, NULL, 2)
GO
INSERT [dbo].[HakemBildiriAtama] ([Id], [BildiriId], [HakemId], [HakemNotu], [Sonuc]) VALUES (216, 3, 11, NULL, 2)
GO
INSERT [dbo].[HakemBildiriAtama] ([Id], [BildiriId], [HakemId], [HakemNotu], [Sonuc]) VALUES (217, 3, 13, NULL, 2)
GO
INSERT [dbo].[HakemBildiriAtama] ([Id], [BildiriId], [HakemId], [HakemNotu], [Sonuc]) VALUES (1321, 1, 11, NULL, 2)
GO
INSERT [dbo].[HakemBildiriAtama] ([Id], [BildiriId], [HakemId], [HakemNotu], [Sonuc]) VALUES (1322, 1, 10, NULL, 2)
GO
INSERT [dbo].[HakemBildiriAtama] ([Id], [BildiriId], [HakemId], [HakemNotu], [Sonuc]) VALUES (1323, 1, 9, NULL, 2)
GO
SET IDENTITY_INSERT [dbo].[HakemBildiriAtama] OFF
GO
SET IDENTITY_INSERT [dbo].[KonuEtiketi] ON 
GO
INSERT [dbo].[KonuEtiketi] ([Id], [EtiketAdiTr], [EtiketAdiEng], [EditorId]) VALUES (1, N'Konu1', N'Subject1', 10)
GO
INSERT [dbo].[KonuEtiketi] ([Id], [EtiketAdiTr], [EtiketAdiEng], [EditorId]) VALUES (3, N'Konu5', N'Subject5', 10)
GO
INSERT [dbo].[KonuEtiketi] ([Id], [EtiketAdiTr], [EtiketAdiEng], [EditorId]) VALUES (6, N'Deneme', N'tryy', 11)
GO
INSERT [dbo].[KonuEtiketi] ([Id], [EtiketAdiTr], [EtiketAdiEng], [EditorId]) VALUES (7, N'Ner', N'What', 9)
GO
INSERT [dbo].[KonuEtiketi] ([Id], [EtiketAdiTr], [EtiketAdiEng], [EditorId]) VALUES (8, N'Serkan', N'Serkee', 11)
GO
SET IDENTITY_INSERT [dbo].[KonuEtiketi] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 
GO
INSERT [dbo].[Menu] ([Id], [MenuAdi], [MenuAdiEng], [SayfaIcerik], [SayfaIcerikEng], [ListeSira], [AltMenuId]) VALUES (37, N'Komiteler', N'Committees', N'                                                <h5 class="text-primary" style="font-family: Raleway, sans-serif; color: rgb(51, 122, 183);"><span style="font-weight: 700;"><br></span></h5><table class="table table-bordered"><tbody><tr><td><h5 class="text-primary" style="font-family: Raleway, sans-serif; color: rgb(51, 122, 183);">Dr. Ismail Saritas, Selcuk University - TR<span style="font-weight: 700;">Honorary Chair</span><span style="font-weight: 700;"><br></span></h5><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Mustafa Sahin, Selcuk University - TR</h6><h5 class="text-primary" style="font-family: Raleway, sans-serif; color: rgb(51, 122, 183);"><span style="font-weight: 700;">Chair</span></h5><h5 class="text-primary" style="font-family: Raleway, sans-serif; color: rgb(51, 122, 183);"><span style="font-weight: 700;">Co-Chairs</span></h5><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Mehmet Cunkas, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Alla Anohina Naumeca, Riga Technical University - LV</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Silyan Sibinov Arsov, Rousse University - BG</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Murat Ciniviz, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Erdinc Kocer, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ilker Ali Ozkan, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Murat Koklu, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ibrahim Uyanik, Selcuk University - TR</h6><h5 class="text-primary" style="font-family: Raleway, sans-serif; color: rgb(51, 122, 183);"><span style="font-weight: 700;">Science Committee</span></h5><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Gabriel Luna Sandoval, Sonora State University - MX</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Silyan Sibinov Arsov, Rousse University - BG</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Alexander Sudnitson, Tallinn University Of Technology - EE</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Alla Anohina Naumeca, Riga Technical University - LV</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Almoataz Youssef Abdelaziz, Ain Shams University - EG</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Amar Ramdane Cherif, University Of Versailles - FR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Anca Loana Andreescu, Academy Of Economic Studies - BG</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Anne Villems, University Of Tartu - EE</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Antonella Reitano, University Of Calabria - IT</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Antonio Mendes, Universidade De Coimbra - PT</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Artan Luma, South East European University - MK</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Asrun Matthiasdottir, Reykjavik University - IS</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Biagio Lenzitti, University Of Palermo - IT</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Binod Kumar, Jspm Jayawant Institute Of Computer Applications Pune - IN</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Boris Akanaev, Kazak National University - KZ</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Dimitris Dranidis, Sheffield University - GR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Domenico Tegolo, Universita Degli Studi Di Palermo - IT</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Eisha Akanksha, Mvj College Of Engineering - IN</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Elinda Kajo Mece, Polytechnic University Of Tirana - RO</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Heinz Dietrich Wuttke, Ilmenau University Of Technology - DE</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Howard Duncan, Dublin City University - IE</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Huse Fatkic, University Of Sarajevo - BA</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ivan Jelinek, Czech Technical University - CZ</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Jan Vom Brocke, University Of Liechtenstein - LI</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Janis Grundspenkis, Riga Technical University - LV</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Janusz Jablonowski, Warsaw University - PL</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Jiri Srba, Aalborg University - DK</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Karl Jones, Liverpool John Moores University - GB</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Laurentiu Cristian Deaconu, University Of Pitesti - RO</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Luca Lombardi, University Of Pavia - IT</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Majida Ali Abed Meshari, Tikrit University - IQ</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Mahdi Shahbakhti, Michigan Technology University - US</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Marco Porta, University Of Pavia - IT</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Mirjana Ivanovic, University Of Novi Sad - RS</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Muhammad Zia Ur Rehman, National Defence University - PK</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Natasa Hoic Bozic, Universityof Rijeka - HR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Thomas Engel, University Of Luxembourg - LU</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Pantha Ghosal, University Of Technology Sydney - AU</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Pino Caballero Gil, University Of La Laguna - ES</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Stavros Christodoulakis, Technical University Of Crete - GR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Stavros Nikolopoulos, University Of Ioannina - GR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Tatjana Dulinskiene, Kaunas University Of Technology - LT</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Virginio Cantoni, University Of Pavia - IT</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Yuri Pavlov, Bulgarian Academy Of Sciences - BG</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Zarifa Jabrayilova, Institute Of Information Technology Anas - AZ</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Adem Alpaslan Altun, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Saadetdin Herdem, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ibrahim Uyanik, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Mehmet Turan Demirci, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Novruz Allahverdi, Tob Karatay University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Erdal Bekiroglu, Abant Izzet Baysal University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ahmet Fenercioglu, Gaziosmanpasa University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ahmet Afsin Kulaksiz, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Temel Kayikcioglu, Karadeniz Technical University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Muciz Ozcan, Necmettin Erbakan University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Mumtaz Mutluer, Necmettin Erbakan University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Hakan Isik, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Hulusi Karaca, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Hayri Arabaci, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Erdinc Kocer, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Mehmet Akif Sahman, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Tugce Demirdelen, Adana Science Technology University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Engin Ozdemir, Kocaeli University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. M Ugras Cuma, Cukurova University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Bahattin Karakaya, Istanbul University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Mehmet Akbaba, Karabuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Miroslav Neslusan, University of Zilina - SK</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Hamza Bensouilah, Laboratoire de Mecanique et Structures - DZ</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Jaharah A Ghani, National University of Malaysia - MY</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ulvi Seker, Gazi University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ihsan Korkut, Gazi University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Hamit Saruhan, Duzce University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Nihat Yildirim, Gaziantep University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ertugrul Durak, Suleyman Demirel University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Hasan Gokkaya, Karabuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Nikolaos Blasis, Technical University Of Crete - GR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Mehmet Cengiz Kayacan, Suleyman Demirel University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Erol Turkes, Kirklareli University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Arif Gok, Amasya Teknoloji Faculty - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Spiridon Cretu, Gheorghe Asachitechnical University Of Iasi - RO</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Kadir Gok, Manisa Celal Bayar University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Tahir Sag, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Aristomenis Antoniadis, Technical University Of Crete - GR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Murat Koklu, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Humar Kahramanli, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Alina Ivan Dramogir, Gheorghe Asachitechnical University Of Iasi - RO</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Sakir Tasdemir, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ilker Ali Ozkan, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Shahabuddin Memon, University Of Sindh - PK</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Hakan Gokmese, Necmettin Erbakan University - TR</h6></td><td><br><h5 class="text-primary" style="font-family: Raleway, sans-serif; color: rgb(51, 122, 183);"><span style="font-weight: 700;">Organizing Committee</span></h5><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Alla Anohina Naumeca, Riga Technical University - LV</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Silyan Sibinov Arsov, Rousse University - BG</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Angel Smrikarov, Rousse University - BG</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Lilia Georgieva, Heriot Watt University - GB</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ismail Saritas, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Necmettin Tarakcioglu, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Haci Saglam, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Fatih Basciftci, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Mehmet Cunkas, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ibrahim Uyanik, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Selahattin Alan, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Suleyman Neseli, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Polyxeni Arapi, Technical University Of Greece - GR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Murat Ciniviz, Selcuk University - TR</h6><h5 class="text-primary" style="font-family: Raleway, sans-serif; color: rgb(51, 122, 183);"><span style="font-weight: 700;">Technical Committee</span></h5><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ilker Ali Ozkan, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Esra Kaya, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Eyub Canli, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Harun Sepet, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Burak Tezcan, Selcuk University - TR</h6></td></tr></tbody></table><h5 class="text-primary" style="font-family: Raleway, sans-serif; color: rgb(51, 122, 183);"><br><br></h5>                        
                    
                    
                ', N'                                                <h5 class="text-primary" style="font-family: Raleway, sans-serif; color: rgb(51, 122, 183);">Science Committee<br></h5><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Gabriel Luna Sandoval, Sonora State University - MX</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Silyan Sibinov Arsov, Rousse University - BG</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Alexander Sudnitson, Tallinn University Of Technology - EE</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Alla Anohina Naumeca, Riga Technical University - LV</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Almoataz Youssef Abdelaziz, Ain Shams University - EG</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Amar Ramdane Cherif, University Of Versailles - FR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Anca Loana Andreescu, Academy Of Economic Studies - BG</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Anne Villems, University Of Tartu - EE</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Antonella Reitano, University Of Calabria - IT</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Antonio Mendes, Universidade De Coimbra - PT</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Artan Luma, South East European University - MK</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Asrun Matthiasdottir, Reykjavik University - IS</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Biagio Lenzitti, University Of Palermo - IT</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Binod Kumar, Jspm Jayawant Institute Of Computer Applications Pune - IN</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Boris Akanaev, Kazak National University - KZ</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Dimitris Dranidis, Sheffield University - GR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Domenico Tegolo, Universita Degli Studi Di Palermo - IT</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Eisha Akanksha, Mvj College Of Engineering - IN</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Elinda Kajo Mece, Polytechnic University Of Tirana - RO</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Heinz Dietrich Wuttke, Ilmenau University Of Technology - DE</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Howard Duncan, Dublin City University - IE</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Huse Fatkic, University Of Sarajevo - BA</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ivan Jelinek, Czech Technical University - CZ</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Jan Vom Brocke, University Of Liechtenstein - LI</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Janis Grundspenkis, Riga Technical University - LV</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Janusz Jablonowski, Warsaw University - PL</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Jiri Srba, Aalborg University - DK</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Karl Jones, Liverpool John Moores University - GB</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Laurentiu Cristian Deaconu, University Of Pitesti - RO</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Luca Lombardi, University Of Pavia - IT</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Majida Ali Abed Meshari, Tikrit University - IQ</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Mahdi Shahbakhti, Michigan Technology University - US</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Marco Porta, University Of Pavia - IT</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Mirjana Ivanovic, University Of Novi Sad - RS</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Muhammad Zia Ur Rehman, National Defence University - PK</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Natasa Hoic Bozic, Universityof Rijeka - HR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Thomas Engel, University Of Luxembourg - LU</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Pantha Ghosal, University Of Technology Sydney - AU</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Pino Caballero Gil, University Of La Laguna - ES</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Stavros Christodoulakis, Technical University Of Crete - GR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Stavros Nikolopoulos, University Of Ioannina - GR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Tatjana Dulinskiene, Kaunas University Of Technology - LT</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Virginio Cantoni, University Of Pavia - IT</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Yuri Pavlov, Bulgarian Academy Of Sciences - BG</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Zarifa Jabrayilova, Institute Of Information Technology Anas - AZ</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Adem Alpaslan Altun, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Saadetdin Herdem, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ibrahim Uyanik, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Mehmet Turan Demirci, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Novruz Allahverdi, Tob Karatay University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Erdal Bekiroglu, Abant Izzet Baysal University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ahmet Fenercioglu, Gaziosmanpasa University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ahmet Afsin Kulaksiz, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Temel Kayikcioglu, Karadeniz Technical University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Muciz Ozcan, Necmettin Erbakan University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Mumtaz Mutluer, Necmettin Erbakan University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Hakan Isik, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Hulusi Karaca, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Hayri Arabaci, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Erdinc Kocer, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Mehmet Akif Sahman, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Tugce Demirdelen, Adana Science Technology University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Engin Ozdemir, Kocaeli University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. M Ugras Cuma, Cukurova University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Bahattin Karakaya, Istanbul University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Mehmet Akbaba, Karabuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Miroslav Neslusan, University of Zilina - SK</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Hamza Bensouilah, Laboratoire de Mecanique et Structures - DZ</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Jaharah A Ghani, National University of Malaysia - MY</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ulvi Seker, Gazi University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ihsan Korkut, Gazi University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Hamit Saruhan, Duzce University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Nihat Yildirim, Gaziantep University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ertugrul Durak, Suleyman Demirel University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Hasan Gokkaya, Karabuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Nikolaos Blasis, Technical University Of Crete - GR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Mehmet Cengiz Kayacan, Suleyman Demirel University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Erol Turkes, Kirklareli University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Arif Gok, Amasya Teknoloji Faculty - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Spiridon Cretu, Gheorghe Asachitechnical University Of Iasi - RO</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Kadir Gok, Manisa Celal Bayar University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Tahir Sag, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Aristomenis Antoniadis, Technical University Of Crete - GR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Murat Koklu, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Humar Kahramanli, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Alina Ivan Dramogir, Gheorghe Asachitechnical University Of Iasi - RO</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Sakir Tasdemir, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ilker Ali Ozkan, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Shahabuddin Memon, University Of Sindh - PK</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Hakan Gokmese, Necmettin Erbakan University - TR</h6><h5 class="text-primary" style="font-family: Raleway, sans-serif; color: rgb(51, 122, 183);"><span style="font-weight: 700;">Organizing Committee</span></h5><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Alla Anohina Naumeca, Riga Technical University - LV</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Silyan Sibinov Arsov, Rousse University - BG</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Angel Smrikarov, Rousse University - BG</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Lilia Georgieva, Heriot Watt University - GB</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ismail Saritas, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Necmettin Tarakcioglu, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Haci Saglam, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Fatih Basciftci, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Mehmet Cunkas, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ibrahim Uyanik, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Selahattin Alan, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Suleyman Neseli, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Polyxeni Arapi, Technical University Of Greece - GR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Murat Ciniviz, Selcuk University - TR</h6><h5 class="text-primary" style="font-family: Raleway, sans-serif; color: rgb(51, 122, 183);"><span style="font-weight: 700;">Technical Committee</span></h5><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Ilker Ali Ozkan, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Esra Kaya, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Eyub Canli, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Harun Sepet, Selcuk University - TR</h6><h6 style="font-family: Raleway, sans-serif; color: rgb(117, 123, 135);">Dr. Burak Tezcan, Selcuk University - TR</h6>                        
                    
                    
                ', 6, 0)
GO
INSERT [dbo].[Menu] ([Id], [MenuAdi], [MenuAdiEng], [SayfaIcerik], [SayfaIcerikEng], [ListeSira], [AltMenuId]) VALUES (38, N'Konferans Görevlileri', N'Conference Attenders', NULL, NULL, 17, 0)
GO
INSERT [dbo].[Menu] ([Id], [MenuAdi], [MenuAdiEng], [SayfaIcerik], [SayfaIcerikEng], [ListeSira], [AltMenuId]) VALUES (39, N'Başlıklar', N'Topics', NULL, NULL, 7, 0)
GO
INSERT [dbo].[Menu] ([Id], [MenuAdi], [MenuAdiEng], [SayfaIcerik], [SayfaIcerikEng], [ListeSira], [AltMenuId]) VALUES (40, N'Konferans Yeri', N'Conference Location', NULL, NULL, 8, 0)
GO
INSERT [dbo].[Menu] ([Id], [MenuAdi], [MenuAdiEng], [SayfaIcerik], [SayfaIcerikEng], [ListeSira], [AltMenuId]) VALUES (41, N'Tarihler', N'Deadlines', NULL, NULL, 9, 0)
GO
INSERT [dbo].[Menu] ([Id], [MenuAdi], [MenuAdiEng], [SayfaIcerik], [SayfaIcerikEng], [ListeSira], [AltMenuId]) VALUES (42, N'Sayfa Formatı', N'Paper Format', NULL, NULL, 10, 0)
GO
INSERT [dbo].[Menu] ([Id], [MenuAdi], [MenuAdiEng], [SayfaIcerik], [SayfaIcerikEng], [ListeSira], [AltMenuId]) VALUES (43, N'Kayıt Ücreti', N'Registration Fee', NULL, NULL, 11, 0)
GO
INSERT [dbo].[Menu] ([Id], [MenuAdi], [MenuAdiEng], [SayfaIcerik], [SayfaIcerikEng], [ListeSira], [AltMenuId]) VALUES (44, N'Açılış Konuşmacıları', N'Keynote Speakers', NULL, NULL, 12, 0)
GO
INSERT [dbo].[Menu] ([Id], [MenuAdi], [MenuAdiEng], [SayfaIcerik], [SayfaIcerikEng], [ListeSira], [AltMenuId]) VALUES (46, N'İletişim', N'Contact', N'<p style="text-align: justify; color: rgb(117, 123, 135); font-family: Raleway, sans-serif;"><span style="font-weight: 700;">Address:</span>&nbsp;<br>Selçuk University, Technology Faculty,&nbsp;<br>Alaaddin Keykubat Campus<br>Selçuklu / KONYA</p><p style="text-align: justify; color: rgb(117, 123, 135); font-family: Raleway, sans-serif;"><span style="font-weight: 700;">Web:</span><br><a href="http://icente.selcuk.edu.tr/" target="_parent" style="color: rgb(117, 123, 135);">http://icente.selcuk.edu.tr</a></p><p style="text-align: justify; color: rgb(117, 123, 135); font-family: Raleway, sans-serif;"><span style="font-weight: 700;">Email:</span><br><a href="mailto:icente@selcuk.edu.tr" style="color: rgb(117, 123, 135);">icente@selcuk.edu.tr</a></p><p style="text-align: justify; color: rgb(117, 123, 135); font-family: Raleway, sans-serif;"><span style="font-weight: 700;">Phone:</span><br>Dr. İlker Ali ÖZKAN<em>(+90 332 2233332)</em></p><p style="text-align: justify; color: rgb(117, 123, 135); font-family: Raleway, sans-serif;"><span style="font-weight: 700;">Fax:</span><br><em>+90 332 2412179</em></p>                        
                    ', N'<p style="text-align: justify; color: rgb(117, 123, 135); font-family: Raleway, sans-serif;"><span style="font-weight: 700;">Address:</span>&nbsp;<br>Selçuk University, Technology Faculty,&nbsp;<br>Alaaddin Keykubat Campus<br>Selçuklu / KONYA</p><p style="text-align: justify; color: rgb(117, 123, 135); font-family: Raleway, sans-serif;"><span style="font-weight: 700;">Web:</span><br><a href="http://icente.selcuk.edu.tr/" target="_parent" style="color: rgb(117, 123, 135);">http://icente.selcuk.edu.tr</a></p><p style="text-align: justify; color: rgb(117, 123, 135); font-family: Raleway, sans-serif;"><span style="font-weight: 700;">Email:</span><br><a href="mailto:icente@selcuk.edu.tr" style="color: rgb(117, 123, 135);">icente@selcuk.edu.tr</a></p><p style="text-align: justify; color: rgb(117, 123, 135); font-family: Raleway, sans-serif;"><span style="font-weight: 700;">Phone:</span><br>Dr. İlker Ali ÖZKAN<em>(+90 332 2233332)</em></p><p style="text-align: justify; color: rgb(117, 123, 135); font-family: Raleway, sans-serif;"><span style="font-weight: 700;">Fax:</span><br><em>+90 332 2412179</em></p>                        
                    ', 13, 0)
GO
INSERT [dbo].[Menu] ([Id], [MenuAdi], [MenuAdiEng], [SayfaIcerik], [SayfaIcerikEng], [ListeSira], [AltMenuId]) VALUES (47, N'Hakkımızda', N'About', N'<p style="text-align: justify; color: rgb(117, 123, 135); font-family: Raleway, sans-serif;">International Conference on Engineering Technologies will be held on October 27-29, 2018, at Selçuk University in Konya, Turkey.</p><p style="text-align: justify; color: rgb(117, 123, 135); font-family: Raleway, sans-serif;">The ICENTE18 conference is designed to bring together leading international and interdisciplinary research communities, developers, and users of advanced technologies and to discuss theoretical and practical issues in all the field of technologies.</p><p style="text-align: justify; color: rgb(117, 123, 135); font-family: Raleway, sans-serif;">The conference will provide a platform to present the results of the researches and developments and to highlight related activities from around the world.</p>                        
                    ', N'<p style="text-align: justify; color: rgb(117, 123, 135); font-family: Raleway, sans-serif;">International Conference on Engineering Technologies will be held on October 27-29, 2018, at Selçuk University in Konya, Turkey.</p><p style="text-align: justify; color: rgb(117, 123, 135); font-family: Raleway, sans-serif;">The ICENTE18 conference is designed to bring together leading international and interdisciplinary research communities, developers, and users of advanced technologies and to discuss theoretical and practical issues in all the field of technologies.</p><p style="text-align: justify; color: rgb(117, 123, 135); font-family: Raleway, sans-serif;">The conference will provide a platform to present the results of the researches and developments and to highlight related activities from around the world.</p>                        
                    ', 16, 0)
GO
INSERT [dbo].[Menu] ([Id], [MenuAdi], [MenuAdiEng], [SayfaIcerik], [SayfaIcerikEng], [ListeSira], [AltMenuId]) VALUES (48, N'Ders Yeri', N'Working Place', NULL, NULL, 4, 41)
GO
INSERT [dbo].[Menu] ([Id], [MenuAdi], [MenuAdiEng], [SayfaIcerik], [SayfaIcerikEng], [ListeSira], [AltMenuId]) VALUES (49, N'Selam', N'Hi', NULL, NULL, 3, 41)
GO
INSERT [dbo].[Menu] ([Id], [MenuAdi], [MenuAdiEng], [SayfaIcerik], [SayfaIcerikEng], [ListeSira], [AltMenuId]) VALUES (71, N'Anasayfa', N'Home', N'                        <p><img style="width: 100%" src="http://localhost:50582/images/banner/slide3.jpg" class="img-circle"></p><p>Merhaba</p><p>
                
                </p>
                ', N'                        <p><img style="width: 100%" src="http://localhost:50582/images/banner/slide3.jpg" class="img-circle">Hi</p>
                ', 4, 0)
GO
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Mesaj] ON 
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (4, 13, NULL, N'asdfkjaskdf', 3, 1, CAST(N'2018-07-13T23:31:53.597' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (5, 9, NULL, N'Serkancım nabersin', 3, 1, CAST(N'2018-07-13T23:56:31.523' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (6, 9, NULL, N'Hiç sesin çıkmıyo', 3, 1, CAST(N'2018-07-13T23:57:02.693' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (7, 3, NULL, N'asdfjıaslşdkfj lsadjflasdkjf lksjda lsadkjf lşasdkjf şlasd kjfaşlskdfj lşasjf lşdf', 10, 1, CAST(N'2018-07-14T21:25:39.090' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (8, 3, NULL, N'Ne diyon hacı', 10, 1, CAST(N'2018-07-14T21:45:08.143' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (9, 3, NULL, N'Heee', 13, 1, CAST(N'2018-07-14T21:45:21.437' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (10, 3, NULL, N'eee', 10, 1, CAST(N'2018-07-14T21:53:47.890' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (11, 3, NULL, N'Selam ademm nasılsın heee', 13, 1, CAST(N'2018-07-14T23:05:15.940' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (12, 13, NULL, N'Selam broo', 3, 1, CAST(N'2018-07-14T23:11:26.237' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (13, 3, NULL, N'ee', 13, 1, CAST(N'2018-07-14T23:11:35.857' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (14, 13, NULL, N'tamam uzatma', 3, 1, CAST(N'2018-07-14T23:12:31.250' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (15, 13, NULL, N'Serkan', 3, 1, CAST(N'2018-07-14T23:28:51.763' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (16, 13, NULL, N'asdad', 3, 1, CAST(N'2018-07-14T23:29:59.057' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (17, 3, NULL, N'tik mik yok', 13, 1, CAST(N'2018-07-14T23:31:14.063' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (18, 3, NULL, N'asd', 13, 1, CAST(N'2018-07-14T23:31:25.253' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (19, 3, NULL, N'asd', 13, 1, CAST(N'2018-07-14T23:31:46.583' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (20, 3, NULL, N'Daha nasılsın', 9, 1, CAST(N'2018-07-14T23:33:24.867' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (21, 13, NULL, N'Serkan', 3, 1, CAST(N'2018-07-14T23:39:42.143' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (22, 3, NULL, N'Nasılsın Dost', 10, 1, CAST(N'2018-07-15T11:09:51.290' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (23, 3, NULL, N'Deneeme', 9, 1, CAST(N'2018-07-15T11:43:22.097' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (24, 3, NULL, N'Efenim', 13, 1, CAST(N'2018-07-15T11:44:28.060' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (25, 3, NULL, N'Hee', 13, 1, CAST(N'2018-07-15T12:09:23.210' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (26, 3, NULL, N'askdjfalksdjf', 13, 1, CAST(N'2018-07-15T12:35:39.210' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (31, 10, NULL, N'Iiti sdf', 3, 1, CAST(N'2018-07-15T14:49:28.880' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (32, 10, NULL, N'son mesaj bu', 3, 1, CAST(N'2018-07-15T14:49:37.527' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (33, 3, NULL, N'Selam hocam bugünlerde moralim pek iyi değil ne yapmalıyım', 10, 1, CAST(N'2018-07-17T21:50:46.873' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (34, 11, NULL, N'nee', 3, 1, CAST(N'2018-07-17T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (35, 3, NULL, N'aaa', 13, 1, CAST(N'2018-07-18T23:11:48.390' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (36, 13, NULL, N'serkan', 3, 1, CAST(N'2018-07-18T23:15:31.000' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (37, 13, NULL, N'naber', 3, 1, CAST(N'2018-07-18T23:15:46.490' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (38, 13, NULL, N'dene', 3, 1, CAST(N'2018-07-18T23:16:15.427' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (39, 10, NULL, N'asds', 3, 1, CAST(N'2018-07-18T23:31:58.467' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (1033, 9, NULL, N'Eyi eyi', 3, 1, CAST(N'2018-07-26T01:09:05.127' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (1034, 9, NULL, N'ee', 3, 1, CAST(N'2018-07-26T01:09:14.237' AS DateTime))
GO
INSERT [dbo].[Mesaj] ([Id], [GonderenId], [Konu], [Icerik], [AliciId], [Okundu], [IletimTarihi]) VALUES (1035, 10, NULL, N'Heey bradır', 3, 0, CAST(N'2018-07-26T01:23:01.197' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Mesaj] OFF
GO
SET IDENTITY_INSERT [dbo].[PaperNotify] ON 
GO
INSERT [dbo].[PaperNotify] ([Id], [PaperId], [UyeId], [BildiriMesaj], [OkunduMu]) VALUES (1, 1, 3, N'Bir bildiride editör olarak atandınız', 1)
GO
INSERT [dbo].[PaperNotify] ([Id], [PaperId], [UyeId], [BildiriMesaj], [OkunduMu]) VALUES (81, 3, 3, N'Editörü olduğunuz bir bildiride düzenleme yapıldı', 1)
GO
INSERT [dbo].[PaperNotify] ([Id], [PaperId], [UyeId], [BildiriMesaj], [OkunduMu]) VALUES (113, 4, 11, N'Bir bildiride editör olarak atandınız', 1)
GO
INSERT [dbo].[PaperNotify] ([Id], [PaperId], [UyeId], [BildiriMesaj], [OkunduMu]) VALUES (114, 3, 11, N'Bir bildiride hakem olarak atandınız', 1)
GO
INSERT [dbo].[PaperNotify] ([Id], [PaperId], [UyeId], [BildiriMesaj], [OkunduMu]) VALUES (116, 3, 10, N'Bir bildiride hakem olarak atandınız', 1)
GO
INSERT [dbo].[PaperNotify] ([Id], [PaperId], [UyeId], [BildiriMesaj], [OkunduMu]) VALUES (119, 3, 9, N'Yazarı olduğunuz bildirinin editör kararı açıklandı', 1)
GO
INSERT [dbo].[PaperNotify] ([Id], [PaperId], [UyeId], [BildiriMesaj], [OkunduMu]) VALUES (120, 3, 11, N'Hakemi olduğunuz bildirinin editör kararı açıklandı', 1)
GO
INSERT [dbo].[PaperNotify] ([Id], [PaperId], [UyeId], [BildiriMesaj], [OkunduMu]) VALUES (122, 3, 10, N'Hakemi olduğunuz bildirinin editör kararı açıklandı', 1)
GO
INSERT [dbo].[PaperNotify] ([Id], [PaperId], [UyeId], [BildiriMesaj], [OkunduMu]) VALUES (241, 1, 3, N'Editörü olduğunuz bir bildiride düzenleme yapıldı', 1)
GO
INSERT [dbo].[PaperNotify] ([Id], [PaperId], [UyeId], [BildiriMesaj], [OkunduMu]) VALUES (1211, 1, 3, N'Edited on the paper(id: 1) that you are editor', 1)
GO
INSERT [dbo].[PaperNotify] ([Id], [PaperId], [UyeId], [BildiriMesaj], [OkunduMu]) VALUES (1214, 1, 11, N'Bir bildiride hakem olarak atandınız', 1)
GO
INSERT [dbo].[PaperNotify] ([Id], [PaperId], [UyeId], [BildiriMesaj], [OkunduMu]) VALUES (1215, 1, 10, N'Bir bildiride hakem olarak atandınız', 1)
GO
INSERT [dbo].[PaperNotify] ([Id], [PaperId], [UyeId], [BildiriMesaj], [OkunduMu]) VALUES (1216, 1, 9, N'Bir bildiride hakem olarak atandınız', 1)
GO
INSERT [dbo].[PaperNotify] ([Id], [PaperId], [UyeId], [BildiriMesaj], [OkunduMu]) VALUES (1217, 1, 3, N'Edited on the paper(id: 1) that you are editor', 1)
GO
INSERT [dbo].[PaperNotify] ([Id], [PaperId], [UyeId], [BildiriMesaj], [OkunduMu]) VALUES (1218, 1, 11, N'Edited on the paper(id: 1) that you are referee', 1)
GO
INSERT [dbo].[PaperNotify] ([Id], [PaperId], [UyeId], [BildiriMesaj], [OkunduMu]) VALUES (1219, 1, 10, N'Edited on the paper(id: 1) that you are referee', 1)
GO
INSERT [dbo].[PaperNotify] ([Id], [PaperId], [UyeId], [BildiriMesaj], [OkunduMu]) VALUES (1220, 1, 9, N'Edited on the paper(id: 1) that you are referee', 1)
GO
SET IDENTITY_INSERT [dbo].[PaperNotify] OFF
GO
SET IDENTITY_INSERT [dbo].[Sehir] ON 
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1, N'Asâdâbâd', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2, N'Âybak', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3, N'Baghlân', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4, N'Balkh', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5, N'Bâmîyân', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6, N'Chaghcharân', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (7, N'Chârîkâr', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (8, N'Farâh', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (9, N'Fayzâbâd', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (10, N'Ghardez', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (11, N'Ghazni', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (12, N'Herât', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (13, N'Jalâlâbâd', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (14, N'Kâbul', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (15, N'Khânâbâd', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (16, N'Khawst', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (17, N'Kholm', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (18, N'Lashkar Gâh', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (19, N'Mahmûd-e Râqî', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (20, N'Maydânshahr', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (21, N'Maymânah', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (22, N'Mazâr-e Sharîf', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (23, N'Mehtar Lâm', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (24, N'Nûristân', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (25, N'Pol-e Alam', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (26, N'Pol-e Khumri', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (27, N'Qal´eh-ye Naw', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (28, N'Qalât-e Ghilzay', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (29, N'Qandahâr', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (30, N'Qundûz', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (31, N'Sar-e Pul', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (32, N'Shibarghan', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (33, N'Tâloqân', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (34, N'Tarîn Kawt', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (35, N'Zaranj', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (36, N'Zareh Sharan', 1)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (37, N'Bajram Curri', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (38, N'Ballsh', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (39, N'Berat', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (40, N'Bilisht', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (41, N'Bulqizë', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (42, N'Burrel', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (43, N'Çorovodë', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (44, N'Delvinë', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (45, N'Durrës', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (46, N'Elbasan', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (47, N'Ersekë', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (48, N'Fier', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (49, N'Gjirokastër', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (50, N'Gramsh', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (51, N'Kavajë', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (52, N'Koplik', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (53, N'Korçë', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (54, N'Krujë', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (55, N'Krumë', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (56, N'Kuçovë', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (57, N'Kukës', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (58, N'Laç', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (59, N'Lezhë', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (60, N'Librazhd', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (61, N'Lushnjë', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (62, N'Patos', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (63, N'Peqin', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (64, N'Përmet', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (65, N'Peshkopi', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (66, N'Pogradec', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (67, N'Pukë', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (68, N'Rrëshen', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (69, N'Sarandë', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (70, N'Shkodër', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (71, N'Tepelenë', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (72, N'Tiranë', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (73, N'Vlorë', 2)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (74, N'´Ayn Baydâ', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (75, N'´Ayn Daflah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (76, N'´Ayn Tamûshanat', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (77, N'Adrâr', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (78, N'al-´Ulmah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (79, N'al-Aghwât', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (80, N'al-Bayadh', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (81, N'al-Bûnî', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (82, N'al-Jazâ´ir', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (83, N'al-Wâd', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (84, N'Annâbah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (85, N'ash-Shalif', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (86, N'at-Tarif', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (87, N'Bab Azwâr', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (88, N'Bashshar', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (89, N'Bâtnah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (90, N'Bijâyah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (91, N'Biskrah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (92, N'Blîdah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (93, N'Bû Sâ´adah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (94, N'Bûîrah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (95, N'Bumardas', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (96, N'Burj Bû Arrîrij', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (97, N'Burj-al-Kiffan', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (98, N'Ghâlizân', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (99, N'Ghardâyah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (100, N'Ilizi', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (101, N'Jîjîlî', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (102, N'Jilfah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (103, N'Khanshalah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (104, N'Masîlah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (105, N'Midyah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (106, N'Mîlah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (107, N'Muaskar', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (108, N'Mustaghanam', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (109, N'Naama', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (110, N'Qalmah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (111, N'Qustantînah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (112, N'Sakîkdah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (113, N'Satîf', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (114, N'Saydâ`', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (115, N'Sîdî ban-al-´Abbas', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (116, N'Sûq Ahrâs', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (117, N'Tamanghâsat', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (118, N'Tibâzah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (119, N'Tibissah', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (120, N'Tîlîmsân', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (121, N'Tindûf', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (122, N'Tîsamsîlt', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (123, N'Tiyârat', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (124, N'Tîzî Wazû', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (125, N'Umm-al-Bawâghî', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (126, N'Wahrân', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (127, N'Warqlâ', 3)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (128, N'Aoloau', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (129, N'Aua', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (130, N'Faga`alu', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (131, N'Fagasa', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (132, N'Fagatogo', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (133, N'Faleniu', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (134, N'Futiga', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (135, N'Ili`ili', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (136, N'Lauli`i', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (137, N'Leone', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (138, N'Malaeimi', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (139, N'Mapusagafou', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (140, N'Nu`uuli', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (141, N'Ofu', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (142, N'Pago Pago', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (143, N'Pava`ia`i', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (144, N'Swains', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (145, N'Tafuna', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (146, N'Taputimu', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (147, N'Utulei', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (148, N'Vailoatai', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (149, N'Vaitogi', 4)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (150, N'Andorra la Vella', 5)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (151, N'Canillo', 5)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (152, N'Encamp', 5)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (153, N'La Massana', 5)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (154, N'Les Escaldes', 5)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (155, N'Ordino', 5)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (156, N'Sant Julià de Lòria', 5)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (157, N'Benguela', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (158, N'Caála', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (159, N'Cabinda', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (160, N'Caxito', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (161, N'Chissamba', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (162, N'Huambo', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (163, N'Kuito', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (164, N'Lobito', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (165, N'Luanda', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (166, N'Lubango', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (167, N'Lucapa', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (168, N'Luena', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (169, N'Malanje', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (170, N'M`banza-Kongo', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (171, N'Menongue', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (172, N'Namibe', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (173, N'N`dalatando', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (174, N'Ondjiva', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (175, N'Saurimo', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (176, N'Soyo', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (177, N'Sumbe', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (178, N'Uíge', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (179, N'Waku-Kungo', 6)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (180, N'Sandy Ground', 7)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (181, N'The Valley', 7)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (182, N'Amundsen-Scott', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (183, N'Bellingshausen', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (184, N'Capitán Arturo Prat', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (185, N'Casey', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (186, N'Chang Cheng', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (187, N'Davis', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (188, N'Dumont d`Urville', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (189, N'Escudero', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (190, N'Esperanza', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (191, N'General Belgrano II', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (192, N'General Bernardo O`Higgins', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (193, N'MacMurdo', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (194, N'Maitri', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (195, N'Mirnyj', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (196, N'Molodezhnaya', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (197, N'Novolazarovskaya', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (198, N'Presidente Eduardo Frei Montalva', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (199, N'Rothera', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (200, N'Syowa', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (201, N'Vicecomodoro Marambio', 8)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (202, N'All Saints', 9)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (203, N'Bolands', 9)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (204, N'Carlisle', 9)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (205, N'Cedar Grove', 9)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (206, N'Codrington', 9)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (207, N'English Harbour', 9)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (208, N'Falmouth', 9)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (209, N'Freetown', 9)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (210, N'Jennings', 9)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (211, N'Liberta', 9)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (212, N'Old Road', 9)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (213, N'Parham', 9)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (214, N'Saint John`s', 9)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (215, N'Swetes', 9)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (216, N'Willikies', 9)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (217, N'Bahía Blanca', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (218, N'Buenos Aires', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (219, N'Catamarca', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (220, N'Comodoro Rivadavia', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (221, N'Concordia', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (222, N'Córdoba', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (223, N'Corrientes', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (224, N'Formosa', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (225, N'Jujuy', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (226, N'La Plata', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (227, N'La Rioja', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (228, N'Mar del Plata', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (229, N'Mendoza', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (230, N'Mercedes', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (231, N'Neuquén', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (232, N'Paraná', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (233, N'Posadas', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (234, N'Rawson', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (235, N'Resistencia', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (236, N'Río Cuarto', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (237, N'Río Gallegos', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (238, N'Rosario', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (239, N'Salta', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (240, N'San Carlos de Bariloche', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (241, N'San Juan', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (242, N'San Luis', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (243, N'San Nicolás', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (244, N'San Rafael', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (245, N'Santa Fé', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (246, N'Santa Rosa', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (247, N'Santiago del Estero', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (248, N'Tandil', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (249, N'Trelew', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (250, N'Tucumán', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (251, N'Ushuaia', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (252, N'Viedma', 10)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (253, N'Abovyan', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (254, N'Alaverdi', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (255, N'Ararat', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (256, N'Armavir', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (257, N'Artashat', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (258, N'Artik', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (259, N'Ashtarak', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (260, N'Charentsavan', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (261, N'Dilijan', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (262, N'Gavar', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (263, N'Goris', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (264, N'Gyumri', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (265, N'Hrazdan', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (266, N'Ijevan', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (267, N'Kapan', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (268, N'Sevan', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (269, N'Stepanavan', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (270, N'Vagharshapat', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (271, N'Vanadzor', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (272, N'Vardenis', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (273, N'Yegheknadzor', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (274, N'Yerevan', 11)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (275, N'Oranjestad', 12)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (276, N'Sint Nicolas', 12)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (277, N'Adelaide', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (278, N'Albury-Wodonga', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (279, N'Ballarat', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (280, N'Brisbane', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (281, N'Cairns', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (282, N'Canberra', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (283, N'Darwin', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (284, N'Geelong', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (285, N'Gold Coast', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (286, N'Hobart', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (287, N'Launceston', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (288, N'Melbourne', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (289, N'Newcastle', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (290, N'Perth', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (291, N'Shoalhaven', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (292, N'Sunshine Coast', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (293, N'Sydney', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (294, N'Toowoomba', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (295, N'Townsville', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (296, N'Wollongong', 13)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (297, N'Baden', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (298, N'Bregenz', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (299, N'Dornbirn', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (300, N'Eisenstadt', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (301, N'Feldkirch', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (302, N'Graz', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (303, N'Innsbruck', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (304, N'Klagenfurt', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (305, N'Klosterneuburg', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (306, N'Krems', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (307, N'Leoben', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (308, N'Linz', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (309, N'Salzburg', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (310, N'Sankt Pölten', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (311, N'Steyr', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (312, N'Traun', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (313, N'Villach', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (314, N'Wels', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (315, N'Wien', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (316, N'Wiener Neustadt', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (317, N'Wolfsberg', 14)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (318, N'Äli Bayramli', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (319, N'Bakixanov', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (320, N'Baku', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (321, N'Bärdä', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (322, N'Biläcäri', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (323, N'Gäncä', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (324, N'Göyçay', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (325, N'Hövsan', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (326, N'Imisli', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (327, N'Kälbäcär', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (328, N'Länkäran', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (329, N'Mastaga', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (330, N'Mingäçevir', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (331, N'Naxçivan', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (332, N'Qarasuxur', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (333, N'Qazax', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (334, N'Räsulzadä', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (335, N'Säki', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (336, N'Salyan', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (337, N'Sumqayit', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (338, N'Xaçmaz', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (339, N'Xankändi', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (340, N'Yevlax', 15)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (341, N'Alice Town', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (342, N'Andros Town', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (343, N'Arthur`s Town', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (344, N'Clarence Town', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (345, N'Cockburn Town', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (346, N'Colonel Hill', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (347, N'Coopers Town', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (348, N'Duncan Town', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (349, N'Dunmore Town', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (350, N'Freeport', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (351, N'Freetown', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (352, N'George Town', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (353, N'Great Harbour', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (354, N'High Rock', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (355, N'Marsh Harbour', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (356, N'Matthew Town', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (357, N'Nassau', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (358, N'Nicholls Town', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (359, N'Pirates Well', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (360, N'Port Nelson', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (361, N'Rock Sound', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (362, N'Snug Corner', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (363, N'Sweeting Cay', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (364, N'West End', 16)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (365, N'´Îsâ', 17)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (366, N'al-Manâmah', 17)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (367, N'al-Muharraq', 17)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (368, N'ar-Rifa´a', 17)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (369, N'Hidd', 17)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (370, N'Jidd Hafs', 17)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (371, N'Sitrah', 17)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (372, N'Bâgar Hât', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (373, N'Bândarban', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (374, N'Barguna', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (375, N'Barîsâl', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (376, N'Begamganj', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (377, N'Bholâ', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (378, N'Bogorâ', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (379, N'Brâhman Bâriya', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (380, N'Chândpûr', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (381, N'Châttagâm', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (382, N'Chuâdângâ', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (383, N'Dhâka', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (384, N'Dinâjpûr', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (385, N'Farîdpûr', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (386, N'Fenî', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (387, N'Gâybândâ', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (388, N'Gâzîpûr', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (389, N'Gopâlganj', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (390, N'Habîganj', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (391, N'Jaipûr Hât', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (392, N'Jamâlpûr', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (393, N'Jessor', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (394, N'Jhâlâkâtî', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (395, N'Jhanaydâh', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (396, N'Khagrachari', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (397, N'Khulnâ', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (398, N'Kishorganj', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (399, N'Koks Bâzâr', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (400, N'Komîllâ', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (401, N'Kurîgrâm', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (402, N'Kushtiyâ', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (403, N'Lakshmîpûr', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (404, N'Lâlmanîr Hât', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (405, N'Madârîpûr', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (406, N'Mâgura', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (407, N'Maimansingh', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (408, N'Mânikganj', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (409, N'Maulvi Bâzâr', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (410, N'Meherpur', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (411, N'Munshiganj', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (412, N'Narâl', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (413, N'Nârâyanganj', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (414, N'Narsingdi', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (415, N'Nator', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (416, N'Naugâon', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (417, N'Nawâbganj', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (418, N'Netrâkonâ', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (419, N'Nilphâmâri', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (420, N'Noâkhâli', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (421, N'Pâbna', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (422, N'Pâlang', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (423, N'Panchagarh', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (424, N'Patûâkhâlî', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (425, N'Pirojpûr', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (426, N'Rajbârî', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (427, N'Râjshâhî', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (428, N'Rângâmâtî', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (429, N'Rangpûr', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (430, N'Sa´idpur', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (431, N'Sâtkhîrâ', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (432, N'Sherpûr', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (433, N'Silhat', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (434, N'Sirâjganj', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (435, N'Sûnâmganj', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (436, N'Tangâyal', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (437, N'Thâkurgâon', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (438, N'Tungî', 18)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (439, N'Bathsheba', 19)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (440, N'Blackmans', 19)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (441, N'Bridgetown', 19)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (442, N'Bulkeley', 19)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (443, N'Crab Hill', 19)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (444, N'Crane', 19)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (445, N'Greenland', 19)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (446, N'Hillaby', 19)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (447, N'Holetown', 19)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (448, N'Oistins', 19)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (449, N'Speightstown', 19)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (450, N'Babrujsk', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (451, N'Baranavichy', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (452, N'Barisaw', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (453, N'Brèst', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (454, N'Homjel`', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (455, N'Hrodna', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (456, N'Lida', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (457, N'Mahiljow', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (458, N'Maladzechna', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (459, N'Mazyr', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (460, N'Minsk', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (461, N'Navapolack', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (462, N'Orsha', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (463, N'Pinsk', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (464, N'Polack', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (465, N'Rèchyca', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (466, N'Salihorsk', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (467, N'Svetlahorsk', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (468, N'Vicebsk', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (469, N'Zhlobin', 20)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (470, N'Aalst', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (471, N'Antwerpen', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (472, N'Arlon', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (473, N'Brugge', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (474, N'Brussel', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (475, N'Charleroi', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (476, N'Genk', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (477, N'Gent', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (478, N'Hasselt', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (479, N'Kortrijk', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (480, N'La Louvière', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (481, N'Leuven', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (482, N'Liège', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (483, N'Mechelen', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (484, N'Mons', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (485, N'Namur', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (486, N'Oostende', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (487, N'Roeselare', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (488, N'Seraing', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (489, N'Sint-Niklaas', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (490, N'Tournai', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (491, N'Wavre', 21)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (492, N'Belize', 22)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (493, N'Belmopan', 22)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (494, N'Benque Viejo', 22)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (495, N'Corozal', 22)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (496, N'Dangriga', 22)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (497, N'Orange Walk', 22)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (498, N'Punta Gorda', 22)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (499, N'San Ignacio', 22)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (500, N'San Pedro', 22)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (501, N'Abomey', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (502, N'Bohicon', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (503, N'Comé', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (504, N'Cotonou', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (505, N'Cové', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (506, N'Djougou', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (507, N'Dogbo', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (508, N'Kandi', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (509, N'Kouandé', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (510, N'Lokossa', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (511, N'Malanville', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (512, N'Natitingou', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (513, N'Nikki', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (514, N'Ouidah', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (515, N'Parakou', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (516, N'Pobé', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (517, N'Porto Novo', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (518, N'Sakété', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (519, N'Savalou', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (520, N'Savé', 23)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (521, N'Hamilton', 24)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (522, N'Saint George', 24)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (523, N'Chhukha', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (524, N'Damphu', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (525, N'Gasa', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (526, N'Geylegphug', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (527, N'Ha', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (528, N'Jakar', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (529, N'Lhuntshi', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (530, N'Mongar', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (531, N'Paro', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (532, N'Pemagatsel', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (533, N'Phuntsholing', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (534, N'Punakha', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (535, N'Samchi', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (536, N'Samdrup Jongkhar', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (537, N'Shemgang', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (538, N'Taga Dzong', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (539, N'Tashigang', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (540, N'Timphu', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (541, N'Tongsa', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (542, N'Wangdiphodrang', 25)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (543, N'Bermejo', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (544, N'Camiri', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (545, N'Cobija', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (546, N'Cochabamba', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (547, N'El Alto', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (548, N'Guayaramerín', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (549, N'La Paz', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (550, N'Llallagua', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (551, N'Montero', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (552, N'Oruro', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (553, N'Potosí', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (554, N'Riberalta', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (555, N'San Ignacio', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (556, N'Santa Cruz', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (557, N'Sucre', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (558, N'Tarija', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (559, N'Trinidad', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (560, N'Tupiza', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (561, N'Villazón', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (562, N'Yacuíba', 26)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (563, N'Banja Luka', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (564, N'Bihac', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (565, N'Bijeljina', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (566, N'Bosanska Krupa', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (567, N'Brchko', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (568, N'Bugojno', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (569, N'Cazin', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (570, N'Doboj', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (571, N'Focha', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (572, N'Gorazhde', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (573, N'Konjic', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (574, N'Mostar', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (575, N'Prijedor', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (576, N'Sarajevo', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (577, N'Travnik', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (578, N'Trebinje', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (579, N'Tuzla', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (580, N'Velika Kladusha', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (581, N'Visoko', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (582, N'Zenica', 27)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (583, N'Bobonong', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (584, N'Francistown', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (585, N'Gaborone', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (586, N'Ghanzi', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (587, N'Gumare', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (588, N'Hukuntsi', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (589, N'Jwaneng', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (590, N'Kanye', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (591, N'Kasane', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (592, N'Letlhakane', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (593, N'Lobatse', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (594, N'Mahalapye', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (595, N'Masunga', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (596, N'Maun', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (597, N'Mochudi', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (598, N'Mogoditshane', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (599, N'Molepolole', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (600, N'Moshupa', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (601, N'Orapa', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (602, N'Palapye', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (603, N'Ramotswa', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (604, N'Selibe Phikwe', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (605, N'Serowe', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (606, N'Shakawe', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (607, N'Sowa', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (608, N'Thamaga', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (609, N'Tlokweng', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (610, N'Tonota', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (611, N'Tsabong', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (612, N'Tutume', 28)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (613, N'Águas Lindas de Goiás', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (614, N'Alagoinhas', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (615, N'Alvorada', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (616, N'Americana', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (617, N'Ananindeua', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (618, N'Anápolis', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (619, N'Angra dos Reis', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (620, N'Aparecida de Goiânia', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (621, N'Apucarana', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (622, N'Aracaju', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (623, N'Araçatuba', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (624, N'Araguaína', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (625, N'Arapiraca', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (626, N'Araraquara', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (627, N'Araras', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (628, N'Atibaia', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (629, N'Barbacena', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (630, N'Barra Mansa', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (631, N'Barreiras', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (632, N'Barretos', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (633, N'Barueri', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (634, N'Bauru', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (635, N'Belém', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (636, N'Belford Roxo', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (637, N'Belo Horizonte', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (638, N'Betim', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (639, N'Blumenau', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (640, N'Boa Vista', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (641, N'Botucatu', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (642, N'Bragança Paulista', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (643, N'Brasília', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (644, N'Cabo de Santo Agostinho', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (645, N'Cabo Frio', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (646, N'Cachoeirinha', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (647, N'Cachoeiro de Itapemirim', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (648, N'Camaçari', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (649, N'Camaragibe', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (650, N'Campina Grande', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (651, N'Campinas', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (652, N'Campo Grande', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (653, N'Campos', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (654, N'Canoas', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (655, N'Carapicuíba', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (656, N'Cariacica', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (657, N'Caruaru', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (658, N'Cascavel', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (659, N'Castanhal', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (660, N'Catanduva', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (661, N'Caucaia', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (662, N'Caxias', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (663, N'Caxias do Sul', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (664, N'Chapecó', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (665, N'Colombo', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (666, N'Conselheiro Lafaiete', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (667, N'Contagem', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (668, N'Coronel Fabriciano', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (669, N'Cotia', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (670, N'Criciúma', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (671, N'Cubatão', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (672, N'Cuiabá', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (673, N'Curitiba', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (674, N'Diadema', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (675, N'Divinópolis', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (676, N'Dourados', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (677, N'Duque de Caxias', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (678, N'Embu', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (679, N'Feira de Santana', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (680, N'Ferraz de Vasconcelos', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (681, N'Florianópolis', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (682, N'Fortaleza', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (683, N'Foz do Iguaçu', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (684, N'Franca', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (685, N'Francisco Morato', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (686, N'Franco da Rocha', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (687, N'Garanhuns', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (688, N'Goiânia', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (689, N'Governador Valadares', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (690, N'Gravataí', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (691, N'Guarapuava', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (692, N'Guaratinguetá', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (693, N'Guarujá', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (694, N'Guarulhos', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (695, N'Hortolândia', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (696, N'Ibirité', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (697, N'Ilhéus', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (698, N'Imperatriz', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (699, N'Indaiatuba', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (700, N'Ipatinga', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (701, N'Itaboraí', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (702, N'Itabuna', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (703, N'Itajaí', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (704, N'Itapecerica da Serra', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (705, N'Itapetininga', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (706, N'Itapevi', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (707, N'Itaquaquecetuba', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (708, N'Itu', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (709, N'Jaboatão', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (710, N'Jacareí', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (711, N'Jandira', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (712, N'Jaraguá do Sul', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (713, N'Jaú', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (714, N'Jequié', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (715, N'João Pessoa', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (716, N'Joinville', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (717, N'Juazeiro', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (718, N'Juazeiro do Norte', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (719, N'Juiz de Fora', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (720, N'Jundiaí', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (721, N'Lages', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (722, N'Lauro de Freitas', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (723, N'Limeira', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (724, N'Londrina', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (725, N'Luziânia', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (726, N'Macaé', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (727, N'Macapá', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (728, N'Maceió', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (729, N'Magé', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (730, N'Manaus', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (731, N'Marabá', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (732, N'Maracanaú', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (733, N'Marília', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (734, N'Maringá', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (735, N'Mauá', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (736, N'Mogi Guaçu', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (737, N'Moji das Cruzes', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (738, N'Montes Claros', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (739, N'Mossoró', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (740, N'Natal', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (741, N'Nilópolis', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (742, N'Niterói', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (743, N'Nossa Senhora do Socorro', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (744, N'Nova Friburgo', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (745, N'Nova Iguaçu', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (746, N'Novo Hamburgo', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (747, N'Olinda', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (748, N'Osasco', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (749, N'Palhoça', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (750, N'Palmas', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (751, N'Paranaguá', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (752, N'Parnaíba', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (753, N'Parnamirim', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (754, N'Passo Fundo', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (755, N'Patos de Minas', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (756, N'Paulista', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (757, N'Pelotas', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (758, N'Petrolina', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (759, N'Petrópolis', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (760, N'Pindamonhangaba', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (761, N'Pinhais', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (762, N'Piracicaba', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (763, N'Poá', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (764, N'Poços de Caldas', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (765, N'Ponta Grossa', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (766, N'Porto Alegre', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (767, N'Porto Velho', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (768, N'Pouso Alegre', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (769, N'Praia Grande', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (770, N'Presidente Prudente', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (771, N'Queimados', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (772, N'Recife', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (773, N'Resende', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (774, N'Ribeirão das Neves', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (775, N'Ribeirão Pires', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (776, N'Ribeirão Preto', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (777, N'Rio Branco', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (778, N'Rio Claro', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (779, N'Rio de Janeiro', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (780, N'Rio Grande', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (781, N'Rio Verde', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (782, N'Rondonópolis', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (783, N'Sabará', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (784, N'Salvador', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (785, N'Santa Bárbara d`Oeste', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (786, N'Santa Cruz do Sul', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (787, N'Santa Luzia', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (788, N'Santa Maria', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (789, N'Santa Rita', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (790, N'Santarém', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (791, N'Santo André', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (792, N'Santos', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (793, N'São Bernardo do Campo', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (794, N'São Caetano do Sul', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (795, N'São Carlos', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (796, N'São Gonçalo', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (797, N'São João de Meriti', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (798, N'São José', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (799, N'São José do Rio Preto', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (800, N'São José dos Campos', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (801, N'São José dos Pinhais', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (802, N'São Leopoldo', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (803, N'São Luís', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (804, N'São Paulo', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (805, N'São Vicente', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (806, N'Sapucaia', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (807, N'Serra', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (808, N'Sete Lagoas', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (809, N'Sobral', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (810, N'Sorocaba', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (811, N'Sumaré', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (812, N'Suzano', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (813, N'Taboão da Serra', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (814, N'Taubaté', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (815, N'Teixeira de Freitas', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (816, N'Teófilo Otoni', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (817, N'Teresina', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (818, N'Teresópolis', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (819, N'Timon', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (820, N'Uberaba', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (821, N'Uberlândia', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (822, N'Uruguaiana', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (823, N'Valparaiso de Goiás', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (824, N'Varginha', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (825, N'Várzea Grande', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (826, N'Várzea Paulista', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (827, N'Viamão', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (828, N'Vila Velha', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (829, N'Vitória', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (830, N'Vitória da Conquista', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (831, N'Vitória de Santo Antão', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (832, N'Volta Redonda', 29)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (833, N'East End-Long Look', 30)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (834, N'Little Harbour', 30)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (835, N'Road Town', 30)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (836, N'Settlement', 30)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (837, N'Spanish Town', 30)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (838, N'West End', 30)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (839, N'Bandar Seri Begawan', 31)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (840, N'Bangar', 31)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (841, N'Kuala Belait', 31)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (842, N'Seria', 31)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (843, N'Tutong', 31)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (844, N'Blagoevgrad', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (845, N'Burgas', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (846, N'Dobrich', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (847, N'Gabrovo', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (848, N'Haskovo', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (849, N'Jambol', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (850, N'Kardzhali', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (851, N'Kazanlak', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (852, N'Kjustendil', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (853, N'Lovech', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (854, N'Montana', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (855, N'Pazardzhik', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (856, N'Pernik', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (857, N'Pleven', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (858, N'Plovdiv', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (859, N'Razgrad', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (860, N'Ruse', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (861, N'Shumen', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (862, N'Silistra', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (863, N'Sliven', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (864, N'Smoljan', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (865, N'Sofija', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (866, N'Stara Zagora', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (867, N'Targovishte', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (868, N'Varna', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (869, N'Veliko Tarnovo', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (870, N'Vidin', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (871, N'Vraca', 32)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (872, N'Banfora', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (873, N'Batié', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (874, N'Bobo Dioulasso', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (875, N'Bogandé', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (876, N'Boromo', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (877, N'Boulsa', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (878, N'Boussé', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (879, N'Dano', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (880, N'Dédougou', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (881, N'Diapaga', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (882, N'Diébougou', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (883, N'Djibo', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (884, N'Dori', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (885, N'Fada N`gourma', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (886, N'Gaoua', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (887, N'Gayéri', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (888, N'Gorom-Gorom', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (889, N'Gourcy', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (890, N'Houndé', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (891, N'Kaya', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (892, N'Kombissiri', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (893, N'Kongoussi', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (894, N'Koudougou', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (895, N'Koupéla', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (896, N'Léo', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (897, N'Manga', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (898, N'Nouna', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (899, N'Orodara', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (900, N'Ouagadougou', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (901, N'Ouahigouya', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (902, N'Pama', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (903, N'Pô', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (904, N'Réo', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (905, N'Sindou', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (906, N'Tenkodogo', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (907, N'Tougan', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (908, N'Yako', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (909, N'Ziniaré', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (910, N'Zorgo', 33)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (911, N'Bubanza', 34)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (912, N'Bujumbura', 34)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (913, N'Bururi', 34)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (914, N'Cankuzo', 34)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (915, N'Cibitoke', 34)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (916, N'Gitega', 34)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (917, N'Karuzi', 34)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (918, N'Kayanza', 34)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (919, N'Kirundo', 34)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (920, N'Makamba', 34)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (921, N'Muramvya', 34)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (922, N'Muyinga', 34)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (923, N'Ngozi', 34)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (924, N'Rutana', 34)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (925, N'Ruyigi', 34)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (926, N'Banlung', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (927, N'Bat Dâmbâng', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (928, N'Dong Tong', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (929, N'Kâmpóng Cham', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (930, N'Kâmpóng Chhnang', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (931, N'Kâmpóng Spoeu', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (932, N'Kâmpóng Thum', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (933, N'Kâmpôt', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (934, N'Krâchéh', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (935, N'Krong Kaeb', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (936, N'Krong Pailin', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (937, N'Phnum Pénh', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (938, N'Phumi Sâmraông', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (939, N'Phumi Takaev', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (940, N'Pousat', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (941, N'Preah Sihanouk', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (942, N'Prey Veaeng', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (943, N'Senmonorom', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (944, N'Siem Reab', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (945, N'Sisophon', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (946, N'Stueng Traeng', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (947, N'Svay Rieng', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (948, N'Ta Khmau', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (949, N'Tbeng Mean Chey', 35)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (950, N'Bafang', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (951, N'Bafoussam', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (952, N'Bamenda', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (953, N'Bana', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (954, N'Bertoua', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (955, N'Buéa', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (956, N'Douala', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (957, N'Ebolowa', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (958, N'Edéa', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (959, N'Foumban', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (960, N'Garoua', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (961, N'Kaélé', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (962, N'Kousséri', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (963, N'Kumba', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (964, N'Limbe', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (965, N'Loum', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (966, N'Maroua', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (967, N'Mokolo', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (968, N'Ngaoundéré', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (969, N'Nkongsamba', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (970, N'Yaoundé', 36)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (971, N'Abbotsford', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (972, N'Barrie', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (973, N'Calgary', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (974, N'Charlottetown', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (975, N'Chicoutimi-Jonquière', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (976, N'Edmonton', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (977, N'Fredericton', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (978, N'Guelph', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (979, N'Halifax', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (980, N'Hamilton', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (981, N'Iqaluit', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (982, N'Kelowna', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (983, N'Kingston', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (984, N'Kitchener', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (985, N'London', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (986, N'Montréal', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (987, N'Oshawa', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (988, N'Ottawa', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (989, N'Québec', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (990, N'Regina', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (991, N'Saint Catharines-Niagara', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (992, N'Saint John`s', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (993, N'Saskatoon', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (994, N'Sherbrooke', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (995, N'Sudbury', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (996, N'Thunder Bay', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (997, N'Toronto', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (998, N'Trois-Rivières', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (999, N'Vancouver', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1000, N'Victoria', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1001, N'Whitehorse', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1002, N'Windsor', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1003, N'Winnipeg', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1004, N'Yellowknife', 37)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1005, N'Assomada', 38)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1006, N'Mindelo', 38)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1007, N'Mosteiros', 38)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1008, N'Nova Sintra', 38)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1009, N'Pedra Badejo', 38)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1010, N'Pombas', 38)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1011, N'Ponta do Sol', 38)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1012, N'Porto Novo', 38)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1013, N'Praia', 38)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1014, N'Ribeira Brava', 38)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1015, N'Sal Rei', 38)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1016, N'Santa Maria', 38)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1017, N'São Domingos', 38)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1018, N'São Filipe', 38)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1019, N'São Miguel', 38)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1020, N'Tarrafal', 38)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1021, N'Vila do Maio', 38)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1022, N'Bodden Town', 39)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1023, N'George Town', 39)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1024, N'West Bay', 39)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1025, N'Bambari', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1026, N'Bangassou', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1027, N'Bangui', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1028, N'Batangafo', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1029, N'Berbérati', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1030, N'Bimbo', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1031, N'Birao', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1032, N'Boda', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1033, N'Bossangoa', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1034, N'Bossembélé', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1035, N'Bouar', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1036, N'Bozoum', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1037, N'Bria', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1038, N'Carnot', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1039, N'Ippy', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1040, N'Kaga-Bandoro', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1041, N'Mbaiki', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1042, N'Mobaye', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1043, N'Ndélé', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1044, N'Nola', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1045, N'Obo', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1046, N'Paoua', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1047, N'Rafaï', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1048, N'Sibut', 40)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1049, N'Abéché', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1050, N'Am Timan', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1051, N'Ati', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1052, N'Biltine', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1053, N'Bitkine', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1054, N'Bol', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1055, N'Bongor', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1056, N'Doba', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1057, N'Dourbali', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1058, N'Faya', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1059, N'Kélo', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1060, N'Koumra', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1061, N'Kyabé', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1062, N'Laï', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1063, N'Léré', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1064, N'Mao', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1065, N'Massaguet', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1066, N'Mongo', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1067, N'Moundou', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1068, N'N`Djaména', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1069, N'Oum Hadjer', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1070, N'Pala', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1071, N'Sarh', 41)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1072, N'Antofagasta', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1073, N'Arica', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1074, N'Calama', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1075, N'Chillán', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1076, N'Coihaique', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1077, N'Concepción', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1078, N'Copiapó', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1079, N'Coquimbo', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1080, N'Curicó', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1081, N'Iquique', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1082, N'La Serena', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1083, N'Los Ángeles', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1084, N'Osorno', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1085, N'Puente Alto', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1086, N'Puerto Montt', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1087, N'Punta Arenas', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1088, N'Quilpué', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1089, N'Rancagua', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1090, N'San Bernardo', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1091, N'Santiago', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1092, N'Talca', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1093, N'Talcahuano', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1094, N'Temuco', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1095, N'Valdivia', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1096, N'Valparaíso', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1097, N'Viña del Mar', 42)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1098, N'Acheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1099, N'Aksu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1100, N'Anbu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1101, N'Anda', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1102, N'Ankang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1103, N'Anqing', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1104, N'Anqiu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1105, N'Anshan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1106, N'Anshun', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1107, N'Anyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1108, N'Aomen', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1109, N'Badaojiang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1110, N'Bagongshan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1111, N'Baicheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1112, N'Baiyin', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1113, N'Bantou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1114, N'Baoding', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1115, N'Baoji', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1116, N'Baoshan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1117, N'Baotou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1118, N'Beian', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1119, N'Beibei', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1120, N'Beihai', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1121, N'Beijing', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1122, N'Beipiao', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1123, N'Bengbu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1124, N'Benxi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1125, N'Binzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1126, N'Boli', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1127, N'Boshan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1128, N'Bozhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1129, N'Buhe', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1130, N'Cangzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1131, N'Changchun', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1132, N'Changde', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1133, N'Changji', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1134, N'Changsha', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1135, N'Changzhi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1136, N'Changzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1137, N'Chaohu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1138, N'Chaoyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1139, N'Chaozhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1140, N'Chengde', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1141, N'Chengdu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1142, N'Chenghai', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1143, N'Chengzihe', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1144, N'Chenzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1145, N'Chifeng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1146, N'Chizhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1147, N'Chongqing', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1148, N'Chuncheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1149, N'Chuzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1150, N'Daan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1151, N'Daan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1152, N'Dachang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1153, N'Dali', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1154, N'Dalian', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1155, N'Daliang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1156, N'Dandong', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1157, N'Datong', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1158, N'Dawukou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1159, N'Daxian', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1160, N'Dehui', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1161, N'Deyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1162, N'Dezhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1163, N'Didao', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1164, N'Dingshu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1165, N'Dingzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1166, N'Dongchang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1167, N'Dongguan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1168, N'Donghai', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1169, N'Donghe', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1170, N'Dongling', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1171, N'Dongtai', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1172, N'Dongying', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1173, N'Dunhua', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1174, N'Ezhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1175, N'Fengcheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1176, N'Foshan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1177, N'Fuling', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1178, N'Fushun', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1179, N'Fuxin', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1180, N'Fuyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1181, N'Fuyu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1182, N'Fuzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1183, N'Gangdong', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1184, N'Ganzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1185, N'Gaomi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1186, N'Gaozhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1187, N'Gejiu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1188, N'Gongzhuling', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1189, N'Guangshui', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1190, N'Guangyuan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1191, N'Guangzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1192, N'Guilin', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1193, N'Guiqing', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1194, N'Guiyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1195, N'Haibowan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1196, N'Haicheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1197, N'Haikou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1198, N'Hailar', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1199, N'Hailun', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1200, N'Hami', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1201, N'Handan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1202, N'Hangu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1203, N'Hangzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1204, N'Hanzhong', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1205, N'Harbin', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1206, N'Hebi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1207, N'Hefei', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1208, N'Hegang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1209, N'Hekou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1210, N'Hengshan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1211, N'Hengshui', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1212, N'Hengyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1213, N'Heze', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1214, N'Hohhot', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1215, N'Honggang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1216, N'Honghu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1217, N'Huadian', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1218, N'Huaibei', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1219, N'Huaihua', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1220, N'Huaiyin', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1221, N'Huanggang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1222, N'Huangshi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1223, N'Huangyan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1224, N'Huangzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1225, N'Huicheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1226, N'Huizhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1227, N'Hulan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1228, N'Hulan Ergi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1229, N'Humen', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1230, N'Huzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1231, N'Jiagedagi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1232, N'Jiamusi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1233, N'Jian', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1234, N'Jiangmen', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1235, N'Jiangyin', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1236, N'Jiangyou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1237, N'Jiaohe', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1238, N'Jiaozhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1239, N'Jiaozuo', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1240, N'Jiaxing', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1241, N'Jiayuguan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1242, N'Jieshi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1243, N'Jieshou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1244, N'Jilin', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1245, N'Jinan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1246, N'Jinchang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1247, N'Jincheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1248, N'Jinchengjiang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1249, N'Jingdezhen', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1250, N'Jingmen', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1251, N'Jingzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1252, N'Jinhua', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1253, N'Jining', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1254, N'Jining', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1255, N'Jinma', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1256, N'Jinsha', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1257, N'Jinxi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1258, N'Jinzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1259, N'Jinzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1260, N'Jishu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1261, N'Jiujiang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1262, N'Jiulong', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1263, N'Jiupu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1264, N'Jiutai', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1265, N'Jixi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1266, N'Kaifeng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1267, N'Kaili', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1268, N'Kaiyuan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1269, N'Kaiyuan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1270, N'Karamay', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1271, N'Kashi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1272, N'Korla', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1273, N'Kunming', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1274, N'Laiwu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1275, N'Laiyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1276, N'Langfang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1277, N'Lanzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1278, N'Laohekou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1279, N'Lasa', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1280, N'Leiyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1281, N'Lengshuijiang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1282, N'Leshan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1283, N'Lianran', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1284, N'Liaocheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1285, N'Liaoyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1286, N'Liaoyuan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1287, N'Licheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1288, N'Linchuan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1289, N'Linfen', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1290, N'Linhai', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1291, N'Linhe', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1292, N'Linqing', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1293, N'Linshui', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1294, N'Linxi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1295, N'Linyi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1296, N'Lishui', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1297, N'Liupanshui', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1298, N'Liuzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1299, N'Longfeng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1300, N'Longjiang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1301, N'Longyan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1302, N'Loudi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1303, N'Luan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1304, N'Luohe', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1305, N'Luoyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1306, N'Luzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1307, N'Maanshan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1308, N'Macheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1309, N'Majie', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1310, N'Maoming', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1311, N'Meihekou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1312, N'Meizhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1313, N'Mentougou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1314, N'Mianchang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1315, N'Mianyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1316, N'Mingshui', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1317, N'Minhang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1318, N'Mudanjiang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1319, N'Nancha', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1320, N'Nanchang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1321, N'Nanchong', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1322, N'Nanjing', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1323, N'Nanning', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1324, N'Nanping', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1325, N'Nantong', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1326, N'Nantongkuang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1327, N'Nanyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1328, N'Nehe', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1329, N'Neijiang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1330, N'Ningbo', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1331, N'Nongan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1332, N'Panjin', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1333, N'Panzhihua', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1334, N'Pingdingshan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1335, N'Pingliang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1336, N'Pingxiang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1337, N'Pulandian', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1338, N'Puqi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1339, N'Puyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1340, N'Qianguo', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1341, N'Qianjiang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1342, N'Qincheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1343, N'Qingdao', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1344, N'Qingyuan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1345, N'Qinhuangdao', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1346, N'Qiqihar', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1347, N'Qitaihe', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1348, N'Quanwan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1349, N'Quanzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1350, N'Qujing', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1351, N'Ranghulu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1352, N'Rizhao', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1353, N'Rongcheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1354, N'Rongcheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1355, N'Ruian', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1356, N'Saertu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1357, N'Saigong', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1358, N'Sanbu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1359, N'Sanmenxia', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1360, N'Sanming', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1361, N'Shahe', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1362, N'Shanghai', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1363, N'Shangqiu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1364, N'Shangrao', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1365, N'Shantou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1366, N'Shanwei', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1367, N'Shaoguan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1368, N'Shaowu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1369, N'Shaoxing', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1370, N'Shaoyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1371, N'Shashi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1372, N'Shatin', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1373, N'Shenjiamen', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1374, N'Shenyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1375, N'Shenzhen', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1376, N'Shihezi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1377, N'Shijiazhuang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1378, N'Shiqiao', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1379, N'Shishou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1380, N'Shiyan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1381, N'Shizuishan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1382, N'Shuangcheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1383, N'Shuangyashan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1384, N'Shuimogou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1385, N'Siping', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1386, N'Songjiang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1387, N'Sucheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1388, N'Suihua', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1389, N'Suining', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1390, N'Suizhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1391, N'Sujiatun', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1392, N'Suzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1393, N'Suzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1394, N'Taian', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1395, N'Taicheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1396, N'Taipo', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1397, N'Taiyuan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1398, N'Tanggu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1399, N'Tangshan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1400, N'Taonan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1401, N'Tengzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1402, N'Tiangjiaan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1403, N'Tianjin', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1404, N'Tianmen', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1405, N'Tieli', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1406, N'Tieling', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1407, N'Tongchuan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1408, N'Tongliao', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1409, N'Tongling', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1410, N'Tongren', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1411, N'Tongzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1412, N'Tuanmun', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1413, N'Urumqi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1414, N'Wafangdian', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1415, N'Wanxian', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1416, N'Weifang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1417, N'Weihai', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1418, N'Weinan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1419, N'Wencheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1420, N'Wenzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1421, N'Wuchang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1422, N'Wuda', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1423, N'Wuhan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1424, N'Wuhu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1425, N'Wulanhaote', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1426, N'Wuning', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1427, N'Wuwei', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1428, N'Wuxi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1429, N'Wuxue', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1430, N'Wuzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1431, N'Xiamen', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1432, N'Xian', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1433, N'Xiangdong', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1434, N'Xiangfan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1435, N'Xianggang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1436, N'Xiangtan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1437, N'Xianning', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1438, N'Xiantao', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1439, N'Xianyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1440, N'Xiaogan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1441, N'Xiaolan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1442, N'Xichang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1443, N'Xiejiaji', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1444, N'Xilinhaote', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1445, N'Xinan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1446, N'Xincheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1447, N'Xingcheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1448, N'Xingtai', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1449, N'Xingyi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1450, N'Xining', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1451, N'Xinji', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1452, N'Xinpu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1453, N'Xinshi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1454, N'Xintai', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1455, N'Xinxiang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1456, N'Xinyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1457, N'Xinzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1458, N'Xuanhua', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1459, N'Xuanzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1460, N'Xuchang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1461, N'Xuzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1462, N'Yaan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1463, N'Yakeshi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1464, N'Yanan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1465, N'Yancheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1466, N'Yangjiang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1467, N'Yangquan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1468, N'Yangzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1469, N'Yanji', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1470, N'Yantai', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1471, N'Yibin', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1472, N'Yichang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1473, N'Yichun', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1474, N'Yichun', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1475, N'Yidu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1476, N'Yinchuan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1477, N'Yingcheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1478, N'Yingkou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1479, N'Yingzhong', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1480, N'Yining', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1481, N'Yiyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1482, N'Yizheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1483, N'Yongan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1484, N'Yuanlong', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1485, N'Yuci', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1486, N'Yueyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1487, N'Yuhong', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1488, N'Yulin', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1489, N'Yuncheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1490, N'Yunyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1491, N'Yushan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1492, N'Yushan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1493, N'Yushu', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1494, N'Yuyao', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1495, N'Zalantun', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1496, N'Zaoyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1497, N'Zaozhuang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1498, N'Zhalainuoer', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1499, N'Zhangdian', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1500, N'Zhangjiakou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1501, N'Zhangye', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1502, N'Zhangzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1503, N'Zhanjiang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1504, N'Zhaocheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1505, N'Zhaodong', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1506, N'Zhaoqing', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1507, N'Zhaotong', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1508, N'Zhaoyang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1509, N'Zhengzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1510, N'Zhenjiang', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1511, N'Zhicheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1512, N'Zhongshan', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1513, N'Zhoucun', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1514, N'Zhoukou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1515, N'Zhucheng', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1516, N'Zhuhai', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1517, N'Zhuji', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1518, N'Zhumadian', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1519, N'Zhuozhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1520, N'Zhuzhou', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1521, N'Zigong', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1522, N'Zouxian', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1523, N'Zunyi', 43)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1524, N'Armenia', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1525, N'Barrancabermeja', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1526, N'Barranquilla', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1527, N'Bello', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1528, N'Bogotá', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1529, N'Bucaramanga', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1530, N'Buenaventura', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1531, N'Buga', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1532, N'Cali', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1533, N'Cartagena', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1534, N'Cartago', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1535, N'Cúcuta', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1536, N'Dos Quebradas', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1537, N'Envigado', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1538, N'Florencia', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1539, N'Floridablanca', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1540, N'Girardot', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1541, N'Girón', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1542, N'Ibagué', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1543, N'Itagüí', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1544, N'Maicao', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1545, N'Manizales', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1546, N'Medellín', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1547, N'Montería', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1548, N'Neiva', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1549, N'Palmira', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1550, N'Pasto', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1551, N'Pereira', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1552, N'Popayán', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1553, N'Santa Marta', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1554, N'Sincelejo', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1555, N'Soacha', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1556, N'Sogamoso', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1557, N'Soledad', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1558, N'Tuluá', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1559, N'Tunja', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1560, N'Valledupar', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1561, N'Villavicencio', 44)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1562, N'Domoni', 45)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1563, N'Fomboni', 45)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1564, N'Mitsamiouli', 45)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1565, N'Moroni', 45)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1566, N'Mutsamudu', 45)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1567, N'Brazzaville', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1568, N'Djambala', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1569, N'Dongou', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1570, N'Ewo', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1571, N'Gamboma', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1572, N'Impfondo', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1573, N'Kinkala', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1574, N'Loandjili', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1575, N'Loubomo', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1576, N'Madingou', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1577, N'Makoua', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1578, N'Matsanga', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1579, N'Mossaka', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1580, N'Mossendjo', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1581, N'Ngamaba-Mfilou', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1582, N'Nkayi', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1583, N'Ouesso', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1584, N'Owando', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1585, N'Pointe Noire', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1586, N'Sibiti', 46)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1587, N'Bandundu', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1588, N'Beni', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1589, N'Boma', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1590, N'Bukavu', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1591, N'Bunia', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1592, N'Butembo', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1593, N'Gemena', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1594, N'Goma', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1595, N'Ilebo', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1596, N'Isiro', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1597, N'Kalemie', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1598, N'Kananga', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1599, N'Kikwit', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1600, N'Kindu', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1601, N'Kinshasa', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1602, N'Kisangani', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1603, N'Kolwezi', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1604, N'Likasi', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1605, N'Lubumbashi', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1606, N'Matadi', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1607, N'Mbandaka', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1608, N'Mbuji-Mayi', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1609, N'Mwene-Ditu', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1610, N'Tshikapa', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1611, N'Uvira', 47)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1612, N'Amuri', 48)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1613, N'Atiu', 48)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1614, N'Avarua', 48)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1615, N'Mangaia', 48)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1616, N'Mauke', 48)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1617, N'Mitiaro', 48)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1618, N'Nassau', 48)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1619, N'Omoka', 48)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1620, N'Rakahanga', 48)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1621, N'Roto', 48)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1622, N'Tauhunu', 48)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1623, N'Aguacaliente', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1624, N'Alajuela', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1625, N'Cartago', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1626, N'Curridabat', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1627, N'Desamparados', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1628, N'Heredia', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1629, N'Ipís', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1630, N'Liberia', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1631, N'Limón', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1632, N'Paraíso', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1633, N'Puntarenas', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1634, N'Purral', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1635, N'San Francisco', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1636, N'San Isidro', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1637, N'San José', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1638, N'San José', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1639, N'San Juan', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1640, N'San Miguel', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1641, N'San Pedro', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1642, N'San Vicente', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1643, N'Turrialba', 49)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1644, N'Bjelovar', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1645, N'Chakovec', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1646, N'Dhakovo', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1647, N'Dubrovnik', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1648, N'Gospic', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1649, N'Karlovac', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1650, N'Koprivnica', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1651, N'Krapina', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1652, N'Osijek', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1653, N'Pozhega', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1654, N'Pula', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1655, N'Rijeka', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1656, N'Sesvete', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1657, N'Shibenik', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1658, N'Sisak', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1659, N'Slavonski Brod', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1660, N'Split', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1661, N'Varazhdin', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1662, N'Velika Gorica', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1663, N'Vinkovci', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1664, N'Virovitica', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1665, N'Vukovar', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1666, N'Zadar', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1667, N'Zagreb', 50)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1668, N'Bayamo', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1669, N'Camagüey', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1670, N'Cárdenas', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1671, N'Ciego de Ávila', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1672, N'Cienfuegos', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1673, N'Consolación del Sur', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1674, N'Contramaestre', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1675, N'Guantánamo', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1676, N'Holguín', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1677, N'La Habana', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1678, N'Las Tunas', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1679, N'Manzanillo', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1680, N'Matanzas', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1681, N'Mayarí', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1682, N'Nueva Gerona', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1683, N'Palma Soriano', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1684, N'Pinar del Rio', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1685, N'Puerto Padre', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1686, N'Sancti Spíritus', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1687, N'Santa Clara', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1688, N'Santiago de Cuba', 51)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1689, N'Aradippou', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1690, N'Dali', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1691, N'Deryneia', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1692, N'Dipkarpaz', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1693, N'Dromolaxia', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1694, N'Gazimagusa', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1695, N'Geri', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1696, N'Girne', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1697, N'Güzelyurt', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1698, N'Larnaka', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1699, N'Lefka', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1700, N'Lefkosa', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1701, N'Lefkosia', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1702, N'Lemesos', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1703, N'Livadia', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1704, N'Pafos', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1705, N'Paralimni', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1706, N'Tseri', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1707, N'Xylofagou', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1708, N'Ypsonas', 52)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1709, N'Brno', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1710, N'Cheské Budejovice', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1711, N'Chomutov', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1712, N'Dechín', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1713, N'Frıdek-Místek', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1714, N'Havírov', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1715, N'Hradec Králové', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1716, N'Jihlava', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1717, N'Karlovy Vary', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1718, N'Karviná', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1719, N'Kladno', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1720, N'Liberec', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1721, N'Most', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1722, N'Olomouc', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1723, N'Opava', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1724, N'Ostrava', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1725, N'Pardubice', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1726, N'Plzen', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1727, N'Praha', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1728, N'Ústí', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1729, N'Zlín', 53)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1730, N'Aabenraa', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1731, N'Aalborg', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1732, N'Århus', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1733, N'Esbjerg', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1734, N'Fredericia', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1735, N'Greve Strand', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1736, N'Helsingør', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1737, N'Hillerød', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1738, N'Holstebro', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1739, N'Horsens', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1740, N'Hørsholm', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1741, N'København', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1742, N'Køge', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1743, N'Kolding', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1744, N'Næstved', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1745, N'Nykøbing', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1746, N'Odense', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1747, N'Randers', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1748, N'Ribe', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1749, N'Ringkøbing', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1750, N'Rønne', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1751, N'Roskilde', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1752, N'Silkeborg', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1753, N'Slagelse', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1754, N'Sorø', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1755, N'Vejle', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1756, N'Viborg', 54)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1757, N'´Ali Sabîh', 55)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1758, N'Dikhil', 55)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1759, N'Jibûti', 55)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1760, N'Tajûrah', 55)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1761, N'Ubuk', 55)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1762, N'Atkinson', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1763, N'Barroui', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1764, N'Berekua', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1765, N'Castle Bruce', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1766, N'Coulihaut', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1767, N'Délices', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1768, N'Hampstead', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1769, N'La Plaine', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1770, N'Mahaut', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1771, N'Marigot', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1772, N'Petite Soufrière', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1773, N'Pointe Michel', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1774, N'Pont Cassé', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1775, N'Portsmouth', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1776, N'Rosalie', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1777, N'Roseau', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1778, N'Saint Joseph', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1779, N'Soufrière', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1780, N'Vieille Case', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1781, N'Wesley', 56)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1782, N'Azua', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1783, N'Bajos de Haina', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1784, N'Baní', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1785, N'Barahona', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1786, N'Bonao', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1787, N'Comendador', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1788, N'Cotuí', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1789, N'Dajabón', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1790, N'El Seybo', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1791, N'Esperanza', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1792, N'Hato Mayor', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1793, N'Higüey', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1794, N'Jimaní', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1795, N'La Romana', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1796, N'La Vega', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1797, N'Mao', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1798, N'Moca', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1799, N'Monte Cristi', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1800, N'Monte Plata', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1801, N'Nagua', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1802, N'Neyba', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1803, N'Pedernales', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1804, N'Puerto Plata', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1805, N'Sabaneta', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1806, N'Salcedo', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1807, N'Samaná', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1808, N'San Cristóbal', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1809, N'San Francisco de Macorís', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1810, N'San Juan de la Maguana', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1811, N'San Pedro de Macorís', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1812, N'Santiago', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1813, N'Santo Domingo', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1814, N'Villa Altagracia', 57)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1815, N'Aileu', 58)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1816, N'Ainaro', 58)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1817, N'Aubá', 58)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1818, N'Baucau', 58)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1819, N'Bazartete', 58)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1820, N'Dare', 58)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1821, N'Dili', 58)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1822, N'Ermera', 58)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1823, N'Lautem', 58)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1824, N'Liquiça', 58)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1825, N'Lolotoi', 58)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1826, N'Los Palos', 58)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1827, N'Maliana', 58)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1828, N'Manatuto', 58)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1829, N'Metinaro', 58)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1830, N'Pante Macassar', 58)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1831, N'Same', 58)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1832, N'Suai', 58)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1833, N'Viqueque', 58)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1834, N'Ambato', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1835, N'Azogues', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1836, N'Babahoyo', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1837, N'Cuenca', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1838, N'Eloy Alfaro', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1839, N'Esmeraldas', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1840, N'Guaranda', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1841, N'Guayaquil', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1842, N'Ibarra', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1843, N'La Libertad', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1844, N'Latacunga', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1845, N'Loja', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1846, N'Macas', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1847, N'Machala', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1848, N'Manta', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1849, N'Milagro', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1850, N'Nueva Loja', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1851, N'Orellana', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1852, N'Pasaje', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1853, N'Portoviejo', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1854, N'Puerto Baquerizo Moreno', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1855, N'Puyo', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1856, N'Quevedo', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1857, N'Quito', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1858, N'Riobamba', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1859, N'Santo Domingo', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1860, N'Tena', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1861, N'Tulcán', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1862, N'Zamora', 59)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1863, N'al-´Arîsh', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1864, N'al-Fayyûm', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1865, N'al-Ghardaqah', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1866, N'al-Hawâmidîyah', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1867, N'al-Iskandarîyah', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1868, N'al-Ismâîlîyah', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1869, N'al-Jîzah', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1870, N'al-Khârijah', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1871, N'al-Mahallah al-Kubrâ', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1872, N'al-Mansûrah', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1873, N'al-Matarîyah', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1874, N'al-Minyâ', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1875, N'al-Qahira', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1876, N'al-Uqsur', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1877, N'as-Suways', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1878, N'Aswân', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1879, N'Asyût', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1880, N'at-Tûr', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1881, N'az-Zaqâzîq', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1882, N'Banhâ', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1883, N'Banî Suwayf', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1884, N'Bilbays', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1885, N'Bilqâs', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1886, N'Bûr Sa´îd', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1887, N'Damanhûr', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1888, N'Disûq', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1889, N'Dumyât', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1890, N'Idfû', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1891, N'Idkû', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1892, N'Jirjâ', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1893, N'Kafr-ad-Dawwâr', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1894, N'Kafr-ash-Shaykh', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1895, N'Mallawî', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1896, N'Marsâ Matrûh', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1897, N'Mît Gamr', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1898, N'Qalyûb', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1899, N'Qinâ', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1900, N'Sawhâj', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1901, N'Shibîn-al-Kawm', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1902, N'Shubrâ al-Khaymah', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1903, N'Talkhâ', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1904, N'Tantâ', 60)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1905, N'Ahuachapán', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1906, N'Antiguo Cuscatlán', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1907, N'Apopa', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1908, N'Chalatenango', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1909, N'Cojutepeque', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1910, N'Cuscatancingo', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1911, N'Delgado', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1912, N'Gotera', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1913, N'Ilopango', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1914, N'La Unión', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1915, N'Mejicanos', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1916, N'Nueva San Salvador', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1917, N'Quezaltepeque', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1918, N'San Marcos', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1919, N'San Martín', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1920, N'San Miguel', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1921, N'San Salvador', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1922, N'San Vicente', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1923, N'Santa Ana', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1924, N'Sensuntepeque', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1925, N'Sonsonate', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1926, N'Soyapango', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1927, N'Usulután', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1928, N'Zacatecoluca', 61)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1929, N'Aconibe', 62)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1930, N'Acurenam', 62)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1931, N'Añisoc', 62)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1932, N'Bata', 62)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1933, N'Ebebiyin', 62)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1934, N'Evinayong', 62)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1935, N'Luba', 62)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1936, N'Malabo', 62)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1937, N'Mbini', 62)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1938, N'Mikomeseng', 62)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1939, N'Moca', 62)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1940, N'Mongomo', 62)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1941, N'Niefang', 62)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1942, N'Nsok', 62)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1943, N'Palé', 62)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1944, N'Riaba', 62)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1945, N'Âddî K`eyih', 63)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1946, N'Âddî Kwala', 63)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1947, N'Âddî Ugrî', 63)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1948, N'Âk`ordat', 63)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1949, N'Âsmara', 63)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1950, N'Âsseb', 63)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1951, N'Barentu', 63)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1952, N'Bêylul', 63)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1953, N'Dek`emhâre', 63)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1954, N'Êdd', 63)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1955, N'Gînda', 63)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1956, N'Himbirtî', 63)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1957, N'Keren', 63)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1958, N'Mersa Fatma', 63)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1959, N'Mitsiwa', 63)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1960, N'Nefasît', 63)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1961, N'Sen`afê', 63)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1962, N'Teseney', 63)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1963, N'Elva', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1964, N'Haapsalu', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1965, N'Jôgeva', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1966, N'Jôhvi', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1967, N'Kärdla', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1968, N'Keila', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1969, N'Kiviôli', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1970, N'Kohtla-Järve', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1971, N'Kuressaare', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1972, N'Maardu', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1973, N'Narva', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1974, N'Paide', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1975, N'Pärnu', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1976, N'Pôlva', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1977, N'Rakvere', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1978, N'Rapla', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1979, N'Sillamäe', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1980, N'Tallinn', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1981, N'Tapa', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1982, N'Tartu', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1983, N'Valga', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1984, N'Viljandi', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1985, N'Vôru', 64)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1986, N'Âddîgrat', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1987, N'Âddîs Âbebâ', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1988, N'Ârba Minch', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1989, N'Asayita', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1990, N'Âsosa', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1991, N'Âssela', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1992, N'Âwassa', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1993, N'Bahir Dar', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1994, N'Debre Birhan', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1995, N'Debre Mark`os', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1996, N'Debre Zeyit', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1997, N'Desê', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1998, N'Dirê Dawa', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (1999, N'Gambêla', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2000, N'Gondar', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2001, N'Harer', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2002, N'Jijiga', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2003, N'Jîmma', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2004, N'Kembolcha', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2005, N'Mek`elê', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2006, N'Nazrêt', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2007, N'Nek`emtê', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2008, N'Shashemennê', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2009, N'Soddo', 65)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2010, N'Bantam', 66)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2011, N'The Settlement', 66)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2012, N'West Island', 66)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2013, N'Willis Island Meteorological Station', 66)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2014, N'Goose Green', 67)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2015, N'Grytviken', 67)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2016, N'Port Howard', 67)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2017, N'Port Stanley', 67)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2018, N'Eiği', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2019, N'Fuglafjarğ', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2020, N'Gøta', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2021, N'Húsavík', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2022, N'Hvalbi', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2023, N'Klaksvík', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2024, N'Kollafjarğ', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2025, N'Kvívík', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2026, N'Leirvík', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2027, N'Midvágs', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2028, N'Nes', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2029, N'Runavík', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2030, N'Sandavágs', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2031, N'Sands', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2032, N'Sjó', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2033, N'Skála', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2034, N'Sørvags', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2035, N'Tórshavn', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2036, N'Tvøroyri', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2037, N'Vágs', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2038, N'Vestmanna', 68)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2039, N'Ba', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2040, N'Deuba', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2041, N'Korokade', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2042, N'Korovou', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2043, N'Labasa', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2044, N'Lami', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2045, N'Lautoka', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2046, N'Levuka', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2047, N'Nadi', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2048, N'Nausori', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2049, N'Navouvalu', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2050, N'Navua', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2051, N'Rakiraki', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2052, N'Savusavu', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2053, N'Seaqaqa', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2054, N'Sigatoka', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2055, N'Suva', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2056, N'Tavua', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2057, N'Tubou', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2058, N'Vatukoula', 69)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2059, N'Espoo', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2060, N'Hämeenlinna', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2061, N'Helsinki', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2062, N'Hyvinkää', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2063, N'Järvenpää', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2064, N'Joensuu', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2065, N'Jyväskylä', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2066, N'Kajaani', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2067, N'Kokkola', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2068, N'Kotka', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2069, N'Kouvola', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2070, N'Kuopio', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2071, N'Lahti', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2072, N'Lappeenranta', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2073, N'Lohja', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2074, N'Maarianhamina', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2075, N'Mikkeli', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2076, N'Nurmijärvi', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2077, N'Oulu', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2078, N'Pori', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2079, N'Porvoo', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2080, N'Rovaniemi', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2081, N'Seinäjoki', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2082, N'Tampere', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2083, N'Turku', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2084, N'Vaasa', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2085, N'Vantaa', 70)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2086, N'Agen', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2087, N'Aix-en-Provence', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2088, N'Ajaccio', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2089, N'Albi', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2090, N'Alençon', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2091, N'Amiens', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2092, N'Angers', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2093, N'Angoulême', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2094, N'Annecy', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2095, N'Arras', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2096, N'Auch', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2097, N'Aurillac', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2098, N'Auxerre', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2099, N'Avignon', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2100, N'Bar-le-Duc', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2101, N'Bastia', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2102, N'Beauvais', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2103, N'Belfort', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2104, N'Besançon', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2105, N'Blois', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2106, N'Bobigny', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2107, N'Bordeaux', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2108, N'Boulogne-Billancourt', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2109, N'Bourg-en-Bresse', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2110, N'Bourges', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2111, N'Brest', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2112, N'Caen', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2113, N'Cahors', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2114, N'Carcassonne', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2115, N'Châlons-en-Champagne', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2116, N'Chambéry', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2117, N'Charleville-Mézières', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2118, N'Chartres', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2119, N'Châteauroux', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2120, N'Chaumont', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2121, N'Clermont-Ferrand', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2122, N'Colmar', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2123, N'Créteil', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2124, N'Digne-les-Bains', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2125, N'Dijon', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2126, N'Épinal', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2127, N'Évreux', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2128, N'Évry', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2129, N'Foix', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2130, N'Gap', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2131, N'Grenoble', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2132, N'Guéret', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2133, N'La Rochelle', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2134, N'La Roche-sur-Yon', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2135, N'Laon', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2136, N'Laval', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2137, N'Le Havre', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2138, N'Le Mans', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2139, N'Le Puy-en-Velay', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2140, N'Lille', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2141, N'Limoges', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2142, N'Lons-le-Saunier', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2143, N'Lyon', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2144, N'Mâcon', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2145, N'Marseille', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2146, N'Melun', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2147, N'Mende', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2148, N'Metz', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2149, N'Montauban', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2150, N'Mont-de-Marsan', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2151, N'Montpellier', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2152, N'Moulins', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2153, N'Mulhouse', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2154, N'Nancy', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2155, N'Nanterre', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2156, N'Nantes', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2157, N'Nevers', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2158, N'Nice', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2159, N'Nîmes', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2160, N'Niort', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2161, N'Orléans', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2162, N'Paris', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2163, N'Pau', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2164, N'Périgueux', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2165, N'Perpignan', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2166, N'Poitiers', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2167, N'Pontoise', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2168, N'Privas', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2169, N'Quimper', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2170, N'Reims', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2171, N'Rennes', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2172, N'Rodez', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2173, N'Rouen', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2174, N'Saint-Brieuc', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2175, N'Saint-Étienne', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2176, N'Saint-Lô', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2177, N'Strasbourg', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2178, N'Tarbes', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2179, N'Toulon', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2180, N'Toulouse', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2181, N'Tours', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2182, N'Troyes', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2183, N'Tulle', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2184, N'Valence', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2185, N'Vannes', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2186, N'Versailles', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2187, N'Vesoul', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2188, N'Villeurbanne', 71)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2189, N'Apatou', 72)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2190, N'Awala-Yalimapo', 72)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2191, N'Camopi', 72)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2192, N'Cayenne', 72)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2193, N'Grand-Santi', 72)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2194, N'Iracoubo', 72)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2195, N'Kourou', 72)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2196, N'Macouria', 72)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2197, N'Mana', 72)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2198, N'Maripasoula', 72)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2199, N'Matoury', 72)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2200, N'Remire-Montjoly', 72)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2201, N'Roura', 72)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2202, N'Saint-Georges', 72)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2203, N'Saint-Laurent-du-Maroni', 72)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2204, N'Sinnamary', 72)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2205, N'Afaahiti', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2206, N'Afareaitu', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2207, N'Arue', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2208, N'Avera', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2209, N'Faaa', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2210, N'Haapiti', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2211, N'Mahina', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2212, N'Mataiea', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2213, N'Mataura', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2214, N'Paea', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2215, N'Paopao', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2216, N'Papara', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2217, N'Papeari', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2218, N'Papeete', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2219, N'Papenoo', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2220, N'Pirae', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2221, N'Punaauia', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2222, N'Rikitea', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2223, N'Taiohae', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2224, N'Tautira', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2225, N'Tiarei', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2226, N'Uturoa', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2227, N'Vaitape', 73)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2228, N'Bitam', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2229, N'Booué', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2230, N'Gamba', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2231, N'Koulamoutou', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2232, N'Lambaréné', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2233, N'Lastoursville', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2234, N'Libreville', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2235, N'Makokou', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2236, N'Masuku', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2237, N'Moanda', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2238, N'Mouila', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2239, N'Mounana', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2240, N'Ndendé', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2241, N'Nkan', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2242, N'Ntoum', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2243, N'Okandja', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2244, N'Oyem', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2245, N'Port-Gentil', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2246, N'Tchibanga', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2247, N'Tsogni', 74)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2248, N'Bakau', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2249, N'Banjul', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2250, N'Bansang', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2251, N'Barra', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2252, N'Basse', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2253, N'Brikama', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2254, N'Brufut', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2255, N'Essau', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2256, N'Farafenni', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2257, N'Gambissara', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2258, N'Gunjur', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2259, N'Janjanbureh', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2260, N'Kerewan', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2261, N'Kuntaur', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2262, N'Lamin', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2263, N'Mansakonko', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2264, N'Sabi', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2265, N'Salikeni', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2266, N'Serekunda', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2267, N'Sukuta', 75)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2268, N'Ahalcihe', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2269, N'Ambrolauri', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2270, N'Batumi', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2271, N'Chaltubo', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2272, N'Chiatura', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2273, N'Chinvali', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2274, N'Gagra', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2275, N'Gori', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2276, N'Hashuri', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2277, N'Kutaisi', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2278, N'Marneuli', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2279, N'Mcheta', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2280, N'Ozurgeti', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2281, N'Poti', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2282, N'Rustavi', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2283, N'Samtredia', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2284, N'Senaki', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2285, N'Suhumi', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2286, N'Tbilisi', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2287, N'Telavi', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2288, N'Tkibuli', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2289, N'Zestaponi', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2290, N'Zugdidi', 76)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2291, N'Aachen', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2292, N'Augsburg', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2293, N'Bergisch Gladbach', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2294, N'Berlin', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2295, N'Bielefeld', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2296, N'Bochum', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2297, N'Bonn', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2298, N'Bottrop', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2299, N'Braunschweig', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2300, N'Bremen', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2301, N'Bremerhaven', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2302, N'Chemnitz', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2303, N'Cottbus', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2304, N'Darmstadt', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2305, N'Dortmund', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2306, N'Dresden', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2307, N'Duisburg', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2308, N'Düsseldorf', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2309, N'Erfurt', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2310, N'Erlangen', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2311, N'Essen', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2312, N'Frankfurt', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2313, N'Freiburg', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2314, N'Fürth', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2315, N'Gelsenkirchen', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2316, N'Gera', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2317, N'Göttingen', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2318, N'Hagen', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2319, N'Halle', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2320, N'Hamburg', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2321, N'Hamm', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2322, N'Hannover', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2323, N'Heidelberg', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2324, N'Heilbronn', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2325, N'Herne', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2326, N'Hildesheim', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2327, N'Ingolstadt', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2328, N'Karlsruhe', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2329, N'Kassel', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2330, N'Kiel', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2331, N'Koblenz', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2332, N'Köln', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2333, N'Krefeld', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2334, N'Leipzig', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2335, N'Leverkusen', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2336, N'Ludwigshafen', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2337, N'Lübeck', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2338, N'Magdeburg', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2339, N'Mainz', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2340, N'Mannheim', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2341, N'Moers', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2342, N'Mönchengladbach', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2343, N'Mülheim', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2344, N'München', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2345, N'Münster', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2346, N'Neuss', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2347, N'Nürnberg', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2348, N'Oberhausen', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2349, N'Offenbach', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2350, N'Oldenburg', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2351, N'Osnabrück', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2352, N'Paderborn', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2353, N'Pforzheim', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2354, N'Potsdam', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2355, N'Recklinghausen', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2356, N'Regensburg', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2357, N'Remscheid', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2358, N'Reutlingen', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2359, N'Rostock', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2360, N'Saarbrücken', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2361, N'Salzgitter', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2362, N'Schwerin', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2363, N'Siegen', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2364, N'Solingen', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2365, N'Stuttgart', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2366, N'Ulm', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2367, N'Wiesbaden', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2368, N'Witten', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2369, N'Wolfsburg', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2370, N'Wuppertal', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2371, N'Würzburg', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2372, N'Zwickau', 77)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2373, N'Accra', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2374, N'Ashiaman', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2375, N'Bawku', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2376, N'Bolgatanga', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2377, N'Cape Coast', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2378, N'Ho', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2379, N'Koforidua', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2380, N'Kumasi', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2381, N'Nkawkaw', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2382, N'Obuasi', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2383, N'Sekondi', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2384, N'Sunyani', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2385, N'Swedru', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2386, N'Takoradi', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2387, N'Tamale', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2388, N'Tema', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2389, N'Tema New Town', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2390, N'Teshie', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2391, N'Wa', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2392, N'Yendi', 78)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2393, N'Gibraltar', 79)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2394, N'Aharna', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2395, N'Aiyáleo', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2396, N'Alexandroúpoli', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2397, N'Ámfissa', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2398, N'Argostólion', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2399, N'Árta', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2400, N'Athína', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2401, N'Áyios Nikólaos', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2402, N'Dráma', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2403, N'Édessa', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2404, N'Ermoúpoli', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2405, N'Flórina', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2406, N'Glifáda', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2407, N'Grevená', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2408, N'Halándrion', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2409, N'Halkída', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2410, N'Haniá', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2411, N'Híos', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2412, N'Igoumenítsa', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2413, N'Ilioúpoli', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2414, N'Ioánnina', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2415, N'Iráklion', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2416, N'Kalamariá', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2417, N'Kalámata', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2418, N'Kallithéa', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2419, N'Kardítsa', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2420, N'Kariaí', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2421, N'Karpenísi', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2422, N'Kastoría', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2423, N'Kateríni', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2424, N'Kavála', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2425, N'Keratsínion', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2426, N'Kérkira', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2427, N'Kilkís', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2428, N'Komotiní', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2429, N'Kórinthos', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2430, N'Kozáni', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2431, N'Lamía', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2432, N'Lárisa', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2433, N'Levadía', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2434, N'Levkás', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2435, N'Mesolóngion', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2436, N'Mitilíni', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2437, N'Návplion', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2438, N'Néa Liósia', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2439, N'Néa Smírni', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2440, N'Níkaia', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2441, N'Pátra', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2442, N'Peristérion', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2443, N'Piraeus', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2444, N'Pírgos', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2445, N'Políyiros', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2446, N'Préveza', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2447, N'Réthimnon', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2448, N'Ródos', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2449, N'Sámos', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2450, N'Sérrai', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2451, N'Spárti', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2452, N'Thessaloníki', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2453, N'Tríkala', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2454, N'Trípoli', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2455, N'Véroia', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2456, N'Vólos', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2457, N'Xánthi', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2458, N'Zákinthos', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2459, N'Zográfos', 80)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2460, N'Aasiaat', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2461, N'Alluitsup Paa', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2462, N'Illoqqortoormiut', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2463, N'Ilulissat', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2464, N'Ivittuut', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2465, N'Kangaamiut', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2466, N'Kangaatsiaq', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2467, N'Kangerlussuaq', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2468, N'Maniitsoq', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2469, N'Nanortalik', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2470, N'Narsaq', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2471, N'Nuuk', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2472, N'Paamiut', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2473, N'Pituffik', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2474, N'Qaanaaq', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2475, N'Qaqortoq', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2476, N'Qasigiannguit', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2477, N'Qeqertarsuaq', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2478, N'Sisimiut', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2479, N'Tasiilaq', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2480, N'Upernavik', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2481, N'Uummannaq', 81)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2482, N'Gouyave', 82)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2483, N'Grenville', 82)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2484, N'Hillsborough', 82)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2485, N'Saint Davids', 82)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2486, N'Saint George`s', 82)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2487, N'Sauteurs', 82)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2488, N'Victoria', 82)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2489, N'Baie-Mahault', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2490, N'Basse-Terre', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2491, N'Bouillante', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2492, N'Capesterre-Belle-Eau', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2493, N'Gourbeyre', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2494, N'Grand-Bourg', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2495, N'La Désirade', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2496, N'Lamentin', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2497, N'Le Gosier', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2498, N'Le Moule', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2499, N'Les Abymes', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2500, N'Marigot', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2501, N'Morne-à-l`Eau', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2502, N'Petit-Bourg', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2503, N'Petit-Canal', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2504, N'Point-à-Pitre', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2505, N'Pointe-Noire', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2506, N'Saint-Barthélemy', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2507, N'Saint-Claude', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2508, N'Sainte-Anne', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2509, N'Sainte-Rose', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2510, N'Saint-François', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2511, N'Terre-de-Bas', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2512, N'Trois-Rivières', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2513, N'Vieux-Habitants', 83)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2514, N'Agana', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2515, N'Agana Heights', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2516, N'Agat', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2517, N'Anderson Air Force Base', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2518, N'Apra Harbor', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2519, N'Astumbo', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2520, N'Barrigada', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2521, N'Chalan Pago', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2522, N'Dededo', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2523, N'Finegayan Station', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2524, N'Inarajan', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2525, N'Mangilao', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2526, N'Marbo Annex', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2527, N'Merizo', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2528, N'Mongmong', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2529, N'Ordot', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2530, N'Santa Rita', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2531, N'Sinajana', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2532, N'Talofofo', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2533, N'Tamuning', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2534, N'Toto', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2535, N'Yigo', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2536, N'Yona', 84)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2537, N'Amatitlán', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2538, N'Antigua', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2539, N'Atitlán', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2540, N'Chimaltenango', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2541, N'Chinautla', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2542, N'Chiquimula', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2543, N'Cobán', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2544, N'Comalapa', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2545, N'Cotzumalguapa', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2546, N'Cuilapa', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2547, N'Escuintla', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2548, N'Flores', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2549, N'Guastatoya', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2550, N'Guatemala', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2551, N'Huehuetenango', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2552, N'Jalapa', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2553, N'Jutiapa', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2554, N'Mazatenango', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2555, N'Mixco', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2556, N'Puerto Barrios', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2557, N'Quezaltenango', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2558, N'Quiché', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2559, N'Retalhuleu', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2560, N'Salamá', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2561, N'San Marcos', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2562, N'Sololá', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2563, N'Totonicapán', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2564, N'Villa Nueva', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2565, N'Zacapa', 85)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2566, N'Castle', 86)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2567, N'Forest', 86)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2568, N'Saint Andrew', 86)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2569, N'Saint Anne`s', 86)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2570, N'Saint Martin', 86)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2571, N'Saint Peter', 86)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2572, N'Saint Peter Port', 86)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2573, N'Saint Sampson', 86)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2574, N'Saint Saviour', 86)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2575, N'Sark', 86)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2576, N'Torteval', 86)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2577, N'Vale', 86)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2578, N'Beyla', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2579, N'Boffa', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2580, N'Boké', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2581, N'Conakry', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2582, N'Coyah', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2583, N'Dabola', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2584, N'Dalaba', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2585, N'Dinguiraye', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2586, N'Faranah', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2587, N'Forécariah', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2588, N'Fria', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2589, N'Gaoual', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2590, N'Guékédou', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2591, N'Kankan', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2592, N'Kérouane', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2593, N'Kindia', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2594, N'Kissidougou', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2595, N'Koubia', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2596, N'Koundara', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2597, N'Kouroussa', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2598, N'Labé', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2599, N'Lola', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2600, N'Macenta', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2601, N'Mali', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2602, N'Mamou', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2603, N'Mandiana', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2604, N'Nzérékoré', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2605, N'Pita', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2606, N'Siguiri', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2607, N'Télimélé', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2608, N'Tondon', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2609, N'Tougué', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2610, N'Yomou', 87)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2611, N'Bafatá', 88)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2612, N'Bissau', 88)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2613, N'Bissorã', 88)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2614, N'Bolama', 88)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2615, N'Buba', 88)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2616, N'Bubaque', 88)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2617, N'Cacheu', 88)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2618, N'Canchungo', 88)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2619, N'Catió', 88)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2620, N'Farim', 88)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2621, N'Fulacunda', 88)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2622, N'Gabú', 88)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2623, N'Mansôa', 88)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2624, N'Quebo', 88)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2625, N'Anna Regina', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2626, N'Bartica', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2627, N'Charity', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2628, N'Corriverton', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2629, N'Danielstown', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2630, N'Fort Wellington', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2631, N'Georgetown', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2632, N'Kumaka', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2633, N'Lethem', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2634, N'Linden', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2635, N'Mabaruma', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2636, N'Mahaica', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2637, N'Mahaicony', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2638, N'Mahdia', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2639, N'New Amsterdam', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2640, N'Paradise', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2641, N'Parika', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2642, N'Pickersgill', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2643, N'Queenstown', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2644, N'Rosignol', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2645, N'Skeldon', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2646, N'Suddie', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2647, N'Vreed en Hoop', 89)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2648, N'Cap-Haïtien', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2649, N'Carrefour', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2650, N'Delmas', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2651, N'Desdunes', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2652, N'Dessalines', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2653, N'Fort-Liberté', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2654, N'Gonaïves', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2655, N'Hinche', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2656, N'Jacmel', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2657, N'Jérémie', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2658, N'L`Artibonite', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2659, N'Les Cayes', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2660, N'Limbe', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2661, N'Ouanaminthe', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2662, N'Pétionville', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2663, N'Port-au-Prince', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2664, N'Port-de-Paix', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2665, N'Saint-Marc', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2666, N'Saint-Michel-de-l`Atalaye', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2667, N'Trou-du-Nord', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2668, N'Verrettes', 90)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2669, N'Catacamas', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2670, N'Choloma', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2671, N'Choluteca', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2672, N'Comayagua', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2673, N'Danlí', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2674, N'El Paraíso', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2675, N'El Progreso', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2676, N'Gracias', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2677, N'Juticalpa', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2678, N'La Ceiba', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2679, N'La Esperanza', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2680, N'La Lima', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2681, N'La Paz', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2682, N'Nacaome', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2683, N'Ocotepeque', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2684, N'Olanchito', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2685, N'Puerto Cortés', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2686, N'Puerto Lempira', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2687, N'Roatán', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2688, N'San Lorenzo', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2689, N'San Pedro Sula', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2690, N'Santa Bárbara', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2691, N'Santa Rosa de Copán', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2692, N'Siguatepeque', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2693, N'Tegucigalpa', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2694, N'Tela', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2695, N'Tocoa', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2696, N'Trujillo', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2697, N'Yoro', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2698, N'Yuscarán', 91)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2699, N'Békéscsaba', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2700, N'Budapest', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2701, N'Debrecen', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2702, N'Dunaújváros', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2703, N'Eger', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2704, N'Györ', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2705, N'Kaposvár', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2706, N'Kecskemét', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2707, N'Miskolc', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2708, N'Nagykanizsa', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2709, N'Nyíregyháza', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2710, N'Pécs', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2711, N'Salgótarján', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2712, N'Sopron', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2713, N'Szeged', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2714, N'Székesfehérvár', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2715, N'Szekszárd', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2716, N'Szolnok', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2717, N'Szombathely', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2718, N'Tatabánya', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2719, N'Veszprém', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2720, N'Zalaegerszeg', 92)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2721, N'Akranes', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2722, N'Akureyri', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2723, N'Álftanes', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2724, N'Borgarnes', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2725, N'Egilsstağir', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2726, N'Garğabær', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2727, N'Grindavík', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2728, N'Hafnarfjörğur', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2729, N'Höfn', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2730, N'Húsavík', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2731, N'Hveragerği', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2732, N'Ísafjörğur', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2733, N'Keflavík', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2734, N'Kópavogur', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2735, N'Mosfellsbær', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2736, N'Reykjavík', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2737, N'Sauğárkrókur', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2738, N'Selfoss', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2739, N'Seltjarnarnes', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2740, N'Vestmannæyjar', 93)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2741, N'Abohar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2742, N'Achalpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2743, N'Âdilâbâd', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2744, N'Âdityâpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2745, N'Âdoni', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2746, N'Agartala', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2747, N'Âgra', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2748, N'Ahmadâbâd', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2749, N'Ahmadnagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2750, N'Âîzawl', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2751, N'Ajmer', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2752, N'Akola', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2753, N'Alandur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2754, N'Alappuzha', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2755, N'Alîgarh', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2756, N'Allahâbâd', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2757, N'Alwal', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2758, N'Alwar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2759, N'Ambâla', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2760, N'Ambâla Sadar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2761, N'Ambarnath', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2762, N'Ambattur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2763, N'Âmbûr', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2764, N'Amrâvati', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2765, N'Amritsar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2766, N'Amroha', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2767, N'Ânand', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2768, N'Anantapur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2769, N'Ara', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2770, N'Asansol', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2771, N'Ashoknagar Kalyangarh', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2772, N'Aurangâbâd', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2773, N'Avadi', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2774, N'Azamgarh', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2775, N'Badlapur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2776, N'Bahâdurgarh', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2777, N'Baharampur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2778, N'Bahraich', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2779, N'Baidyabâti', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2780, N'Bâleshwar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2781, N'Ballia', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2782, N'Bally', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2783, N'Bâlurghât', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2784, N'Bânda', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2785, N'Bangaon', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2786, N'Bânkura', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2787, N'Bânsbâria', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2788, N'Bârâkpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2789, N'Baranagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2790, N'Bârâsat', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2791, N'Barddhamân', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2792, N'Bareli', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2793, N'Barnâla', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2794, N'Bârsi', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2795, N'Basîrhât', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2796, N'Basti', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2797, N'Batala', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2798, N'Bathinda', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2799, N'Beâwar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2800, N'Belgaum', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2801, N'Bellary', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2802, N'Bengalûru', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2803, N'Bettiah', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2804, N'Bhadrâvati', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2805, N'Bhadreswar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2806, N'Bhâgalpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2807, N'Bhalswa Jahangirpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2808, N'Bharatpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2809, N'Bharûch', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2810, N'Bhâtpâra', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2811, N'Bhâvnagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2812, N'Bhilai', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2813, N'Bhîlwâra', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2814, N'Bhîmavaram', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2815, N'Bhind', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2816, N'Bhiwandi', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2817, N'Bhiwâni', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2818, N'Bhopâl', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2819, N'Bhubaneswar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2820, N'Bhuj', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2821, N'Bhusâwal', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2822, N'Bîd', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2823, N'Bîdar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2824, N'Bidhannagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2825, N'Bihâr', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2826, N'Bijâpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2827, N'Bîkâner', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2828, N'Bilâspur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2829, N'Bokâro', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2830, N'Bommanahalli', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2831, N'Botâd', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2832, N'Brahmapur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2833, N'Budaun', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2834, N'Bulandshahr', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2835, N'Burhânpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2836, N'Byatarayanapura', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2837, N'Champdâni', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2838, N'Chandannagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2839, N'Chandausi', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2840, N'Chandîgarh', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2841, N'Chandrapur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2842, N'Châs', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2843, N'Chennai', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2844, N'Chhâpra', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2845, N'Chhatarpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2846, N'Chhindwâra', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2847, N'Chikmagalûr', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2848, N'Chitradurga', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2849, N'Chittur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2850, N'Chûru', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2851, N'Cuddapah', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2852, N'Dallo Pura', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2853, N'Damân', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2854, N'Damoh', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2855, N'Darbhanga', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2856, N'Dârjiling', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2857, N'Dasarahalli', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2858, N'Davanagere', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2859, N'Dehra Dûn', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2860, N'Dehri', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2861, N'Deoli', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2862, N'Deoria', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2863, N'Devghar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2864, N'Dewâs', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2865, N'Dhanbad', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2866, N'Dharmavaram', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2867, N'Dhule', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2868, N'Dibrugarh', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2869, N'Dilli', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2870, N'Dilli Cantonment', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2871, N'Dimâpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2872, N'Dinapur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2873, N'Dindigul', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2874, N'Dispur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2875, N'Dum Dum', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2876, N'Durg', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2877, N'Durgâpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2878, N'Elûru', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2879, N'Erode', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2880, N'Etah', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2881, N'Etâwah', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2882, N'Faizâbâd', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2883, N'Farîdâbad', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2884, N'Farrukhâbâd', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2885, N'Fatehpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2886, N'Fîrozâbâd', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2887, N'Gadag', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2888, N'Gajuvaka', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2889, N'Gândhîdham', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2890, N'Gândhînagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2891, N'Gangânagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2892, N'Gangâpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2893, N'Gangtok', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2894, N'Gaya', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2895, N'Ghatlodiya', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2896, N'Ghâziâbâd', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2897, N'Godhra', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2898, N'Gonda', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2899, N'Gondiya', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2900, N'Gorakhpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2901, N'Gûdalûr', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2902, N'Gudivâda', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2903, N'Gulbarga', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2904, N'Guna', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2905, N'Guntakal', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2906, N'Guntûr', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2907, N'Gurgaon', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2908, N'Guwâhâti', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2909, N'Gwalior', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2910, N'Hâbra', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2911, N'Haidarâbâd', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2912, N'Hâjîpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2913, N'Haldia', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2914, N'Haldwâni', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2915, N'Hâlîsahar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2916, N'Hanumângarh', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2917, N'Hâora', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2918, N'Hâpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2919, N'Hardoî', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2920, N'Haridwâr', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2921, N'Hassan', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2922, N'Hâthras', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2923, N'Hazârîbâg', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2924, N'Hindupur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2925, N'Hisâr', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2926, N'Hoshangâbâd', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2927, N'Hoshiârpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2928, N'Hospet', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2929, N'Hubli', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2930, N'Hugli-Chunchura', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2931, N'Ichalkaranji', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2932, N'Imphâl', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2933, N'Indore', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2934, N'Ingrâj Bâzâr', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2935, N'Itânagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2936, N'Jabalpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2937, N'Jâgadhri', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2938, N'Jaipur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2939, N'Jalandhar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2940, N'Jâlgaon', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2941, N'Jâlna', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2942, N'Jalpâiguri', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2943, N'Jamâlpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2944, N'Jammu', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2945, N'Jâmnagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2946, N'Jamshedpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2947, N'Jâmuria', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2948, N'Jaridih', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2949, N'Jaunpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2950, N'Jetpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2951, N'Jhânsi', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2952, N'Jhunjhunûn', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2953, N'Jînd', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2954, N'Jodhpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2955, N'Jûnâgadh', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2956, N'Kaithal', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2957, N'Kâkinâda', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2958, N'Kâlol', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2959, N'Kalyân', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2960, N'Kâmârhâti', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2961, N'Kânchipuram', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2962, N'Kânchrâpâra', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2963, N'Kânpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2964, N'Kapra', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2965, N'Karawal Nagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2966, N'Karîmnagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2967, N'Karnâl', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2968, N'Karnûl', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2969, N'Kataka', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2970, N'Katihâr', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2971, N'Kavaratti', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2972, N'Khammam', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2973, N'Khandwa', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2974, N'Khanna', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2975, N'Kharagpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2976, N'Khardaha', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2977, N'Khurja', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2978, N'Kirari Suleman Nagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2979, N'Kishangarh', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2980, N'Kochi', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2981, N'Kohîma', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2982, N'Kolâr', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2983, N'Kolhâpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2984, N'Kolkata', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2985, N'Kollam', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2986, N'Korba', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2987, N'Kota', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2988, N'Koyampattur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2989, N'Kozhikkod', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2990, N'Krishnanagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2991, N'Krishnarajapura', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2992, N'Kukatpalle', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2993, N'Kulti', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2994, N'Kumbakonam', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2995, N'Lakhîmpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2996, N'Lakhnau', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2997, N'Lalbahadur Nagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2998, N'Lalitpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (2999, N'Lâtûr', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3000, N'Loni', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3001, N'Ludhiâna', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3002, N'Machilîpatnam', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3003, N'Madanapalle', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3004, N'Madhyamgram', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3005, N'Madurai', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3006, N'Mahadevapura', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3007, N'Mahbûbnagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3008, N'Mâhesana', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3009, N'Maheshtala', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3010, N'Maisûru', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3011, N'Mâlegaon', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3012, N'Mâler Kotla', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3013, N'Malkajgiri', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3014, N'Mandsaur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3015, N'Mandya', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3016, N'Mangaluru', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3017, N'Mango', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3018, N'Mathura', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3019, N'Mau', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3020, N'Midnapur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3021, N'Mira Bhayandar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3022, N'Mîrat', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3023, N'Mirzâpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3024, N'Modinagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3025, N'Moga', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3026, N'Mohali', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3027, N'Morâdâbâd', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3028, N'Morena', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3029, N'Mormugao', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3030, N'Morvi', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3031, N'Motîhâri', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3032, N'Mumbai', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3033, N'Munger', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3034, N'Murwâra', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3035, N'Muzaffarnagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3036, N'Muzaffarpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3037, N'Nadiâd', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3038, N'Nagaon', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3039, N'Nagda', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3040, N'Nâgercoil', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3041, N'Nâgpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3042, N'Naihâti', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3043, N'Nalasopara', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3044, N'Nalgonda', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3045, N'Nânded', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3046, N'Nandyâl', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3047, N'Nângloi Jât', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3048, N'Nâshik', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3049, N'Navadwîp', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3050, N'Navghar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3051, N'Navi Mumbai', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3052, N'Navsâri', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3053, N'Nellur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3054, N'Neyveli', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3055, N'Ni Dilli', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3056, N'Nîmach', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3057, N'Nizâmâbâd', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3058, N'Noida', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3059, N'North Bârâkpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3060, N'North Dum Dum', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3061, N'Ongole', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3062, N'Orai', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3063, N'Ozhukarai', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3064, N'Palakkad', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3065, N'Pâlanpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3066, N'Pâli', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3067, N'Pallâvaram', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3068, N'Palwal', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3069, N'Panaji', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3070, N'Panchkula', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3071, N'Pânihâti', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3072, N'Pânîpat', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3073, N'Panvel', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3074, N'Parbhani', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3075, N'Pâtan', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3076, N'Pathânkot', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3077, N'Patiâla', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3078, N'Patna', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3079, N'Pîlîbhît', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3080, N'Pimpri', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3081, N'Pondicherry', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3082, N'Porbandar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3083, N'Port Blair', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3084, N'Proddatûr', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3085, N'Pudukkottai', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3086, N'Pune', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3087, N'Puri', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3088, N'Pûrnia', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3089, N'Puruliya', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3090, N'Qutubullapur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3091, N'Râe Bareli', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3092, N'Râichûr', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3093, N'Râiganj', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3094, N'Raigarh', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3095, N'Raipur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3096, N'Râjamahendri', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3097, N'Râjapâlaiyam', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3098, N'Rajarhat Gopalpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3099, N'Rajendranagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3100, N'Râjkot', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3101, N'Râjnândgaon', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3102, N'Râjpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3103, N'Râmagundam', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3104, N'Râmpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3105, N'Rânchi', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3106, N'Rânîganj', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3107, N'Ratlâm', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3108, N'Raurkela', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3109, N'Raurkela Civil Township', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3110, N'Rewa', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3111, N'Rewâri', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3112, N'Rishra', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3113, N'Robertsonpet', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3114, N'Rohtak', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3115, N'Rûrkî', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3116, N'Sâgar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3117, N'Sahâranpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3118, N'Saharsa', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3119, N'Sambalpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3120, N'Sambhal', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3121, N'Sangli-Miraj', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3122, N'Sâsarâm', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3123, N'Sâtâra', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3124, N'Satna', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3125, N'Sawâi Mâdhopur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3126, N'Selam', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3127, N'Serilungampalle', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3128, N'Shâhjahânpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3129, N'Shântipur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3130, N'Shilîguri', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3131, N'Shillong', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3132, N'Shimla', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3133, N'Shimoga', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3134, N'Shivapuri', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3135, N'Sholâpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3136, N'Shrîrâmpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3137, N'Sikandarâbâd', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3138, N'Sîkar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3139, N'Silchar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3140, N'Silvassa', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3141, N'Singrauli', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3142, N'Sirsa', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3143, N'Sîtâpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3144, N'Siwân', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3145, N'Sonîpat', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3146, N'South Dum Dum', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3147, N'Srîkâkulam', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3148, N'Srînagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3149, N'Sultânpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3150, N'Sultanpur Majra', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3151, N'Sûrat', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3152, N'Surendranagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3153, N'Tâdepallegûdem', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3154, N'Tâmbaram', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3155, N'Tenâli', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3156, N'Thalassery', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3157, N'Thâna', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3158, N'Thânesar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3159, N'Thanjâvûr', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3160, N'Thiruvananthapuram', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3161, N'Thrissûr', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3162, N'Thûthukkudi', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3163, N'Tiruchchirâppalli', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3164, N'Tirunelveli', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3165, N'Tirupati', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3166, N'Tiruppur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3167, N'Tiruvannâmalai', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3168, N'Tirûvottiyûr', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3169, N'Titâgarh', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3170, N'Tonk', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3171, N'Tumkûr', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3172, N'Udaipur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3173, N'Udupi', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3174, N'Ujjain', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3175, N'Ulhâsnagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3176, N'Ulubâria', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3177, N'Unnâo', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3178, N'Uppal Kalan', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3179, N'Uttarpara-Kotrung', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3180, N'Vadodara', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3181, N'Vârânasî', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3182, N'Vejalpur', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3183, N'Velluru', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3184, N'Verâval', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3185, N'Vidisha', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3186, N'Vijayawâda', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3187, N'Virâr', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3188, N'Visakhapatnam', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3189, N'Vizianagaram', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3190, N'Warangal', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3191, N'Wardha', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3192, N'Yamunânagar', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3193, N'Yavatmâl', 94)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3194, N'Adiwerna', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3195, N'Ambon', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3196, N'Balikpapan', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3197, N'Banda Aceh', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3198, N'Bandar Lampung', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3199, N'Bandung', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3200, N'Banjarmasin', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3201, N'Banyuwangi', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3202, N'Batam', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3203, N'Bekasi', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3204, N'Belawan', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3205, N'Bengkulu', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3206, N'Binjai', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3207, N'Bitung', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3208, N'Blitar', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3209, N'Bogor', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3210, N'Brebes', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3211, N'Cianjur', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3212, N'Ciawi', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3213, N'Cibinong', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3214, N'Cilacap', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3215, N'Cilegon', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3216, N'Cimahi', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3217, N'Cimanggis', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3218, N'Ciomas', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3219, N'Ciparay', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3220, N'Ciputat', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3221, N'Cirebon', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3222, N'Citeureup', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3223, N'Denpasar', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3224, N'Depok', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3225, N'Depok', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3226, N'Dumai', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3227, N'Garut', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3228, N'Gorontalo', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3229, N'Jakarta', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3230, N'Jambi', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3231, N'Jaya Pura', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3232, N'Jember', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3233, N'Jombang', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3234, N'Karawang', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3235, N'Kediri', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3236, N'Kendari', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3237, N'Klaten', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3238, N'Kudus', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3239, N'Kupang', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3240, N'Lhokseumawe', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3241, N'Madiun', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3242, N'Magelang', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3243, N'Majalaya', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3244, N'Makasar', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3245, N'Malang', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3246, N'Manado', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3247, N'Martapura', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3248, N'Mataram', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3249, N'Medan', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3250, N'Mojokerto', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3251, N'Padang', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3252, N'Padang Sidempuan', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3253, N'Palangka Raya', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3254, N'Palembang', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3255, N'Palu', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3256, N'Pangkal Pinang', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3257, N'Pare Pare', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3258, N'Pasuruan', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3259, N'Pekalongan', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3260, N'Pekan Baru', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3261, N'Pemalang', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3262, N'Pematang Siantar', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3263, N'Percut Sei Tuan', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3264, N'Pondok Aren', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3265, N'Pondokgede', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3266, N'Pontianak', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3267, N'Probolinggo', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3268, N'Purwakarta', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3269, N'Purwokerto', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3270, N'Rantauprapat', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3271, N'Salatiga', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3272, N'Samarinda', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3273, N'Sawangan', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3274, N'Semarang', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3275, N'Serang', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3276, N'Sorong', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3277, N'Sukabumi', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3278, N'Sunggal', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3279, N'Surabaya', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3280, N'Surakarta', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3281, N'Taman', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3282, N'Tangerang', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3283, N'Tanjung Balai', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3284, N'Tanjung Pinang', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3285, N'Tasikmalaya', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3286, N'Tebingtinggi', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3287, N'Tegal', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3288, N'Ternate', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3289, N'Waru', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3290, N'Weru', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3291, N'Yogyakarta', 95)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3292, N'Âbâdân', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3293, N'Ahvâz', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3294, N'Âmol', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3295, N'Andîmeshk', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3296, N'Arâk', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3297, N'Ardabîl', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3298, N'Bâbol', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3299, N'Bandar-e ´Abbâs', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3300, N'Bandar-e Anzalî', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3301, N'Bandar-e Mâhshahr', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3302, N'Behbahân', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3303, N'Bîrjand', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3304, N'Bojnûrd', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3305, N'Borûjerd', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3306, N'Bûkân', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3307, N'Bûshehr', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3308, N'Dezfûl', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3309, N'Esfahân', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3310, N'Eslâmshahr', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3311, N'Ezeh', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3312, N'Gonbad-e Qâbûs', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3313, N'Gorgân', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3314, N'Hamadân', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3315, N'Îlâm', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3316, N'Jahrom', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3317, N'Karaj', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3318, N'Kâshân', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3319, N'Kermân', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3320, N'Kermânshâh', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3321, N'Khomeynîshahr', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3322, N'Khorramâbâd', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3323, N'Khorramshahr', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3324, N'Khoy', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3325, N'Mahâbâd', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3326, N'Malârd', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3327, N'Malâyer', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3328, N'Marâgheh', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3329, N'Marv Dasht', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3330, N'Mashhad', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3331, N'Masjed-e Soleymân', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3332, N'Mîândoâb', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3333, N'Najafâbâd', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3334, N'Neyshâbûr', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3335, N'Orûmîyeh', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3336, N'Qâ´emshahr', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3337, N'Qarchak', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3338, N'Qazvîn', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3339, N'Qods', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3340, N'Qom', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3341, N'Rafsanjân', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3342, N'Rasht', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3343, N'Sabzevâr', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3344, N'Sanandaj', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3345, N'Saqqez', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3346, N'Sârî', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3347, N'Sâveh', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3348, N'Semnân', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3349, N'Shahr-e Kord', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3350, N'Shâhrûd', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3351, N'Shîrâz', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3352, N'Sîrjân', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3353, N'Tabrîz', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3354, N'Tehrân', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3355, N'Varâmîn', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3356, N'Yâsûj', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3357, N'Yazd', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3358, N'Zâbol', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3359, N'Zâhedân', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3360, N'Zanjân', 96)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3361, N'ad-Dîwânîyah', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3362, N'al-´Amârah', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3363, N'al-Basrah', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3364, N'al-Fallûjah', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3365, N'al-Hillah', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3366, N'al-Kûfah', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3367, N'al-Kût', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3368, N'al-Mawsil', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3369, N'an-Najaf', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3370, N'an-Nâsirîyah', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3371, N'ar-Ramâdî', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3372, N'as-Samâwah', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3373, N'as-Sulaymânîyah', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3374, N'az-Zubayr', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3375, N'Ba´qûbah', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3376, N'Baghdâd', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3377, N'Dahûk', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3378, N'Irbîl', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3379, N'Karbalâ', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3380, N'Kirkûk', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3381, N'Sâmarrâ', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3382, N'Tall ´Afar', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3383, N'Tikrit', 97)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3384, N'Athlone', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3385, N'Bray', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3386, N'Carlow', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3387, N'Carrick-on-Shannon', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3388, N'Castlebar', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3389, N'Cavan', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3390, N'Clonmel', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3391, N'Cork', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3392, N'Drogheda', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3393, N'Dublin', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3394, N'Dundalk', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3395, N'Dungarvan', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3396, N'Ennis', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3397, N'Galway', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3398, N'Kilkenny', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3399, N'Lifford', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3400, N'Limerick', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3401, N'Longford', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3402, N'Monaghan', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3403, N'Mullingar', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3404, N'Naas', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3405, N'Navan', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3406, N'Nenagh', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3407, N'Newbridge', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3408, N'Port Laoise', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3409, N'Roscommon', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3410, N'Sligo', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3411, N'Swords', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3412, N'Tralee', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3413, N'Tullamore', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3414, N'Waterford', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3415, N'Wexford', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3416, N'Wicklow', 98)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3417, N'Ashdod', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3418, N'Ashqelon', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3419, N'Bat Yam', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3420, N'Be`er Sheva', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3421, N'Bene Beraq', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3422, N'Herzeliyya', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3423, N'Kefar Sava', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3424, N'Khadera', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3425, N'Khefa', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3426, N'Kholon', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3427, N'Lod', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3428, N'Nazerat', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3429, N'Netanya', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3430, N'Petakh Tiqwa', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3431, N'Ra`anana', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3432, N'Ramat Gan', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3433, N'Ramla', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3434, N'Rekhovot', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3435, N'Rishon LeZiyyon', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3436, N'Tel Aviv-Yafo', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3437, N'Yerushalayim', 99)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3438, N'Ancona', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3439, N'Bari', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3440, N'Bergamo', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3441, N'Bologna', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3442, N'Brescia', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3443, N'Cagliari', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3444, N'Catania', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3445, N'Ferrara', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3446, N'Firenze', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3447, N'Foggia', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3448, N'Forlì', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3449, N'Genova', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3450, N'Latina', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3451, N'Livorno', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3452, N'Messina', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3453, N'Milano', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3454, N'Modena', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3455, N'Monza', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3456, N'Napoli', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3457, N'Novara', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3458, N'Padova', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3459, N'Palermo', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3460, N'Parma', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3461, N'Perugia', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3462, N'Pescara', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3463, N'Prato', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3464, N'Ravenna', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3465, N'Reggio di Calabria', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3466, N'Reggio nell`Emilia', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3467, N'Rimini', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3468, N'Roma', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3469, N'Salerno', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3470, N'Sassari', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3471, N'Siracusa', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3472, N'Taranto', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3473, N'Terni', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3474, N'Torino', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3475, N'Trento', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3476, N'Trieste', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3477, N'Venezia', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3478, N'Verona', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3479, N'Vicenza', 100)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3480, N'Abengourou', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3481, N'Abidjan', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3482, N'Agboville', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3483, N'Anyama', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3484, N'Bingerville', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3485, N'Bondoukou', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3486, N'Bouaflé', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3487, N'Bouaké', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3488, N'Dabou', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3489, N'Daloa', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3490, N'Danané', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3491, N'Dimbokro', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3492, N'Divo', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3493, N'Gagnoa', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3494, N'Grand Bassam', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3495, N'Korhogo', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3496, N'Man', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3497, N'Odienné', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3498, N'San-Pédro', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3499, N'Séguéla', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3500, N'Sinfra', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3501, N'Touba', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3502, N'Yamoussoukro', 101)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3503, N'Anchovy', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3504, N'Anotto Bay', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3505, N'Bamboo', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3506, N'Black River', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3507, N'Brown`s Town', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3508, N'Bull Savanna', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3509, N'Falmouth', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3510, N'Half Way Tree', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3511, N'Kingston', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3512, N'Lucea', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3513, N'Mandeville', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3514, N'May Pen', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3515, N'Montego Bay', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3516, N'Morant Bay', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3517, N'Ocho Rios', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3518, N'Port Antonio', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3519, N'Port Maria', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3520, N'Portmore', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3521, N'Saint Ann`s Bay', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3522, N'Savanna la Mar', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3523, N'Spanish Town', 102)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3524, N'Abiko', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3525, N'Ageo', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3526, N'Aizuwakamatsu', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3527, N'Akashi', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3528, N'Akishima', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3529, N'Akita', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3530, N'Amagasaki', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3531, N'Anjô', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3532, N'Aomori', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3533, N'Asahikawa', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3534, N'Asaka', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3535, N'Ashikaga', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3536, N'Atsugi', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3537, N'Beppu', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3538, N'Chiba', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3539, N'Chigasaki', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3540, N'Chôfu', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3541, N'Daitô', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3542, N'Ebetsu', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3543, N'Ebina', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3544, N'Fuchû', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3545, N'Fuji', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3546, N'Fujieda', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3547, N'Fujimi', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3548, N'Fujinomiya', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3549, N'Fujisawa', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3550, N'Fukaya', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3551, N'Fukui', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3552, N'Fukuoka', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3553, N'Fukushima', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3554, N'Fukuyama', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3555, N'Funabashi', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3556, N'Gifu', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3557, N'Habikino', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3558, N'Hachinohe', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3559, N'Hachiôji', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3560, N'Hadano', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3561, N'Hakodate', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3562, N'Hamamatsu', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3563, N'Handa', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3564, N'Higashihiroshima', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3565, N'Higashikurume', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3566, N'Higashimurayama', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3567, N'Higashiôsaka', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3568, N'Hikone', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3569, N'Himeji', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3570, N'Hino', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3571, N'Hirakata', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3572, N'Hiratsuka', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3573, N'Hirosaki', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3574, N'Hiroshima', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3575, N'Hitachi', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3576, N'Hitachinaka', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3577, N'Hôfu', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3578, N'Hôya', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3579, N'Ibaraki', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3580, N'Ichihara', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3581, N'Ichikawa', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3582, N'Ichinomiya', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3583, N'Iida', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3584, N'Ikeda', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3585, N'Ikoma', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3586, N'Imabari', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3587, N'Inazawa', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3588, N'Iruma', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3589, N'Isehara', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3590, N'Isesaki', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3591, N'Ishinomaki', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3592, N'Itami', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3593, N'Iwaki', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3594, N'Iwakuni', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3595, N'Iwatsuki', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3596, N'Izumi', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3597, N'Jôetsu', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3598, N'Kadoma', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3599, N'Kagoshima', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3600, N'Kakamigahara', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3601, N'Kakogawa', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3602, N'Kamagaya', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3603, N'Kamakura', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3604, N'Kanazawa', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3605, N'Kariya', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3606, N'Kashihara', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3607, N'Kashiwa', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3608, N'Kasuga', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3609, N'Kasugai', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3610, N'Kasukabe', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3611, N'Kawachinagano', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3612, N'Kawagoe', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3613, N'Kawaguchi', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3614, N'Kawanishi', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3615, N'Kawasaki', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3616, N'Kiryû', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3617, N'Kisarazu', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3618, N'Kishiwada', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3619, N'Kitakyûshû', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3620, N'Kitami', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3621, N'Kôbe', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3622, N'Kôchi', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3623, N'Kodaira', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3624, N'Kôfu', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3625, N'Koganei', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3626, N'Kokubunji', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3627, N'Komaki', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3628, N'Komatsu', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3629, N'Kôriyama', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3630, N'Koshigaya', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3631, N'Kumagaya', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3632, N'Kumamoto', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3633, N'Kurashiki', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3634, N'Kure', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3635, N'Kurume', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3636, N'Kusatsu', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3637, N'Kushiro', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3638, N'Kuwana', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3639, N'Kyôto', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3640, N'Machida', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3641, N'Maebashi', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3642, N'Matsubara', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3643, N'Matsudo', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3644, N'Matsue', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3645, N'Matsumoto', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3646, N'Matsusaka', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3647, N'Matsuyama', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3648, N'Minô', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3649, N'Misato', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3650, N'Mishima', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3651, N'Mitaka', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3652, N'Mito', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3653, N'Miyakonojô', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3654, N'Miyazaki', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3655, N'Moriguchi', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3656, N'Morioka', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3657, N'Muroran', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3658, N'Musashino', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3659, N'Nagano', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3660, N'Nagaoka', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3661, N'Nagareyama', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3662, N'Nagasaki', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3663, N'Nagoya', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3664, N'Naha', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3665, N'Nara', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3666, N'Narashino', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3667, N'Neyagawa', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3668, N'Niigata', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3669, N'Niihama', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3670, N'Niiza', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3671, N'Nishinomiya', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3672, N'Nishio', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3673, N'Nobeoka', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3674, N'Noda', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3675, N'Numazu', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3676, N'Obihiro', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3677, N'Odawara', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3678, N'Ôgaki', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3679, N'Ôita', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3680, N'Okayama', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3681, N'Okazaki', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3682, N'Okinawa', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3683, N'Ôme', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3684, N'Ômiya', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3685, N'Ômuta', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3686, N'Ôsaka', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3687, N'Ôta', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3688, N'Otaru', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3689, N'Ôtsu', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3690, N'Oyama', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3691, N'Saga', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3692, N'Sagamihara', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3693, N'Sakai', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3694, N'Sakata', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3695, N'Sakura', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3696, N'Sanda', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3697, N'Sapporo', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3698, N'Sasebo', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3699, N'Sayama', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3700, N'Sendai', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3701, N'Seto', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3702, N'Shimizu', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3703, N'Shimonoseki', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3704, N'Shizuoka', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3705, N'Sôka', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3706, N'Suita', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3707, N'Suzuka', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3708, N'Tachikawa', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3709, N'Tajimi', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3710, N'Takamatsu', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3711, N'Takaoka', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3712, N'Takarazuka', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3713, N'Takasaki', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3714, N'Takatsuki', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3715, N'Tama', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3716, N'Toda', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3717, N'Tokai', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3718, N'Tokorozawa', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3719, N'Tokushima', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3720, N'Tokuyama', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3721, N'Tôkyô', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3722, N'Tomakomai', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3723, N'Tondabayashi', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3724, N'Tottori', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3725, N'Toyama', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3726, N'Toyohashi', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3727, N'Toyokawa', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3728, N'Toyonaka', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3729, N'Toyota', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3730, N'Tsu', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3731, N'Tsuchiura', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3732, N'Tsukuba', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3733, N'Tsuruoka', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3734, N'Ube', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3735, N'Ueda', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3736, N'Uji', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3737, N'Urasoe', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3738, N'Urawa', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3739, N'Urayasu', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3740, N'Utsunomiya', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3741, N'Wakayama', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3742, N'Yachiyo', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3743, N'Yaizu', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3744, N'Yamagata', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3745, N'Yamaguchi', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3746, N'Yamato', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3747, N'Yao', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3748, N'Yatsushiro', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3749, N'Yokkaichi', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3750, N'Yokohama', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3751, N'Yokosuka', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3752, N'Yonago', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3753, N'Zama', 103)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3754, N'Grouville', 104)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3755, N'Saint Brelade', 104)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3756, N'Saint Clement', 104)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3757, N'Saint Helier', 104)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3758, N'Saint John', 104)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3759, N'Saint Lawrence', 104)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3760, N'Saint Martin', 104)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3761, N'Saint Mary', 104)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3762, N'Saint Ouen', 104)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3763, N'Saint Peter', 104)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3764, N'Saint Saviour', 104)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3765, N'Trinity', 104)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3766, N'´Ajlûn', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3767, N'´Ammân', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3768, N'Abû ´Alandâ', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3769, N'al-´Aqabah', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3770, N'al-Baq´ah', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3771, N'al-Jubayhah', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3772, N'al-Karak', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3773, N'al-Mafraq', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3774, N'al-Quwaysimah', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3775, N'ar-Ramtha', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3776, N'ar-Russayfah', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3777, N'as-Salt', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3778, N'at-Tafîlah', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3779, N'az-Zarqâ`', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3780, N'Irbid', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3781, N'Jarash', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3782, N'Khalda wa Tilâ´-al-´Alî', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3783, N'Ma´ân', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3784, N'Mâdabâ', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3785, N'Mushayrfat Râs al-´Ayn', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3786, N'Sahâb', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3787, N'Shnillar', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3788, N'Suwaylih', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3789, N'Târiq', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3790, N'Wâdî as-Sîr', 105)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3791, N'Akmeçet', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3792, N'Aktaû', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3793, N'Aktöbe', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3794, N'Almati', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3795, N'Astana', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3796, N'Atiraû', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3797, N'Èkibastuz', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3798, N'Karaganda', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3799, N'Kostanay', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3800, N'Köksetaû', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3801, N'Oral', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3802, N'Öskemen', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3803, N'Pavlodar', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3804, N'Petropavl', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3805, N'Rûdni', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3806, N'Semey', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3807, N'Simkent', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3808, N'Taldikorgan', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3809, N'Taraz', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3810, N'Temirtaû', 106)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3811, N'Eldoret', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3812, N'Embu', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3813, N'Garissa', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3814, N'Homa Bay', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3815, N'Kakamega', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3816, N'Kericho', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3817, N'Kisii', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3818, N'Kisumu', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3819, N'Kitale', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3820, N'Machakos', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3821, N'Maragua', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3822, N'Meru', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3823, N'Mombasa', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3824, N'Muranga', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3825, N'Nairobi', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3826, N'Naivasha', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3827, N'Nakuru', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3828, N'Nyeri', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3829, N'Thika', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3830, N'Webuye', 107)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3831, N'Abaokoro', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3832, N'Bairiki', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3833, N'Bikenibeu', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3834, N'Binoinano', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3835, N'Bonriki', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3836, N'Buariki', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3837, N'Buariki', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3838, N'Butaritari', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3839, N'Ijaki', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3840, N'London', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3841, N'Makin', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3842, N'Nabari', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3843, N'Ooma', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3844, N'Pyramid Point', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3845, N'Rawannawi', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3846, N'Roreti', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3847, N'Rungata', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3848, N'Tabiauea', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3849, N'Tabontebike', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3850, N'Tabukiniberu', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3851, N'Taburao', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3852, N'Takaeang', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3853, N'Temaraia', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3854, N'Utiroa', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3855, N'Washington', 108)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3856, N'Cheongjin', 109)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3857, N'Haeju', 109)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3858, N'Hamheung', 109)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3859, N'Hyesan', 109)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3860, N'Kaeseong', 109)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3861, N'Kanggye', 109)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3862, N'Kimchaek', 109)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3863, N'Najin', 109)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3864, N'Nampo', 109)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3865, N'Phyeongseong', 109)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3866, N'Pyeongyang', 109)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3867, N'Sariweon', 109)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3868, N'Seongnim', 109)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3869, N'Sineuiju', 109)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3870, N'Weonsan', 109)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3871, N'Andong', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3872, N'Ansan', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3873, N'Anyang', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3874, N'Changweon', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3875, N'Chechon', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3876, N'Cheju', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3877, N'Cheonan', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3878, N'Cheongju', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3879, N'Cheonju', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3880, N'Chinhae', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3881, N'Chinju', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3882, N'Chuncheon', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3883, N'Chungju', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3884, N'Euijeongbu', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3885, N'Euiwang', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3886, N'Hanam', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3887, N'Iksan', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3888, N'Incheon', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3889, N'Kangneung', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3890, N'Kimhae', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3891, N'Koyang', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3892, N'Kumi', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3893, N'Kunpo', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3894, N'Kunsan', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3895, N'Kuri', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3896, N'Kwangju', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3897, N'Kwangmyeong', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3898, N'Kyeongju', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3899, N'Masan', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3900, N'Mokpo', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3901, N'Pohang', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3902, N'Poryong', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3903, N'Pucheon', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3904, N'Pusan', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3905, N'Pyeongtaek', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3906, N'Seongnam', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3907, N'Seoul', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3908, N'Shiheung', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3909, N'Suncheon', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3910, N'Suweon', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3911, N'Taegu', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3912, N'Taejeon', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3913, N'Tongyong', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3914, N'Ulsan', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3915, N'Weonju', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3916, N'Yeosu', 110)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3917, N'Abraq Khîtân', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3918, N'al-Ahmadî', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3919, N'al-Farwânîyah', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3920, N'al-Fuhayhîl', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3921, N'al-Jabirîyah', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3922, N'al-Jahrâ', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3923, N'al-Karîm', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3924, N'al-Kuwayt', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3925, N'al-Qusayr', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3926, N'Ardîyah', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3927, N'ar-Riqqah', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3928, N'ar-Rumaythiyah', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3929, N'as-Sabahîyah', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3930, N'as-Sâlimîyah', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3931, N'as-Sulaybîyah', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3932, N'Fardaws', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3933, N'Hawallî', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3934, N'Jalîb ash-Shuyûh', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3935, N'Khîtân-al-Janûbîyah', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3936, N'Salwâ`', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3937, N'Subbah-as-Salim', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3938, N'Tayma´', 111)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3939, N'Balykchy', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3940, N'Batken', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3941, N'Bazarkurgon', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3942, N'Belovodskoye', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3943, N'Bishkek', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3944, N'Chui', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3945, N'Jalal-Abad', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3946, N'Kant', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3947, N'Karabalta', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3948, N'Karakol', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3949, N'Kara-Suu', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3950, N'Kemin', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3951, N'Kyzyl-Kiya', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3952, N'Mingkush', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3953, N'Naryn', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3954, N'Osh', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3955, N'Sokuluk', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3956, N'Talas', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3957, N'Tash-Kumyr', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3958, N'Tokmok', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3959, N'Uzgen', 112)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3960, N'Ban Nahin', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3961, N'Champasak', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3962, N'Huayxay', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3963, N'Luang Prabang', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3964, N'Muang Khong', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3965, N'Muang Khongxedon', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3966, N'Muang Sing', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3967, N'Muang Vangviang', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3968, N'Nam Tha', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3969, N'Pakxan', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3970, N'Pakxe', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3971, N'Pek', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3972, N'Phongsaly', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3973, N'Phonhong', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3974, N'Samakhixai', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3975, N'Saravan', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3976, N'Savannakhet', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3977, N'Sekong', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3978, N'Thakek', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3979, N'Viangchan', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3980, N'Xaignabury', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3981, N'Xam Nua', 113)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3982, N'Aizkraukle', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3983, N'Alûksne', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3984, N'Balvi', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3985, N'Bauska', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3986, N'Cêsis', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3987, N'Daugavpils', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3988, N'Dôbele', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3989, N'Gulbene', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3990, N'Jêkabspils', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3991, N'Jelgava', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3992, N'Jûrmala', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3993, N'Krâslava', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3994, N'Kuldîga', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3995, N'Liepâja', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3996, N'Limbazhi', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3997, N'Ludza', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3998, N'Madona', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (3999, N'Ogre', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4000, N'Olaine', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4001, N'Preili', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4002, N'Rêzekne', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4003, N'Rîga', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4004, N'Salaspils', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4005, N'Saldus', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4006, N'Talsi', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4007, N'Tukums', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4008, N'Valka', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4009, N'Valmiera', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4010, N'Ventspils', 114)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4011, N'´Âlayh', 115)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4012, N'al-Batrun', 115)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4013, N'al-Hirmil', 115)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4014, N'an-Nabatîyat-at-Tahtâ', 115)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4015, N'B´abda', 115)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4016, N'Ba´labakk', 115)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4017, N'Bayrût', 115)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4018, N'Jazzîn', 115)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4019, N'Jubayl', 115)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4020, N'Jubb Jannin', 115)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4021, N'Jûniyah', 115)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4022, N'Juwayyâ', 115)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4023, N'Marj ´Uyun', 115)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4024, N'Râshayyâ', 115)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4025, N'Rîyâk', 115)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4026, N'Saydâ`', 115)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4027, N'Sûr', 115)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4028, N'Tarâbulus ash-Sham', 115)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4029, N'Zahlah', 115)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4030, N'Butha Buthe', 116)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4031, N'Hlotse', 116)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4032, N'Mafeteng', 116)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4033, N'Maputsoa', 116)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4034, N'Maseru', 116)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4035, N'Mohale`s Hoek', 116)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4036, N'Mokhotlong', 116)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4037, N'Qacha`s Nek', 116)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4038, N'Quthing', 116)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4039, N'Teyateyaneng', 116)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4040, N'Thaba-Tseka', 116)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4041, N'Barclayville', 117)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4042, N'Bensonville', 117)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4043, N'Buchanan', 117)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4044, N'Ganta', 117)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4045, N'Gbarnga', 117)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4046, N'Greenville', 117)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4047, N'Harbel', 117)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4048, N'Harper', 117)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4049, N'Kakata', 117)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4050, N'Monrovia', 117)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4051, N'Rivercess', 117)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4052, N'Robertsport', 117)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4053, N'Sanniquellie', 117)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4054, N'Tapeta', 117)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4055, N'Tubmanburg', 117)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4056, N'Voinjama', 117)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4057, N'Yekepa', 117)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4058, N'Zwedru', 117)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4059, N'Ajdâbiyâ', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4060, N'al-Azîzîyah', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4061, N'al-Baydâ', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4062, N'al-Jawf', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4063, N'al-Khums', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4064, N'al-Marj', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4065, N'Awbâri', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4066, N'az-Zâwiyah', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4067, N'Banghâzî', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4068, N'Banî Walîd', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4069, N'Birâk', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4070, N'Darnah', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4071, N'Ghadâmis', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4072, N'Gharyân', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4073, N'Misrâtah', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4074, N'Murzûq', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4075, N'Sabhâ', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4076, N'Sabrâtah', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4077, N'Surt', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4078, N'Tarâbulus', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4079, N'Tarhûnah', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4080, N'Tubruq', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4081, N'Waddân', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4082, N'Yafran', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4083, N'Zlîtan', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4084, N'Zuwârah', 118)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4085, N'Balzers', 119)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4086, N'Eschen', 119)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4087, N'Gamprin', 119)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4088, N'Mauren', 119)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4089, N'Planken', 119)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4090, N'Ruggell', 119)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4091, N'Schaan', 119)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4092, N'Schellenberg', 119)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4093, N'Triesen', 119)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4094, N'Triesenberg', 119)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4095, N'Vaduz', 119)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4096, N'Alytus', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4097, N'Druskininkai', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4098, N'Jonava', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4099, N'Kaunas', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4100, N'Kedainiai', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4101, N'Klaipeda', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4102, N'Kretinga', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4103, N'Marijampole', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4104, N'Mazheikiai', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4105, N'Panevezhys', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4106, N'Plunge', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4107, N'Radvilishkis', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4108, N'Shiauliai', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4109, N'Shilute', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4110, N'Taurage', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4111, N'Telshiai', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4112, N'Ukmerge', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4113, N'Utena', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4114, N'Vilnius', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4115, N'Visaginas', 120)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4116, N'Bascharage', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4117, N'Belvaux', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4118, N'Bertrange', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4119, N'Bettembourg', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4120, N'Capellen', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4121, N'Clervaux', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4122, N'Diekirch', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4123, N'Differdange', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4124, N'Dudelange', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4125, N'Echternach', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4126, N'Esch-Alzette', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4127, N'Ettelbruck', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4128, N'Fousbann', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4129, N'Grevenmacher', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4130, N'Luxembourg', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4131, N'Mamer', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4132, N'Mersch', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4133, N'Obercorn', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4134, N'Pétange', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4135, N'Redange', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4136, N'Remich', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4137, N'Rodange', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4138, N'Schifflange', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4139, N'Soleuvre', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4140, N'Strassen', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4141, N'Vianden', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4142, N'Wiltz', 121)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4143, N'Berovo', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4144, N'Bitola', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4145, N'Brod', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4146, N'Debar', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4147, N'Delchevo', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4148, N'Demir Hisar', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4149, N'Gevgelija', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4150, N'Gostivar', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4151, N'Kavadarci', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4152, N'Kichevo', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4153, N'Kochani', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4154, N'Kratovo', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4155, N'Kriva Palanka', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4156, N'Krushevo', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4157, N'Kumanovo', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4158, N'Negotino', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4159, N'Ohrid', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4160, N'Prilep', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4161, N'Probishtip', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4162, N'Radovish', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4163, N'Resen', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4164, N'Saraj', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4165, N'Shtip', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4166, N'Skopje', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4167, N'Struga', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4168, N'Strumica', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4169, N'Sveti Nikole', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4170, N'Tetovo', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4171, N'Valandovo', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4172, N'Veles', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4173, N'Vinica', 122)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4174, N'Ambatondrazaka', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4175, N'Ambovombe', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4176, N'Amparafaravola', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4177, N'Antananarivo', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4178, N'Antanifotsy', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4179, N'Antsirabé', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4180, N'Antsiranana', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4181, N'Faratsiho', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4182, N'Fianarantsoa', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4183, N'Mahajanga', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4184, N'Mahanoro', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4185, N'Manakara', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4186, N'Mananara', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4187, N'Morondava', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4188, N'Nosy Varika', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4189, N'Soanierana Ivongo', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4190, N'Soavinandriana', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4191, N'Taolanaro', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4192, N'Toamasina', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4193, N'Toliary', 123)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4194, N'Balaka', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4195, N'Blantyre', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4196, N'Chikwawa', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4197, N'Chilumba', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4198, N'Chiradzulu', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4199, N'Chitipa', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4200, N'Dedza', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4201, N'Dowa', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4202, N'Karonga', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4203, N'Kasungu', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4204, N'Lilongwe', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4205, N'Liwonde', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4206, N'Machinga', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4207, N'Mangochi', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4208, N'Mchinji', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4209, N'Mponela', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4210, N'Mulanje', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4211, N'Mwanza', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4212, N'Mzimba', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4213, N'Mzuzu', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4214, N'Nkhata Bay', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4215, N'Nkhotakota', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4216, N'Nsanje', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4217, N'Ntcheu', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4218, N'Ntchisi', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4219, N'Phalombe', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4220, N'Rumphi', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4221, N'Salima', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4222, N'Thyolo', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4223, N'Zomba', 124)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4224, N'Alor Setar', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4225, N'Ampang Jaya', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4226, N'Ayer Itam', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4227, N'Bandar Maharani', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4228, N'Bandar Penggaram', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4229, N'Batu Sembilan Cheras', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4230, N'Bintulu', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4231, N'Bukit Mertajam', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4232, N'Butterworth', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4233, N'Gelugor', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4234, N'Georgetown', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4235, N'Ipoh', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4236, N'Johor Bahru', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4237, N'Kajang-Sungai Chua', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4238, N'Kangar', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4239, N'Klang', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4240, N'Kluang', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4241, N'Kota Bahru', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4242, N'Kota Kinabalu', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4243, N'Kuala Lumpur', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4244, N'Kuala Terengganu', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4245, N'Kuantan', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4246, N'Kuching', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4247, N'Kulim', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4248, N'Labuan', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4249, N'Melaka', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4250, N'Miri', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4251, N'Petaling Jaya', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4252, N'Sandakan', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4253, N'Sekudai', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4254, N'Selayang Baru', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4255, N'Seremban', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4256, N'Shah Alam', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4257, N'Sibu', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4258, N'Subang Jaya', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4259, N'Sungai Ara', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4260, N'Sungai Petani', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4261, N'Taiping', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4262, N'Tawau', 125)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4263, N'Dhidhdhoo', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4264, N'Eydhafushi', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4265, N'Felidhoo', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4266, N'Feydhoo', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4267, N'Fonadhoo', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4268, N'Funadhoo', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4269, N'Fuvammulah', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4270, N'Gamu', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4271, N'Hinnavaru', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4272, N'Hithadhoo', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4273, N'Hoarafushi', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4274, N'Ihavandhoo', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4275, N'Kadholhudhoo', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4276, N'Kudahuvadhoo', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4277, N'Kulhudhuffushi', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4278, N'Maafushi', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4279, N'Magoodhoo', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4280, N'Mahibadhoo', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4281, N'Malé', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4282, N'Manadhoo', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4283, N'Maradhoo', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4284, N'Muli', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4285, N'Naifaru', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4286, N'Rasdhoo', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4287, N'Thinadhoo', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4288, N'Thulhaadhoo', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4289, N'Thulusdhoo', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4290, N'Ugoofaaru', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4291, N'Velidhoo', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4292, N'Veymandhoo', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4293, N'Viligili', 126)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4294, N'Bafoulabé', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4295, N'Bamako', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4296, N'Banamba', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4297, N'Bougouni', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4298, N'Djenné', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4299, N'Gao', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4300, N'Kati', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4301, N'Kayes', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4302, N'Kidal', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4303, N'Kolokani', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4304, N'Koulikoro', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4305, N'Koutiala', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4306, N'Markala', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4307, N'Mopti', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4308, N'Nara', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4309, N'Niono', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4310, N'Nioro', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4311, N'San', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4312, N'Ségou', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4313, N'Sikasso', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4314, N'Tombouctou', 127)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4315, N'Attard', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4316, N'Birkirkara', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4317, N'Birzebugia', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4318, N'Fgura', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4319, N'Gzira', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4320, N'Hamrun', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4321, N'Mosta', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4322, N'Naxxar', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4323, N'Paola', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4324, N'Qormi', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4325, N'Rabat', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4326, N'Rabat', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4327, N'San Gwann', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4328, N'San Pawl il-Bahar', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4329, N'Sighghiewi', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4330, N'Sliema', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4331, N'Tarxien', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4332, N'Valletta', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4333, N'Zabbar', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4334, N'Zebbug', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4335, N'Zejtun', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4336, N'Zurrieq', 128)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4337, N'Castletown', 129)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4338, N'Douglas', 129)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4339, N'Laxey', 129)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4340, N'Onchan', 129)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4341, N'Peel', 129)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4342, N'Port Erin', 129)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4343, N'Port Saint Mary', 129)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4344, N'Ramsey', 129)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4345, N'Aerok', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4346, N'Ailuk', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4347, N'Ajeltake', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4348, N'Ebeye', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4349, N'Enewetak', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4350, N'Enubirr', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4351, N'Jabwor', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4352, N'Kili', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4353, N'Laura', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4354, N'Likiep', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4355, N'Mejatto', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4356, N'Mejit', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4357, N'Mili', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4358, N'Namorik', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4359, N'Rita', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4360, N'Ujae', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4361, N'Utirik', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4362, N'Woja', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4363, N'Woja', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4364, N'Wotje', 130)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4365, N'Ducos', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4366, N'Fort-de-France', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4367, N'Gros-Morne', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4368, N'La Trinité', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4369, N'Le François', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4370, N'Le Lamentin', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4371, N'Le Lorrain', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4372, N'Le Marin', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4373, N'Le Morne-Rouge', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4374, N'Le Robert', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4375, N'Le Vauclin', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4376, N'Les Trois-Îlets', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4377, N'Rivière-Pilote', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4378, N'Rivière-Salée', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4379, N'Sainte-Luce', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4380, N'Sainte-Marie', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4381, N'Saint-Esprit', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4382, N'Saint-Joseph', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4383, N'Saint-Pierre', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4384, N'Schoelcher', 131)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4385, N'´Ayûn-al-´Atrûs', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4386, N'Alaq', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4387, N'an-Na´mah', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4388, N'Aqjawajat', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4389, N'Âtâr', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4390, N'Buqah', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4391, N'Fdayrik', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4392, N'Hsay Wâlad ´Alî Bâbî', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4393, N'Kayhaydi', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4394, N'Kîfah', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4395, N'Kubanni', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4396, N'Magta´ Lahjar', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4397, N'Nawadhîbu', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4398, N'Nawâkshût', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4399, N'Rûsû', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4400, N'Shingati', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4401, N'Tijiqjah', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4402, N'Timbédra', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4403, N'Walâtah', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4404, N'Zuwârat', 132)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4405, N'Baie du Tombeau', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4406, N'Bambous', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4407, N'Beau Bassin-Rose Hill', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4408, N'Bel Air', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4409, N'Central Flacq', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4410, N'Chemin Grenier', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4411, N'Curepipe', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4412, N'Goodlands', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4413, N'Grand Baie', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4414, N'Le Hochet', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4415, N'Mahébourg', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4416, N'Moka', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4417, N'Pailles', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4418, N'Pamplemousse', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4419, N'Plaine Magnien', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4420, N'Port Louis', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4421, N'Port Mathurin', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4422, N'Poudre d`Or', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4423, N'Quatre Bornes', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4424, N'Rose Belle', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4425, N'Saint Pierre', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4426, N'Souillac', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4427, N'Surinam', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4428, N'Tamarin', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4429, N'Triolet', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4430, N'Vascoas-Phoenix', 133)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4431, N'Acoua', 134)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4432, N'Bandraboua', 134)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4433, N'Bandrélé', 134)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4434, N'Bouéni', 134)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4435, N'Chiconi', 134)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4436, N'Chirongui', 134)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4437, N'Dembéni', 134)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4438, N'Dzaoudzi', 134)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4439, N'Kanikéli', 134)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4440, N'Koungou', 134)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4441, N'Mamoudzou', 134)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4442, N'Mtsamboro', 134)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4443, N'Mtsangamouji', 134)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4444, N'Ouangani', 134)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4445, N'Pamanzi', 134)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4446, N'Sada', 134)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4447, N'Tsingoni', 134)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4448, N'Acapulco', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4449, N'Acuña', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4450, N'Aguascalientes', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4451, N'Apodaca', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4452, N'Buenavista', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4453, N'Campeche', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4454, N'Cancún', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4455, N'Carmen', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4456, N'Celaya', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4457, N'Chalco', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4458, N'Chetumal', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4459, N'Chihuahua', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4460, N'Chilpancingo', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4461, N'Chimalhuacán', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4462, N'Ciudad Valles', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4463, N'Coacalco', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4464, N'Coatzacoalcos', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4465, N'Colima', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4466, N'Córdoba', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4467, N'Cuautitlán Izcalli', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4468, N'Cuautla', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4469, N'Cuernavaca', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4470, N'Culiacán', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4471, N'Delicias', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4472, N'Durango', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4473, N'Ecatepec', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4474, N'Ensenada', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4475, N'Fresnillo', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4476, N'Garza García', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4477, N'General Escobedo', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4478, N'Gómez Palacio', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4479, N'Guadalajara', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4480, N'Guadalupe', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4481, N'Guanajuato', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4482, N'Guaymas', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4483, N'Hermosillo', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4484, N'Hidalgo', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4485, N'Huixquilucan', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4486, N'Iguala', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4487, N'Irapuato', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4488, N'Ixtapaluca', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4489, N'Jiutepec', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4490, N'Juárez', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4491, N'La Paz', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4492, N'León', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4493, N'López Mateos', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4494, N'Los Mochis', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4495, N'Los Reyes', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4496, N'Madero', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4497, N'Manzanillo', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4498, N'Matamoros', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4499, N'Mazatlán', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4500, N'Mérida', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4501, N'Metepec', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4502, N'Mexicali', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4503, N'México', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4504, N'Minatitlán', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4505, N'Monclova', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4506, N'Monterrey', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4507, N'Morelia', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4508, N'Naucalpan', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4509, N'Navajoa', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4510, N'Nezahualcóyotl', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4511, N'Nicolás Romero', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4512, N'Nogales', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4513, N'Nuevo Laredo', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4514, N'Oaxaca', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4515, N'Obregón', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4516, N'Orizaba', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4517, N'Pachuca', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4518, N'Piedras Negras', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4519, N'Poza Rica', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4520, N'Puebla', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4521, N'Puerto Vallarta', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4522, N'Querétaro', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4523, N'Reynosa', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4524, N'Salamanca', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4525, N'Saltillo', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4526, N'San Cristóbal de las Casas', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4527, N'San Juan del Río', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4528, N'San Luis Potosí', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4529, N'San Luis Río Colorado', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4530, N'San Nicolás de los Garza', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4531, N'San Pablo de las Salinas', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4532, N'Santa Catarina', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4533, N'Soledad', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4534, N'Tampico', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4535, N'Tapachula', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4536, N'Tehuacán', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4537, N'Tepic', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4538, N'Texcoco', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4539, N'Tijuana', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4540, N'Tlalnepantla', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4541, N'Tlaquepaque', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4542, N'Tlaxcala', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4543, N'Toluca', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4544, N'Tonalá', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4545, N'Torreón', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4546, N'Tuxtla Gutiérrez', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4547, N'Uruapan', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4548, N'Veracruz', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4549, N'Victoria', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4550, N'Villahermosa', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4551, N'Xalapa', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4552, N'Xico', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4553, N'Zacatecas', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4554, N'Zamora', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4555, N'Zapopan', 135)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4556, N'Colonia', 136)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4557, N'Kolonia', 136)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4558, N'Lelu', 136)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4559, N'Palikir', 136)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4560, N'Tol', 136)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4561, N'Weno', 136)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4562, N'Balti', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4563, N'Cahul', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4564, N'Calarasi', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4565, N'Causani', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4566, N'Chisinau', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4567, N'Ciadâr Lunga', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4568, N'Comrat', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4569, N'Drochia', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4570, N'Dubasari', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4571, N'Edinet', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4572, N'Falesti', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4573, N'Floresti', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4574, N'Hâncesti', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4575, N'Orhei', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4576, N'Râbnita', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4577, N'Slobozia', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4578, N'Soroca', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4579, N'Taraclia', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4580, N'Tighina', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4581, N'Tiraspol`', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4582, N'Ungheni', 137)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4583, N'Fontvieille', 138)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4584, N'La Condamine', 138)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4585, N'Monaco-Ville', 138)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4586, N'Monte Carlo', 138)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4587, N'Altaj', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4588, N'Arvajhèèr', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4589, N'Bajanhongor', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4590, N'Baruun-Urt', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4591, N'Bulgan', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4592, N'Cècèrleg', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4593, N'Chojbalsan', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4594, N'Chojr', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4595, N'Dalanzadgad', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4596, N'Darhan', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4597, N'Èrdènèt', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4598, N'Hovd', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4599, N'Mandalgovi', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4600, N'Mörön', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4601, N'Ölgij', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4602, N'Öndörhaan', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4603, N'Sajnshand', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4604, N'Sühbaatar', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4605, N'Ulaanbaatar', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4606, N'Ulaangom', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4607, N'Uliastaj', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4608, N'Zuunharaa', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4609, N'Zuunmod', 139)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4610, N'ad-Dâr-al-Baydâ', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4611, N'Aghâdir', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4612, N'al-´Arâ´ish', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4613, N'al-Jadîdah', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4614, N'al-Qanitrah', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4615, N'al-Qasr-al-Kabîr', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4616, N'an-Nadûr', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4617, N'ar-Ribât', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4618, N'Asfî', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4619, N'Banî Mallâl', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4620, N'Fâs', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4621, N'Ghulimîm', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4622, N'Khamissât', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4623, N'Khurîbghah', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4624, N'Marrâkush', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4625, N'Miknâs', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4626, N'Sattât', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4627, N'Tanjah', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4628, N'Tâzah', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4629, N'Titwân', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4630, N'Ujdah', 140)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4631, N'Angoche', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4632, N'Beira', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4633, N'Chibuto', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4634, N'Chimoio', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4635, N'Cuamba', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4636, N'Dondo', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4637, N'Garue', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4638, N'Inhambane', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4639, N'Lichinga', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4640, N'Maputo', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4641, N'Matola', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4642, N'Maxixe', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4643, N'Mocuba', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4644, N'Montepuez', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4645, N'Nacala', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4646, N'Nampula', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4647, N'Pemba', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4648, N'Quelimane', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4649, N'Tete', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4650, N'Xai-Xai', 141)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4651, N'Akyab', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4652, N'Bago', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4653, N'Dawei', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4654, N'Falam', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4655, N'Henzada', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4656, N'Hpa-an', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4657, N'Lashio', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4658, N'Loikaw', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4659, N'Magway', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4660, N'Mandalay', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4661, N'Mawlamyine', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4662, N'Maymyo', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4663, N'Meiktila', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4664, N'Mergui', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4665, N'Monywa', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4666, N'Myingyan', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4667, N'Myitkyina', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4668, N'Pakokku', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4669, N'Pathein', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4670, N'Pyay', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4671, N'Sagaing', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4672, N'Taunggyi', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4673, N'Thaton', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4674, N'Toungoo', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4675, N'Yangon', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4676, N'Yenangyaung', 142)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4677, N'Bethanien', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4678, N'Gobabis', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4679, N'Grootfontein', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4680, N'Katima Mulilo', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4681, N'Keetmanshoop', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4682, N'Khorixas', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4683, N'Kuisebmond', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4684, N'Lüderitz', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4685, N'Mariental', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4686, N'Okahandja', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4687, N'Omaruru', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4688, N'Ondangwa', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4689, N'Ongandjera', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4690, N'Opuwo', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4691, N'Oranjemund', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4692, N'Oshakati', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4693, N'Oshikango', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4694, N'Otjiwarongo', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4695, N'Rehoboth', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4696, N'Rundu', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4697, N'Swakopmund', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4698, N'Tsumeb', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4699, N'Walvis Bay', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4700, N'Windhoek', 143)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4701, N'Yaren', 144)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4702, N'Bâglung', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4703, N'Bhaktapur', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4704, N'Bharatpur', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4705, N'Birâtnagar', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4706, N'Bîrganj', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4707, N'Butwal', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4708, N'Damak', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4709, N'Dhangadi', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4710, N'Dharân', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4711, N'Gulariya', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4712, N'Hetauda', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4713, N'Ilâm', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4714, N'Jaleshwar', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4715, N'Janakpur', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4716, N'Jumla', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4717, N'Kathmandu', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4718, N'Lalitpur', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4719, N'Madhyapur Thimi', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4720, N'Mahendranagar', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4721, N'Mechinagar', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4722, N'Nepâlgânj', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4723, N'Pokharâ', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4724, N'Râjbirâj', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4725, N'Sidharthanagar', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4726, N'Triyuga', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4727, N'Tulsîpur', 145)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4728, N'Almere', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4729, N'Amersfoort', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4730, N'Amsterdam', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4731, N'Apeldoorn', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4732, N'Arnhem', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4733, N'Assen', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4734, N'Breda', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4735, N'Dordrecht', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4736, N'Ede', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4737, N'Eindhoven', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4738, N'Emmen', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4739, N'Enschede', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4740, N'Groningen', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4741, N'Haarlem', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4742, N'Haarlemmermeer', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4743, N'Leeuwarden', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4744, N'Leiden', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4745, N'Lelystad', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4746, N'Maastricht', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4747, N'Middelburg', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4748, N'Nijmegen', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4749, N'Rotterdam', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4750, N'`s-Gravenhage', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4751, N'`s-Hertogenbosch', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4752, N'Tilburg', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4753, N'Utrecht', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4754, N'Zaanstad', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4755, N'Zoetermeer', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4756, N'Zwolle', 146)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4757, N'Kralendijk', 147)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4758, N'Oranjestad', 147)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4759, N'Philipsburg', 147)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4760, N'The Bottom', 147)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4761, N'Willemstad', 147)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4762, N'Bourail', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4763, N'Canala', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4764, N'Dumbéa', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4765, N'Fayaoué', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4766, N'Houaïlu', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4767, N'Koné', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4768, N'Koumac', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4769, N'La Foa', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4770, N'Mont-Doré', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4771, N'Nouméa', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4772, N'Ouégoa', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4773, N'Païta', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4774, N'Poindimié', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4775, N'Ponerihouen', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4776, N'Pouébo', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4777, N'Poya', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4778, N'Tadine', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4779, N'Thio', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4780, N'Touho', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4781, N'Wé', 148)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4782, N'Auckland', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4783, N'Blenheim', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4784, N'Christchurch', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4785, N'Dunedin', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4786, N'Gisborne', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4787, N'Greymouth', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4788, N'Hamilton', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4789, N'Hastings', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4790, N'Invercargill', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4791, N'Lower Hutt', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4792, N'Manukau', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4793, N'Napier', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4794, N'Nelson', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4795, N'New Plymouth', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4796, N'North Shore', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4797, N'Palmerston North', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4798, N'Porirua', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4799, N'Richmond', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4800, N'Rotorua', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4801, N'Stratford', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4802, N'Tauranga', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4803, N'Waitakere', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4804, N'Waitangi', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4805, N'Wanganui', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4806, N'Wellington', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4807, N'Whakatane', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4808, N'Whangarei', 149)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4809, N'Bluefields', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4810, N'Boaco', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4811, N'Chichigalpa', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4812, N'Chinandega', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4813, N'Diriamba', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4814, N'El Viejo', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4815, N'Estelí', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4816, N'Granada', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4817, N'Jalapa', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4818, N'Jinotega', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4819, N'Jinotepe', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4820, N'Juigalpa', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4821, N'León', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4822, N'Managua', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4823, N'Masaya', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4824, N'Matagalpa', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4825, N'Nagarote', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4826, N'Nueva Guinea', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4827, N'Ocotal', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4828, N'Puerto Cabezas', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4829, N'Rivas', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4830, N'San Carlos', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4831, N'Somoto', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4832, N'Tipitapa', 150)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4833, N'Agadez', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4834, N'Arlit', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4835, N'Ayorou', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4836, N'Birni N`Gaouré', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4837, N'Birni N`Konni', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4838, N'Dakoro', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4839, N'Diffa', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4840, N'Dogondoutchi', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4841, N'Dosso', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4842, N'Gaya', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4843, N'Illéla', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4844, N'Magaria', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4845, N'Maradi', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4846, N'Mirriah', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4847, N'Niamey', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4848, N'Tahoua', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4849, N'Tanout', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4850, N'Téra', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4851, N'Tessaoua', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4852, N'Tillabéry', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4853, N'Zinder', 151)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4854, N'Aba', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4855, N'Abakaliki', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4856, N'Abeokuta', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4857, N'Abuja', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4858, N'Ado', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4859, N'Akure', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4860, N'Amaigbo', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4861, N'Asaba', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4862, N'Awka', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4863, N'Azare', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4864, N'Bama', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4865, N'Bauchi', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4866, N'Benin', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4867, N'Bida', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4868, N'Birnin Kebbi', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4869, N'Bugama', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4870, N'Calabar', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4871, N'Damaturu', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4872, N'Dutse', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4873, N'Ede', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4874, N'Efon Alaye', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4875, N'Ejigbo', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4876, N'Enugu', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4877, N'Funtua', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4878, N'Gashua', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4879, N'Gboko', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4880, N'Gbongan', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4881, N'Gombe', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4882, N'Gusau', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4883, N'Hadejia', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4884, N'Ibadan', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4885, N'Ife', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4886, N'Ifon Osun', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4887, N'Igboho', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4888, N'Ijebu Ode', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4889, N'Ijero', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4890, N'Ikare', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4891, N'Ikire', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4892, N'Ikirun', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4893, N'Ikorodu', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4894, N'Ikot Ekpene', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4895, N'Ila', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4896, N'Ilawe', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4897, N'Ilesha', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4898, N'Ilobu', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4899, N'Ilorin', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4900, N'Inisa', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4901, N'Ise', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4902, N'Iseyin', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4903, N'Iwo', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4904, N'Jalingo', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4905, N'Jimeta', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4906, N'Jos', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4907, N'Kaduna', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4908, N'Kano', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4909, N'Katsina', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4910, N'Kishi', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4911, N'Lafia', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4912, N'Lagos', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4913, N'Lokoja', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4914, N'Maiduguri', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4915, N'Makurdi', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4916, N'Minna', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4917, N'Modakeke', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4918, N'Mubi', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4919, N'Nnewi', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4920, N'Nsukka', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4921, N'Obosi', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4922, N'Offa', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4923, N'Ogbomosho', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4924, N'Okene', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4925, N'Okigwe', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4926, N'Okpoko', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4927, N'Okrika', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4928, N'Ondo', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4929, N'Onitsha', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4930, N'Oshogbo', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4931, N'Otukpo', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4932, N'Owerri', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4933, N'Owo', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4934, N'Oyo', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4935, N'Port Harcourt', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4936, N'Sango Ota', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4937, N'Sapele', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4938, N'Shagamu', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4939, N'Shaki', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4940, N'Sokoto', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4941, N'Suleja', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4942, N'Ugep', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4943, N'Umuahia', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4944, N'Uromi', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4945, N'Uyo', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4946, N'Warri', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4947, N'Yenagoa', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4948, N'Yola', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4949, N'Zaria', 152)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4950, N'Alofi', 153)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4951, N'Avatele', 153)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4952, N'Hakupu', 153)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4953, N'Hikutavake', 153)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4954, N'Lakepa', 153)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4955, N'Liku', 153)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4956, N'Makefu', 153)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4957, N'Mutalau', 153)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4958, N'Namukulu', 153)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4959, N'Tamakautoga', 153)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4960, N'Toi', 153)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4961, N'Tuapa', 153)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4962, N'Vaiea', 153)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4963, N'Kingston', 154)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4964, N'Capital Hill', 155)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4965, N'Chalan Kanoa', 155)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4966, N'Dandan', 155)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4967, N'Garapan', 155)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4968, N'Gualo Rai', 155)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4969, N'Kagman', 155)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4970, N'Koblerville', 155)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4971, N'Navy Hill', 155)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4972, N'San Antonio', 155)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4973, N'San Jose', 155)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4974, N'San Jose', 155)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4975, N'San Roque', 155)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4976, N'San Vicente', 155)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4977, N'Settlement', 155)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4978, N'Songsong', 155)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4979, N'Susupe', 155)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4980, N'Tanapag', 155)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4981, N'´Ibrî', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4982, N'al-Buraymi', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4983, N'al-Khabûrah', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4984, N'al-Mudaybî', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4985, N'ar-Rustâq', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4986, N'as-Sîb', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4987, N'as-Suwayq', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4988, N'Bahlâ`', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4989, N'Barkah', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4990, N'Bawshar', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4991, N'Khasab', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4992, N'Madinat Qabûs', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4993, N'Masqat', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4994, N'Matrah', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4995, N'Nizwa', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4996, N'Ruwî', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4997, N'Saham', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4998, N'Salâlah', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (4999, N'Shinâs', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5000, N'Suhâr', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5001, N'Sûr', 156)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5002, N'Abottâbâd', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5003, N'Ahmadpur East', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5004, N'Bahâwalnagar', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5005, N'Bahâwalpur', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5006, N'Bûrewâla', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5007, N'Chiniot', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5008, N'Chishtiân Mandi', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5009, N'Dâdu', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5010, N'Daska', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5011, N'Dera Ghâzi Khân', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5012, N'Dera Îsmâil Khân', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5013, N'Faisalâbâd', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5014, N'Gilgit', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5015, N'Gojra', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5016, N'Gujrânwâla', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5017, N'Gujrât', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5018, N'Hâfizâbâd', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5019, N'Hyderâbâd', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5020, N'Islâmâbâd', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5021, N'Jacobâbâd', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5022, N'Jarânwâla', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5023, N'Jhang', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5024, N'Jhelum', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5025, N'Kamâlia', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5026, N'Kâmoke', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5027, N'Karâchi', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5028, N'Kasûr', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5029, N'Khairpur', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5030, N'Khânewâl', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5031, N'Khânpur', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5032, N'Khuzdar', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5033, N'Kohât', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5034, N'Lahore', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5035, N'Lârkâna', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5036, N'Mandi Bahâuddîn', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5037, N'Mardân', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5038, N'Mingâora', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5039, N'Mîrpur Khâs', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5040, N'Multân', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5041, N'Murîdke', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5042, N'Muzaffarâbâd', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5043, N'Muzaffargarh', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5044, N'Nawâbshâh', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5045, N'Nowshera', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5046, N'Okâra', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5047, N'Pâkpattan', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5048, N'Peshâwar', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5049, N'Quetta', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5050, N'Rahîm Yâr Khân', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5051, N'Râwalpindi', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5052, N'Sâdiqâbâd', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5053, N'Sâhîwâl', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5054, N'Sargodha', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5055, N'Shekhûpura', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5056, N'Shikârpur', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5057, N'Siâlkot', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5058, N'Sukkur', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5059, N'Tando Âdam', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5060, N'Vihâri', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5061, N'Wâh', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5062, N'Wazîrâbâd', 157)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5063, N'Airai', 158)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5064, N'Chol', 158)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5065, N'Dongosaru', 158)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5066, N'Hatohobei', 158)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5067, N'Imeong', 158)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5068, N'Kayangel', 158)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5069, N'Kloulklubed', 158)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5070, N'Koror', 158)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5071, N'Melekeok', 158)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5072, N'Meyungs', 158)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5073, N'Ngaramash', 158)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5074, N'Ngerkeai', 158)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5075, N'Ngermechau', 158)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5076, N'Ngetkip', 158)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5077, N'Oikul', 158)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5078, N'Ollei', 158)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5079, N'Ulimang', 158)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5080, N'ad-Dâhirîyah', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5081, N'al-Bîrah', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5082, N'al-Burayj', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5083, N'al-Insayrât', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5084, N'al-Khalîl', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5085, N'al-Quds', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5086, N'Arîhâ', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5087, N'Banî Suhaylah', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5088, N'Bayt Hânûn', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5089, N'Bayt Lâhiyah', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5090, N'Bayt Lahm', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5091, N'Dayr-al-Balah', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5092, N'Ghazzah', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5093, N'Jabâliyah', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5094, N'Janin', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5095, N'Khân Yûnis', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5096, N'Nâbulus', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5097, N'Qalqîlyah', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5098, N'Rafah', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5099, N'Râm Allâh', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5100, N'Salfît', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5101, N'Tûbâs', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5102, N'Tûlkarm', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5103, N'Yattah', 159)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5104, N'Antón', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5105, N'Arraiján', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5106, N'Bocas del Toro', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5107, N'Bugaba', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5108, N'Changuinola', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5109, N'Chepo', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5110, N'Chichica', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5111, N'Chitré', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5112, N'Cirilo Guainora', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5113, N'Colón', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5114, N'David', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5115, N'La Chorrera', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5116, N'La Palma', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5117, N'Las Tablas', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5118, N'Narganá', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5119, N'Ocú', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5120, N'Panamá', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5121, N'Penonomé', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5122, N'Portobelo', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5123, N'Puerto Armuelles', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5124, N'Río Sereno', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5125, N'San Miguelito', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5126, N'Santiago', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5127, N'Soná', 160)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5128, N'Alotau', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5129, N'Arawa', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5130, N'Bulolo', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5131, N'Daru', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5132, N'Goroka', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5133, N'Kavieng', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5134, N'Kerema', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5135, N'Kimbe', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5136, N'Kiunga', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5137, N'Kokopo', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5138, N'Kundiawa', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5139, N'Lae', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5140, N'Lorengau', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5141, N'Madang', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5142, N'Mendi', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5143, N'Mount Hagen', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5144, N'Popondetta', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5145, N'Port Moresby', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5146, N'Rabaul', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5147, N'Vanimo', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5148, N'Wabag', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5149, N'Wau', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5150, N'Wewak', 161)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5151, N'Areguá', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5152, N'Asunción', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5153, N'Caacupé', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5154, N'Caaguazú', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5155, N'Caazapá', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5156, N'Capiatá', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5157, N'Ciudad del Este', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5158, N'Concepción', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5159, N'Coronel Oviedo', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5160, N'Encarnación', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5161, N'Fernando de la Mora', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5162, N'Filadelfia', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5163, N'Fuerte Olimpo', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5164, N'Hernandaríaz', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5165, N'Itauguá', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5166, N'Lambaré', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5167, N'Limpio', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5168, N'Luque', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5169, N'Mariano Roque Alonso', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5170, N'Ñemby', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5171, N'Paraguarí', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5172, N'Pedro Juan Caballero', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5173, N'Pilar', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5174, N'Pozo Colorado', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5175, N'Presidente Franco', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5176, N'Salto del Guairá', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5177, N'San Antonio', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5178, N'San Juan Bautista', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5179, N'San Lorenzo', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5180, N'San Pedro de Ycuamandiyú', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5181, N'Villa Elisa', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5182, N'Villarrica', 162)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5183, N'Abancay', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5184, N'Arequipa', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5185, N'Ayacucho', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5186, N'Cajamarca', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5187, N'Cerro de Pasco', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5188, N'Chachapoyas', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5189, N'Chiclayo', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5190, N'Chimbote', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5191, N'Chincha Alta', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5192, N'Cusco', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5193, N'Huancavelica', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5194, N'Huancayo', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5195, N'Huánuco', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5196, N'Ica', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5197, N'Iquitos', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5198, N'Juliaca', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5199, N'Lima', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5200, N'Moquegua', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5201, N'Moyobamba', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5202, N'Piura', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5203, N'Pucallpa', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5204, N'Puerto Maldonado', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5205, N'Puno', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5206, N'Sullana', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5207, N'Tacna', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5208, N'Talara', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5209, N'Tarapoto', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5210, N'Trujillo', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5211, N'Tumbes', 163)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5212, N'Angeles', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5213, N'Antipolo', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5214, N'Bacolod', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5215, N'Bacoor', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5216, N'Baguio', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5217, N'Baliuag', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5218, N'Bangued', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5219, N'Biñan', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5220, N'Binangonan', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5221, N'Butuan', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5222, N'Cabanatuan', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5223, N'Cagayan', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5224, N'Cainta', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5225, N'Calamba', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5226, N'Calbayog', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5227, N'Cavite', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5228, N'Cebu', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5229, N'Cotabato', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5230, N'Dagupan', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5231, N'Davao', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5232, N'Dumaguete', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5233, N'Gapan', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5234, N'General Mariano Alvarez', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5235, N'General Santos', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5236, N'Guagua', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5237, N'Iloilo', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5238, N'Lapu-Lapu', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5239, N'Legaspi', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5240, N'Los Baños', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5241, N'Lucena', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5242, N'Malolos', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5243, N'Mandaue', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5244, N'Manila', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5245, N'Marawi', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5246, N'Meycauayan', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5247, N'Montalban', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5248, N'Naga', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5249, N'Olongapo', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5250, N'Roxas', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5251, N'San Fernando', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5252, N'San Fernando', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5253, N'San Mateo', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5254, N'San Pablo', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5255, N'San Pedro', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5256, N'Santa Cruz', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5257, N'Santa Rosa', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5258, N'Santiago', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5259, N'Sultan Kudarat', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5260, N'Tacloban', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5261, N'Tagum', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5262, N'Taytay', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5263, N'Toledo', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5264, N'Tuguegarao', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5265, N'Zamboanga', 164)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5266, N'Bialystok', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5267, N'Bielsko-Biala', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5268, N'Bydgoszcz', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5269, N'Bytom', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5270, N'Chorzów', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5271, N'Czestochowa', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5272, N'Dabrowa Górnicza', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5273, N'Elblag', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5274, N'Gdansk', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5275, N'Gdynia', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5276, N'Gliwice', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5277, N'Gorzów Wielkopolski', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5278, N'Grudziadz', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5279, N'Jastrzebie-Zdrój', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5280, N'Kalisz', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5281, N'Katowice', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5282, N'Kielce', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5283, N'Koszalin', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5284, N'Kraków', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5285, N'Legnica', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5286, N'Lódz', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5287, N'Lublin', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5288, N'Olsztyn', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5289, N'Opole', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5290, N'Plock', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5291, N'Poznan', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5292, N'Radom', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5293, N'Ruda Slaska', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5294, N'Rybnik', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5295, N'Rzeszów', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5296, N'Slupsk', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5297, N'Sosnowiec', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5298, N'Szczecin', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5299, N'Tarnów', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5300, N'Torun', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5301, N'Tychy', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5302, N'Walbrzych', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5303, N'Warszawa', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5304, N'Wloclawek', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5305, N'Wroclaw', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5306, N'Zabrze', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5307, N'Zielona Góra', 165)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5308, N'Agualva-Cacém', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5309, N'Algueirão-Mem Martins', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5310, N'Amadora', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5311, N'Amora', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5312, N'Aveiro', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5313, N'Barreiro', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5314, N'Braga', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5315, N'Coimbra', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5316, N'Corroios', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5317, N'Évora', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5318, N'Faro', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5319, N'Funchal', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5320, N'Lisboa', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5321, N'Loures', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5322, N'Odivelas', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5323, N'Ponta Delgada', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5324, N'Porto', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5325, N'Queluz', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5326, N'Rio de Mouro', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5327, N'Rio Tinto', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5328, N'Setúbal', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5329, N'Vila Nova de Gaia', 166)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5330, N'Aguadilla', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5331, N'Arecibo', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5332, N'Bayamón', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5333, N'Caguas', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5334, N'Candelaria', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5335, N'Carolina', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5336, N'Cataño', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5337, N'Cayey', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5338, N'Fajardo', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5339, N'Guayama', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5340, N'Guaynabo', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5341, N'Humacao', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5342, N'Levittown', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5343, N'Mayagüez', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5344, N'Ponce', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5345, N'Río Grande', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5346, N'San Juan', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5347, N'Trujillo Alto', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5348, N'Vega Baja', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5349, N'Yauco', 167)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5350, N'ad-Dawhah', 168)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5351, N'al-Ghuwayrîyah', 168)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5352, N'al-Jumaylîyah', 168)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5353, N'al-Khawr', 168)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5354, N'al-Wakrah', 168)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5355, N'al-Wukayr', 168)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5356, N'ar-Rayyân', 168)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5357, N'ar-Ruways', 168)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5358, N'ash-Shahanîyah', 168)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5359, N'Dukhân', 168)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5360, N'Musay´id', 168)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5361, N'Umm Bâb', 168)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5362, N'Umm Salal', 168)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5363, N'Bras-Panon', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5364, N'La Possession', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5365, N'Le Port', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5366, N'Le Tampon', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5367, N'Les Aviron', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5368, N'Les Trois-Bassins', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5369, N'L`Étang-Salé', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5370, N'Petite-Ile', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5371, N'Saint-André', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5372, N'Saint-Benoit', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5373, N'Saint-Denis', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5374, N'Sainte-Marie', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5375, N'Sainte-Rose', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5376, N'Sainte-Suzanne', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5377, N'Saint-Joseph', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5378, N'Saint-Leu', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5379, N'Saint-Louis', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5380, N'Saint-Paul', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5381, N'Saint-Pierre', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5382, N'Salazie', 169)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5383, N'Arad', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5384, N'Bacau', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5385, N'Baia Mare', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5386, N'Botosani', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5387, N'Braila', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5388, N'Brasov', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5389, N'Bucuresti', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5390, N'Buzau', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5391, N'Cluj-Napoca', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5392, N'Constanta', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5393, N'Craiova', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5394, N'Drobeta-Turnu Severin', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5395, N'Focsani', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5396, N'Galati', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5397, N'Iasi', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5398, N'Oradea', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5399, N'Piatra Neamt', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5400, N'Pitesti', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5401, N'Ploiesti', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5402, N'Râmnicu Vâlcea', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5403, N'Satu Mare', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5404, N'Sibiu', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5405, N'Suceava', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5406, N'Târgu-Mures', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5407, N'Timisoara', 170)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5408, N'Abakan', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5409, N'Achinsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5410, N'Aginskoje', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5411, N'Almetjevsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5412, N'Anadyr', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5413, N'Angarsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5414, N'Arhangelsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5415, N'Armavir', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5416, N'Arzamas', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5417, N'Astrahan', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5418, N'Balakovo', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5419, N'Balashiha', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5420, N'Barnaul', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5421, N'Belgorod', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5422, N'Berezniki', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5423, N'Bijsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5424, N'Birobidzhan', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5425, N'Blagoveshchensk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5426, N'Bratsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5427, N'Brjansk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5428, N'Cheboksary', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5429, N'Cheljabinsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5430, N'Cherepovec', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5431, N'Cherkessk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5432, N'Chita', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5433, N'Dimitrovgrad', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5434, N'Dudinka', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5435, N'Dzerzhinsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5436, N'Elektrostal', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5437, N'Elista', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5438, N'Engels', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5439, N'Glazov', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5440, N'Gorno-Altajsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5441, N'Groznyj', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5442, N'Habarovsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5443, N'Hanty-Mansijsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5444, N'Himki', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5445, N'Irkutsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5446, N'Ivanovo', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5447, N'Izhevsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5448, N'Jakutsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5449, N'Jaroslavl', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5450, N'Jekaterinburg', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5451, N'Jelec', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5452, N'Jessentuki', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5453, N'Joshkar-Ola', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5454, N'Juzhno-Sahalinsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5455, N'Kaliningrad', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5456, N'Kaluga', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5457, N'Kamensk-Uralskij', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5458, N'Kamyshin', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5459, N'Kansk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5460, N'Kazan', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5461, N'Kemerovo', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5462, N'Kirov', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5463, N'Kiseljovsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5464, N'Kislovodsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5465, N'Kolomna', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5466, N'Kolpino', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5467, N'Komsomolsk-na-Amure', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5468, N'Korolyov', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5469, N'Kostroma', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5470, N'Kovrov', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5471, N'Krasnodar', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5472, N'Krasnojarsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5473, N'Kudymkar', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5474, N'Kurgan', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5475, N'Kursk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5476, N'Kyzyl', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5477, N'Leninsk-Kuzneckij', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5478, N'Lipeck', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5479, N'Ljubercy', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5480, N'Magadan', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5481, N'Magnitogorsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5482, N'Mahackala', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5483, N'Majkop', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5484, N'Mezhdurechensk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5485, N'Miass', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5486, N'Michurinsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5487, N'Moskva', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5488, N'Murmansk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5489, N'Murom', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5490, N'Mytishchi', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5491, N'Naberezhnyje Chelny', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5492, N'Nahodka', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5493, N'Nalchik', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5494, N'Narjan-Mar', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5495, N'Nazran', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5496, N'Neftekamsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5497, N'Nevinnomyssk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5498, N'Nizhnekamsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5499, N'Nizhnevartovsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5500, N'Nizhnij Novgorod', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5501, N'Nizhnij Tagil', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5502, N'Noginsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5503, N'Norilsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5504, N'Novocheboksarsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5505, N'Novocherkassk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5506, N'Novokujbyshevsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5507, N'Novokuzneck', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5508, N'Novomoskovsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5509, N'Novorossijsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5510, N'Novoshahtinsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5511, N'Novosibirsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5512, N'Novotroick', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5513, N'Obninsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5514, N'Odincovo', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5515, N'Oktjabrskij', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5516, N'Omsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5517, N'Orehovo-Zujevo', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5518, N'Orenburg', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5519, N'Orjol', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5520, N'Orsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5521, N'Palana', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5522, N'Penza', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5523, N'Perm', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5524, N'Pervouralsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5525, N'Petropavlovsk-Kamchatskij', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5526, N'Petrozavodsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5527, N'Pjatigorsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5528, N'Podolsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5529, N'Prokopjevsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5530, N'Pskov', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5531, N'Rjazan', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5532, N'Rostov', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5533, N'Rubcovsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5534, N'Rybinsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5535, N'Salavat', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5536, N'Salehard', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5537, N'Samara', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5538, N'Sankt Peterburg', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5539, N'Saransk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5540, N'Sarapul', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5541, N'Saratov', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5542, N'Sergijev Posad', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5543, N'Serpuhov', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5544, N'Severodvinsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5545, N'Seversk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5546, N'Shahty', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5547, N'Shchjolkovo', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5548, N'Smolensk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5549, N'Sochi', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5550, N'Solikamsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5551, N'Staryj Oskol', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5552, N'Stavropol', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5553, N'Sterlitamak', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5554, N'Surgut', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5555, N'Syktyvkar', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5556, N'Syzran', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5557, N'Taganrog', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5558, N'Tambov', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5559, N'Tjumen', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5560, N'Toljatti', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5561, N'Tomsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5562, N'Tula', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5563, N'Tura', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5564, N'Tver', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5565, N'Ufa', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5566, N'Ulan-Ude', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5567, N'Uljanovsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5568, N'Usolje-Sibirskoje', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5569, N'Ussurijsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5570, N'Ust-Ilimsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5571, N'Ust-Ordynskij', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5572, N'Velikij Novgorod', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5573, N'Velikije Luki', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5574, N'Vladikavkaz', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5575, N'Vladimir', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5576, N'Vladivostok', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5577, N'Volgodonsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5578, N'Volgograd', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5579, N'Vologda', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5580, N'Volzhskij', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5581, N'Voronezh', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5582, N'Votkinsk', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5583, N'Zeljenograd', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5584, N'Zlatoust', 171)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5585, N'Butare', 172)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5586, N'Byumba', 172)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5587, N'Cyangugu', 172)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5588, N'Gikongoro', 172)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5589, N'Gisenyi', 172)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5590, N'Gitarama', 172)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5591, N'Kibungo', 172)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5592, N'Kibuye', 172)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5593, N'Kigali', 172)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5594, N'Nyanza', 172)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5595, N'Ruhengeri', 172)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5596, N'Rwamagana', 172)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5597, N'ad-Dakhlah', 173)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5598, N'al-´Ayûn', 173)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5599, N'as-Samârah', 173)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5600, N'Bû Jaydûr', 173)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5601, N'Edinburgh', 174)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5602, N'Georgetown', 174)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5603, N'Gough Island', 174)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5604, N'Jamestown', 174)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5605, N'Basseterre', 175)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5606, N'Boyds', 175)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5607, N'Cayon', 175)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5608, N'Charlestown', 175)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5609, N'Cotton Ground', 175)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5610, N'Dieppe Bay', 175)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5611, N'Fig Tree', 175)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5612, N'Gingerland', 175)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5613, N'Mansion', 175)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5614, N'Middle Island', 175)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5615, N'Monkey Hill', 175)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5616, N'Newcastle', 175)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5617, N'Old Road', 175)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5618, N'Sadlers', 175)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5619, N'Saint Paul`s', 175)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5620, N'Sandy Point', 175)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5621, N'Tabernacle', 175)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5622, N'Anse-la-Raye', 176)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5623, N'Canaries', 176)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5624, N'Cap Estate', 176)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5625, N'Castries', 176)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5626, N'Choc', 176)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5627, N'Choiseul', 176)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5628, N'Dennery', 176)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5629, N'Gros Islet', 176)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5630, N'Laborie', 176)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5631, N'Micoud', 176)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5632, N'Soufrière', 176)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5633, N'Vieux Fort', 176)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5634, N'Miquelon', 177)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5635, N'Saint-Pierre', 177)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5636, N'Barroualie', 178)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5637, N'Biabou', 178)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5638, N'Byera', 178)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5639, N'Chateaubelair', 178)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5640, N'Dovers', 178)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5641, N'Georgetown', 178)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5642, N'Hamilton', 178)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5643, N'Kingstown', 178)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5644, N'Layou', 178)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5645, N'Port Elizabeth', 178)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5646, N'A`opo', 179)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5647, N'Apia', 179)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5648, N'Falelatai', 179)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5649, N'Gautavai', 179)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5650, N'Mulifanua', 179)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5651, N'Neiafu', 179)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5652, N'Safotulafai', 179)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5653, N'Samalae`ulu', 179)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5654, N'Samamea', 179)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5655, N'Solosolo', 179)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5656, N'Taga', 179)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5657, N'Acquaviva', 180)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5658, N'Borgo Maggiore', 180)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5659, N'Chiesanuova', 180)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5660, N'Domagnano', 180)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5661, N'Faetano', 180)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5662, N'Fiorentino', 180)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5663, N'Montegiardino', 180)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5664, N'San Marino', 180)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5665, N'Serravalle', 180)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5666, N'Neves', 181)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5667, N'Santana', 181)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5668, N'Santo Amaro', 181)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5669, N'Santo António', 181)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5670, N'São Tomé', 181)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5671, N'Trindade', 181)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5672, N'´Unayzah', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5673, N'Abhâ', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5674, N'ad-Dammâm', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5675, N'al-Bâhah', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5676, N'al-Hawîyah', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5677, N'al-Hufûf', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5678, N'al-Kharj', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5679, N'al-Khubar', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5680, N'al-Madînah', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5681, N'al-Mubarraz', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5682, N'al-Qatîf', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5683, N'Ara´ar', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5684, N'ar-Riyâd', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5685, N'ath-Thuqbah', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5686, N'at-Ta´if', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5687, N'Buraydah', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5688, N'Hâ´il', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5689, N'Hafar-al-Bâtin', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5690, N'Jawf', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5691, N'Jiddah', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5692, N'Jîzân', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5693, N'Jubayl', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5694, N'Khamîs Mushayt', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5695, N'Makkah', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5696, N'Najrân', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5697, N'Tabûk', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5698, N'Yanbu', 182)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5699, N'Bambey', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5700, N'Bignona', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5701, N'Dakar', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5702, N'Diourbel', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5703, N'Fatick', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5704, N'Joal-Fadiouth', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5705, N'Kaffrine', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5706, N'Kaolack', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5707, N'Kayar', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5708, N'Kolda', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5709, N'Louga', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5710, N'Mbacké', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5711, N'Mbour', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5712, N'Pout', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5713, N'Richard Toll', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5714, N'Saint-Louis', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5715, N'Tambacounda', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5716, N'Thiès', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5717, N'Tivaouane', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5718, N'Ziguinchor', 183)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5719, N'Beograd', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5720, N'Chachak', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5721, N'Dhakovica', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5722, N'Gnjilane', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5723, N'Kosovska Mitrovica', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5724, N'Kragujevac', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5725, N'Kraljevo', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5726, N'Leskovac', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5727, N'Nikshic', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5728, N'Nish', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5729, N'Novi Sad', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5730, N'Panchevo', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5731, N'Pec', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5732, N'Podgorica', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5733, N'Prishtina', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5734, N'Prizren', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5735, N'Smederevo', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5736, N'Subotica', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5737, N'Valjevo', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5738, N'Zrenjanin', 184)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5739, N'Anse Boileau', 185)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5740, N'Anse Royal', 185)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5741, N'Cascade', 185)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5742, N'Takamaka', 185)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5743, N'Victoria', 185)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5744, N'Binkolo', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5745, N'Bo', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5746, N'Bonthe', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5747, N'Freetown', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5748, N'Kabala', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5749, N'Kailahun', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5750, N'Kenema', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5751, N'Koidu', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5752, N'Koindu', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5753, N'Lunsar', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5754, N'Magburaka', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5755, N'Makeni', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5756, N'Matru', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5757, N'Pepel', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5758, N'Port Loko', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5759, N'Sefadu', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5760, N'Taiama', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5761, N'Yele', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5762, N'Yengema', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5763, N'York', 186)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5764, N'Singapore', 187)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5765, N'Banská Bystrica', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5766, N'Bardejov', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5767, N'Bratislava', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5768, N'Humenné', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5769, N'Komárno', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5770, N'Koshice', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5771, N'Levice', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5772, N'Martin', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5773, N'Michalovce', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5774, N'Nitra', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5775, N'Nové Zámky', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5776, N'Poprad', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5777, N'Povazhská Bystrica', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5778, N'Preshov', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5779, N'Prievidza', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5780, N'Spishská Nová Ves', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5781, N'Trenchín', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5782, N'Trnava', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5783, N'Zhilina', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5784, N'Zvolen', 188)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5785, N'Celje', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5786, N'Domzhale', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5787, N'Izola', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5788, N'Jesenice', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5789, N'Kamnik', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5790, N'Kochevje', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5791, N'Koper', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5792, N'Kranj', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5793, N'Krshko', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5794, N'Ljubljana', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5795, N'Maribor', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5796, N'Murska Sobota', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5797, N'Nova Gorica', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5798, N'Novo Mesto', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5799, N'Postojna', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5800, N'Ptuj', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5801, N'Ravne', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5802, N'Shkofja Loka', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5803, N'Slovenj Gradec', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5804, N'Trbovlje', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5805, N'Velenje', 189)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5806, N'Adamstown', 190)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5807, N'Auki', 191)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5808, N'Buala', 191)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5809, N'Gizo', 191)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5810, N'Honiara', 191)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5811, N'Kirakira', 191)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5812, N'Lata', 191)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5813, N'Taro Island', 191)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5814, N'Tigoa', 191)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5815, N'Tulagi', 191)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5816, N'´Adâdlay', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5817, N'´Êldhêre', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5818, N'´Êrigabo', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5819, N'Afgôye', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5820, N'Awdhêgle', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5821, N'Baki', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5822, N'Barâwe', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5823, N'Bârdhêre', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5824, N'Baydhabo', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5825, N'Beled Wêyne', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5826, N'Berbera', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5827, N'Bôsâso', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5828, N'Bûr Hakkaba', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5829, N'Bur´o', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5830, N'Dhûsa Marrêb', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5831, N'Gâlka´yo', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5832, N'Garbahârey', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5833, N'Garôwe', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5834, N'Hargeysa', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5835, N'Jamâme', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5836, N'Jawhar', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5837, N'Jilib', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5838, N'Kismâyo', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5839, N'Lâs´ânôd', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5840, N'Marka', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5841, N'Muqdîsho', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5842, N'Qoryôley', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5843, N'Wanlaweyn', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5844, N'Xuddur', 192)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5845, N'Alberton', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5846, N'Benoni', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5847, N'Bisho', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5848, N'Bloemfontein', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5849, N'Boksburg', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5850, N'Botshabelo', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5851, N'Brakpan', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5852, N'Cape Town', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5853, N'Carltonville', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5854, N'Durban', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5855, N'East London', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5856, N'Emnambithi', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5857, N'George', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5858, N'Johannesburg', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5859, N'Kimberley', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5860, N'Klerksdorp', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5861, N'Krugersdorp', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5862, N'Mhluzi', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5863, N'Midrand', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5864, N'Mmabatho', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5865, N'Mogalakwena', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5866, N'Msunduzi', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5867, N'Nelspruit', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5868, N'Newcastle', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5869, N'Nigel', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5870, N'Paarl', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5871, N'Phalaborwa', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5872, N'Pietersburg', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5873, N'Port Elizabeth', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5874, N'Potchefstroom', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5875, N'Pretoria', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5876, N'Randfontein', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5877, N'Rustenburg', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5878, N'Somerset West', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5879, N'Soweto', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5880, N'Springs', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5881, N'Tembisa', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5882, N'Uitenhage', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5883, N'Vanderbijlpark', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5884, N'Vereeniging', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5885, N'Verwoerdburg', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5886, N'Welkom', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5887, N'Westonaria', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5888, N'Witbank', 193)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5889, N'A Coruña', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5890, N'Alacant', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5891, N'Albacete', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5892, N'Alcalá de Henares', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5893, N'Alcorcón', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5894, N'Algeciras', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5895, N'Almería', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5896, N'Ávila', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5897, N'Badajoz', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5898, N'Badalona', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5899, N'Barcelona', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5900, N'Bilbao', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5901, N'Burgos', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5902, N'Cáceres', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5903, N'Cádiz', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5904, N'Cartagena', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5905, N'Castelló', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5906, N'Ceuta', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5907, N'Ciudad Real', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5908, N'Córdoba', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5909, N'Cuenca', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5910, N'Donostia', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5911, N'Dos Hermanas', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5912, N'Elx', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5913, N'Fuenlabrada', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5914, N'Getafe', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5915, N'Gijón', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5916, N'Girona', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5917, N'Granada', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5918, N'Guadalajara', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5919, N'Huelva', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5920, N'Huesca', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5921, N'Iruña', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5922, N'Jaén', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5923, N'Jerez', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5924, N'Las Palmas', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5925, N'Leganés', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5926, N'León', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5927, N'L`Hospitalet de Llobregat', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5928, N'Lleida', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5929, N'Logroño', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5930, N'Lugo', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5931, N'Madrid', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5932, N'Málaga', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5933, N'Marbella', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5934, N'Mataró', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5935, N'Melilla', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5936, N'Móstoles', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5937, N'Murcia', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5938, N'Ourense', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5939, N'Oviedo', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5940, N'Palencia', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5941, N'Palma', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5942, N'Pontevedra', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5943, N'Sabadell', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5944, N'Salamanca', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5945, N'San Cristóbal de la Laguna', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5946, N'Santa Coloma de Gramenet', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5947, N'Santa Cruz de Tenerife', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5948, N'Santander', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5949, N'Segovia', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5950, N'Sevilla', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5951, N'Soria', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5952, N'Tarragona', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5953, N'Terrassa', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5954, N'Teruel', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5955, N'Toledo', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5956, N'Torrejón de Ardoz', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5957, N'Valencia', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5958, N'Valladolid', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5959, N'Vigo', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5960, N'Vitoria', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5961, N'Zamora', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5962, N'Zaragoza', 194)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5963, N'Amparai', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5964, N'Anurâdhapûraya', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5965, N'Badulla', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5966, N'Battaramulla', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5967, N'Châvâkachchêri', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5968, N'Daluguma', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5969, N'Dambulla', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5970, N'Dehiwala-Mount Lavinia', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5971, N'Gâlla', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5972, N'Galmûnê', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5973, N'Gampaha', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5974, N'Hambantota', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5975, N'Kalutara', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5976, N'Katunayaka', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5977, N'Kêgalla', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5978, N'Kilinochchi', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5979, N'Kolamba', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5980, N'Kotikawatta', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5981, N'Kurunegala', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5982, N'Madakalpûwa', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5983, N'Maha Nuwara', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5984, N'Maharagama', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5985, N'Mannârama', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5986, N'Mâtale', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5987, N'Mâtara', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5988, N'Mîgamuwa', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5989, N'Monaragala', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5990, N'Moratuwa', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5991, N'Mullaitivu', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5992, N'Nuwara Eliya', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5993, N'Pêduru Tuduwa', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5994, N'Polonnaruwa', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5995, N'Pûttalama', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5996, N'Ratnapûraya', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5997, N'Sri Jayawardenepura', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5998, N'Tirikunâmalaya', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (5999, N'Vavuniyâwa', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6000, N'Yâpanaya', 195)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6001, N'´Atbarah', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6002, N'ad-Damazîn', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6003, N'ad-Dâmîr', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6004, N'ad-Du´ayn', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6005, N'al-Fâshir', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6006, N'al-Fûlah', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6007, N'al-Junaynah', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6008, N'al-Khartûm', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6009, N'al-Khartûm Bahrî', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6010, N'al-Manâqil', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6011, N'al-Qadârif', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6012, N'al-Ubayyid', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6013, N'Bentiu', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6014, N'Bûr', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6015, N'Bûr Sûdân', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6016, N'Dunqulah', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6017, N'Jûbâ', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6018, N'Kâduqlî', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6019, N'Kâpôêta', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6020, N'Kassalâ', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6021, N'Kûstî', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6022, N'Malakâl', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6023, N'Niyâlâ', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6024, N'Rabak', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6025, N'Rumbîk', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6026, N'Sinjah', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6027, N'Sinnâr', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6028, N'Tonj', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6029, N'Umm Durmân', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6030, N'Uwayl', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6031, N'Wad Madanî', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6032, N'Wâw', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6033, N'Yambio', 196)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6034, N'Albina', 197)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6035, N'Brokopondo', 197)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6036, N'Brownsweg', 197)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6037, N'Groningen', 197)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6038, N'Lelydorp', 197)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6039, N'Marienburg', 197)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6040, N'Meerzorg', 197)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6041, N'Moengo', 197)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6042, N'Nieuw Amsterdam', 197)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6043, N'Nieuw Nickerie', 197)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6044, N'Onverwacht', 197)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6045, N'Paramaribo', 197)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6046, N'Totness', 197)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6047, N'Wageningen', 197)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6048, N'Barentsburg', 198)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6049, N'Hornsund', 198)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6050, N'Isfjord Radio', 198)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6051, N'Longyearbyen', 198)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6052, N'Ny-Ålesund', 198)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6053, N'Bhunya', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6054, N'Big Bend', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6055, N'Bulembu', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6056, N'Hluti', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6057, N'Kwaluseni', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6058, N'Lobamba', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6059, N'Manzini', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6060, N'Matsapha', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6061, N'Mbabane', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6062, N'Mhlambanyatsi', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6063, N'Mhlume', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6064, N'Mondi', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6065, N'Nhlangano', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6066, N'Nsoko', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6067, N'Pigg`s Peak', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6068, N'Sidvokodvo', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6069, N'Simunye', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6070, N'Siteki', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6071, N'Thabankulu', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6072, N'Tshaneni', 199)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6073, N'Borås', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6074, N'Eskilstuna', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6075, N'Falun', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6076, N'Gävle', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6077, N'Göteborg', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6078, N'Halmstad', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6079, N'Härnösand', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6080, N'Helsingborg', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6081, N'Jönköping', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6082, N'Kalmar', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6083, N'Karlskrona', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6084, N'Karlstad', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6085, N'Linköping', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6086, N'Luleå', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6087, N'Lund', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6088, N'Malmö', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6089, N'Norrköping', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6090, N'Nyköping', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6091, N'Örebro', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6092, N'Östersund', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6093, N'Södertälje', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6094, N'Stockholm', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6095, N'Täby', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6096, N'Umeå', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6097, N'Uppsala', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6098, N'Västerås', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6099, N'Växjö', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6100, N'Visby', 200)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6101, N'Aarau', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6102, N'Altdorf', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6103, N'Appenzell', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6104, N'Basel', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6105, N'Bellinzona', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6106, N'Bern', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6107, N'Biel', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6108, N'Chur', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6109, N'Delémont', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6110, N'Emmen', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6111, N'Frauenfeld', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6112, N'Fribourg', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6113, N'Genève', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6114, N'Glarus', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6115, N'Herisau', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6116, N'Köniz', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6117, N'La Chaux-de-Fonds', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6118, N'Lausanne', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6119, N'Liestal', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6120, N'Luzern', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6121, N'Neuchâtel', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6122, N'Sankt Gallen', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6123, N'Sarnen', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6124, N'Schaffhausen', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6125, N'Schwyz', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6126, N'Sion', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6127, N'Solothurn', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6128, N'Stans', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6129, N'Thun', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6130, N'Uster', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6131, N'Vernier', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6132, N'Winterthur', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6133, N'Zug', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6134, N'Zürich', 201)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6135, N'al-Hasakah', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6136, N'al-Lâdhiqîyah', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6137, N'al-Qâmishlî', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6138, N'al-Qunaytirah', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6139, N'ar-Raqqah', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6140, N'as-Suwaydâ', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6141, N'ath-Thawrah', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6142, N'Dar´â', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6143, N'Dârayyâ', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6144, N'Dayr az-Zawr', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6145, N'Dimashq', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6146, N'Dûmâ', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6147, N'Halab', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6148, N'Hamâh', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6149, N'Hims', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6150, N'Idlib', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6151, N'Jaramânah', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6152, N'Ma´arrat-an-Nu´mân', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6153, N'Manbij', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6154, N'Salamîyah', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6155, N'Tartûs', 202)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6156, N'Changhwa', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6157, N'Chiayi', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6158, N'Chungho', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6159, N'Chungli', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6160, N'Fengshan', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6161, N'Fengyuan', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6162, N'Hsichih', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6163, N'Hsinchu', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6164, N'Hsinchuang', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6165, N'Hsintien', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6166, N'Hsinying', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6167, N'Hualian', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6168, N'Ilan', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6169, N'Kangshan', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6170, N'Kaohsiung', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6171, N'Keelung', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6172, N'Kincheng', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6173, N'Luchou', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6174, N'Makung', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6175, N'Miaoli', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6176, N'Nantou', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6177, N'Panchiao', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6178, N'Pate', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6179, N'Pingchen', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6180, N'Pingtung', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6181, N'Sanchung', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6182, N'Shulin', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6183, N'Taichung', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6184, N'Tainan', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6185, N'Taipei', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6186, N'Taitung', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6187, N'Tali', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6188, N'Tanshui', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6189, N'Taoyuan', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6190, N'Touliu', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6191, N'Tucheng', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6192, N'Yangmei', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6193, N'Yuanlin', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6194, N'Yungho', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6195, N'Yungkang', 203)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6196, N'Chkalov', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6197, N'Chorku', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6198, N'Dangara', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6199, N'Dushanbe', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6200, N'Farkhor', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6201, N'Hisor', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6202, N'Isfara', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6203, N'Khorug', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6204, N'Khujand', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6205, N'Kofarnihon', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6206, N'Konibodom', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6207, N'Kulob', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6208, N'Leninskiy', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6209, N'Nurak', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6210, N'Panjakent', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6211, N'Qurgonteppa', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6212, N'Tursunzoda', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6213, N'Uroteppa', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6214, N'Vose', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6215, N'Yovon', 204)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6216, N'Arusha', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6217, N'Bukoba', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6218, N'Dar es Salaam', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6219, N'Dodoma', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6220, N'Iringa', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6221, N'Kibaha', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6222, N'Kigoma', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6223, N'Kilosa', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6224, N'Korogwe', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6225, N'Lindi', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6226, N'Mbeya', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6227, N'Morogoro', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6228, N'Moshi', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6229, N'Mpanda', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6230, N'Mtwara', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6231, N'Musoma', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6232, N'Mwanza', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6233, N'Shinyanga', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6234, N'Singida', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6235, N'Songea', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6236, N'Sumbawanga', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6237, N'Tabora', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6238, N'Tanga', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6239, N'Zanzibar', 205)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6240, N'Alfred-Faure', 206)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6241, N'Martin-de-Viviès', 206)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6242, N'Port-aux-Français', 206)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6243, N'Amnat Charoen', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6244, N'Ang Thong', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6245, N'Ayutthaya', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6246, N'Buri Ram', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6247, N'Chachoengsao', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6248, N'Chai Nat', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6249, N'Chaiyaphum', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6250, N'Chanthaburi', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6251, N'Chiang Mai', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6252, N'Chiang Rai', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6253, N'Chon Buri', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6254, N'Chumphon', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6255, N'Hat Yai', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6256, N'Kalasin', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6257, N'Kamphaeng Phet', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6258, N'Kanchanaburi', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6259, N'Khlong Luang', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6260, N'Khon Kaen', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6261, N'Krabi', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6262, N'Krung Thep', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6263, N'Lampang', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6264, N'Lamphun', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6265, N'Loei', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6266, N'Lop Buri', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6267, N'Mae Hong Son', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6268, N'Maha Sarakham', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6269, N'Mukdahan', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6270, N'Nakhon Nayok', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6271, N'Nakhon Pathom', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6272, N'Nakhon Phanom', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6273, N'Nakhon Ratchasima', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6274, N'Nakhon Sawan', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6275, N'Nakhon Si Thammarat', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6276, N'Nan', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6277, N'Narathiwat', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6278, N'Nong Bua Lam Phu', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6279, N'Nong Khai', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6280, N'Nonthaburi', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6281, N'Pak Kret', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6282, N'Pathum Thani', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6283, N'Pattani', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6284, N'Phangnga', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6285, N'Phatthalung', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6286, N'Phayao', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6287, N'Phetchabun', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6288, N'Phetchaburi', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6289, N'Phichit', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6290, N'Phitsanulok', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6291, N'Phra Pradaeng', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6292, N'Phrae', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6293, N'Phuket', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6294, N'Prachin Buri', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6295, N'Prachuap Khiri Khan', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6296, N'Ranong', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6297, N'Ratchaburi', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6298, N'Rayong', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6299, N'Roi Et', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6300, N'Sa Kaeo', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6301, N'Sakhon Nakhon', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6302, N'Samut Prakan', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6303, N'Samut Sakhon', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6304, N'Samut Songkhram', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6305, N'Saraburi', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6306, N'Satun', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6307, N'Si Racha', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6308, N'Si Sa Ket', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6309, N'Sing Buri', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6310, N'Songkhla', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6311, N'Sukhothai', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6312, N'Suphan Buri', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6313, N'Surat Thani', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6314, N'Surin', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6315, N'Tak', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6316, N'Thanyaburi', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6317, N'Trang', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6318, N'Trat', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6319, N'Ubon Ratchathani', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6320, N'Udon Thani', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6321, N'Uthai Thani', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6322, N'Uttaradit', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6323, N'Yala', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6324, N'Yasothon', 207)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6325, N'Aného', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6326, N'Anié', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6327, N'Atakpamé', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6328, N'Badou', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6329, N'Bafilo', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6330, N'Bassar', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6331, N'Blitta', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6332, N'Dapaong', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6333, N'Kara', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6334, N'Kpalimé', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6335, N'Lomé', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6336, N'Mango', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6337, N'Niamtougou', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6338, N'Notsé', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6339, N'Sokodé', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6340, N'Sotouboua', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6341, N'Tandjouaré', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6342, N'Tchamba', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6343, N'Tsévié', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6344, N'Vogan', 208)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6345, N'Atafu', 209)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6346, N'Fakaofo', 209)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6347, N'Nukunonu', 209)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6348, N'Haveloloto', 210)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6349, N'Hihifo', 210)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6350, N'Mu`a', 210)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6351, N'Neiafu', 210)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6352, N'Nuku`alofa', 210)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6353, N'Ohonua', 210)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6354, N'Pangai', 210)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6355, N'Tofoa-Koloua', 210)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6356, N'Vaini', 210)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6357, N'Arima', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6358, N'Arouca', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6359, N'Chaguanas', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6360, N'Couva', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6361, N'Débé', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6362, N'Marabella', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6363, N'Mucurapo', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6364, N'Peñal', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6365, N'Point Fortín', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6366, N'Port of Spain', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6367, N'Princes Town', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6368, N'Saint Joseph', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6369, N'San Fernando', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6370, N'San Juan', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6371, N'Sangre Grande', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6372, N'Scarborough', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6373, N'Siparia', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6374, N'Tabaquite', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6375, N'Tacarigua', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6376, N'Tunapuna', 211)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6377, N'al-Kâf', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6378, N'al-Mahdîyah', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6379, N'al-Marsâ', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6380, N'al-Munastîr', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6381, N'al-Murûj', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6382, N'al-Qasrayn', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6383, N'al-Qayrawân', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6384, N'Aryânah', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6385, N'at-Tadâman Dawwâr Hîshar', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6386, N'Bâjah', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6387, N'Bârdaw', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6388, N'Bin ´Arûs', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6389, N'Binzart', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6390, N'Halq-al-Wâdî', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6391, N'Jarbah Hawmat-as-Sûq', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6392, N'Jarjîs', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6393, N'Jundûbah', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6394, N'Madanîyîn', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6395, N'Manûbah', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6396, N'Masâkin', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6397, N'Mûhammadiyat Fushânah', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6398, N'Nâbul', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6399, N'Qâbis', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6400, N'Qafsah', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6401, N'Qibilî', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6402, N'Safâqis', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6403, N'Sîdî Bû Zayd', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6404, N'Silyânah', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6405, N'Sûsah', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6406, N'Tatâwîn', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6407, N'Tawzar', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6408, N'Tûnis', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6409, N'Zaghwân', 212)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6410, N'Adana', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6411, N'Adıyaman', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6412, N'Afyon', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6413, N'Ağrı', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6414, N'Amasya', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6415, N'Ankara', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6416, N'Antalya', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6417, N'Artvin', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6418, N'Aydın', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6419, N'Balıkesir', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6420, N'Bilecik', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6421, N'Bingöl', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6422, N'Bitlis', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6424, N'Bolu', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6425, N'Burdur', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6426, N'Bursa', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6427, N'Çanakkale', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6428, N'Çankırı', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6429, N'Çorum', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6430, N'Denizli', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6431, N'Diyarbakır', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6432, N'Edirne', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6433, N'Elazığ', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6434, N'Erzincan', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6435, N'Erzurum', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6436, N'Eskişehir', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6437, N'Gaziantep', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6438, N'Giresun', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6439, N'Gümüşhane', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6440, N'Hakkari', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6441, N'Hatay', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6442, N'Isparta', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6443, N'Mersin', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6444, N'İstanbul', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6445, N'İzmir', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6446, N'Kars', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6447, N'Kastamonu', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6448, N'Kayseri', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6449, N'Kırklareli', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6450, N'Kırşehir', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6452, N'Kocaeli', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6453, N'Konya', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6454, N'Kütahya', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6455, N'Malatya', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6456, N'Manisa', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6458, N'K.Maraş', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6459, N'Mardin', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6460, N'Muğla', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6461, N'Muş', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6462, N'Nevşehir', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6463, N'Niğde', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6464, N'Ordu', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6465, N'Rize', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6466, N'Sakarya', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6467, N'Samsun', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6468, N'Siirt', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6469, N'Sinop', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6470, N'Sivas', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6471, N'Tekirdağ', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6472, N'Tokat', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6473, N'Trabzon', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6474, N'Tunceli', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6475, N'Ş.Urfa', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6476, N'Uşak', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6477, N'Van', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6478, N'Yozgat', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6479, N'Zonguldak', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6480, N'Aksaray', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6481, N'Bayburt', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6482, N'Karaman', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6483, N'Kırıkkale', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6484, N'Batman', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6485, N'Şırnak', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6486, N'Bartın', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6487, N'Ardahan', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6488, N'Iğdır', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6489, N'Yalova', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6490, N'Karabük', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6491, N'Kilis', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6492, N'Osmaniye', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6493, N'Düzce', 213)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6494, N'Akdepe', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6495, N'Annau', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6496, N'Asgabat', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6497, N'Balkanabat', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6498, N'Bayramali', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6499, N'Boldumsaz', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6500, N'Büzmeyin', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6501, N'Dasoguz', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6502, N'Elöten', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6503, N'Govurdak', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6504, N'Gumdag', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6505, N'Kerki', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6506, N'Komsomolsk', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6507, N'Köhne Ürgenç', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6508, N'Mari', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6509, N'Serdar', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6510, N'Tecen', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6511, N'Türkmenabat', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6512, N'Türkmenbasi', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6513, N'Yilanli', 214)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6514, N'Cockburn Harbour', 215)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6515, N'Cockburn Town', 215)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6516, N'Asau', 216)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6517, N'Fangaua', 216)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6518, N'Kua', 216)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6519, N'Lolua', 216)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6520, N'Savave', 216)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6521, N'Tanrake', 216)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6522, N'Tonga', 216)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6523, N'Vaiaku', 216)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6524, N'Arua', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6525, N'Busia', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6526, N'Entebbe', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6527, N'Fort Portal', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6528, N'Gulu', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6529, N'Iganga', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6530, N'Jinja', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6531, N'Kabale', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6532, N'Kampala', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6533, N'Kasese', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6534, N'Kitgum', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6535, N'Lira', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6536, N'Masaka', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6537, N'Mbale', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6538, N'Mbarara', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6539, N'Mityana', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6540, N'Mukono', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6541, N'Njeru', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6542, N'Soroti', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6543, N'Tororo', 217)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6544, N'Alchevs`k', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6545, N'Berdyans`k', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6546, N'Bila Tserkva', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6547, N'Cherkasy', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6548, N'Chernihiv', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6549, N'Chernivtsi', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6550, N'Dniprodzerzhyns`k', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6551, N'Dnipropetrovs`k', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6552, N'Donets`k', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6553, N'Horlivka', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6554, N'Ivano-Frankivs`k', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6555, N'Kerch', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6556, N'Kharkiv', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6557, N'Kherson', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6558, N'Khmel`nyts`kyy', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6559, N'Kirovohrad', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6560, N'Kramators`k', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6561, N'Kremenchuh', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6562, N'Kryvyy Rih', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6563, N'Kyyiv', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6564, N'Luhans`k', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6565, N'Luts`k', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6566, N'L`viv', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6567, N'Lysychans`k', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6568, N'Makiyivka', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6569, N'Mariupol`', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6570, N'Melitpol`', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6571, N'Mykolayiv', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6572, N'Nikopol`', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6573, N'Odesa', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6574, N'Pavlohrad', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6575, N'Poltava', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6576, N'Rivne', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6577, N'Sevastopol`', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6578, N'Simferopol`', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6579, N'Slov`yans`k', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6580, N'Sumy', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6581, N'Syeverodonets`k', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6582, N'Ternopil`', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6583, N'Uzhhorod', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6584, N'Vinnytsya', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6585, N'Yenakiyeve', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6586, N'Yevpatoriya', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6587, N'Zaporizhzhya', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6588, N'Zhytomyr', 218)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6589, N'´Ajmân', 219)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6590, N'Abû Zabi', 219)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6591, N'al-´Ayn', 219)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6592, N'al-Fujayrah', 219)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6593, N'ash-Shâriqah', 219)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6594, N'Dubayy', 219)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6595, N'Khawr Fakkân', 219)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6596, N'Râ`s al-Khaymah', 219)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6597, N'Umm al-Qaywayn', 219)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6598, N'Aberdeen', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6599, N'Basildon', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6600, N'Belfast', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6601, N'Birmingham', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6602, N'Blackburn', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6603, N'Blackpool', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6604, N'Bolton', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6605, N'Bournemouth', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6606, N'Bradford', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6607, N'Brighton', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6608, N'Bristol', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6609, N'Cardiff', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6610, N'Chelmsford', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6611, N'Coventry', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6612, N'Derby', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6613, N'Dudley', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6614, N'Dundee', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6615, N'Edinburgh', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6616, N'Glasgow', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6617, N'Gloucester', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6618, N'Huddersfield', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6619, N'Ipswich', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6620, N'Kingston upon Hull', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6621, N'Leeds', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6622, N'Leicester', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6623, N'Liverpool', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6624, N'London', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6625, N'Luton', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6626, N'Manchester', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6627, N'Middlesbrough', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6628, N'Motherwell', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6629, N'Newcastle upon Tyne', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6630, N'Newport', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6631, N'Northampton', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6632, N'Norwich', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6633, N'Nottingham', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6634, N'Oldbury-Smethwick', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6635, N'Oldham', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6636, N'Oxford', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6637, N'Peterborough', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6638, N'Plymouth', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6639, N'Poole', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6640, N'Portsmouth', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6641, N'Preston', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6642, N'Reading', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6643, N'Rotherham', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6644, N'Saint Helens', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6645, N'Sheffield', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6646, N'Slough', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6647, N'Southampton', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6648, N'Southend-on-Sea', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6649, N'Stockport', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6650, N'Stoke-on-Trent', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6651, N'Sunderland', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6652, N'Sutton Coldfield', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6653, N'Swansea', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6654, N'Swindon', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6655, N'Walsall', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6656, N'Watford', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6657, N'West Bromwich', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6658, N'Woking-Byfleet', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6659, N'Wolverhampton', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6660, N'York', 220)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6661, N'Alabama', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6662, N'Alaska', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6663, N'Arizona', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6664, N'Arkansas', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6665, N'California', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6666, N'Colorado', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6667, N'Connecticut', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6668, N'Delaware', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6669, N'District of Columbia', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6670, N'Florida', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6671, N'Georgia', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6672, N'Hawaii', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6673, N'Idaho', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6674, N'Illinois', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6675, N'Indiana', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6676, N'Iowa', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6677, N'Kansas', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6678, N'Kentucky', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6679, N'Louisiana', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6680, N'Maine', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6681, N'Maryland', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6682, N'Massachusetts', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6683, N'Michigan', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6684, N'Minnesota', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6685, N'Mississippi', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6686, N'Missouri', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6687, N'Montana', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6688, N'Nebraska', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6689, N'Nevada', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6690, N'New Hampshire', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6691, N'New Jersey', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6692, N'New Mexico', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6693, N'New York', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6694, N'North Carolina', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6695, N'North Dakota', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6696, N'Ohio', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6697, N'Oklahoma', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6698, N'Oregon', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6699, N'Pennsylvania', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6700, N'Rhode Island', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6701, N'South Carolina', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6702, N'South Dakota', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6703, N'Tennessee', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6704, N'Texas', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6705, N'Utah', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6706, N'Vermont', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6707, N'Virginia', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6708, N'Washington', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6709, N'West Virginia', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6710, N'Wisconsin', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6711, N'Wyoming', 221)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6712, N'Artigas', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6713, N'Canelones', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6714, N'Ciudad de la Costa', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6715, N'Colonia', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6716, N'Durazno', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6717, N'Florida', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6718, N'Fray Bentos', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6719, N'Las Piedras', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6720, N'Maldonado', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6721, N'Melo', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6722, N'Mercedes', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6723, N'Minas', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6724, N'Montevideo', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6725, N'Pando', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6726, N'Paysandú', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6727, N'Rivera', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6728, N'Rocha', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6729, N'Salto', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6730, N'San Carlos', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6731, N'San José', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6732, N'Tacuarembó', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6733, N'Treinta y Tres', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6734, N'Trinidad', 222)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6735, N'Andijon', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6736, N'Angren', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6737, N'Bekobod', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6738, N'Buhoro', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6739, N'Cizah', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6740, N'Çirçik', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6741, N'Fargona', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6742, N'Guliston', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6743, N'Hücayli', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6744, N'Karsi', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6745, N'Kükon', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6746, N'Margilon', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6747, N'Namangan', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6748, N'Navoi', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6749, N'Nukus', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6750, N'Olmalik', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6751, N'Sahrisabz', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6752, N'Samarkand', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6753, N'Termiz', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6754, N'Toskent', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6755, N'Ürgenç', 223)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6756, N'Isangel', 224)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6757, N'Lakatoro', 224)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6758, N'Longana', 224)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6759, N'Luganville', 224)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6760, N'Norsup', 224)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6761, N'Port Olry', 224)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6762, N'Sola', 224)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6763, N'Vila', 224)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6764, N'Vatican', 225)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6765, N'Acarigua', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6766, N'Barcelona', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6767, N'Barinas', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6768, N'Barquisimeto', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6769, N'Baruta', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6770, N'Cabimas', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6771, N'Cagua', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6772, N'Calabozo', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6773, N'Caracas', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6774, N'Carora', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6775, N'Carúpano', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6776, N'Catia La Mar', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6777, N'Charallave', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6778, N'Ciudad Bolívar', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6779, N'Ciudad Guayana', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6780, N'Coro', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6781, N'Cúa', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6782, N'Cumaná', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6783, N'El Limón', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6784, N'El Tigre', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6785, N'Guacara', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6786, N'Guanare', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6787, N'Guarenas', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6788, N'Guatire', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6789, N'La Asunción', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6790, N'La Guaira', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6791, N'La Victoria', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6792, N'Los Teques', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6793, N'Maracaibo', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6794, N'Maracay', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6795, N'Mariara', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6796, N'Maturín', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6797, N'Mérida', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6798, N'Ocumare del Tuy', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6799, N'Petare', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6800, N'Puerto Ayacucho', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6801, N'Puerto Cabello', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6802, N'Puerto la Cruz', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6803, N'Punto Fijo', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6804, N'San Carlos', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6805, N'San Cristóbal', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6806, N'San Felipe', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6807, N'San Fernando', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6808, N'San Juan de los Morros', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6809, N'Santa Teresa', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6810, N'Trujillo', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6811, N'Tucupita', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6812, N'Turmero', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6813, N'Valencia', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6814, N'Valera', 226)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6815, N'Bac Lieu', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6816, N'Bien Hoa', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6817, N'Buon Me Thuot', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6818, N'Ca Mau', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6819, N'Cam Pha', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6820, N'Cam Ranh', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6821, N'Can Tho', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6822, N'Da Lat', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6823, N'Dha Nâng', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6824, N'Ha Noi', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6825, N'Hai Phong', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6826, N'Hong Gai', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6827, N'Hue', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6828, N'Long Xuyen', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6829, N'My Tho', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6830, N'Nam Dinh', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6831, N'Nha Trang', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6832, N'Phan Thiet', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6833, N'Play Cu', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6834, N'Qui Nhon', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6835, N'Rach Gia', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6836, N'Soc Trang', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6837, N'Thai Nguyen', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6838, N'Thanh Hoa', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6839, N'Thanh Pho Ho Chi Minh', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6840, N'Vung Tau', 227)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6841, N'Anna`s Retreat', 228)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6842, N'Charlotte Amalie', 228)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6843, N'Charlotte Amalie East', 228)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6844, N'Charlotte Amalie West', 228)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6845, N'Christiansted', 228)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6846, N'Cruz Bay', 228)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6847, N'Frederiksted', 228)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6848, N'Frederiksted Southeast', 228)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6849, N'Grove Place', 228)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6850, N'Aka Aka', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6851, N'Alele', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6852, N'Falaleu', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6853, N'Fiua', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6854, N'Haafuasia', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6855, N'Halalo', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6856, N'Kolia', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6857, N'Lavegahau', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6858, N'Leava', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6859, N'Liku', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6860, N'Malaefoou', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6861, N'Matâ`Utu', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6862, N'Nuku', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6863, N'Ono', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6864, N'Poi', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6865, N'Taoa', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6866, N'Utuofa', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6867, N'Vailala', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6868, N'Vaimalau', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6869, N'Vaitupu', 229)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6870, N'´Adan', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6871, N'´Amrân', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6872, N'´Ataq', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6873, N'al-Baydâ', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6874, N'al-Ghaydah', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6875, N'al-Hawthah', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6876, N'al-Hazm', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6877, N'al-Hudaydah', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6878, N'al-Marawi´ah', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6879, N'al-Mukallâ', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6880, N'ash-Shahir', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6881, N'Bâjil', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6882, N'Bayt-al-Faqîh', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6883, N'Dhamâr', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6884, N'Dhi Sufal', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6885, N'Hajjah', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6886, N'Ibb', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6887, N'Ja´ar', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6888, N'Mahwît', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6889, N'Ma`rib', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6890, N'Raydah', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6891, N'Sa´dah', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6892, N'Sahâr', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6893, N'San´â', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6894, N'Sayyân', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6895, N'Ta´izz', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6896, N'Tuban', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6897, N'Yarim', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6898, N'Zabid', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6899, N'Zinjibar', 230)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6900, N'Chililabombwe', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6901, N'Chingola', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6902, N'Chipata', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6903, N'Choma', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6904, N'Kabwe', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6905, N'Kafue', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6906, N'Kalulushi', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6907, N'Kansanshi', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6908, N'Kasama', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6909, N'Kitwe', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6910, N'Livingstone', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6911, N'Luanshya', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6912, N'Lusaka', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6913, N'Mansa', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6914, N'Mazabuka', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6915, N'Mongu', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6916, N'Mpika', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6917, N'Mufulira', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6918, N'Nchelenge', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6919, N'Ndola', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6920, N'Solwezi', 231)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6921, N'Bindura', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6922, N'Bulawayo', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6923, N'Chegutu', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6924, N'Chinhoyi', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6925, N'Chitungwiza', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6926, N'Gweru', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6927, N'Harare', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6928, N'Hwange', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6929, N'Kadoma', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6930, N'Kariba', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6931, N'Karoi', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6932, N'Kwekwe', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6933, N'Marondera', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6934, N'Masvingo', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6935, N'Mutare', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6936, N'Norton', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6937, N'Redcliffe', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6938, N'Sakubva', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6939, N'Victoria Falls', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6940, N'Zvishavane', 232)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6941, N'Ålesund', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6942, N'Arendal', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6943, N'Bærum', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6945, N'Bergen', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6946, N'Fana', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6947, N'Bodø', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6948, N'Drammen', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6949, N'Fredrikstad', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6950, N'Halden', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6951, N'Hamar', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6952, N'Hammerfest', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6953, N'Haugesund', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6954, N'Kabelvåg', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6956, N'Kristiansand', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6957, N'Kristiansund', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6958, N'Lillehammer', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6959, N'Molde', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6960, N'Moss', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6961, N'Narvik', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6962, N'Oslo', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6963, N'Porsgrunn', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6964, N'Ringsaker', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6965, N'Sandefjord', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6966, N'Sandnes', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6967, N'Skien', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6968, N'Stavanger', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6969, N'Steinkjer', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6970, N'Svolvær', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6971, N'Tønsberg', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6972, N'Tromsø', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6973, N'Trondheim', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6974, N'Vadsø', 233)
GO
INSERT [dbo].[Sehir] ([Id], [SehirAdi], [UlkeId]) VALUES (6975, N'Kosovo', 234)
GO
SET IDENTITY_INSERT [dbo].[Sehir] OFF
GO
SET IDENTITY_INSERT [dbo].[Ulke] ON 
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (1, N'Afghanistan')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (2, N'Albania')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (3, N'Algeria')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (4, N'American Samoa')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (5, N'Andorra')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (6, N'Angola')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (7, N'Anguilla')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (8, N'Antarctica')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (9, N'Antigua & Barbuda')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (10, N'Argentina')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (11, N'Armenia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (12, N'Aruba')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (13, N'Australia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (14, N'Austria')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (15, N'Azerbaijan')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (16, N'Bahamas')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (17, N'Bahrain')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (18, N'Bangladesh')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (19, N'Barbados')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (20, N'Belarus')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (21, N'Belgium')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (22, N'Belize')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (23, N'Benin')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (24, N'Bermuda')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (25, N'Bhutan')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (26, N'Bolivia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (27, N'Bosnia-Herzegovina')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (28, N'Botswana')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (29, N'Brazil')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (30, N'British Virgin Islands')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (31, N'Brunei')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (32, N'Bulgaria')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (33, N'Burkina Faso')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (34, N'Burundi')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (35, N'Cambodia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (36, N'Cameroon')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (37, N'Canada')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (38, N'Cape Verde')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (39, N'Cayman Islands')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (40, N'Central Africa')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (41, N'Chad')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (42, N'Chile')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (43, N'China')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (44, N'Colombia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (45, N'Comoros')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (46, N'Congo')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (47, N'Congo (Dem. Rep.)')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (48, N'Cook Islands')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (49, N'Costa Rica')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (50, N'Croatia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (51, N'Cuba')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (52, N'Cyprus')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (53, N'Czech Republic')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (54, N'Denmark')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (55, N'Djibouti')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (56, N'Dominica')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (57, N'Dominican Republic')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (58, N'East Timor')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (59, N'Ecuador')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (60, N'Egypt')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (61, N'El Salvador')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (62, N'Equatorial Guinea')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (63, N'Eritrea')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (64, N'Estonia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (65, N'Ethiopia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (66, N'Ext. Territ. of Australia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (67, N'Falkland Islands')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (68, N'Faroe Islands')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (69, N'Fiji')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (70, N'Finland')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (71, N'France')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (72, N'French Guiana')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (73, N'French Polynesia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (74, N'Gabon')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (75, N'Gambia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (76, N'Georgia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (77, N'Germany')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (78, N'Ghana')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (79, N'Gibraltar')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (80, N'Greece')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (81, N'Greenland')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (82, N'Grenada')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (83, N'Guadeloupe')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (84, N'Guam')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (85, N'Guatemala')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (86, N'Guernsey and Alderney')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (87, N'Guinea')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (88, N'Guinea Bissau')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (89, N'Guyana')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (90, N'Haiti')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (91, N'Honduras')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (92, N'Hungary')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (93, N'Iceland')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (94, N'India')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (95, N'Indonesia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (96, N'Iran')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (97, N'Iraq')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (98, N'Ireland')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (99, N'Israel')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (100, N'Italy')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (101, N'Ivory Coast')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (102, N'Jamaica')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (103, N'Japan')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (104, N'Jersey')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (105, N'Jordan')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (106, N'Kazakhstan')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (107, N'Kenya')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (108, N'Kiribati')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (109, N'Korea (North)')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (110, N'Korea (South)')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (111, N'Kuwait')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (112, N'Kyrgyzstan')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (113, N'Laos')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (114, N'Latvia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (115, N'Lebanon')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (116, N'Lesotho')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (117, N'Liberia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (118, N'Libya')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (119, N'Liechtenstein')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (120, N'Lithuania')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (121, N'Luxembourg')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (122, N'Macedonia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (123, N'Madagascar')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (124, N'Malawi')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (125, N'Malaysia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (126, N'Maldives')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (127, N'Mali')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (128, N'Malta')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (129, N'Man (Isle of)')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (130, N'Marshall Islands')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (131, N'Martinique')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (132, N'Mauritania')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (133, N'Mauritius')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (134, N'Mayotte')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (135, N'Mexico')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (136, N'Micronesia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (137, N'Moldova')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (138, N'Monaco')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (139, N'Mongolia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (140, N'Morocco')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (141, N'Mozambique')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (142, N'Myanmar')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (143, N'Namibia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (144, N'Nauru')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (145, N'Nepal')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (146, N'Netherlands')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (147, N'Netherlands Antilles')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (148, N'New Caledonia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (149, N'New Zealand')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (150, N'Nicaragua')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (151, N'Niger')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (152, N'Nigeria')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (153, N'Niue')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (154, N'Norfolk')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (155, N'Northern Mariana Islands')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (156, N'Oman')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (157, N'Pakistan')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (158, N'Palau')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (159, N'Palestine')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (160, N'Panama')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (161, N'Papua New Guinea')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (162, N'Paraguay')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (163, N'Peru')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (164, N'Philippines')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (165, N'Poland')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (166, N'Portugal')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (167, N'Puerto Rico')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (168, N'Qatar')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (169, N'Réunion')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (170, N'Romania')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (171, N'Russia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (172, N'Rwanda')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (173, N'Sahara')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (174, N'Saint Helena')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (175, N'Saint Kitts and Nevis')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (176, N'Saint Lucia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (177, N'Saint Pierre & Miquelon')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (178, N'St. Vincent & the Grenadines')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (179, N'Samoa')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (180, N'San Marino')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (181, N'São Tomé and Príncipe')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (182, N'Saudi Arabia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (183, N'Senegal')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (184, N'Serbia and Montenegro')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (185, N'Seychelles')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (186, N'Sierra Leone')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (187, N'Singapore')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (188, N'Slovakia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (189, N'Slovenia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (190, N'Smaller Territories of the UK')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (191, N'Solomon Islands')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (192, N'Somalia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (193, N'South Africa')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (194, N'Spain')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (195, N'Sri Lanka')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (196, N'Sudan')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (197, N'Suriname')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (198, N'Svalbard and Jan Mayen')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (199, N'Swaziland')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (200, N'Sweden')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (201, N'Switzerland')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (202, N'Syria')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (203, N'Taiwan')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (204, N'Tajikistan')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (205, N'Tanzania')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (206, N'Terres Australes')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (207, N'Thailand')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (208, N'Togo')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (209, N'Tokelau')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (210, N'Tonga')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (211, N'Trinidad and Tobago')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (212, N'Tunisia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (213, N'Türkiye')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (214, N'Turkmenistan')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (215, N'Turks and Caicos Islands')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (216, N'Tuvalu')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (217, N'Uganda')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (218, N'Ukraine')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (219, N'United Arab Emirates')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (220, N'United Kingdom')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (221, N'United States of America')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (222, N'Uruguay')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (223, N'Uzbekistan')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (224, N'Vanuatu')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (225, N'Vatican')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (226, N'Venezuela')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (227, N'Vietnam')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (228, N'Virgin Islands of the USA')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (229, N'Wallis & Futuna')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (230, N'Yemen')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (231, N'Zambia')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (232, N'Zimbabwe')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (233, N'Norway')
GO
INSERT [dbo].[Ulke] ([Id], [UlkeAdi]) VALUES (234, N'Kosovo')
GO
SET IDENTITY_INSERT [dbo].[Ulke] OFF
GO
SET IDENTITY_INSERT [dbo].[Uye] ON 
GO
INSERT [dbo].[Uye] ([Id], [Adi], [Soyadi], [Sifre], [Mail], [Telefon], [SehirId], [Kurum], [ProfilYolu], [Cinsiyet], [Unvan], [Adres], [Admin], [Editor], [Hakem], [Yazar], [BilimselKomite], [OrganizasyonKomite], [Aktif]) VALUES (3, N'Serkan', N'Parlakes', N'123456', N'sp@gm.cm', N'05345002156es', 6427, N'Selçukes', NULL, 1, N'Profesöres', N'Düzcelies', 1, 1, 1, 0, 1, 1, 1)
GO
INSERT [dbo].[Uye] ([Id], [Adi], [Soyadi], [Sifre], [Mail], [Telefon], [SehirId], [Kurum], [ProfilYolu], [Cinsiyet], [Unvan], [Adres], [Admin], [Editor], [Hakem], [Yazar], [BilimselKomite], [OrganizasyonKomite], [Aktif]) VALUES (9, N'Ahmet', N'Özgüven', N'123456', N'ahmetozguven@gmail.com', N'05345002156', 6466, N'Sakarya Üniversitesis', NULL, 1, N'Dr.', N'Papatyaa', 0, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Uye] ([Id], [Adi], [Soyadi], [Sifre], [Mail], [Telefon], [SehirId], [Kurum], [ProfilYolu], [Cinsiyet], [Unvan], [Adres], [Admin], [Editor], [Hakem], [Yazar], [BilimselKomite], [OrganizasyonKomite], [Aktif]) VALUES (10, N'Recep', N'İnan', N'123456', N'recepinan@gmail.com', N'05345002156', 6477, N'ODTÜ', NULL, 1, N'Prof. Dr.', N'Ankaraa', 0, 0, 1, 1, 0, 1, 1)
GO
INSERT [dbo].[Uye] ([Id], [Adi], [Soyadi], [Sifre], [Mail], [Telefon], [SehirId], [Kurum], [ProfilYolu], [Cinsiyet], [Unvan], [Adres], [Admin], [Editor], [Hakem], [Yazar], [BilimselKomite], [OrganizasyonKomite], [Aktif]) VALUES (11, N'Oktay', N'Kaynana', N'123456', N'oktaykaynarca@gmail.comh', N'05345002156', 6410, N'Konya Teknik Üniversitesi', NULL, 1, N'Doç. Dr.', NULL, 0, 1, 0, 1, 0, 0, 1)
GO
INSERT [dbo].[Uye] ([Id], [Adi], [Soyadi], [Sifre], [Mail], [Telefon], [SehirId], [Kurum], [ProfilYolu], [Cinsiyet], [Unvan], [Adres], [Admin], [Editor], [Hakem], [Yazar], [BilimselKomite], [OrganizasyonKomite], [Aktif]) VALUES (12, N'Oktay', N'Parlak', N'123456', N'okt@gmail.com', N'053415263598', 6493, N'Düzce Üni', NULL, 1, N'Profeşyonel', N'Düzcees', 0, 1, 1, 0, 1, 0, 1)
GO
INSERT [dbo].[Uye] ([Id], [Adi], [Soyadi], [Sifre], [Mail], [Telefon], [SehirId], [Kurum], [ProfilYolu], [Cinsiyet], [Unvan], [Adres], [Admin], [Editor], [Hakem], [Yazar], [BilimselKomite], [OrganizasyonKomite], [Aktif]) VALUES (13, N'Adem D.', N'Uslu', N'123456', N'ademuslu@gm.cm', N'051531321351', 6453, N'Külliye Güzide', NULL, 1, N'Hoca', NULL, 0, 1, 0, 0, 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Uye] OFF
GO
ALTER TABLE [dbo].[Bildiri]  WITH CHECK ADD  CONSTRAINT [FK_Bildiri_Uye] FOREIGN KEY([YazarId])
REFERENCES [dbo].[Uye] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bildiri] CHECK CONSTRAINT [FK_Bildiri_Uye]
GO
ALTER TABLE [dbo].[Ek]  WITH CHECK ADD  CONSTRAINT [FK_Ek_Bildiri] FOREIGN KEY([BildiriId])
REFERENCES [dbo].[Bildiri] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ek] CHECK CONSTRAINT [FK_Ek_Bildiri]
GO
ALTER TABLE [dbo].[HakemBildiriAtama]  WITH CHECK ADD  CONSTRAINT [FK_HakemBildiriAtama_Bildiri] FOREIGN KEY([BildiriId])
REFERENCES [dbo].[Bildiri] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HakemBildiriAtama] CHECK CONSTRAINT [FK_HakemBildiriAtama_Bildiri]
GO
ALTER TABLE [dbo].[KonuEtiketi]  WITH CHECK ADD  CONSTRAINT [FK_KonuEtiketi_Uye] FOREIGN KEY([EditorId])
REFERENCES [dbo].[Uye] ([Id])
GO
ALTER TABLE [dbo].[KonuEtiketi] CHECK CONSTRAINT [FK_KonuEtiketi_Uye]
GO
ALTER TABLE [dbo].[Mesaj]  WITH CHECK ADD  CONSTRAINT [FK_Mesaj_Uye] FOREIGN KEY([GonderenId])
REFERENCES [dbo].[Uye] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Mesaj] CHECK CONSTRAINT [FK_Mesaj_Uye]
GO
ALTER TABLE [dbo].[Mesaj]  WITH CHECK ADD  CONSTRAINT [FK_Mesaj_Uye1] FOREIGN KEY([AliciId])
REFERENCES [dbo].[Uye] ([Id])
GO
ALTER TABLE [dbo].[Mesaj] CHECK CONSTRAINT [FK_Mesaj_Uye1]
GO
ALTER TABLE [dbo].[Sehir]  WITH CHECK ADD  CONSTRAINT [FK_geo_cities_geo_countries] FOREIGN KEY([UlkeId])
REFERENCES [dbo].[Ulke] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sehir] CHECK CONSTRAINT [FK_geo_cities_geo_countries]
GO
ALTER TABLE [dbo].[Uye]  WITH CHECK ADD  CONSTRAINT [FK_Uye_Sehir] FOREIGN KEY([SehirId])
REFERENCES [dbo].[Sehir] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Uye] CHECK CONSTRAINT [FK_Uye_Sehir]
GO
