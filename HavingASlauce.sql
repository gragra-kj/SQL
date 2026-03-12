SELECT es.JobTitle ,COUNT(es.JobTitle )
FROM EmployeeDemographics ed 
JOIN EmployeeSalary es 
ON ed.EmployeeID =es.EmployeeID 
GROUP BY es.JobTitle 
HAVING COUNT(es.JobTitle ) >1

SELECT es.JobTitle ,AVG(Salary)
FROM EmployeeDemographics ed 
JOIN EmployeeSalary es 
ON ed.EmployeeID =es.EmployeeID 
GROUP BY es.JobTitle 
HAVING AVG(es.Salary )> 45000
ORDER  BY AVG(es.Salary )