SELECT 
    E.FirstName AS EmployeeFirstName,
    E.LastName AS EmployeeLastName,
    M.FirstName AS SupervisorFirstName,
    M.LastName AS SupervisorLastName
FROM 
    HumanResources.Employee AS Emp
JOIN 
    Person.Person AS E ON Emp.BusinessEntityID = E.BusinessEntityID
JOIN 
    HumanResources.Employee AS Sup ON Emp.OrganizationNode.GetAncestor(1) = Sup.OrganizationNode
JOIN 
    Person.Person AS M ON Sup.BusinessEntityID = M.BusinessEntityID;
