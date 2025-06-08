SELECT TOP 1 
SalesOrderID,
OrderDate,
CustomerID,
TotalDue
FROM 
Sales.SalesOrderHeader
ORDER BY 
TotalDue DESC;
