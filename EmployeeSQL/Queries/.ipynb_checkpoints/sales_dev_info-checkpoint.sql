SELECT ed.dept_no, d.dept_name, ed.emp_no, ed.last_name, ed.first_name
FROM emp_dept ed
JOIN departments d ON ed.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');


