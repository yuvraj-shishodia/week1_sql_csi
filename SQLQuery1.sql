SELECT 
Sales.Customer.CustomerID,
Person.Person.FirstName,
Person.Person.LastName

FROM
Sales.Customer

JOIN 
Person.Person ON Sales.Customer.PersonID = Person.Person.BusinessEntityID;
