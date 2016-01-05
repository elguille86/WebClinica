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
