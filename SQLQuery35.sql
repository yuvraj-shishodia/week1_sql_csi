SELECT 
    P.ProductID,
    P.Name AS ProductName,
    PI.Quantity AS UnitsInStock,
    P.SafetyStockLevel AS UnitsOnOrder
FROM 
    Production.Product AS P
JOIN 
    Production.ProductInventory AS PI ON P.ProductID = PI.ProductID
WHERE 
    PI.Quantity < 10
    AND P.SafetyStockLevel = 0;
