CREATE PROCEDURE [dbo].[usp_ProductById]
@p_intProductId INT	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @ProductId INT
	SET		@ProductId = @p_intProductId;

	SELECT  p.ProductID, 
		    p.ProductName,                                        
		    p.ProductCode,                                        
		    p.SupplierID,
		    p.CategoryID,
		    p.QuantityPerUnit,      
			p.UnitPrice,             
			p.UnitsInStock, 
			p.UnitsOnOrder, 
			p.ReorderLevel, 
			p.Discontinued, 
			p.StatusId,   
			p.Notes 
	FROM
		Products p WITH(NOLOCK) 
	WHERE p.ProductID = @ProductId;


END