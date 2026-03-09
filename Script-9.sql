SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics ed 
GROUP BY ed.Gender 