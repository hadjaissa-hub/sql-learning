🟢 Базовые задачи
Задача 1
Найти сотрудников, у которых зарплата выше средней.
Задача 2
Найти сотрудников с максимальной зарплатой.
Задача 3
Найти сотрудников с минимальной зарплатой.
Задача 4
Найти сотрудников старше среднего возраста.
Задача 5
Найти сотрудников младше среднего возраста.
🔵 Практические задачи
Задача 6
Найти сотрудников, которые работают в отделе IT, используя подзапрос.
Задача 7
Найти сотрудников, которые работают в отделе HR, используя подзапрос.
Задача 8
Найти сотрудников с зарплатой выше средней и возрастом больше среднего.
Задача 9
Найти сотрудников с максимальной зарплатой и возрастом больше 30 лет.
⭐ Задача 10
Найти сотрудников:
с зарплатой выше средней;
работающих в отделе IT (через подзапрос).
💼 Реальные задачи
Задача A
Найти сотрудников с зарплатой ниже средней.
Задача B
Найти сотрудников, которые работают в отделе Sales, используя подзапрос.

Задача 1
SELECT *,
FROM employees
WHERE salary > (
                                SELECT AVG(salary)
                                 FROM employees);

Задача 2
SELECT *
FROM employees
WHERE salary = (
                                SELECT MAX(salary)
                                 FROM employees);

Задача 3
SELECT *
FROM employees
WHERE salary = (
                                SELECT MIN(salary)
                               FROM employees);

Задача 4
SELECT *
FROM employees
WHERE age > (
                           SELECT AVG(age)
                           FROM employees);

Задача 5
SELECT *
FROM employees
WHERE age < (
                           SELECT AVG(age)
                           FROM employees);

Задача 6
SELECT *
FROM employees
WHERE department_id = (
                                                 SELECT id
                                                  FROM departments
                                                   WHERE department_name = 'IT');

Задача 7
SELECT *
FROM employees
WHERE department_id = (
                                                 SELECT id
                                                 FROM departments
                                                 WHERE department_name = 'HR');

Задача 8
SELECT *
FROM employees
WHERE salary > (
                                SELECT AVG(salary)
                                FROM employees)
AND age > (
                       SELECT AVG(age)
                        FROM employees);

Задача 9
SELECT *
FROM employees
WHERE salary = (
                               SELECT MAX(salary)
                               FROM employees)
AND age > 30;

Задача 10
SELECT *
FROM employees
WHERE salary > (
                               SELECT AVG(salary)
                               FROM employees)
AND department_id = (
                                           SELECT id 
                                           FROM departments
                                           WHERE department_name = 'IT';

Задача A
SELECT *
FROM employees
WHERE salary < (
                               SELECT AVG(salary)
                                FROM employees);

Задача B
SELECT *
FROM employees
WHERE department_id = (
                                                 SELECT id
                                                 FROM departments
                                                 WHERE department_name = 'Sales');