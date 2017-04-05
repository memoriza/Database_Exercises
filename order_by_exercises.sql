-- Employees with first names 'Irena', 'Vidya', or 'Maya' and male
SELECT first_name, last_name
FROM employees
WHERE (first_name = 'Irena' OR first_name ='Vidya' OR first_name = 'Maya')
AND gender = 'M'
ORDER BY first_name ASC, last_name ASC;

-- Employees whose last name starts OR ends with 'E' — 
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

-- Employees whose last name starts AND ends with 'E' — 
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

-- Employees hired in the 90s and born on Christmas— 
SELECT hire_date, last_name
FROM employees
WHERE (hire_date BETWEEN '1990-01-01 00:00:00' AND '1999-12-31 23:59:59') 
AND birth_date LIKE '%-12-25%';

-- Employees with a 'q' in their last name and not 'qu' — 
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';