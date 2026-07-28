-- Задача 1
SELECT *
FROM employees;

-- Задача 2
SELECT first_name
FROM employees;

-- Задача 3
SELECT first_name, age
FROM employees;

-- Задача 4
SELECT salary
FROM employees;

-- Задача 5
SELECT department
FROM employees;

-- Задача 6
SELECT id, first_name
FROM employees;

-- Задача 7
SELECT last_name, salary
FROM employees;

-- Задача 8
SELECT age, salary, department
FROM employees;

-- Задача 9
SELECT last_name
FROM employees;

-- Задача 10
SELECT *
FROM employees;


Задача 1
SELECT first_name AS name
FROM employees;

Задача 2
SELECT salary AS monthly_salary
FROM employees;

Задача 3
SELECT 
    first_name AS name,
    last_name AS surname
FROM employees;

Задача 4
SELECT DISTINCT department
FROM employees;

Задача 5
SELECT DISTINCT age
FROM employees;

Задача 6
SELECT department AS team
FROM employees;

Задача 7
SELECT DISTINCT salary
FROM employees;

Задача 8
SELECT  
    first_name AS employee_name,
    department AS team
FROM employees;

Задача 9
SELECT DISTINCT department, age
FROM employees;

Задача 10
SELECT 
    first_name AS name,
    salary AS income
FROM  employees;