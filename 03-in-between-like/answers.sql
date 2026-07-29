Задача 1
SELECT *
FROM employees
WHERE department IN ('HR', 'IT');

Задача 2
SELECT *
FROM employees
WHERE age IN (22, 25, 32);

Задача 3
SELECT *
FROM employees
WHERE department NOT IN ('HR','Marketing');

Задача 4
SELECT *
FROM employees
WHERE salary IN (3000, 3800, 5000);

Задача 5
SELECT *
FROM employees
WHERE department IN (''Sales,'Marketing');

Задача 6
SELECT *
FROM employees
WHERE age IN (22, 41);

Задача 7
SELECT *
FROM employees
WHERE salary IN (3500, 4200);

Задача 8
SELECT *
FROM employees
WHERE department NOT IN ('IT', 'HR', 'Sales');

Задача 9
SELECT *
FROM employees
WHERE age IN (28, 32, 41);

Задача 10
SELECT *
FROM employees
WHERE department IN ('HR','IT','Marketing')
AND salary > 3500;