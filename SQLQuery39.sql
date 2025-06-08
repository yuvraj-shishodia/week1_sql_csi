SELECT 
    P.Name AS ProductName,
    SUM(SOD.LineTotal) AS TotalRevenue
FROM 
    Sales.SalesOrderDetail AS SOD
JOIN 
    Production.Product AS P ON SOD.ProductID = P.ProductID
GROUP BY 
    P.Name
ORDER BY 
    TotalRevenue DESC;
