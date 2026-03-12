SELECT ed.FirstName ,ed.LastName ,ed.Age 
FROM EmployeeDemographics ed 
WHERE ed.Age is NOT NULL 
ORDER BY Age 

SELECT ed.FirstName, ed.LastName, ed.Age, 
CASE
	WHEN Age > 30 THEN  'Old'
	WHEN Age Between 27 AND 30 THEN 'Young'
	ELSE 'Baby'
end
FROM EmployeeDemographics ed 
WHERE Age is NOT NULL
ORDER BY Age


SELECT ed.FirstName,ed.LastName,es.JobTitle,es.Salary,
CASE 
	WHEN JobTitle='SalesMan' THEN Salary + (Salary * .10)
	WHEN JobTitle='Accountant' THEN Salary + (Salary *.05)
	WHEN JobTitle='HR' THEN Salary + (Salary  * .000001)
	ELSE Salary + (Salary * .03)
END AS SalaryAfterRaise
FROM EmployeeDemographics ed 
JOIN EmployeeSalary es 
ON ed.EmployeeID = es.EmployeeID 
