

--First Data Analysis Question
SELECT e.employee_number, e.last_name, e.first_name, e.sex, s.salary
FROM "Employees" e
JOIN "Salaries" s
ON (e.employee_number= s.employee_number);

--Second Data Analysis
SELECT first_name, last_name, birth_date 
FROM "Employees" 
WHERE birth_date >='1956-1-1'
AND birth_date <='1956-12-31';

--Third Data Analysis
SELECT d.department_number, d.department_name, dm.employee_number, e.last_name, e.first_name
FROM "Department_manager" dm
JOIN "Departments" d
ON (d.department_number= dm.department_number)
JOIN "Employees" e
ON (e.employee_number=dm.employee_number);

--Fourth Data Analysis
SELECT e.employee_number, e.last_name, e.first_name, d.department_name
FROM "Employees" e
JOIN "Department_employee" de
ON (e.employee_number = de.employee_number)
JOIN "Departments" d
ON (de.department_number=d.department_number);

--Fifth Data Analysis
SELECT first_name, last_name, sex
FROM "Employees"
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--Sixth Data Analysis
SELECT e.employee_number, e.last_name, e.first_name, d.department_name
FROM "Employees" e
JOIN "Department_employee" de
ON (e.employee_number = de.employee_number)
JOIN "Departments" d
ON (de.department_number=d.department_number)
WHERE d.department_name = 'Sales';

--Seventh Data Analysis
SELECT e.employee_number, e.last_name, e.first_name, d.department_name
FROM "Employees" e
JOIN "Department_employee" de
ON (e.employee_number = de.employee_number)
JOIN "Departments" d
ON (de.department_number=d.department_number)
WHERE d.department_name = 'Sales'
OR d.department_name = 'Development';

--Eight Data Analysis
SELECT last_name, COUNT(last_name) AS "Total Appearances of Name"
FROM "Employees" 
GROUP BY last_name
ORDER BY "Total Appearances of Name" DESC;



