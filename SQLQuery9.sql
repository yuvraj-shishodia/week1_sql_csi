SELECT 
Sales.Customer.CustomerID,
Person.Person.FirstName,
Person.Person.LastName
FROM 
Sales.Customer
LEFT JOIN 
Sales.SalesOrderHeader ON Sales.Customer.CustomerID = Sales.SalesOrderHeader.CustomerID
LEFT JOIN 
Person.Person ON Sales.Customer.PersonID = Person.Person.BusinessEntityID
WHERE 
Sales.SalesOrderHeader.CustomerID IS NULL;
