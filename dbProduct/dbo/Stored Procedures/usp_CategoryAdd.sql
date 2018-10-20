CREATE PROCEDURE [dbo].[usp_CategoryAdd]
@p_chrCategoryName varchar(50),
@p_chrDescription varchar(256),
@p_intParentCategoryId int,
@p_intStatusId int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @ErrorMessage varchar(255)
	
	IF EXISTS(SELECT TOP 1 * FROM [Categories] WITH(NOLOCK) WHERE CategoryName = @p_chrCategoryName)
		BEGIN
			RAISERROR('This category name already exists.', 16, 1)
			RETURN -1;

		END
  
    BEGIN TRY
		
		SELECT @p_intStatusId = StatusId FROM Status WHERE StatusName = 'Active';
            INSERT INTO Categories(CategoryName, Description, Picture, ParentCategoryId, StatusId) 
				  VALUES(@p_chrCategoryName, @p_chrDescription, '', @p_intParentCategoryId, @p_intStatusId);

	END TRY

	BEGIN CATCH
			SELECT @ErrorMessage = ERROR_MESSAGE()
		    RAISERROR (@ErrorMessage, 10, 1);
	END CATCH
END