USE [Prospect]
GO
/****** Object:  StoredProcedure [dbo].[Logs_IssueLogStatusType_Delete]    Script Date: 9/17/2018 8:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Karla Lopez
-- Description:	Delete (IssueLogStatusType)
-- =============================================
CREATE PROCEDURE [dbo].[Logs_IssueLogStatusType_Delete] 
	-- Add the parameters for the stored procedure here
	@Id int
AS
/*
	TEST SCRIPTS 
		declare @id int = 15

		select * 
		from dbo.Logs_IssueLogStatusType_Delete
		where Id = @id; 

		exec dbo.Logs_IssueLogStatusType_Delete @id

		select * 
		from dbo.Logs_IssueLogStatusType_Delete
		where Id = @id;  

*/
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from dbo.Logs_IssueLogStatusType
	where Id = @Id

END
GO
