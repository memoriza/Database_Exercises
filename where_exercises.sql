-- Employees with first names 'Irena', 'Vidya', or 'Maya' and male
SELECT first_name, last_name
FROM employees
WHERE (first_name = 'Irena' OR first_name ='Vidya' OR first_name = 'Maya')
AND gender = 'M';

-- Employees whose last name starts OR ends with 'E' — 
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

-- Employees hired in the 90s — 
SELECT hire_date, last_name
FROM employees
WHERE (hire_date BETWEEN '1990-01-01 00:00:00' AND '1999-12-31 23:59:59');

-- Employees born on Christmas — 
SELECT birth_date, last_name
FROM employees
WHERE birth_date LIKE '%-12-25%';

-- Employees with a 'q' in their last name — 
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';