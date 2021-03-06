USE [Prospect]
GO
/****** Object:  StoredProcedure [dbo].[Logs_IssueLogCategoryType_SelectAll]    Script Date: 9/17/2018 8:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Karla Lopez
-- Description:	Select All (IssueLogCategoryType)
-- =============================================
CREATE PROCEDURE [dbo].[Logs_IssueLogCategoryType_SelectAll] 	
AS
/* 
	TEST SCRIPTS

	exec dbo.Logs_IssueLogCategoryType_SelectAll

*/
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select [Id]
		,[TypeName]
		,[TypeDescription]
	from dbo.Logs_IssueLogCategoryType

END
GO
