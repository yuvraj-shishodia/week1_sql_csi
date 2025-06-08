SELECT 
Sales.Customer.CustomerID,
Person.Person.FirstName,
Person.Person.LastName,
Person.Address.City,
Person.StateProvince.CountryRegionCode
FROM 
Sales.Customer
JOIN 
Person.Person ON Sales.Customer.PersonID = Person.Person.BusinessEntityID
JOIN 
Person.BusinessEntityAddress ON Person.Person.BusinessEntityID = Person.BusinessEntityAddress.BusinessEntityID
JOIN 
Person.Address ON Person.BusinessEntityAddress.AddressID = Person.Address.AddressID
JOIN 
Person.StateProvince ON Person.Address.StateProvinceID = Person.StateProvince.StateProvinceID
WHERE 
Person.StateProvince.CountryRegionCode IN ('US', 'GB');
