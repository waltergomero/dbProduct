CREATE PROCEDURE [dbo].[usp_StatusListByType]

@p_intStatusTypeId INT = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT StatusId, 
		   StatusName
    FROM 
		   Status
	WHERE
		   StatusTypeId = @p_intStatusTypeId
	ORDER BY 
		   StatusName;
END