SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE employees.hire_date IN (
    SELECT hire_date from employees
    WHERE emp_no = 101010
);

SELECT DISTINCT title AS 'Aamod''s titles'
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE gender = 'F' AND emp_no IN (
    SELECT emp_no FROM dept_manager
    WHERE CURDATE() < dept_manager.to_date
);