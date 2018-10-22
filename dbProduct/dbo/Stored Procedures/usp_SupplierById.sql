CREATE PROCEDURE [dbo].[usp_SupplierById]
@p_intSupplierId INT	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @SupplierId INT
	SET		@SupplierId = @p_intSupplierId;

	SELECT  su.SupplierId,
			su.CompanyName,
			su.ContactName,
			su.ContactTitle,
			su.Address,
			su.City,
			su.StateId,
			su.ZipCode,   
			su.RegionId,    
			su.CountryId,        
			su.Phone,               
			su.Email,                                                           
			su.Notes
	FROM
		Suppliers su WITH(NOLOCK) 
	WHERE su.SupplierId = @SupplierId;


END

