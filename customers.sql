use md_water_services;

SELECT *
FROM employee
WHERE employee_name IN (
    'Malachi Mavuso',
    'Lalitha Kaburi',
    'Zuriel Matembo',
    'Bello Azibo'
);
SELECT *
FROM data_dictionary
WHERE description LIKE '%statement%'
   OR description LIKE '%suspicion%'
   OR description LIKE '%cash%';
   
   
SELECT
    SUM(pp.quantity * ic.Unit_cost_USD) AS total_cost
FROM project_progress pp
JOIN infrastructure_cost ic
    ON pp.improvement = ic.improvement;
   