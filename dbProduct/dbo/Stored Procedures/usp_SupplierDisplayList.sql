CREATE PROCEDURE [dbo].[usp_SupplierDisplayList]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT  su.SupplierId,
			su.CompanyName,
			su.ContactName,
			su.ContactTitle,
			su.Address,
			su.City,
			su.StateId,
			st.StateName,
			su.ZipCode,   
			su.RegionId,
			r.RegionDescription,    
			CountryId = 0,    
			su.Phone,               
			su.Email,                                                           
			su.Notes
	FROM
		Suppliers su WITH(NOLOCK) INNER JOIN [States] st WITH(NOLOCK) ON su.StateId = st.StateId
								  LEFT OUTER JOIN Region r WITH(NOLOCK) ON su.RegionId = r.RegionID
	ORDER BY su.CompanyName;


END
