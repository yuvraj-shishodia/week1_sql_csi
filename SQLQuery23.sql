SELECT DISTINCT 
    P.Name AS ProductName,
    P.ProductID
FROM 
    Sales.SalesOrderDetail AS SOD
JOIN 
    Sales.SalesOrderHeader AS SOH ON SOD.SalesOrderID = SOH.SalesOrderID
JOIN 
    Production.Product AS P ON SOD.ProductID = P.ProductID
WHERE 
    SOH.OrderDate = '1998-01-01'
    AND P.DiscontinuedDate IS NOT NULL;
