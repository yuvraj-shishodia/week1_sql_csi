SELECT 
    Manager.BusinessEntityID AS ManagerID,
    Manager.JobTitle AS ManagerJobTitle,
    COUNT(Employee.BusinessEntityID) AS TotalReports
FROM 
    HumanResources.Employee AS Employee
JOIN 
    HumanResources.Employee AS Manager
    ON Employee.OrganizationNode.GetAncestor(1) = Manager.OrganizationNode
GROUP BY 
    Manager.BusinessEntityID, Manager.JobTitle;
