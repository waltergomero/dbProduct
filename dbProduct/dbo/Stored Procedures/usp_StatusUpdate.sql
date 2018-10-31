﻿CREATE PROCEDURE [dbo].[usp_StatusUpdate]
@p_intStatusId int,
@p_chrStatusName varchar(50),
@p_intStatusTypeId int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @ErrorMessage varchar(255)
	
	IF EXISTS(SELECT TOP 1 * FROM [Status] WITH(NOLOCK) WHERE StatusName = @p_chrStatusName AND StatusTypeId = @p_intStatusTypeId AND StatusId <> @p_intStatusId)
		BEGIN
			RAISERROR('Status name already exists with the same status type Id.', 16, 1)
			RETURN -1;

		END
  
    BEGIN TRY
            UPDATE Status SET
					StatusName = @p_chrStatusName,
					StatusTypeId = @p_intStatusTypeId
			  WHERE StatusId = @p_intStatusId;

	END TRY

	BEGIN CATCH
			SELECT @ErrorMessage = ERROR_MESSAGE()
		    RAISERROR (@ErrorMessage, 10, 1);
	END CATCH
END
