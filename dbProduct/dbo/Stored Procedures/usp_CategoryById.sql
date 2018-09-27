CREATE PROCEDURE [dbo].[usp_CategoryById]

@p_intCategoryId int

AS
BEGIN

	SET NOCOUNT ON;
	SELECT  CategoryId,
			CategoryName, 
			Description, 
			Picture,			
			ParentCategoryId, 
			StatusId
	FROM
			Categories
	WHERE
			CategoryId = @p_intCategoryId;
END