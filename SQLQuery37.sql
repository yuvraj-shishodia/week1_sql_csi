SELECT 
    E.BusinessEntityID AS EmployeeID,
    P.FirstName + ' ' + P.LastName AS EmployeeName,
    COUNT(SOH.SalesOrderID) AS OrderCount
FROM 
    Sales.SalesOrderHeader AS SOH
JOIN 
    Sales.Customer AS C ON SOH.CustomerID = C.CustomerID
JOIN 
    Sales.SalesPerson AS SP ON SOH.SalesPersonID = SP.BusinessEntityID
JOIN 
    HumanResources.Employee AS E ON SP.BusinessEntityID = E.BusinessEntityID
JOIN 
    Person.Person AS P ON E.BusinessEntityID = P.BusinessEntityID
WHERE 
    C.AccountNumber BETWEEN 'A' AND 'AO'
GROUP BY 
    E.BusinessEntityID, P.FirstName, P.LastName;
