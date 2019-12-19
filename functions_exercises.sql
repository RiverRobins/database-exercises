USE employees;

SELECT CONCAT(first_name, last_name) FROM employees WHERE
    (last_name LIKE 'E%' OR last_name LIKE '%e')
    ORDER BY emp_no DESC;

SELECT *, (DATEDIFF(CURDATE(), hire_date)) AS 'days_working' FROM employees WHERE
    ((hire_date BETWEEN CAST('1990-1-1' AS DATE ) AND CAST('1999-12-31' AS DATE))
    AND
    birth_date LIKE '%12-25')
    ORDER BY birth_date ASC, hire_date DESC;