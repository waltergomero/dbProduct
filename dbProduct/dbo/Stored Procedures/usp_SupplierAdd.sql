CREATE PROCEDURE [dbo].[usp_SupplierAdd]
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
		INSERT INTO Suppliers(CompanyName, ContactName, ContactTitle, Address, City, StateId, ZipCode, Phone, Email, Notes)
					   VALUES(@p_chrCompanyName, @p_chrContactName, @p_chrContactTitle, @p_chrAddress, @p_chrCity, @p_intStateId, @p_chrZipCode, @p_chrPhone, @p_chrEmail, @p_chrNotes)
	END TRY
	BEGIN CATCH
 	SELECT @ErrorMessage = ERROR_MESSAGE()
		    RAISERROR (@ErrorMessage, 10, 1);
	END CATCH

 END
GO
