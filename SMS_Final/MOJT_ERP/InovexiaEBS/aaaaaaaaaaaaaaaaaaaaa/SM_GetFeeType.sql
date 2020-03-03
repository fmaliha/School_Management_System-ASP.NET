USE [SchoolManagement]
GO

/****** Object:  StoredProcedure [dbo].[SM_GetFeeType]    Script Date: 1/8/2020 10:47:19 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SM_GetFeeType]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Code,HeadName from SM_FeesMaster
END

GO

