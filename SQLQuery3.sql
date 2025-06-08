SELECT 
Sales.Customer.CustomerID,
Person.Person.FirstName,
Person.Person.LastName,
Person.Address.City
FROM 
Sales.Customer
JOIN 
Person.Person ON Sales.Customer.PersonID = Person.Person.BusinessEntityID
JOIN 
Person.BusinessEntityAddress ON Person.Person.BusinessEntityID = Person.BusinessEntityAddress.BusinessEntityID
JOIN 
Person.Address ON Person.BusinessEntityAddress.AddressID = Person.Address.AddressID
WHERE 
    Person.Address.City IN ('Berlin', 'London');
