SELECT ed.EmployeeID ,ed.FirstName ,ed.Age 
FROM EmployeeDemographics ed 
UNION 
SELECT es.EmployeeID ,es.JobTitle ,es.Salary 
FROM EmployeeSalary es 
ORDER BY EmployeeID 