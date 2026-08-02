Задача 1
Вывести:
имя сотрудника;
название отдела.
Задача 2
Вывести:
имя;
фамилию;
название отдела.
Задача 3
Вывести:
имя;
зарплату;
название отдела.
Задача 4
Вывести все столбцы из employees и название отдела.
Задача 5
Вывести:
имя;
возраст;
название отдела.
🔵 Практические задачи
Задача 6
Вывести сотрудников только отдела IT.
Показать:
имя;
название отдела.
Задача 7
Вывести сотрудников отдела HR.
Показать:
имя;
зарплату;
название отдела.
Задача 8
Вывести сотрудников старше 30 лет.
Показать:
имя;
возраст;
название отдела.
Задача 9
Вывести сотрудников с зарплатой больше 4000.
Показать:
имя;
зарплату;
название отдела.
⭐ Задача 10
Вывести сотрудников отделов:
IT
HR
Показать:
имя;
фамилию;
зарплату;
название отдела.
💼 Собеседование
Задача A
Напиши запрос, который покажет:
имя сотрудника;
название его отдела.
Используй псевдонимы таблиц (e, d).
Задача B
То же самое, но без псевдонимов.


Задача 1
SELECT 
             employees.first_name,                 
             departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id ;

Задача 2
SELECT 
             employees.first_name,
             employees.last_name,
             departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id ;

Задача 3
SELECT
             employees.first_name,
             employees.salary,
             departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id ;

Задача 4
SELECT 
             employees.*,
             departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id ;

Задача 5
SELECT 
             employees.first_name,
             employees.age,
             departments.department_name
FROM employees
JOIN INNER departments
ON employees.department_id = departments.id ;

Задача 6
SELECT 
             employees.first_name,
             departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id 
WHERE department = 'IT' ;

Задача 7
SELECT 
             employees.first_name,
             employees.salary,
             departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id 
WHERE department = 'HR' ;

Задача 8
SELECT 
             employees.first_name,
             employees.age,
             departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id ;

Задача 9
SELECT 
             employees.first_name,
             employees.salary,
             departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id 
WHERE salary > 4000 ;

Задача 10
SELECT 
             employees.first_name,
             employees.last_name,
             employees.salary,
             departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id 
WHERE department IN ('IT', 'HR') ;

Задача A
SELECT 
             e.first_name,
             d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id ;

Задача B
SELECT 
             employees.first_name,
             departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id ;