CREATE PROCEDURE [dbo].[usp_CategoryUpdate]
@p_intCategoryId int,
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
	
	IF EXISTS(SELECT TOP 1 * FROM [Categories] WITH(NOLOCK) WHERE CategoryName = @p_chrCategoryName AND CategoryId <> @p_intCategoryId)
		BEGIN
			RAISERROR('This category name already exists.', 16, 1)
			RETURN -1;

		END
  
    BEGIN TRY
            UPDATE Categories
					SET CategoryName = @p_chrCategoryName,
						Description = @p_chrDescription,
						ParentCategoryId = @p_intParentCategoryId,
						StatusId = @p_intStatusId
					WHERE
						CategoryId = @p_intCategoryId;

	END TRY

	BEGIN CATCH
			SELECT @ErrorMessage = ERROR_MESSAGE()
		    RAISERROR (@ErrorMessage, 10, 1);
	END CATCH
END