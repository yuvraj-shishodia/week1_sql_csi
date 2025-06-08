SELECT 
    M.BusinessEntityID AS ManagerID,
    P.FirstName,
    P.LastName,
    COUNT(E.BusinessEntityID) AS ReportCount
FROM 
    HumanResources.Employee AS E
JOIN 
    HumanResources.Employee AS M 
    ON E.OrganizationNode.GetAncestor(1) = M.OrganizationNode
JOIN 
    Person.Person AS P 
    ON M.BusinessEntityID = P.BusinessEntityID
GROUP BY 
    M.BusinessEntityID, P.FirstName, P.LastName
HAVING 
    COUNT(E.BusinessEntityID) > 4;
