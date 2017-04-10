-- Find all the employees with the same hire date as employee 101010 using a sub-query.
-- 69 rows
SELECT *
FROM employees
WHERE hire_date IN (
	SELECT hire_date
	FROM employees
	WHERE emp_no = 101010);

-- Find all the titles held by all employees with the first name Aamod.
-- 314 rows
SELECT title
FROM titles 
WHERE emp_no IN (
	SELECT emp_no
	FROM employees 
	WHERE first_name = 'Aamod');

-- Find all the department managers that are female.
-- 13 rows
SELECT emp_no
FROM dept_manager
WHERE emp_no IN (
	SELECT emp_no
	FROM employees 
	WHERE gender = 'F');

-- BONUS Find all the department names that have female managers.
-- 7 rows
SELECT dept_name
FROM departments
WHERE dept_no IN (
	SELECT dept_no
	FROM dept_manager
	WHERE emp_no IN (
		SELECT emp_no
		FROM employees
		WHERE gender = 'F'));