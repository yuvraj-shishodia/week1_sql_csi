SELECT DISTINCT 
    A.PostalCode
FROM 
    Sales.SalesOrderDetail AS SOD
JOIN 
    Production.Product AS P ON SOD.ProductID = P.ProductID
JOIN 
    Sales.SalesOrderHeader AS SOH ON SOD.SalesOrderID = SOH.SalesOrderID
JOIN 
    Person.Address AS A ON SOH.ShipToAddressID = A.AddressID
WHERE 
    P.Name = 'Tofu';
