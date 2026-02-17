CREATE database SQLTask4;
use SQLTask4;

CREATE TABLE employees (
    emp_id INTEGER,
    emp_name TEXT,
    department TEXT,
    salary INTEGER
);

INSERT INTO employees VALUES
(1, 'Amit', 'IT', 50000),
(2, 'Neha', 'HR', 40000),
(3, 'Rahul', 'IT', 60000),
(4, 'Sneha', 'HR', 45000),
(5, 'Karan', 'Finance', 55000),
(6, 'Pooja', 'Finance', 65000);

SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;


SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

SELECT COUNT(DISTINCT department) AS total_departments
FROM employees;

SELECT department, ROUND(AVG(salary), 2) AS rounded_avg_salary
FROM employees
GROUP BY department;

