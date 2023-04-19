USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
ORDER BY emp_no;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE year(hire_date) > 1989
  AND (
            year(hire_date) < 2000
        AND month(birth_date) = 12
        AND day(birth_date) = 25);

SELECT *
FROM employees
WHERE year(hire_date) > 1989
  AND (
            year(hire_date) < 2000
        AND month(birth_date) = 12
        AND day(birth_date) = 25)
ORDER BY hire_date DESC;

SELECT CONCAT(first_name, ' ', last_name), birth_date, hire_date, DATEDIFF(curdate(), hire_date)
FROM employees
WHERE year(hire_date) > 1989
  AND (
            year(hire_date) < 2000
        AND month(birth_date) = 12
        AND day(birth_date) = 25)
ORDER BY hire_date DESC;