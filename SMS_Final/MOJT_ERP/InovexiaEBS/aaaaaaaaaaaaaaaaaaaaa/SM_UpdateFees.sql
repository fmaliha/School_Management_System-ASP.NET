USE [SchoolManagement]
GO

/****** Object:  StoredProcedure [dbo].[SM_UpdateFees]    Script Date: 1/8/2020 10:47:36 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- exec [dbo].[SM_UpdateFees] '103''22/01/2010''a''a''a''a'
CREATE PROCEDURE [dbo].[SM_UpdateFees]
	-- Add the parameters for the stored procedure here
	--@StudentAdmissionNo varchar (50),
	@ReferenceNo int,
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

    -- Insert statements for procedure here
	
	Update SMFeesCollection 

	set
	
	[Date]=@Date,
	[CollectionHead]=@CollectionHead,
	[CollectionMode]=@CollectionMode,
	[Amount]=@Amount,
	[Narration]=@Narration

	where [ReferenceNo] =@ReferenceNo
END

GO

