SELECT 
    SalesPerson.BusinessEntityID AS EmployeeID,
    SUM(SalesOrderHeader.TotalDue) AS TotalSales
FROM 
    Sales.SalesOrderHeader
JOIN 
    Sales.SalesPerson ON SalesOrderHeader.SalesPersonID = SalesPerson.BusinessEntityID
GROUP BY 
    SalesPerson.BusinessEntityID;
