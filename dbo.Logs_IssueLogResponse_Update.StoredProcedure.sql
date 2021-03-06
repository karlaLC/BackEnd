﻿USE [Prospect]
GO
/****** Object:  StoredProcedure [dbo].[Logs_IssueLogResponse_Update]    Script Date: 9/17/2018 8:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Karla Lopez
-- Description:	Update (IssueLogResponse)
-- =============================================
CREATE PROCEDURE [dbo].[Logs_IssueLogResponse_Update] 
	-- Add the parameters for the stored procedure here
	@Id int, 
	@IssueLogId int, 
	@ResponseText nvarchar(4000)
	
AS
/*
	TEST SCRIPTS

	exec dbo.Logs_IssueLogResponse_Update
		 @Id = 2
		 ,@IssueLogId = '5'
		 ,@ResponseText = 'Test'

	select * 
	from dbo.Logs_IssueLogResponse_Update
	where Id = 2
*/

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update dbo.Logs_IssueLogResponse
	   set IssueLogId = @IssueLogId
		   ,ResponseText = @ResponseText
	 where Id = @Id 
	
END
GO
