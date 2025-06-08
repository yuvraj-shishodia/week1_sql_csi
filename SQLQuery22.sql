SELECT 
    P.FirstName + ' ' + P.LastName AS ContactName,
    COUNT(SOH.SalesOrderID) AS NumberOfOrders
FROM 
    Sales.Customer AS C
JOIN 
    Sales.SalesOrderHeader AS SOH ON C.CustomerID = SOH.CustomerID
JOIN 
    Person.Person AS P ON C.PersonID = P.BusinessEntityID
GROUP BY 
    P.FirstName, P.LastName;
