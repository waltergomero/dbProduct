CREATE PROCEDURE [dbo].[usp_SupplierList]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT SupplierID, CompanyName FROM Suppliers ORDER BY CompanyName;
END
GO
