-- Employees with first names 'Irena', 'Vidya', or 'Maya' and male
SELECT count(*), gender
FROM employees
WHERE first_name IN ('Irena','Vidya', 'Maya')
GROUP BY gender;

-- Employees whose last name starts AND ends with 'E' — 
SELECT concat(first_name, " ", last_name) AS "First & Last Name"
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
ORDER BY emp_no DESC;

-- Employees hired in the 90s and born on Christmas— 
SELECT DATEDIFF(now(), hire_date) AS "DAYS SINCE DATE HIRED", first_name, last_name, hire_date
FROM employees
WHERE (hire_date BETWEEN '1990-01-01 00:00:00' AND '1999-12-31 23:59:59') 
AND birth_date LIKE '%-12-25%'
ORDER BY hire_date DESC, birth_date DESC;

-- Employees with a 'q' in their last name and not 'qu' — 
SELECT count(*), last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY count(*);