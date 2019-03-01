-- #1
SELECT employees.emp_no, first_name, last_name, gender, salary
FROM salaries
INNER JOIN employees ON
employees.emp_no = salaries.emp_no;

-- #2
SELECT *
FROM titles
WHERE YEAR(from_date) = 1986;

-- #3
SELECT dept_manager.dept_no, dept_name, dept_manager.emp_no, first_name, last_name, dept_manager.from_date, dept_manager.to_date
FROM dept_manager
LEFT JOIN departments on dept_manager.dept_no = departments.dept_no
LEFT JOIN employees on dept_manager.emp_no = employees.emp_no;

-- #4
SELECT employees.emp_no, last_name, first_name, dept_name
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no;

-- #5
SELECT * FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- #6
SELECT employees.emp_no, last_name, first_name, dept_name
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

-- #7
SELECT employees.emp_no, last_name, first_name, dept_name
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

-- #8
SELECT last_name, COUNT(last_name) as "count" 
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

