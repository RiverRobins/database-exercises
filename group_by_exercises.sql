USE employees;

SELECT DISTINCT title FROM titles;

SELECT last_name FROM employees WHERE
    (last_name LIKE 'E%' AND last_name LIKE '%e')
    GROUP BY last_name;

SELECT first_name, last_name FROM employees WHERE
    (last_name LIKE 'E%' AND last_name LIKE '%e')
    GROUP BY first_name, last_name;

SELECT last_name, COUNT(*) FROM employees WHERE
    LOWER(last_name) LIKE '%q%' AND NOT LOWER(last_name) LIKE '%qu%'
    GROUP BY last_name ORDER BY last_name;

SELECT last_name, first_name FROM employees WHERE
        LOWER(last_name) LIKE '%q%' AND NOT LOWER(last_name) LIKE '%qu%'
        ORDER BY last_name;

SELECT gender, COUNT(gender) AS count FROM employees WHERE
    (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
    GROUP BY gender;
