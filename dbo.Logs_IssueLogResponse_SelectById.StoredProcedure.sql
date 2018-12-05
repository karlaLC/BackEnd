USE [Prospect]
GO
/****** Object:  StoredProcedure [dbo].[Logs_IssueLogResponse_SelectById]    Script Date: 9/17/2018 8:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Karla Lopez
-- Description:	Select By Id (IssueLogResponse)
-- =============================================
CREATE PROCEDURE [dbo].[Logs_IssueLogResponse_SelectById]
	-- Add the parameters for the stored procedure here
	@Id int
AS
/* 
	TEST SCRIPTS

	exec dbo.Logs_IssueLogResponse_SelectById
	@id = 12

*/
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select [Id]
		   ,[IssueLogId]
		   ,[ResponseText]
		   ,[CreatedById]
		   ,[CreatedDate]
	from dbo.Logs_IssueLogResponse_SelectById
	where IssueLogId = @Id
	
END
GO
