CREATE TABLE emp_salary AS
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

SELECT emp_no, last_name, first_name, sex, salary 
FROM emp_salary;