CREATE PROCEDURE [dbo].[usp_StateList]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   SELECT StateId, StateCode, StateName FROM States ORDER BY StateName;

END
