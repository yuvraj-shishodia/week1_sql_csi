SELECT 
ProductID,
Name,
ProductNumber,
Color,
StandardCost,
ListPrice

FROM 
Production.Product

WHERE 
Name LIKE 'A%'

ORDER BY 
Name;
