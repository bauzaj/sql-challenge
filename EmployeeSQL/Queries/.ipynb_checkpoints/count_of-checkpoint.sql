SELECT last_name, COUNT(*) AS "Count"
FROM employees
GROUP BY last_name
ORDER BY "Count" DESC;


