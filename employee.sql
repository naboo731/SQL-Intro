-- List all employee first and last names only that live in Calgary.
SELECT last_name, first_name FROM employee
WHERE city = 'Calgary';

-- Find the birthdate for the youngest employee.
SELECT * FROM employee
ORDER BY birth_date
LIMIT 1;

-- Find the birthdate for the oldest employee.
SELECT * FROM employee
ORDER BY birth_date DESC
LIMIT 1;

-- Find everyone that reports to Nancy Edwards (use the ReportsTo column). You will need to query the employee table to find the id for Nancy Edwards.
SELECT reports_to FROM employee
WHERE employee_id = 2;

-- Count how many people live in Lethbridge.
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';