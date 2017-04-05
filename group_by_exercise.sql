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

-- Employees with a 'q' in their last name and not 'qu' — 
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;
