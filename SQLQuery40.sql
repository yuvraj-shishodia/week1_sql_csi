SELECT 
    V.BusinessEntityID AS SupplierID,
    COUNT(PV.ProductID) AS NumberOfProducts
FROM 
    Purchasing.ProductVendor AS PV
JOIN 
    Purchasing.Vendor AS V ON PV.BusinessEntityID = V.BusinessEntityID
GROUP BY 
    V.BusinessEntityID;
