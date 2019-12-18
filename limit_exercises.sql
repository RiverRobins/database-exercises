USE employees;
SELECT DISTINCT last_name FROM employees
    ORDER BY last_name DESC
    LIMIT 10;

SELECT first_name, last_name FROM employees WHERE
    ((hire_date BETWEEN CAST('1990-1-1' AS DATE ) AND CAST('1999-12-31' AS DATE))
    AND
    birth_date LIKE '%12-25')
    ORDER BY birth_date ASC, hire_date DESC
    LIMIT 5 OFFSET 45;
