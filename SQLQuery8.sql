SELECT DISTINCT
Sales.Customer.CustomerID,
Person.Person.FirstName,
Person.Person.LastName,
Person.Address.City,
Production.Product.Name AS ProductName
FROM 
Sales.Customer
JOIN 
Sales.SalesOrderHeader ON Sales.Customer.CustomerID = Sales.SalesOrderHeader.CustomerID
JOIN 
Sales.SalesOrderDetail ON Sales.SalesOrderHeader.SalesOrderID = Sales.SalesOrderDetail.SalesOrderID
JOIN 
Production.Product ON Sales.SalesOrderDetail.ProductID = Production.Product.ProductID
JOIN 
Person.Person ON Sales.Customer.PersonID = Person.Person.BusinessEntityID
JOIN 
Person.BusinessEntityAddress ON Person.Person.BusinessEntityID = Person.BusinessEntityAddress.BusinessEntityID
JOIN 
Person.Address ON Person.BusinessEntityAddress.AddressID = Person.Address.AddressID
WHERE 
Person.Address.City = 'London'
AND Production.Product.Name = 'Chai';
