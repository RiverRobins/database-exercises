USE employees;
SELECT * FROM employees WHERE
    gender = 'M'
    AND (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya');

SELECT * FROM employees WHERE
    last_name LIKE 'E%' OR last_name LIKE '%e';

SELECT * FROM employees WHERE
        last_name LIKE 'E%' AND last_name LIKE '%e';

SELECT * FROM employees WHERE
    hire_date BETWEEN CAST('1990-1-1' AS DATE ) AND CAST('1999-12-31' AS DATE);

SELECT * FROM employees WHERE
    (hire_date BETWEEN CAST('1990-1-1' AS DATE ) AND CAST('1999-12-31' AS DATE))
    AND
    birth_date LIKE '%12-25';

SELECT * FROM employees WHERE
    birth_date LIKE '%12-25';

SELECT * FROM employees WHERE
    LOWER(last_name) LIKE '%q%';

SELECT * FROM employees WHERE
    LOWER(last_name) LIKE '%q%' AND NOT LOWER(last_name) LIKE '%qu%';