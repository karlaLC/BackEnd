USE [Prospect]
GO
/****** Object:  StoredProcedure [dbo].[Logs_IssueLogCategoryType_Update]    Script Date: 9/17/2018 8:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Karla Lopez
-- Description:	Update (IssueLogCategoryType)
-- =============================================
CREATE PROCEDURE [dbo].[Logs_IssueLogCategoryType_Update] 
	-- Add the parameters for the stored procedure here
	 @Id int, 
	 @TypeName nvarchar(50), 
	 @TypeDescription nvarchar(150)

AS
/*
	TEST SCRIPTS

	exec dbo.Logs_IssueLogCategoryType_Update
		 @Id = 1
		 ,@TypeName = 'Test'
		 ,@TypeDescription = 'Description has been modified'

	select * 
	from dbo.Logs_IssueLogResponse_Update
	where Id = @Id
*/

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update dbo.Logs_IssueLogCategoryType
	   set TypeName = @TypeName
		  ,TypeDescription = @TypeDescription
	where Id = @Id

END
GO
