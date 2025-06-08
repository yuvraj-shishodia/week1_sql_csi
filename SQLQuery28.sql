SELECT 
    SOD.SalesOrderID,
    P.Name AS ProductName
FROM 
    Sales.SalesOrderDetail AS SOD
JOIN 
    Production.Product AS P ON SOD.ProductID = P.ProductID;
