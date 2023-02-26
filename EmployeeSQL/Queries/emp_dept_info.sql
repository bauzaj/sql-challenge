CREATE TABLE emp_dept AS
SELECT es.emp_no, es.first_name, es.last_name, es.sex, es.salary, de.dept_no
FROM emp_salary es
JOIN dept_employee de ON es.emp_no = de.emp_no;

SELECT *
FROM emp_dept;

SELECT ed.dept_no, d.dept_name, ed.emp_no, ed.last_name, ed.first_name
FROM emp_dept ed
JOIN departments d ON ed.dept_no = d.dept_no
ORDER BY dept_no ASC;