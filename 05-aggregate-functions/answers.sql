🟢 Базовые задачи
Задача 1
Посчитать количество всех сотрудников.
Задача 2
Посчитать количество сотрудников отдела IT.
Задача 3
Посчитать количество сотрудников старше 30 лет.
Задача 4
Посчитать количество сотрудников с зарплатой больше 4000.
Задача 5
Посчитать количество сотрудников из отделов HR и Sales.
🔵 Практические задачи
Задача 6
Посчитать количество сотрудников с возрастом от 25 до 40 лет.
Задача 7
Посчитать количество сотрудников, чьи имена начинаются с буквы A.
Задача 8
Посчитать количество сотрудников не из отдела Marketing.
Задача 9
Посчитать количество сотрудников:
из IT;
зарплата больше 3500.
⭐ Задача 10
Написать запрос, который вернёт столбец с названием:
total_it_employees
и покажет количество сотрудников отдела IT.
Используй AS.

Задача 1
SELECT COUNT(*) 
FROM employees ;

Задача 2
SELECT COUNT(*)
FROM employees
WHERE department = 'IT';

Задача 3
SELECT COUNT(*)
FROM employees
WHERE age > 30 ;

Задача 4
SELECT COUNT(*)
FROM employees
WHERE salary > 4000;

Задача 5
SELECT COUNT(*)
FROM employees
WHERE department IN ('HR', 'Sales') ;

Задача 6
SELECT COUNT(*)
FROM employees 
WHERE age BETWEEN 25 AND 40 ;

Задача 7
SELECT COUNT(*)
FROM employees
WHERE first_name LIKE 'A%' ;

Задача 8
SELECT COUNT(*)
FROM employees
WHERE department <> 'Marketing' ;

Задача 9
SELECT COUNT(*)
FROM employees
WHERE department = 'IT'
AND salary > 3500 ;

Задача 10
SELECT COUNT(*) AS total_it_employees
FROM employees
WHERE department = 'IT' ;


🟢 Базовые задачи
Задача 1
Посчитать сумму всех зарплат сотрудников.
Задача 2
Посчитать сумму зарплат сотрудников отдела IT.
Задача 3
Посчитать сумму зарплат сотрудников старше 30 лет.
Задача 4
Посчитать сумму зарплат сотрудников с возрастом от 25 до 40 лет.
Задача 5
Посчитать сумму зарплат сотрудников из отделов HR и Sales.
🔵 Практические задачи
Задача 6
Посчитать сумму зарплат сотрудников, чьи имена начинаются с A.
Задача 7
Посчитать сумму зарплат сотрудников не из отдела Marketing.
Задача 8
Посчитать сумму зарплат сотрудников:
из IT;
зарплата больше 3500.
Задача 9
Посчитать сумму зарплат сотрудников с зарплатой от 3000 до 5000.
⭐ Задача 10
Вернуть столбец с названием:
total_hr_salary
который содержит сумму зарплат сотрудников отдела HR.
Используй AS.

Задача 1
SELECT SUM(salary)
FROM employees ;

Задача 2
SELECT SUM(salary)
FROM employees
WHERE department = 'IT' ;

Задача 3
SELECT SUM(salary)
FROM employees
WHERE age > 30 ;

Задача 4
SELECT SUM(salary)
FROM employees
WHERE age BETWEEN 25 AND 40;

Задача 5
SELECT SUM(salary)
FROM employees
WHERE department IN ('HR', 'Sales') ;

Задача 6
SELECT SUM(salary)
FROM employees
WHERE name LIKE 'A%' ;

Задача 7
SELECT SUM(salary)
FROM employees
WHERE department <> 'Marketing' ;

Задача 8
SELECT SUM(salary)
FROM employees
WHERE department = 'IT'
AND salary > 3500 ;

Задача 9
SELECT SUM(salary)
FROM employees
WHERE salary BETWEEN 3000 AND 5000 ;

Задача 10
SELECT SUM(salary) AS total_hr_salary
FROM employees
WHERE department = 'HR' ;




