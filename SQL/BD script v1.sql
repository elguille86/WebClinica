USE [BDBooksSaveWeb]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]    Script Date: 01/08/2016 18:10:28 ******/
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]    Script Date: 01/08/2016 18:10:28 ******/
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]    Script Date: 01/08/2016 18:10:28 ******/
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]    Script Date: 01/08/2016 18:10:28 ******/
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTACLINICA]    Script Date: 01/08/2016 18:10:27 ******/
DROP PROCEDURE [dbo].[SP_INSERTACLINICA]
GO
/****** Object:  StoredProcedure [dbo].[S_Genera_Codigo2]    Script Date: 01/08/2016 18:10:27 ******/
DROP PROCEDURE [dbo].[S_Genera_Codigo2]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 01/08/2016 18:10:28 ******/
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 01/08/2016 18:10:28 ******/
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 01/08/2016 18:10:28 ******/
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 01/08/2016 18:10:28 ******/
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[Clinicas]    Script Date: 01/08/2016 18:10:28 ******/
DROP TABLE [dbo].[Clinicas]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 01/08/2016 18:10:28 ******/
DROP TABLE [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 01/08/2016 18:10:28 ******/
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[tb_cen_anexo]    Script Date: 01/08/2016 18:10:28 ******/
DROP TABLE [dbo].[tb_cen_anexo]
GO
/****** Object:  Table [dbo].[Tb_cod]    Script Date: 01/08/2016 18:10:28 ******/
DROP TABLE [dbo].[Tb_cod]
GO
/****** Object:  Table [dbo].[TbContacto]    Script Date: 01/08/2016 18:10:28 ******/
DROP TABLE [dbo].[TbContacto]
GO
/****** Object:  Table [dbo].[TbContacto]    Script Date: 01/08/2016 18:10:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TbContacto](
	[cod_cont] [int] IDENTITY(1,1) NOT NULL,
	[nom_cont] [varchar](500) NULL,
	[emi_cont] [varchar](500) NULL,
	[tel_cont] [varchar](50) NULL,
	[asu_cont] [varchar](500) NULL,
	[men_cont] [varchar](500) NULL,
	[fecreg] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tb_cod]    Script Date: 01/08/2016 18:10:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_cod](
	[year_cod] [varchar](4) NOT NULL,
	[nro] [int] NULL,
	[tabla_genera] [varchar](250) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tb_cod] ([year_cod], [nro], [tabla_genera]) VALUES (N'2016', 50, N'Clinicas')
/****** Object:  Table [dbo].[tb_cen_anexo]    Script Date: 01/08/2016 18:10:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_cen_anexo](
	[cod_ce] [int] NOT NULL,
	[cod_ubi] [int] NOT NULL,
	[nom_este] [varchar](77) NOT NULL,
	[micro_red] [varchar](100) NOT NULL,
	[med_jefe] [varchar](100) NOT NULL,
	[dir_cent] [varchar](120) NOT NULL,
	[tel_cent] [varchar](20) NOT NULL,
	[cel_cent] [varchar](20) NOT NULL,
	[rmp_cent] [varchar](20) NOT NULL,
	[hr_cent] [varchar](2) NOT NULL,
	[latitud] [varchar](255) NULL,
	[longitud] [varchar](255) NULL,
	[nom_red] [varchar](200) NOT NULL,
 CONSTRAINT [PK__tb_cen_a__9B1B70971A14E395] PRIMARY KEY CLUSTERED 
(
	[cod_ce] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (1, 70101206, N'C.S. MANUEL BONILLA (Base de Microred)', N'MICRORED BONILLA', N'DR. FELIPE CASTILLO YATACO', N'AV. ALMIRANTE MIGUEL GRAU N 1015', N'429-5459', N'996549916', N'#947332', N'12', N'-12.062130', N'-77.138056', N'BONILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (2, 70101201, N'C.S. ALBERTO BARTON', N'MICRORED BONILLA', N'DRA. MARTHA CALDERON', N'CALLE MANUEL RAYGADA N 515', N'465-6242', N'996549968', N'#947333', N'12', N'-12.053827', N'-77.138831', N'BONILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (3, 70101205, N'C.S. SAN JUAN BOSCO', N'MICRORED BONILLA', N'DRA. DORIS MARIBEL  CHUNGA RUIZ', N'CONTRALMIRANTE MORA CDRA. 5 (CALLE NAUTA 122) - CALLAO', N'453-6686', N'996549991', N'#947336', N'6', N'-12.048411', N'-77.133173', N'BONILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (4, 70101209, N'C.S. PUERTO NUEVO', N'MICRORED BONILLA', N'DR. LUIS DIAZ', N'LOCAL COMUNAL AA.HH. PUERTO NUEVO S/N - CALLAO', N'420-1471', N'996549980', N'#947334', N'12', N'-12.046188', N'-77.136657', N'BONILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (5, 70105201, N'C.S. LA PUNTA', N'MICRORED BONILLA', N'DRA. DANITZA MANCHEGO LLERENA', N'AV. GRAU N 1002 -LA PUNTA', N'465-0158', N'996549985', N'#947335', N'12', N'-12.068510', N'-77.158006', N'BONILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (6, 70101203, N'C.S. SANTA FE (Base de Microred)', N'MICRORED SANTA FE', N'DR. RONALD ESPIRITU AYALA MENDIVIL', N'AV. ALFREDO PALACIOS CDRA. 5 - CALLAO', N'453-6677', N'998710495', N'#947338', N'12', N'-12.05405', N'-77.123349', N'BONILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (7, 70101202, N'C.S. CALLAO', N'MICRORED SANTA FE', N'DANITZA PATRICIA MANCHECO LLERENA', N'CALLE CANCHONES N 294 - URB TARAPACA', N'451-8819', N'998710554', N'#947339', N'12', N'-12.051997', N'-77.102689', N'BONILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (8, 70101204, N'C.S. JOSE BOTERIN', N'MICRORED SANTA F', N'DR.EDUARDO AMADO ESKOVER', N'PARQUE N3 AAHH JOSE BOTERIN', N'429-3028', N'998710531', N'#947340', N'12', N'-12.053128', N'-77.119961', N'BONILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (9, 70101212, N'C.S. JOSE OLAYA (Base de Microred)', N'MICRORED JOSE OLAYA', N'DRA. LILI LAU CHUNG', N'JR. JUNIN PP.JJ. JOSE OLAYA - CALLAO', N'452-1165', N'998710630', N'#947341', N'12', N'-12.043153', N'-77.104595', N'BONILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (10, 70101219, N'C.S. MIGUEL GRAU', N'MICRORED JOSE OLAYA', N'DRA. JANET SANCHEZ', N'ALT. CDRA.10 AV.TUPAC AMARU - PP.JJ. MIGUEL GRAU - CALLAO', N'562-3230', N'998710641', N'#947342', N'6', N'-12.045995', N'-77.104287', N'BONILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (11, 70101218, N'C.S. SANTA ROSA', N'MICRORED JOSE OLAYA', N'DRA. NADIA LIMACHE JUAREZ', N'AV. T. AMARU GDIA.CHALACA S/N MINICOMPL. STA.ROSA - CALLAO', N'453-7822', N'998710729', N'#947343', N'12', N'-12.045732', N'-77.110984', N'BONILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (12, 70101214, N'C.S. GAMBETA ALTA (Base de Microred)', N'MICRORED GAMBETTA ALTA', N'DRA. ROMMY RANGEL  RAFFO', N'AV. ALAMEDA S/N PP.JJ. GAMBETTA ALTA - CALLAO', N'420-0286', N'998711487', N'#947344', N'24', N'-12.042332', N'-77.120345', N'BONILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (13, 70101215, N'C.S. RAMON CASTILLA', N'MICRORED GAMBETTA ALTA', N'DRA. DIANA GONZALEZ PACHECO', N'JR. CUZCO S/N PP.JJ. RAMON CASTILLA - CALLAO', N'465-6195', N'998711650', N'#947345', N'6', N'-12.040893', N'-77.122451', N'BONILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (14, 70101216, N'C.S. GAMBETTA BAJA', N'MICRORED GAMBETTA ALTA', N'DRA. SILVIA MERINO DIAZ', N'AV. JOSE GALVEZ Y SANTA ROSA - CALLAO', N'453-7817', N'998711764', N'#947346', N'12', N'-12.041637', N'-77.115604', N'BONILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (15, 70101213, N'C.S. ACAPULCO (Base de Microred)', N'MICRORED ACAPULCO', N'DR. FREDY VERA INGA ', N'AV.JOSE GALVEZ S/N CMTE.8 - PP.JJ. ACAPULCO - CALLAO', N'429-0059', N'998712554', N'#947347', N'24', N'-12.022181', N'-77.136884', N'BONILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (16, 70101217, N'C.S. JUAN PABLO II', N'MICRORED ACAPULCO', N'DR. PAUL CARDENAS GARCIA', N'AA.HH.JUAN PABLO II (ALT.AV.GAMBETTA KM 2.5) - CALLAO', N'453-4213', N'998712561', N'#947348', N'12', N'-12.026392', N'-77.129155', N'BONILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (18, 70101221, N'CENTRO DE DESARROLLO JUVENIL DEL CALLAO', N'MICRORED ACAPULCO', N'LIC. PAOLA MILENA ALVITES SANCHEZ', N'AV. RAMIRO PRIALE S/N - AA.HH. SARITA COLONIA - CALLAO', N'453-8688', N'998713446', N'#947350', N'', N'-12.023081', N'-77.134113', N'BONILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (19, 70102101, N'HOSP. NAC. DANIEL ALCIDES CARRION', N'', N'Maria Elena Aguilar del Aguila', N'AV. GUARDIA CHALACA N', N'429-6068', N'', N'', N'24', N'-12.062865', N'-77.123777', N'HOSPITAL')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (20, 70103101, N'HOSPITAL SAN JOSE', N'', N'Dra.Jenie Dextre Ubaldo', N'AV. ELMER FAUCETT CDRA. 9 S/N - C.DE LA LEGUA', N'464-6867', N'', N'', N'24', N'-12.042683', N'-77.098685', N'HOSPITAL')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (21, 70101231, N'C.S. FAUCETT (Base de Microred)', N'MICRORED FAUCETT', N'DRA. ETELVINA PALACIOS PINTADO', N'CALLE 3 S/N - URB. FAUCETT - CALLAO', N'577-1321', N'998714094', N'#947354', N'12', N'-11.996084', N'-77.120885', N'BEPECA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (22, 70101232, N'C.S. 200 MILLAS', N'MICRORED FAUCETT', N'DR. LUIS SALINAS PEREZ', N'MZ L LOTE 3-4 I ETAP. URB.200 MILLAS (KM.5.5 AV.GAMBETTA) - CALLAO', N'577-1351', N'998713703', N'#947352', N'6', N'-11.995242', N'-77.124787', N'BEPECA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (23, 70101242, N'C.S. PALMERAS DE OQUENDO', N'MICRORED FAUCETT', N'DR. EDWIN RENE SULCA QUISPE', N'Calle Marlen Mz Lte 5 y 6 - Urb. Las Palmeras (al Km9 Nestor Gambetta) - CALLAO', N'', N'998715084', N'#947357', N'6', N'-11.973083', N'-77.120813', N'BEPECA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (24, 70101226, N'C.S. SESQUICENTENARIO (Base de Microred)', N'MICRORED SESQUICENTENARIO', N'DRA. ROSE MARIE PAGAN YABAR', N'ALT.CALLE 7 Y 14 - URB.SESQUICENTENARIO - CALLAO', N'574-2790', N'998713935', N'#947353', N'12', N'-12.00963', N'-77.096596', N'BEPECA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (25, 70101228, N'C.S. PREVI', N'MICRORED SESQUICENTENARIO', N'DRA. MYRIAM VASQUEZ ORE', N'CALLE CENTRAL S/N - CALLAO', N'574-6145', N'998715051', N'#947356', N'12', N'-12.016663', N'-77.090683', N'BEPECA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (26, 70101234, N'C.S. BOCANEGRA', N'MICRORED SESQUICENTENARIO', N'DRA. JANET RAMIREZ WATANABE', N'AA.HH. BOCANEGRA - PLAZA CIVICA - CALLAO', N'484-3241', N'998714134', N'#947355', N'12', N'-12.024301', N'-77.096304', N'BEPECA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (27, 70101235, N'C.S. EL ALAMO', N'MICRORED SESQUICENTENARIO', N'DR. GUILLERMO CHAGUA CUADROS', N'MZ. S/N URB. EL ALAMO - CALLAO', N'574-8276', N'998715220', N'#947358', N'12', N'-12.002012', N'-77.107186', N'BEPECA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (28, 70101229, N'C.S. AEROPUERTO (Base de Microred)', N'MICRORED AEROPUERTO', N'DRA. ZULMA ANYA CHACON', N'JR. SALAVERRY S/N - AA.HH. AEROPUERTO - CALLAO', N'572-2724', N'998715285', N'#947359', N'6', N'-12.033443', N'-77.09897', N'BEPECA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (29, 70101230, N'C.S. PLAYA RIMAC', N'MICRORED AEROPUERTO', N'DRA. ZONIA ROSA MENENDEZ CASTILLO', N'CALLE BOLOGNESI Y JOSE SANTOS CHOCANO S/N - CALLAO', N'572-3712', N'998715289', N'#947360', N'6', N'-12.037915', N'-77.096579', N'BEPECA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (30, 70101313, N'P.S. POLIGONO IV', N'MICRORED AEROPUERTO', N'DRA.JIANINA ROMAN GUTIERREZ', N'AA.HH. BOCANEGRA - SECTOR V - CALLAO', N'574-8993', N'996207958', N'#947361', N'6', N'-12.025192', N'-77.101053', N'BEPECA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (31, 70102201, N'C.S. BELLAVISTA (Base de Microred)', N'MICRORED BELLAVISTA', N'Dr. HJALMAR DE LA CRUZ CHIPANA', N'MZ. F-5 ZONA 2 - CIUDAD DEL PESCADOR - BELLAVISTA', N'452-0167 769-8333', N'996207960', N'#947362', N'12', N'-12.061772', N'-77.106853', N'BEPECA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (32, 70104202, N'C.S. ALTA MAR', N'MICRORED BELLAVISTA', N'DR. JOSE VITOR VALDIVIA', N'AV. DOS DE MAYO N 640', N'420-5994', N'996499631', N'#947363', N'12', N'-12.069639', N'-77.117861', N'BEPECA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (33, 70104201, N'C.S. LA PERLA', N'MICRORED BELLAVISTA', N'DRA. CECILIA DE LOURDES FRESIA CALVO VIL', N'ALFONSO UGARTE N 1150', N'453-7459', N'996499708', N'#947364', N'12', N'-12.068634', N'-77.129469', N'BEPECA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (34, 70103201, N'C.S. CARMEN DE LA LEGUA', N'MICRORED BELLAVISTA', N'DR. MARTIN ENRIQUEZ ROBLES', N'AV. MANCO CAPAC CDRA. 8 - C.DE LA LEGUA', N'451-8719', N'996499727', N'#947366', N'6', N'-12.039954', N'-77.090036', N'BEPECA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (35, 70103202, N'C.S. VILLA SR. DE LOS MILAGROS', N'MICRORED BELLAVISTA', N'DR. JUAN DURANTE COLLAZOS', N'P.J.VILLA SR.DE MILAGR.(ALT.CDRA.60 AV.ARGENTINA) - C.DE LA LEGUA', N'452-2272', N'996499726', N'#947365', N'12', N'-12.04184', N'-77.085604', N'BEPECA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (36, 70106101, N'HOSPITAL DE VENTANILLA', N'', N'Dr. David Gonsales Saenz', N'AV. PEDRO BELTRAN ALT. CUADRA 3 S/N - URB. SATELITE - VENTANILLA', N'553-5700', N'996499511', N'#949565', N'24', N'-11.872331', N'-77.125705', N'HOSPITAL')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (37, 70106215, N'C.S. MATERNO INFANTIL PACHACUTEC PERU - KOREA (Base de Microred)', N'MICRORED PACHACUTEC', N'DR. GERMAN ARAGONEZ ALMONACID', N'MZ. X LT. 1 - AAHH HIROSHIMA - CIUDAD PACHACUTEC - VENTANILLA', N'-', N'996499790', N'#947369', N'24', N'-11.832774', N'-77.141758', N'VENTANILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (38, 70106213, N'C.S. 03 DE FEBRERO', N'MICRORED PACHACUTEC', N'DR. JHON JERRY SANDOVAL CRUZADO', N'MZ. V SECTOR B PROLONG. AV. 225 S/N - CIUDADELA PACHACUTEC - VENTANILLA', N'', N'996499820', N'#947370', N'12', N'-11.829584', N'-77.159053', N'VENTANILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (39, 70106211, N'C.S. BAHIA BLANCA', N'MICRORED PACHACUTEC', N'DR. OSCAR VICTOR SILVA DOMINGUEZ', N'MZ P1 LT 1 - SECTOR E - CIUDADELA PACHACUTEC - VENTANILLA', N'', N'996512914', N'#947371', N'12', N'-11.83532', N'-77.158578', N'VENTANILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (40, 70106214, N'C.S. CIUDAD PACHACUTEC', N'MICRORED PACHACUTEC', N'DR. ROBERTO CARLOS LINARES PIZARRO', N'MZ. G1 LT. 2 - COOP. LA UNION - CIUDADELA PACHACUTEC - VENTANILLA', N'996719259', N'998713468', N'#947372', N'6', N'-11.845231', N'-77.150772', N'VENTANILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (41, 70106210, N'C.S. SANTA ROSA DE PACHACUTEC', N'MICRORED PACHACUTEC', N'DRA. MARIBEL CRUZ LOPEZ', N'MZ. O LT. 1 - AA.HH. SANTA ROSA DE PACHACUTEC - VENTANILLA', N'', N'998715202', N'#947378', N'12', N'-11.847148', N'-77.127536', N'VENTANILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (42, 70106207, N'C.S. ANGAMOS', N'MICRORED ANGAMOS', N'DR. JUAN CARLOS MARIN DE LA CRUZ', N'AV. HUAURA S/N - AA.HH. MI PERU - VENTANILLA', N'553-0884', N'996549863', N'#947373', N'12', N'-11.892673', N'-77.127677', N'VENTANILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (43, 70106209, N'C.S. HIJOS DEL ALMIRANTE GRAU', N'MICRORED ANGAMOS', N'DR. CARLOS CESAR MILLAN BAZALAR', N'MZ. 7 AA.HH. HIJOS DEL ALMIRANTE MIGUEL GRAU - VENTANILLA', N'532-6570', N'998714460', N'#947374', N'12', N'-11.885606', N'-77.131957', N'VENTANILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (44, 70106301, N'P.S. DEFENSORES DE LA PATRIA', N'MICRORED ANGAMOS', N'DR. JUAN ROMANI RODRIGUEZ', N'AA.HH. DEFENSORES DE LA PATRIA S/N - VENTANILLA', N'', N'998714721', N'#947375', N'6', N'-11.876396', N'-77.137907', N'VENTANILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (45, 70106202, N'C.S. VENTANILLA ALTA', N'MICRORED ANGAMOS', N'DR. LUIS MIGUEL MANSILLA HERRERA', N'AV. CENTRAL S/N (ALT. LOCAL COMUNAL) AA.HH. V. ALTA - VENTANILLA', N'553-4475', N'', N'-', N'12', N'-11.87229', N'-77.110026', N'VENTANILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (46, 70106203, N'C.S. VILLA LOS REYES (Base de Microred)', N'MICRORED VILLA LOS REYES', N'DR. RAFAEL EMILIANO SULCA QUISPE', N'MZ. N-1 SC. ADELANTE (KM. 37.5 PAN. NOR) AA.HH. V.DE LOS REYES - VENTANILLA', N'550-3707', N'998714931', N'#947377', N'12', N'-11.828602', N'-77.122615', N'VENTANILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (47, 70106208, N'C.S. LUIS FELIPE DE LAS CASAS ', N'MICRORED VILLA LOS REYES', N'DRA. MABETHA POEMAPE VALLEJOS', N'AA.HH. LUIS FELIPE DE LAS CASAS KM. 39 PANAM. NORTE - VENTANILLA', N'550-3432', N'998714792', N'#947376', N'12', N'-11.824311', N'-77.131839', N'VENTANILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (48, 70106209, N'C.S. MI PERU ', N'MICRORED VILLA LOS REYES', N'DR. MIGUEL ANGEL SOTA CLEMENTE', N'MZ.G6 LOTE 1 AV.HUAURA AG MI PERU', N'553-5463', N'998713474', N'#947380', N'12', N'-11.855263', N'-77.122952', N'VENTANILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (49, 70101227, N'C.S. MARQUEZ (Base de Microred)', N'MICRORED MARQUEZ', N'DR. DARIO NARCISO LUNA  DEL CARPIO ', N'AV. LOS ALAMOS S/N - MARQUEZ - CALLAO', N'577-6151', N'998040688', N'#947382', N'24', N'-11.942668', N'-77.134082', N'VENTANILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (50, 70106205, N'C.S. VENTANILLA BAJA', N'MICRORED MARQUEZ', N'DRA. FLOR DE MAR', N'PARQUE COMERCIAL AA.HH. V.R. HAYA DE LA TORRE - VENTANILLA', N'577-7067', N'', N'-', N'6', N'-11.936755', N'-77.132415', N'VENTANILLA')
INSERT [dbo].[tb_cen_anexo] ([cod_ce], [cod_ubi], [nom_este], [micro_red], [med_jefe], [dir_cent], [tel_cent], [cel_cent], [rmp_cent], [hr_cent], [latitud], [longitud], [nom_red]) VALUES (51, 70106206, N'C.S. VENTANILLA ESTE', N'MICRORED MARQUEZ', N'DR. HENRY JOEL RODRIGUEZ RODRIGUEZ', N'PRIMERA ETAPA AA.HH. PARQUE PORCINO - VENTANILLA', N'577-7396', N'998040766', N'#947384', N'6', N'-11.942454', N'-77.117636', N'VENTANILLA')
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 01/08/2016 18:10:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles] 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 01/08/2016 18:10:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201601062155361_InitialCreate', N'WebClinica.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FDB36147E1FB0FF20E8691B522B97B5E802BB45E6245BB0E6823AEDF656D012ED08952855A2D204C37ED91EF693F617762851375E74B115DB19060CB578F8F1F0F023797878987FFFFE67FCF6C1F78C7B1CC56E4026E6C168DF3430B103C725CB8999D0C58BD7E6DB37DF7E333E73FC07E3632E77C4E4A0268927E61DA5E1B165C5F61DF6513CF25D3B0AE260414776E05BC809ACC3FDFD9FAC83030B0384095886317E9F10EAFA38FD013FA701B1714813E45D060EF662FE1D4A6629AA71857C1C87C8C613F3773C9F7A2E716D34CA844DE3C473112832C3DEC2341021014514D43CFE10E3198D02B29C85F00179B78F2106B905F262CCD53F2EC5BBF664FF90F5C42A2BE6507612D3C0EF097870C44D6389D55732B059980E8C770646A68FACD7A90127E68583D34FEF030F0C2036783CF522263C312F8B264EE2F00AD3515E7194419E4700F735883E8FAA887B46E77A7B05950E47FBECBF3D639A783489F084E08446C8DB336E92B9E7DABFE1C7DBE0332693A383F9E2E8F5CB57C8397AF5233E7A59ED29F415E46A1FE0D34D14843802DDF0A2E8BF6958F57A9658B1A856A9935905B804B3C2342ED1C33B4C96F40EE6CBE16BD338771FB0937FE1E4FA000405764E4C1A25F0F32AF13C34F770516E35B6C9FEDFD0EAE1CB5783B47A85EEDD653AF442FB3071229857EFB19796C6776E984DAFDA787FE262E751E0B3DF757E65A59F664112D9AC338156E416454B4CEBDA8DAD92BC9D28CDA086A7758EBAFBD4669ACAF4568AB20EAD3213F226363D1B727D9FB6DDCE8C3B094318BC945ACC224D8493F6AA915079CF28454AE21C74250E810EFD9FD7C1331FB9DE000B618756C00559B8918F8B5EFE1C00ED10E9ADF30D8A6358079C5F517CD7A03AFC7300D567D84E22A0E78C223F7CF2D66EEE0282AF127FCE58BFB9B6061B9ADBAFC139B269109D11566B6DBC7781FD3948E819714E11C51FA89D03B29FB7AEDF1D6010754E6C1BC7F13990193BD3003CEC1CF082D0A3C3DE706C7DDAB62332F590EBAB3D116125FD948B96DE885A42F24834622AAFA449D577C1D225DD54CD45F5AA6612ADAA72B1BEAA32B06E9A7249BDA2A940AB9E99D4607E5E3A42C33B7A29ECEE7B7AEB6DDEBAB5A062C619AC90F8174C7004CB98738328C5112947A0CBBAB10D67211D3ED6E893EF4D694B1F91970CDDD44AB3215D04869F0D29ECEECF86544DF87CEF3ACC2BE970FCC98501BE93BCFA64D53EE704CD363D1D6ADDDC74E39B590374D3E5248E03DB4D678122F0C5C31675FDC18733DA6318596FC43808740C88EEB22D0FBE40DF4C9154D7E4147B9862E3C4CE02835314DBC891CD081D727A2896EFA80AC5CA78485DB91FA43681E9386295103B04C530535D42E569E112DB0D91D76A25A166C72D8CF5BD68432C39C52126ACC1564B74695C1DFE600A14ED0883D266A1B155615C3311355EAB6ECCDB5CD872DCA5A8C44638D9E23B6B78C9FDB7272166B3C53640CE66937451401BCADB0641F959A52B01C483CBAE115438316908CA5DAA8D10B46EB12D10B46E926747D0EC88DA75FC85F3EAAED1B37E50DEFCB6DE68AE2D70B3668F1DA366E67B421D0A357024D3F374CE0AF103551CCE404F7E3E8BB9AB2B528481CF30AD876C4A7F57E9875ACD2022899A004BA2B580F24B4009489A503D94CB63798DDA712FA2076C1E776B84E56BBF005BE1808C5DBD0CAD08EAAF4C4572763A7D143D2BD82091BCD361A182A32084B878D53BDEC128BAB8AC6C982EBE701F6FB8D2313E180D066AF15C3546CA3B33B895726AB65B49E590F571C9D6B292E03E69AC947766702B718EB61B49E114F4700BD632517D0B1F68B2E5918E62B729CAC6569622C53F8C2D4D2ED5F81285A14B9695DC2AFEC598658955D317B3FE29477E8661D9B122F3A8D0B6688906115A62A1149A064DCFDD28A6A788A23962719EA9E34B62CABD55B3FCE74D56B74F7910F37D209766FFCE6AC857F7B5AD56F64538C43974D0670E4D1A45570CBFBABAC152DD90872245E07E1A78894FF4FE95BE76767D57AD9F7D9111C696A0BFE43F49C692BCDCBAE53B8D8B3C278619A3C27B597D9CF4103A6BE7BE67D5DE3A7F548F9287A7AA28BA90D5D6C64DE7C6F4192BD141EC3F54AD084F33AB78564A15807FEA8951496C90C02A65DD51EBB92755CC7A49774421C1A40A2914F5D0B29A465253B25AB0129EC6A26A89EE2DC889235574B9B43BB22285A40AAD285E015BA1B358D61D5591655205561477C72E534EC4357487F72DEDB165D58D2B3BD8AEB77369309E66411C66E3ABDCDF57812A9F7B62F11B7A098C7FDF4932694F77AB92290B67AC47260D867EDDA95D7CD7979DC6DB7A3D66ED36BBB6B437DDE6EBF1FA51F64989219DED4491A2F5E28C279CE5C6FC5CD5FE78463A686522A6919B11B6F5C798627FC40446B32F1E500BB3453C17B844C45DE09866191C269C035F0B0F7076E7318C15C78EA73897EA5EC4D4C76C03C958E41E45F61D8AE4D488351E8C94A052D4F98238F86162FE99D63A4E0318EC5FE9E73DE322FE40DC2F0914DC460936FE92533D8749A06F3E61EDE87387EE56BDF8E3535675CFB88E60C61C1BFB822D5719E1FA23885EDA6455D7D066E5A711CF7742D55E1E28518509B1FA4383B94B077964906BF99D8F1EBEEFAB9AF221C15A888AC70243E10D6242DD638055B0B40F011CF849D38700FD3AAB7E18B08A6ADA47012EE90F263E09E8BE0CE535B7B8D5288E449B5892523BB7A654AF955FB9EDBD49CABC5E6BA2CBD9D53DE0D6C8A05E8119CF2CF978B0DD51915B3C18F636A9FDE409C5BB92435C66776C37757893D9C20D7742FFAB24E11D486B53A4E96C3F1578D35CD38571773C9FB25FC2EF8E918D276F6D3FAD77D364D38579779C6CBD9277778C6BDBDA3FB7CCB4CE5BE8D65371E5AC22CD758C2A16DC966A9B05CEE1843F0F8004994799BD9054E77635E5A5B634588AE81BD52795890D4B13476A5792686EB65F5FF986DFD8592ED3DCAC2615B3A96DBEFE37B6CD659ADBD624386E2349589962A84ADC6E59C79A32A09E535270AD272D39E86D3E6BE3DDFA73CA011EC428B5D9A3B9237E3E29BF839864C8A9D323C557BEEE85BDB3F2171561FF8EDD6509C1FEBE22C1766DD72C642EC822C8376F41A35C4488D05C628A1CD8524F22EA2E904DA198C598D327DE69DC8EDD74CCB17341AE131A2614BA8CFDB9570B783127A0A9FD348FB9AEF3F83A4CFF5AC9105D00355D169BBF263F27AEE7147A9F2B62421A08E65DF0882E1B4BCA22BBCBC702E92A201D81B8F90AA7E816FBA10760F13599A17BBC8A6E40BF777889ECC73202A803691F88BAD9C7A72E5A46C88F3946591F7E02871DFFE1CD7F64E9A10E58540000, N'6.1.3-40302')
/****** Object:  Table [dbo].[Clinicas]    Script Date: 01/08/2016 18:10:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clinicas](
	[cod_cli] [varchar](20) NOT NULL,
	[nom_cli] [varchar](250) NULL,
	[des_cli] [varchar](250) NULL,
	[dir_cli] [varchar](250) NULL,
	[fec_Reg] [datetime] NULL,
	[tel_cli] [varchar](200) NULL,
	[Lat_cli] [varchar](50) NULL,
	[Log_cli] [varchar](50) NULL,
	[Est_cli] [varchar](3) NULL,
 CONSTRAINT [PK__Clinicas__FEA298EE21B6055D] PRIMARY KEY CLUSTERED 
(
	[cod_cli] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000001', N'C.S. ALBERTO BARTON', N'Centro de Salud de Primer Nivel ', N'CALLE MANUEL RAYGADA N 515', CAST(0x0000A58700B5A302 AS DateTime), N'465-6242', N'-12.053827', N'-77.138831', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000002', N'C.S. SAN JUAN BOSCO', N'Centro de Salud de Primer Nivel ', N'CONTRALMIRANTE MORA CDRA. 5 (CALLE NAUTA 122) - CALLAO', CAST(0x0000A58700B5A302 AS DateTime), N'453-6686', N'-12.048411', N'-77.133173', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000003', N'C.S. PUERTO NUEVO', N'Centro de Salud de Primer Nivel ', N'LOCAL COMUNAL AA.HH. PUERTO NUEVO S/N - CALLAO', CAST(0x0000A58700B5A302 AS DateTime), N'420-1471', N'-12.046188', N'-77.136657', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000004', N'C.S. LA PUNTA', N'Centro de Salud de Primer Nivel ', N'AV. GRAU N 1002 -LA PUNTA', CAST(0x0000A58700B5A302 AS DateTime), N'465-0158', N'-12.068510', N'-77.158006', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000005', N'C.S. SANTA FE (Base de Microred)', N'Centro de Salud de Primer Nivel ', N'AV. ALFREDO PALACIOS CDRA. 5 - CALLAO', CAST(0x0000A58700B5A302 AS DateTime), N'453-6677', N'-12.05405', N'-77.123349', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000006', N'C.S. CALLAO', N'Centro de Salud de Primer Nivel ', N'CALLE CANCHONES N 294 - URB TARAPACA', CAST(0x0000A58700B5A302 AS DateTime), N'451-8819', N'-12.051997', N'-77.102689', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000007', N'C.S. JOSE BOTERIN', N'Centro de Salud de Primer Nivel ', N'PARQUE N3 AAHH JOSE BOTERIN', CAST(0x0000A58700B5A302 AS DateTime), N'429-3028', N'-12.053128', N'-77.119961', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000008', N'C.S. JOSE OLAYA (Base de Microred)', N'Centro de Salud de Primer Nivel ', N'JR. JUNIN PP.JJ. JOSE OLAYA - CALLAO', CAST(0x0000A58700B5A302 AS DateTime), N'452-1165', N'-12.043153', N'-77.104595', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000009', N'C.S. MIGUEL GRAU', N'Centro de Salud de Primer Nivel ', N'ALT. CDRA.10 AV.TUPAC AMARU - PP.JJ. MIGUEL GRAU - CALLAO', CAST(0x0000A58700B5A302 AS DateTime), N'562-3230', N'-12.045995', N'-77.104287', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000010', N'C.S. SANTA ROSA', N'Centro de Salud de Primer Nivel ', N'AV. T. AMARU GDIA.CHALACA S/N MINICOMPL. STA.ROSA - CALLAO', CAST(0x0000A58700B5A303 AS DateTime), N'453-7822', N'-12.045732', N'-77.110984', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000011', N'C.S. GAMBETA ALTA (Base de Microred)', N'Centro de Salud de Primer Nivel ', N'AV. ALAMEDA S/N PP.JJ. GAMBETTA ALTA - CALLAO', CAST(0x0000A58700B5A303 AS DateTime), N'420-0286', N'-12.042332', N'-77.120345', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000012', N'C.S. RAMON CASTILLA', N'Centro de Salud de Primer Nivel ', N'JR. CUZCO S/N PP.JJ. RAMON CASTILLA - CALLAO', CAST(0x0000A58700B5A303 AS DateTime), N'465-6195', N'-12.040893', N'-77.122451', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000013', N'C.S. GAMBETTA BAJA', N'Centro de Salud de Primer Nivel ', N'AV. JOSE GALVEZ Y SANTA ROSA - CALLAO', CAST(0x0000A58700B5A303 AS DateTime), N'453-7817', N'-12.041637', N'-77.115604', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000014', N'C.S. ACAPULCO (Base de Microred)', N'Centro de Salud de Primer Nivel ', N'AV.JOSE GALVEZ S/N CMTE.8 - PP.JJ. ACAPULCO - CALLAO', CAST(0x0000A58700B5A303 AS DateTime), N'429-0059', N'-12.022181', N'-77.136884', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000015', N'C.S. JUAN PABLO II', N'Centro de Salud de Primer Nivel ', N'AA.HH.JUAN PABLO II (ALT.AV.GAMBETTA KM 2.5) - CALLAO', CAST(0x0000A58700B5A303 AS DateTime), N'453-4213', N'-12.026392', N'-77.129155', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000016', N'CENTRO DE DESARROLLO JUVENIL DEL CALLAO', N'Centro de Salud de Primer Nivel ', N'AV. RAMIRO PRIALE S/N - AA.HH. SARITA COLONIA - CALLAO', CAST(0x0000A58700B5A303 AS DateTime), N'453-8688', N'-12.023081', N'-77.134113', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000017', N'HOSP. NAC. DANIEL ALCIDES CARRION', N'Centro de Salud de Primer Nivel ', N'AV. GUARDIA CHALACA N', CAST(0x0000A58700B5A303 AS DateTime), N'429-6068', N'-12.062865', N'-77.123777', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000018', N'HOSPITAL SAN JOSE', N'Centro de Salud de Primer Nivel ', N'AV. ELMER FAUCETT CDRA. 9 S/N - C.DE LA LEGUA', CAST(0x0000A58700B5A303 AS DateTime), N'464-6867', N'-12.042683', N'-77.098685', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000019', N'C.S. FAUCETT (Base de Microred)', N'Centro de Salud de Primer Nivel ', N'CALLE 3 S/N - URB. FAUCETT - CALLAO', CAST(0x0000A58700B5A303 AS DateTime), N'577-1321', N'-11.996084', N'-77.120885', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000020', N'C.S. 200 MILLAS', N'Centro de Salud de Primer Nivel ', N'MZ L LOTE 3-4 I ETAP. URB.200 MILLAS (KM.5.5 AV.GAMBETTA) - CALLAO', CAST(0x0000A58700B5A304 AS DateTime), N'577-1351', N'-11.995242', N'-77.124787', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000021', N'C.S. PALMERAS DE OQUENDO', N'Centro de Salud de Primer Nivel ', N'Calle Marlen Mz Lte 5 y 6 - Urb. Las Palmeras (al Km9 Nestor Gambetta) - CALLAO', CAST(0x0000A58700B5A304 AS DateTime), N'', N'-11.973083', N'-77.120813', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000022', N'C.S. SESQUICENTENARIO (Base de Microred)', N'Centro de Salud de Primer Nivel ', N'ALT.CALLE 7 Y 14 - URB.SESQUICENTENARIO - CALLAO', CAST(0x0000A58700B5A304 AS DateTime), N'574-2790', N'-12.00963', N'-77.096596', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000023', N'C.S. PREVI', N'Centro de Salud de Primer Nivel ', N'CALLE CENTRAL S/N - CALLAO', CAST(0x0000A58700B5A304 AS DateTime), N'574-6145', N'-12.016663', N'-77.090683', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000024', N'C.S. BOCANEGRA', N'Centro de Salud de Primer Nivel ', N'AA.HH. BOCANEGRA - PLAZA CIVICA - CALLAO', CAST(0x0000A58700B5A304 AS DateTime), N'484-3241', N'-12.024301', N'-77.096304', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000025', N'C.S. EL ALAMO', N'Centro de Salud de Primer Nivel ', N'MZ. S/N URB. EL ALAMO - CALLAO', CAST(0x0000A58700B5A304 AS DateTime), N'574-8276', N'-12.002012', N'-77.107186', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000026', N'C.S. AEROPUERTO (Base de Microred)', N'Centro de Salud de Primer Nivel ', N'JR. SALAVERRY S/N - AA.HH. AEROPUERTO - CALLAO', CAST(0x0000A58700B5A304 AS DateTime), N'572-2724', N'-12.033443', N'-77.09897', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000027', N'C.S. PLAYA RIMAC', N'Centro de Salud de Primer Nivel ', N'CALLE BOLOGNESI Y JOSE SANTOS CHOCANO S/N - CALLAO', CAST(0x0000A58700B5A304 AS DateTime), N'572-3712', N'-12.037915', N'-77.096579', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000028', N'P.S. POLIGONO IV', N'Centro de Salud de Primer Nivel ', N'AA.HH. BOCANEGRA - SECTOR V - CALLAO', CAST(0x0000A58700B5A304 AS DateTime), N'574-8993', N'-12.025192', N'-77.101053', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000029', N'C.S. BELLAVISTA (Base de Microred)', N'Centro de Salud de Primer Nivel ', N'MZ. F-5 ZONA 2 - CIUDAD DEL PESCADOR - BELLAVISTA', CAST(0x0000A58700B5A304 AS DateTime), N'452-0167 769-8333', N'-12.061772', N'-77.106853', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000030', N'C.S. ALTA MAR', N'Centro de Salud de Primer Nivel ', N'AV. DOS DE MAYO N 640', CAST(0x0000A58700B5A304 AS DateTime), N'420-5994', N'-12.069639', N'-77.117861', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000031', N'C.S. LA PERLA', N'Centro de Salud de Primer Nivel ', N'ALFONSO UGARTE N 1150', CAST(0x0000A58700B5A318 AS DateTime), N'453-7459', N'-12.068634', N'-77.129469', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000032', N'C.S. CARMEN DE LA LEGUA', N'Centro de Salud de Primer Nivel ', N'AV. MANCO CAPAC CDRA. 8 - C.DE LA LEGUA', CAST(0x0000A58700B5A318 AS DateTime), N'451-8719', N'-12.039954', N'-77.090036', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000033', N'C.S. VILLA SR. DE LOS MILAGROS', N'Centro de Salud de Primer Nivel ', N'P.J.VILLA SR.DE MILAGR.(ALT.CDRA.60 AV.ARGENTINA) - C.DE LA LEGUA', CAST(0x0000A58700B5A318 AS DateTime), N'452-2272', N'-12.04184', N'-77.085604', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000034', N'HOSPITAL DE VENTANILLA', N'Centro de Salud de Primer Nivel ', N'AV. PEDRO BELTRAN ALT. CUADRA 3 S/N - URB. SATELITE - VENTANILLA', CAST(0x0000A58700B5A318 AS DateTime), N'553-5700', N'-11.872331', N'-77.125705', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000035', N'C.S. MATERNO INFANTIL PACHACUTEC PERU - KOREA (Base de Microred)', N'Centro de Salud de Primer Nivel ', N'MZ. X LT. 1 - AAHH HIROSHIMA - CIUDAD PACHACUTEC - VENTANILLA', CAST(0x0000A58700B5A319 AS DateTime), N'-', N'-11.832774', N'-77.141758', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000036', N'C.S. 03 DE FEBRERO', N'Centro de Salud de Primer Nivel ', N'MZ. V SECTOR B PROLONG. AV. 225 S/N - CIUDADELA PACHACUTEC - VENTANILLA', CAST(0x0000A58700B5A319 AS DateTime), N'', N'-11.829584', N'-77.159053', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000037', N'C.S. BAHIA BLANCA', N'Centro de Salud de Primer Nivel ', N'MZ P1 LT 1 - SECTOR E - CIUDADELA PACHACUTEC - VENTANILLA', CAST(0x0000A58700B5A319 AS DateTime), N'', N'-11.83532', N'-77.158578', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000038', N'C.S. CIUDAD PACHACUTEC', N'Centro de Salud de Primer Nivel ', N'MZ. G1 LT. 2 - COOP. LA UNION - CIUDADELA PACHACUTEC - VENTANILLA', CAST(0x0000A58700B5A319 AS DateTime), N'996719259', N'-11.845231', N'-77.150772', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000039', N'C.S. SANTA ROSA DE PACHACUTEC', N'Centro de Salud de Primer Nivel ', N'MZ. O LT. 1 - AA.HH. SANTA ROSA DE PACHACUTEC - VENTANILLA', CAST(0x0000A58700B5A319 AS DateTime), N'', N'-11.847148', N'-77.127536', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000040', N'C.S. ANGAMOS', N'Centro de Salud de Primer Nivel ', N'AV. HUAURA S/N - AA.HH. MI PERU - VENTANILLA', CAST(0x0000A58700B5A319 AS DateTime), N'553-0884', N'-11.892673', N'-77.127677', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000041', N'C.S. HIJOS DEL ALMIRANTE GRAU', N'Centro de Salud de Primer Nivel ', N'MZ. 7 AA.HH. HIJOS DEL ALMIRANTE MIGUEL GRAU - VENTANILLA', CAST(0x0000A58700B5A319 AS DateTime), N'532-6570', N'-11.885606', N'-77.131957', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000042', N'P.S. DEFENSORES DE LA PATRIA', N'Centro de Salud de Primer Nivel ', N'AA.HH. DEFENSORES DE LA PATRIA S/N - VENTANILLA', CAST(0x0000A58700B5A319 AS DateTime), N'', N'-11.876396', N'-77.137907', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000043', N'C.S. VENTANILLA ALTA', N'Centro de Salud de Primer Nivel ', N'AV. CENTRAL S/N (ALT. LOCAL COMUNAL) AA.HH. V. ALTA - VENTANILLA', CAST(0x0000A58700B5A319 AS DateTime), N'553-4475', N'-11.87229', N'-77.110026', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000044', N'C.S. VILLA LOS REYES (Base de Microred)', N'Centro de Salud de Primer Nivel ', N'MZ. N-1 SC. ADELANTE (KM. 37.5 PAN. NOR) AA.HH. V.DE LOS REYES - VENTANILLA', CAST(0x0000A58700B5A319 AS DateTime), N'550-3707', N'-11.828602', N'-77.122615', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000045', N'C.S. LUIS FELIPE DE LAS CASAS ', N'Centro de Salud de Primer Nivel ', N'AA.HH. LUIS FELIPE DE LAS CASAS KM. 39 PANAM. NORTE - VENTANILLA', CAST(0x0000A58700B5A319 AS DateTime), N'550-3432', N'-11.824311', N'-77.131839', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000046', N'C.S. MI PERU ', N'Centro de Salud de Primer Nivel ', N'MZ.G6 LOTE 1 AV.HUAURA AG MI PERU', CAST(0x0000A58700B5A319 AS DateTime), N'553-5463', N'-11.855263', N'-77.122952', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000047', N'C.S. MARQUEZ (Base de Microred)', N'Centro de Salud de Primer Nivel ', N'AV. LOS ALAMOS S/N - MARQUEZ - CALLAO', CAST(0x0000A58700B5A321 AS DateTime), N'577-6151', N'-11.942668', N'-77.134082', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000048', N'C.S. VENTANILLA BAJA', N'Centro de Salud de Primer Nivel ', N'PARQUE COMERCIAL AA.HH. V.R. HAYA DE LA TORRE - VENTANILLA', CAST(0x0000A58700B5A321 AS DateTime), N'577-7067', N'-11.936755', N'-77.132415', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000049', N'C.S. VENTANILLA ESTE', N'Centro de Salud de Primer Nivel ', N'PRIMERA ETAPA AA.HH. PARQUE PORCINO - VENTANILLA', CAST(0x0000A58700B5A321 AS DateTime), N'577-7396', N'-11.942454', N'-77.117636', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000050', N'C.S. VENTANILLA ESTE', N'Centro de Salud de Primer Nivel ', N'PRIMERA ETAPA AA.HH. PARQUE PORCINO - VENTANILLA', CAST(0x0000A58700B5A321 AS DateTime), N'577-7396', N'-11.942454', N'-77.117636', N'1')
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 01/08/2016 18:10:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers] 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'98491a91-ca23-46e4-ad3e-b4c6e2f7f02e', N'g.rodriguez.p@hotmail.com', 0, N'AJtS7zRpvyuoxMNsa45QV6vFv77JHIwPJLflAXTC1jih62d2IeLY0A9vSMnO4SINxg==', N'6da6100a-21ef-48e8-84ed-ab837b60274c', NULL, 0, 0, NULL, 1, 0, N'g.rodriguez.p@hotmail.com')
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 01/08/2016 18:10:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 01/08/2016 18:10:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 01/08/2016 18:10:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[S_Genera_Codigo2]    Script Date: 01/08/2016 18:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure  [dbo].[S_Genera_Codigo2]  
 @nomtb varchar(50) ,@nro int output
as
declare @ano varchar(4)
 set @ano =  Convert(Varchar,year(GETDATE()))
 set @nro = 1
 if not exists (select * from Tb_Cod where  tabla_genera = @nomtb  )
 begin
	insert into Tb_Cod values(@ano, @nro,@nomtb ) 
 end
 else 
 begin
	if exists (select * from Tb_Cod where year_cod = @ano  and    tabla_genera = @nomtb    )
	 begin
		update  Tb_Cod set @nro = nro = nro + 1 , year_cod = @ano where tabla_genera = @nomtb
	 end
	 else
	 begin
		update  Tb_Cod set @nro = nro =  1 , year_cod = @ano where  tabla_genera = @nomtb
	 end
 end
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTACLINICA]    Script Date: 01/08/2016 18:10:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
 		DECLARE  @NroCorrelativo int 
				exec S_Genera_Codigo2  'TBAsistencia',@NroCorrelativo output

				select @NroCorrelativo
*/

 
CREATE PROCEDURE  [dbo].[SP_INSERTACLINICA]
-- exec SP_INSERTACLINICA 'clinica02','brinda serviocs de Odontologia ','la mz do' ,'124050055','-12.200','-45.00' 
@nom_cli varchar(250),@des_cli varchar(250), @dir_cli varchar(250), @tel_cli varchar(200),
@Lat_cli varchar(50), @Log_cli varchar(50)  
as
SET NOCOUNT ON
set dateformat ymd
BEGIN  
 BEGIN TRY
	BEGIN TRAN 	 
		DECLARE  @NroCorrelativo int,  @codigo varchar(20)
		exec S_Genera_Codigo2  'Clinicas',@NroCorrelativo output
		set @codigo =   right(year(getdate()),2)  +  right('00000000000000000'+ LTRIM(RTRIM(@NroCorrelativo))  ,10)
		insert into Clinicas values(@codigo ,@nom_cli,@des_cli , @dir_cli,getdate() , @tel_cli  ,@Lat_cli , @Log_cli , 1  )		  
		select 'Clinica Registra con Exti ','true','_mensaje'
		--DBCC CHECKIDENT ('dbo.tb_documentos', RESEED, 0); 
		COMMIT TRAN
 END TRY
 BEGIN CATCH 
	ROLLBACK TRAN
	--select ERROR_MESSAGE() 
	select  'Error.-- No se ha podido Registrar los datos.','flase','_error'
 END CATCH 
END
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]    Script Date: 01/08/2016 18:10:28 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]    Script Date: 01/08/2016 18:10:28 ******/
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]    Script Date: 01/08/2016 18:10:28 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]    Script Date: 01/08/2016 18:10:28 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
