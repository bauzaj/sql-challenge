SELECT es.first_name, es.last_name, es.sex
FROM emp_salary es
WHERE es.first_name = 'Hercules' AND es.last_name LIKE 'B%';

