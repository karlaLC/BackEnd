USE [Prospect]
GO
/****** Object:  StoredProcedure [dbo].[Logs_IssueLogStatusType_Insert]    Script Date: 9/17/2018 8:23:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Karla Lopez
-- Description:	Insert (IssueLogStatusType)
-- =============================================
CREATE PROCEDURE [dbo].[Logs_IssueLogStatusType_Insert]
	@TypeName nvarchar(50),
	@TypeDescription nvarchar(150) = null,
	@Id int output
AS
/* 
	TEST SCRIPTS

	declare @IdOut int=0
	
	exec dbo.Logs_IssueLogStatusType_Insert
		 @TypeName = "TestX"
		 ,@TypeDescription = "Testing text"
		 ,@Id = @IdOut output

	select @IdOut
*/

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into dbo.Logs_IssueLogStatusType 
				([TypeName]
				,[TypeDescription])
		values
				(@TypeName
				,@TypeDescription)

		set @Id = SCOPE_IDENTITY()

END
GO
