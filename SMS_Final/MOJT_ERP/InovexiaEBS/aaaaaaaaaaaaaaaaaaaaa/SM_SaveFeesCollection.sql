USE [SchoolManagement]
GO

/****** Object:  StoredProcedure [dbo].[SM_SaveFeesCollection]    Script Date: 1/8/2020 10:48:48 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- exec [dbo].[SM_SavePayment] '12-01-10''abs''abc''abc''abc'
CREATE PROCEDURE [dbo].[SM_SaveFeesCollection]
	-- Add the parameters for the stored procedure here
	
	@StudentAdmissionNo varchar (50),
	@Date date,
	@CollectionHead varchar (50),
	@CollectionMode varchar (50),
	@Amount decimal (18,4),
	@Narration varchar (50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	Declare @ReferenceNo INT  = 0
	--DECLARE @ReferenceNo int = 0

    -- Insert statements for procedure here
	Insert into SMFeesCollection 

	(StudentAdmissionNo,Date,CollectionHead,CollectionMode,Amount,Narration)

	values (@StudentAdmissionNo,@Date,@CollectionHead,@CollectionMode,@Amount,@Narration)

	Select SCOPE_IDENTITY() as  ReferenceNo 

	
	

END

GO

