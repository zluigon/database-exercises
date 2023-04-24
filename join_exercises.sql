USE employees;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
         JOIN departments AS d on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
         JOIN departments AS d on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
  AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT t.title AS 'Title', COUNT(*) AS 'Total'
FROM employees AS e
         JOIN dept_emp AS de on e.emp_no = de.emp_no
         JOIN titles t on e.emp_no = t.emp_no
WHERE dept_no = 'd009'
  AND t.to_date = '9999-01-01'
  AND de.to_date = '9999-01-01'
GROUP BY t.title;

SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary                               AS 'Salary'
FROM employees e
         JOIN salaries s on e.emp_no = s.emp_no
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         JOIN departments d on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
  AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT CONCAT(e.first_name, ' ', e.last_name)   AS 'Employee',
       d.dept_name                              AS 'Department',
       CONCAT(e2.first_name, ' ', e2.last_name) AS 'Manager'
FROM employees e
         JOIN dept_emp de on e.emp_no = de.emp_no
         JOIN departments d on d.dept_no = de.dept_no
         JOIN dept_manager dm on d.dept_no = dm.dept_no
         JOIN employees e2 on e2.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01'
  AND de.to_date = '9999-01-01'
ORDER BY d.dept_name, e.emp_no;