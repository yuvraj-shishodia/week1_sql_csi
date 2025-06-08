SELECT 
    SOH.SalesOrderID,
    SOH.ShipToAddressID
FROM 
    Sales.SalesOrderHeader AS SOH
JOIN 
    Person.Address AS A ON SOH.ShipToAddressID = A.AddressID
JOIN 
    Person.StateProvince AS SP ON A.StateProvinceID = SP.StateProvinceID
WHERE 
    SP.CountryRegionCode = 'CA';
