CREATE PROCEDURE [dbo].[usp_StatusById]

@p_intStatusId int

AS
BEGIN

	SET NOCOUNT ON;
	SELECT StatusId, StatusName, StatusTypeId 
			FROM Status 
				WHERE StatusId = @p_intStatusId;
END