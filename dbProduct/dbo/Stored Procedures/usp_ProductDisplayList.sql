CREATE PROCEDURE [dbo].[usp_ProductDisplayList]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  p.ProductID, 
		    p.ProductName,                                        
		    p.ProductCode,                                        
		    su.SupplierID,
			su.CompanyName, 
		    c.CategoryID,
			c.CategoryName,  
		    p.QuantityPerUnit,      
			p.UnitPrice,             
			p.UnitsInStock, 
			p.UnitsOnOrder, 
			p.ReorderLevel, 
			p.Discontinued, 
			s.StatusId,   
			s.StatusName,
			p.Notes 
	FROM
		Products p WITH(NOLOCK) INNER JOIN Categories c WITH(NOLOCK) ON p.CategoryId = c.CategoryID
		                       INNER JOIN [Suppliers] su WITH(NOLOCK) ON p.SupplierId = su.SupplierId
							   INNER JOIN [Status] s WITH(NOLOCK) ON p.StatusId = s.StatusId
	ORDER BY p.ProductName;

END