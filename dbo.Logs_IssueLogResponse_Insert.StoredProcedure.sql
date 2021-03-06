USE [Prospect]
GO
/****** Object:  StoredProcedure [dbo].[Logs_IssueLogResponse_Insert]    Script Date: 9/17/2018 8:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Karla Lopez
-- Description:	Insert (IssueLogResponse)
-- =============================================
CREATE PROCEDURE [dbo].[Logs_IssueLogResponse_Insert] 
	-- Add the parameters for the stored procedure here
	@IssueLogId int,
	@ResponseText nvarchar(4000) = null,
	@CreatedById int,
	@Id int output
AS
/* 
	TEST SCRIPTS

	declare @IdOut int=0

	exec dbo.Logs_IssueLogResponse_Insert
		 @IssueLogId = 5
		 ,@ResponseText = 'This is just a test'
		 ,@CreatedById = 1
		 ,@Id = @IdOut output
	
	select @IdOut
*/

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	insert into dbo.Logs_IssueLogResponse 
				([IssueLogId]
				,[ResponseText]
				,[CreatedById])	
		values 
				(@IssueLogId
				,@ResponseText
				,@CreatedById)

		set @Id = SCOPE_IDENTITY()

END
GO
