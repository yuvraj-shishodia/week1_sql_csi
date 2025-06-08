SELECT 
    SalesOrderID,
    OrderDate,
    TotalDue
FROM 
    Sales.SalesOrderHeader
WHERE 
    TotalDue = (SELECT MAX(TotalDue) FROM Sales.SalesOrderHeader);
