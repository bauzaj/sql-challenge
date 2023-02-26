CREATE TABLE dept_mgr_info AS 
SELECT es.emp_no, es.last_name, es.first_name, es.sex, es.salary, dm.dept_no
FROM emp_salary es
JOIN dept_manager dm ON es.emp_no = dm.emp_no;

SELECT di.dept_no, d.dept_name , di.emp_no, di.last_name, di.first_name
FROM dept_mgr_info di
JOIN departments d ON di.dept_no = d.dept_no
ORDER BY dept_no ASC;