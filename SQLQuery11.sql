SELECT 
Sales.SalesOrderDetail.SalesOrderID,
Sales.SalesOrderDetail.ProductID,
Production.Product.Name AS ProductName,
Sales.SalesOrderDetail.OrderQty,
Sales.SalesOrderDetail.UnitPrice,
Sales.SalesOrderDetail.LineTotal
FROM 
Sales.SalesOrderDetail
JOIN 
Production.Product ON Sales.SalesOrderDetail.ProductID = Production.Product.ProductID
WHERE 
Sales.SalesOrderDetail.SalesOrderID = 43659; -- Replace with actual first SalesOrderID
