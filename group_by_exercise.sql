-- In your script, use DISTINCT to find the unique titles in the titles table. 
SELECT DISTINCT title
FROM titles
ORDER BY title;


-- Employees whose last name starts OR ends with 'E' — 
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

-- Employees whose last name starts AND ends with 'E' — 
SELECT last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY first_name, last_name;


-- Employees hired in the 90s and born on Christmas— 
SELECT hire_date, first_name, last_name
FROM employees
WHERE (hire_date BETWEEN '1990-01-01 00:00:00' AND '1999-12-31 23:59:59') 
AND birth_date LIKE '%-12-25%'
ORDER BY hire_date DESC, birth_date DESC;

-- Employees with a 'q' in their last name and not 'qu' — 
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';