CREATE PROCEDURE [dbo].[usp_ProductAdd]
@p_chrProductName VARCHAR(50),
@p_chrProductCode VARCHAR(50),
@p_intSupplierId INT,
@p_intCategoryId INT,
@p_chrQuantityPerUnit VARCHAR(20),
@p_decUnitPrice MONEY,
@p_decUnitSalePrice MONEY,
@p_intUnitsInStock INT,
@p_intUnitsOnOrder INT,
@p_intReOrderLevel INT,
@p_boolDiscontinued BIT,
@p_intStatusId INT,
@p_chrNotes  VARCHAR(2048),
@p_chrUserEmail  VARCHAR(50)
AS
BEGIN

	DECLARE @ErrorMessage varchar(255)
	
	IF EXISTS(SELECT TOP 1 * FROM Products WITH(NOLOCK) WHERE ProductName = @p_chrProductName)
		BEGIN
			RAISERROR('This product name already exists.', 16, 1)
			RETURN -1;

		END

	BEGIN TRY
		-- SET Status to Active
		SELECT @p_intStatusId = StatusId FROM Status WHERE StatusName = 'Active' AND StatusTypeId = 0; 

		INSERT INTO Products (ProductName, ProductCode, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitSalePrice, UnitsInStock, UnitsOnOrder, 
		                      ReorderLevel,Discontinued, StatusId, Notes, CreatedDate, CreatedBy, UpdatedDate, UpdatedBy)
					  VALUES(@p_chrProductName, @p_chrProductCode, @p_intSupplierId, @p_intCategoryId, @p_chrQuantityPerUnit, @p_decUnitPrice, @p_decUnitSalePrice, @p_intUnitsInStock, @p_intUnitsOnOrder,
					         @p_intReOrderLevel, @p_boolDiscontinued, @p_intStatusId, @p_chrNotes, GETDATE(), @p_chrUserEmail, GETDATE(), @p_chrUserEmail)
	END TRY

	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE()
		    RAISERROR (@ErrorMessage, 10, 1);
	END CATCH
		
END