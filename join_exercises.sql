USE employees;

SELECT d.dept_name, dept_manager.emp_no
FROM employees as e, dept_manager
JOIN dept_emp as de
  ON dept_manager.dept_no = de.dept_no
JOIN departments as d
  ON d.dept_no = de.dept_no;

# SELECT departments.dept_name, employees.first_name FROM departments, employees
# JOIN dept_manager
#     ON employees.emp_no = dept_manager.emp_no
# WHERE employees.emp_no = dept_manager.emp_no;

SELECT CURDATE();

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS Manager FROM departments, employees
JOIN dept_manager dm on employees.emp_no = dm.emp_no
WHERE (departments.dept_no = dm.dept_no AND dm.to_date > '9998-01-01');

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS Manager FROM departments, employees
JOIN dept_manager dm ON employees.emp_no = dm.emp_no
WHERE (departments.dept_no = dm.dept_no AND dm.to_date > '9998-01-01');

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS Manager FROM departments, employees
JOIN dept_manager dm ON employees.emp_no = dm.emp_no
WHERE (departments.dept_no = dm.dept_no AND dm.to_date > '9998-01-01' AND employees.gender = 'F');

SELECT title, COUNT(*)
FROM employees
    JOIN titles
        ON employees.emp_no = titles.emp_no
    JOIN dept_emp
        ON employees.emp_no = dept_emp.emp_no
WHERE dept_no = 'd009' AND titles.to_date > '9998-01-01'
GROUP BY title
ORDER BY title;

SELECT departments.dept_name, CONCAT(employees.first_name, employees.last_name), salaries.salary
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no #gives access to all of dept_manager
JOIN employees ON dept_manager.emp_no = employees.emp_no #gives access to all of employees
JOIN salaries ON employees.emp_no = salaries.emp_no #gives access to all of salaries
WHERE dept_manager.to_date > '9998-01-01' AND salaries.to_date > '9998-01-01'
ORDER BY dept_name;
