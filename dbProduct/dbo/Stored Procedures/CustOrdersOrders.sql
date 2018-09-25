
CREATE PROCEDURE [dbo].[CustOrdersOrders] @CustomerID char(5)
AS
SELECT OrderID, 
                OrderDate,
                RequiredDate,
                ShippedDate
FROM Orders
WHERE CustomerID = @CustomerID
ORDER BY OrderID
