--  each department along with the name of the current manager for that department
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS full_name 
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date > now();

-- Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS full_name 
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date > now() AND e.gender = 'F';

-- Find the current titles of employees currently working in the Customer Service department.
SELECT t.title, count(*)
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN titles AS t
ON t.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Customer Service' and de.to_date > now() AND t.to_date > now()
GROUP BY t.title;

-- Find the current salary of all current managers.
SELECT d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Full Name', s.salary
FROM employees as e
JOIN salaries as s
ON e.emp_no = s.emp_no
JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
WHERE dm.to_date > now() AND s.to_date > now();

-- Find the names of all current employees, their department name, and their current manager's name.
SELECT concat(e.first_name, ' ', e.last_name) as 'Employee Name', 
d.dept_name as 'Department Name', concat(m.first_name, ' ', m.last_name)
FROM employees as m
JOIN dept_manager as dm
ON dm.emp_no = m.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
JOIN dept_emp as de
ON de.dept_no = d.dept_no
JOIN employees as e
ON e.emp_no = de.emp_no

WHERE de.to_date > now() AND dm.to_date > now();


-- 1. Historic average salary of female managers vs. male managers
-- 
SELECT e.gender as 'Gender', AVG(s.salary) as 'Salary'
FROM departments as d
JOIN dept_manager as dm ON d.dept_no = dm.dept_no
JOIN employees as e ON e.emp_no = dm.emp_no
JOIN salaries as s ON s.emp_no = e.emp_no
GROUP BY e.gender;









