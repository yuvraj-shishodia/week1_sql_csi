SELECT 
    P.ProductID,
    P.Name AS ProductName
FROM 
    Production.Product AS P
LEFT JOIN 
    Sales.SalesOrderDetail AS SOD ON P.ProductID = SOD.ProductID
WHERE 
    SOD.ProductID IS NULL;

