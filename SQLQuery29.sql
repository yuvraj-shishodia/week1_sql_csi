WITH CustomerTotals AS (
    SELECT 
        CustomerID,
        SUM(TotalDue) AS TotalSpent
    FROM 
        Sales.SalesOrderHeader
    GROUP BY 
        CustomerID
),
TopCustomer AS (
    SELECT 
        CustomerID
    FROM 
        CustomerTotals
    WHERE 
        TotalSpent = (SELECT MAX(TotalSpent) FROM CustomerTotals)
)
SELECT 
    SOH.SalesOrderID,
    SOH.OrderDate,
    SOH.TotalDue,
    TC.CustomerID
FROM 
    Sales.SalesOrderHeader AS SOH
JOIN 
    TopCustomer AS TC ON SOH.CustomerID = TC.CustomerID;
