SELECT DISTINCT
Sales.Customer.CustomerID,
Person.Person.FirstName,
Person.Person.LastName,
Production.Product.Name AS ProductName
FROM 
Sales.Customer
JOIN 
Sales.SalesOrderHeader ON Sales.Customer.CustomerID = Sales.SalesOrderHeader.CustomerID
JOIN 
Sales.SalesOrderDetail ON Sales.SalesOrderHeader.SalesOrderID = Sales.SalesOrderDetail.SalesOrderID
JOIN 
Production.Product ON Sales.SalesOrderDetail.ProductID = Production.Product.ProductID
LEFT JOIN 
Person.Person ON Sales.Customer.PersonID = Person.Person.BusinessEntityID
WHERE 
Production.Product.Name = 'Tofu';
