Задача 1
SELECT *
FROM employees
WHERE age > 30;

Задача 2
SELECT *
FROM employees
WHERE age < 25;

Задача 3
SELECT *
FROM empolyees
WHERE salary > 4000;

Задача 4
SELECT *
FROM employees
WHERE department = 'IT';

Задача 5
SELECT *
FROM employees
WHERE department <> 'HR';

Задача 6
SELECT *
FROM employees
WHERE salary >= 3800;

Задача 7
SELECT *
FROM employees
WHERE age <= 28;

Задача 8
SELECT *
FROM employees
WHERE age = 32;

Задача 9
SELECT *
FROM employees
WHERE salary < 3500;

Задача 10
SELECT *
FROM employees
WHERE department = 'Sales'




Задача 1
SELECT *
FROM employees
WHERE age > 30
AND salary > 4000;

Задача 2
SELECT *
FROM employees
WHERE department = 'IT'
AND age < 30;

Задача 3
SELECT *
FROM employees
WHERE department = 'HR'
OR department = 'Sales';

Задача 4
SELECT *
FROM employees
WHERE salary < 3500
OR age < 25;

Задача 5
SELECT *
FROM employees
WHERE age > 25
AND department = 'Marketing';

Задача 6
SELECT *
FROM  employees
WHERE salary >= 3800
AND age <= 32;

Задача 7
SELECT *
FROM employees
WHERE department = 'IT'
OR department = 'Marketing';

Задача 8
SELECT *
FROM employees
WHERE age = 22
OR salary > 4500;

Задача 9
SELECT *
FROM employees
WHERE department <> 'HR'
AND salary > 3000;

Задача 10
SELECT *
WHERE (department = 'IT'
    OR department = 'HR')
AND salary > 3500
