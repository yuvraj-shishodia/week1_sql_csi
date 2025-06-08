SELECT 
    SOH.SalesOrderID,
    SOH.OrderDate,
    C.CustomerID,
    P.FirstName + ' ' + P.LastName AS CustomerName
FROM 
    Sales.SalesOrderHeader AS SOH
JOIN 
    Sales.Customer AS C ON SOH.CustomerID = C.CustomerID
JOIN 
    Person.Person AS P ON C.PersonID = P.BusinessEntityID
LEFT JOIN 
    Person.PersonPhone AS PP ON P.BusinessEntityID = PP.BusinessEntityID 
    AND PP.PhoneNumberTypeID = (
        SELECT PhoneNumberTypeID 
        FROM Person.PhoneNumberType 
        WHERE Name = 'Fax'
    )
WHERE 
    PP.PhoneNumber IS NULL;
