SELECT 
    P.BusinessEntityID,
    P.FirstName,
    P.LastName
FROM 
    HumanResources.Employee AS E
JOIN 
    Person.Person AS P ON E.BusinessEntityID = P.BusinessEntityID
WHERE 
    P.FirstName LIKE '%a%';
