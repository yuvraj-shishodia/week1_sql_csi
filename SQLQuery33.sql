SELECT 
    P.Name AS ProductName,
    PC.Name AS CategoryName
FROM 
    Production.Product AS P
JOIN 
    Production.ProductSubcategory AS PSC ON P.ProductSubcategoryID = PSC.ProductSubcategoryID
JOIN 
    Production.ProductCategory AS PC ON PSC.ProductCategoryID = PC.ProductCategoryID
JOIN 
    Purchasing.ProductVendor AS PV ON P.ProductID = PV.ProductID
JOIN 
    Purchasing.Vendor AS V ON PV.BusinessEntityID = V.BusinessEntityID
WHERE 
    V.Name = 'Specialty Biscuits, Ltd.';
