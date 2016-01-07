Create Database BDBooksSaveWeb
Go
use BDBooksSaveWeb
GO
CREATE TABLE [dbo].[Tb_cod](
	[year_cod] [varchar](4) NOT NULL,
	[nro] [int] NULL,
	[tabla_genera] [varchar](250) NOT NULL
)
GO


INSERT [dbo].[Tb_cod] ([year_cod] , [nro] , [tabla_genera]) values (2016,	4,	'Clinicas')
 GO


Create table Clinicas(
cod_cli varchar(20) primary key,
nom_cli varchar(250),
des_cli varchar(250),
dir_cli varchar(250),
fec_Reg datetime,
tel_cli varchar(200),
Lat_cli varchar(50),
Log_cli varchar(50) ,
Est_cli varchar(3)
)

GO
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000001', N'clinica02', N'brinda serviocs de Odontologia ', N'la mz do', CAST(0x0000A5850115509D AS DateTime), N'124050055', N'-12.078001', N'-77.027978', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000002', N'clinica03', N'brinda serviocs de Odontologia ', N'la mz do', CAST(0x0000A585011550AA AS DateTime), N'124050055', N'-12.084759', N'-77.009278', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000003', N'clinica 01', N'brinda serviocs de Odontologia ', N'la mz do', CAST(0x0000A585011916CE AS DateTime), N'124050055', N'-12.096349', N'-76.991393', N'1')
INSERT [dbo].[Clinicas] ([cod_cli], [nom_cli], [des_cli], [dir_cli], [fec_Reg], [tel_cli], [Lat_cli], [Log_cli], [Est_cli]) VALUES (N'160000000004', N'clinica 02', N'brinda serviocs de Odontologia ', N'la mz do', CAST(0x0000A585011916D4 AS DateTime), N'124050055', N'-12.110615', N'-76.999357', N'1')
Go

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
/*
 		DECLARE  @NroCorrelativo int 
				exec S_Genera_Codigo2  'TBAsistencia',@NroCorrelativo output

				select @NroCorrelativo
*/

 
CREATE PROCEDURE  SP_INSERTACLINICA
/*
exec SP_INSERTACLINICA 'clinica02','brinda serviocs de Odontologia ','la mz do' ,'124050055','-12.078001','-77.027978' 
exec SP_INSERTACLINICA 'clinica03','brinda serviocs de Odontologia ','la mz do' ,'124050055','-12.075509','-77.029135' 
*/
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

select ROW_NUM ,* from dbo.Clinicas
  SELECT ROW_NUMBER() OVER(ORDER BY cod_cli) ROW_NUM, * FROM Clinicas
  
  SELECT * FROM 
(
SELECT ROW_NUMBER() OVER(ORDER BY cod_cli) ROW_NUM, * FROM Clinicas
 ) AS K
 WHERE ROW_NUM >3 AND ROW_NUM <=4