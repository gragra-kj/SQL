SELECT *
FROM EmployeeDemographics ed 
Inner Join EmployeeSalary es 
ON ed.EmployeeID =es.EmployeeID 

SELECT *
FROM EmployeeDemographics ed 
Full Outer Join EmployeeSalary es 
ON ed.EmployeeID =es.EmployeeID 

SELECT *
FROM EmployeeDemographics ed 
Right Outer Join EmployeeSalary es 
ON ed.EmployeeID =es.EmployeeID 

SELECT *
FROM EmployeeDemographics ed 
Left Outer Join EmployeeSalary es 
ON ed.EmployeeID =es.EmployeeID 

SELECT ed.EmployeeID,FirstName,LastName,JobTitle,es.Salary  
FROM EmployeeDemographics ed 
Inner Join EmployeeSalary es 
ON ed.EmployeeID =es.EmployeeID 


SELECT ed.EmployeeID,FirstName,LastName,JobTitle,es.Salary  
FROM EmployeeDemographics ed 
Inner Join EmployeeSalary es 
ON ed.EmployeeID =es.EmployeeID 
WHERE ed.FirstName <> 'Michael'
ORDER BY es.Salary DESC 


SELECT JobTitle,AVG(Salary)
From EmployeeDemographics ed 
Inner Join EmployeeSalary es 
ON ed.EmployeeID =es.EmployeeID 
WHERE es.JobTitle ='SalesMan'
GROUP BY es.JobTitle 


