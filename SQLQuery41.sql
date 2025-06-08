SELECT TOP 10
    C.CustomerID,
    P.FirstName + ' ' + P.LastName AS CustomerName,
    SUM(SOH.TotalDue) AS TotalBusiness
FROM 
    Sales.SalesOrderHeader AS SOH
JOIN 
    Sales.Customer AS C ON SOH.CustomerID = C.CustomerID
JOIN 
    Person.Person AS P ON C.PersonID = P.BusinessEntityID
GROUP BY 
    C.CustomerID, P.FirstName, P.LastName
ORDER BY 
    TotalBusiness DESC;
