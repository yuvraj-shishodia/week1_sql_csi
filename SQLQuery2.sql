SELECT 
Sales.Customer.CustomerID,
Sales.Store.Name AS CompanyName,
Person.Person.FirstName,
Person.Person.LastName
FROM 
Sales.Customer
JOIN 
Sales.Store ON Sales.Customer.StoreID = Sales.Store.BusinessEntityID
LEFT JOIN 
Person.Person ON Sales.Customer.PersonID = Person.Person.BusinessEntityID
WHERE 
Sales.Store.Name LIKE '%N';
