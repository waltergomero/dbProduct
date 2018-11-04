CREATE PROCEDURE [dbo].[usp_SupplierUpdate]
@p_intSupplierId INT,
@p_chrCompanyName VARCHAR(40),
@p_chrContactName VARCHAR(30),
@p_chrContactTitle VARCHAR(30),
@p_chrAddress VARCHAR(60),
@p_chrCity VARCHAR(15),
@p_intStateId INT,
@p_chrZipCode VARCHAR(10),
@p_chrPhone VARCHAR(24),
@p_chrEmail VARCHAR(64),
@p_chrNotes VARCHAR(2048)

AS
BEGIN
	DECLARE @ErrorMessage varchar(255)

	BEGIN TRY
		UPDATE Suppliers
		SET		CompanyName = @p_chrCompanyName,
				ContactName = @p_chrContactName, 
				ContactTitle = @p_chrContactTitle, 
				Address = @p_chrAddress, 
				City = @p_chrCity, 
				StateId = @p_intStateId, 
				ZipCode = @p_chrZipCode, 
				Phone = @p_chrPhone, 
				Email = @p_chrEmail, 
				Notes = @p_chrNotes
		WHERE
				SupplierID = @p_intSupplierId;
	END TRY
	BEGIN CATCH
 	SELECT @ErrorMessage = ERROR_MESSAGE()
		    RAISERROR (@ErrorMessage, 10, 1);
	END CATCH

 END
GO
