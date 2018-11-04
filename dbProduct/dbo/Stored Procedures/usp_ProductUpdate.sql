CREATE PROCEDURE [dbo].[usp_ProductUpdate]
@p_intProductId INT,
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
	
	IF EXISTS(SELECT TOP 1 * FROM Products WITH(NOLOCK) WHERE ProductName = @p_chrProductName AND ProductID <> @p_intProductId)
		BEGIN
			RAISERROR('This product name already exists.', 16, 1)
			RETURN -1;

		END

	BEGIN TRY
		IF @p_intStatusId = 3 -- if status is obsolete then set discontinue to true
			BEGIN
				SET @p_boolDiscontinued = 1;
			END

		UPDATE Products 
			SET ProductName = @p_chrProductName, 
				ProductCode = @p_chrProductCode, 
				SupplierID = @p_intSupplierId, 
				CategoryID = @p_intCategoryId, 
				QuantityPerUnit = @p_chrQuantityPerUnit,
				UnitPrice = @p_decUnitPrice,
				UnitSalePrice = @p_decUnitSalePrice,
				UnitsInStock = @p_intUnitsInStock,
				UnitsOnOrder = @p_intUnitsOnOrder,
		        ReorderLevel = @p_intReOrderLevel,
				Discontinued = @p_boolDiscontinued,
				StatusId = @p_intStatusId,
				Notes = @p_chrNotes,			
				UpdatedDate = GETDATE(),
				UpdatedBy = @p_chrUserEmail
			WHERE 
				ProductID = @p_intProductId;
		
	END TRY

	BEGIN CATCH
		SELECT @ErrorMessage = ERROR_MESSAGE()
		    RAISERROR (@ErrorMessage, 10, 1);
	END CATCH
		
END