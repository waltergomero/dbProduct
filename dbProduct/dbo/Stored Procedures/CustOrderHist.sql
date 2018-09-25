﻿CREATE PROCEDURE [dbo].[CustOrderHist] @CustomerID char(5)
AS
SELECT ProductName, Total=SUM(Quantity)
FROM Products P, [OrderDetails] OD, Orders O, Customers C
WHERE C.CustomerID = @CustomerID
AND C.CustomerID = O.CustomerID AND O.OrderID = OD.OrderID AND OD.ProductID = P.ProductID
GROUP BY ProductName
