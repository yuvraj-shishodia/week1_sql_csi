SELECT TOP 10
    SP.CountryRegionCode AS Country,
    SUM(SOH.TotalDue) AS TotalSales
FROM 
    Sales.SalesOrderHeader AS SOH
JOIN 
    Person.Address AS A ON SOH.ShipToAddressID = A.AddressID
JOIN 
    Person.StateProvince AS SP ON A.StateProvinceID = SP.StateProvinceID
GROUP BY 
    SP.CountryRegionCode
ORDER BY 
    TotalSales DESC;
