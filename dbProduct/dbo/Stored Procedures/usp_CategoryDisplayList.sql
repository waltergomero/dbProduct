CREATE PROCEDURE [dbo].[usp_CategoryDisplayList]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT a.CategoryId,
		   a.CategoryName,
		   a.Description,
		   ParentCategoryName = b.CategoryName,
		   a.Picture,
		   s.StatusName
	FROM
		Categories a WITH(NOLOCK) LEFT OUTER JOIN Categories b WITH(NOLOCK)  ON a.ParentCategoryId = b.CategoryID
		INNER JOIN [Status] s  WITH(NOLOCK)  ON a.StatusId = s.StatusId
	ORDER BY CategoryName;

END
