USE [Prospect]
GO
/****** Object:  StoredProcedure [dbo].[Logs_IssueLogStatusType_SelectById]    Script Date: 9/17/2018 8:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Karla Lopez
-- Description:	Select By Id (IssueLogStatusType)
-- =============================================
CREATE PROCEDURE [dbo].[Logs_IssueLogStatusType_SelectById] 
	-- Add the parameters for the stored procedure here
	@Id int
AS
/* 
	TEST SCRIPTS

	exec dbo.Logs_IssueLogStatusType_SelectById
	@id = 45

*/
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select [Id]
		   ,[TypeName]
		   ,[TypeDescription]
	from dbo.Logs_IssueLogStatusType
	where Id = @Id	

END
GO
