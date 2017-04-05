-- List the first 10 distinct last name sorted in descending order.

SELECT last_name
FROM employees
GROUP BY last_name DESC
LIMIT 10;

-- born on Christmas and hired in the 90s 

SELECT first_name, last_name
FROM employees
WHERE (hire_date  LIKE '199%') 
AND birth_date LIKE '%-12-25%'
ORDER BY birth_date asc, hire_date desc 
LIMIT 5;

-- born on Christmas and hired in the 90s 10th page

SELECT first_name, last_name
FROM employees
WHERE (hire_date  LIKE '199%') 
AND birth_date LIKE '%-12-25%'
ORDER BY birth_date asc, hire_date desc 
LIMIT 5 OFFSET 45;