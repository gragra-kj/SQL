SELECT *
FROM EmployeeDemographics ed 
WHERE ed.FirstName ='Jim'

SELECT *
FROM EmployeeDemographics ed 
WHERE ed.FirstName <>'Jim'

SELECT *
FROM EmployeeDemographics ed 
WHERE ed.Age >30

SELECT *
FROM EmployeeDemographics ed 
WHERE ed.Age >=30 AND ed.Gender ='Male'

SELECT *
FROM EmployeeDemographics ed 
WHERE ed.Age >=30 OR ed.Gender ='Male'

SELECT *
FROM EmployeeDemographics ed 
WHERE ed.LastName LIKE 'S%'



