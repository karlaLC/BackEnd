USE [Prospect]
GO
/****** Object:  StoredProcedure [dbo].[Logs_IssueLogStatusType_Update]    Script Date: 9/17/2018 8:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Karla Lopez
-- Description:	Update (IssueLogStatusType)
-- =============================================
CREATE PROCEDURE [dbo].[Logs_IssueLogStatusType_Update]
	-- Add the parameters for the stored procedure here
	 @Id int, 
	 @TypeName nvarchar(50), 
	 @TypeDescription nvarchar(150)

AS
/*
	TEST SCRIPTS

	exec dbo.Logs_IssueLogStatusType_Update
		 @Id = 58
		 ,@TypeName = 'This should be changed'
		 ,@TypeDescription = 'This should be changed, too'

	select * 
	from dbo.Logs_IssueLogStatusType_Update
	where Id = @Id
*/

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update dbo.Logs_IssueLogStatusType
	   set TypeName = @TypeName
		   ,TypeDescription = @TypeDescription
	 where Id = @Id
	
END
GO
