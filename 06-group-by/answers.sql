🟢 Базовые задачи
Задача 1
Вернуть одним запросом:
количество сотрудников;
сумму зарплат.
Назови столбцы:
total_employees
total_salary
Задача 2
Вернуть:
среднюю зарплату;
минимальную зарплату;
максимальную зарплату.
Используй AS.
Задача 3
Для отдела IT вернуть:
количество сотрудников;
среднюю зарплату.
Задача 4
Для сотрудников старше 30 лет вернуть:
количество сотрудников;
минимальную зарплату;
максимальную зарплату.
Задача 5
Для сотрудников с зарплатой от 3000 до 5000 вернуть:
количество сотрудников;
среднюю зарплату.
🔵 Практические задачи
Задача 6
Для отдела HR вернуть:
количество сотрудников;
сумму зарплат;
средний возраст.
Задача 7
Для сотрудников, чьи имена начинаются с A, вернуть:
количество сотрудников;
минимальную зарплату;
максимальную зарплату.
Задача 8
Для сотрудников не из Marketing вернуть:
количество сотрудников;
среднюю зарплату;
максимальный возраст.
Задача 9
Для сотрудников из отделов IT и Sales вернуть:
количество сотрудников;
сумму зарплат;
средний возраст;
минимальную зарплату.
⭐ Задача 10 (мини-задача как на собеседовании)
Руководитель попросил краткую статистику по отделу IT.
Одним запросом верни:
количество сотрудников (total_employees);
общую сумму зарплат (total_salary);
среднюю зарплату (average_salary);
минимальную зарплату (minimum_salary);
максимальную зарплату (maximum_salary).
Используй понятные псевдонимы для всех столбцов.

Задача 1
SELECT 
              COUNT(*) AS total_employees,
              SUM(salary) AS total_salary
FROM employees ;

Задача 2
SELECT 
             AVG(salary) AS average_salary,
             MIN(salary) AS lowest_salary,
             MAX(salary) AS highest_salary
FROM employees;

Задача 3
SELECT 
             COUNT(*) AS total_employees,
             AVG(salary) AS average_salary
FROM employees
WHERE department = 'IT';

Задача 4
SELECT 
             COUNT(*) AS total_employees,
             MIN(salary) AS lowest_salary,
             MAX(salary) AS maximum_salary
FROM employees
WHERE age > 30 ;

Задача 5
SELECT 
             COUNT(*) AS total_employees,
             AVG(salary) AS average_salary
FROM employees
WHERE salary BETWEEN 3000 AND 5000 ;

Задача 6
SELECT 
             COUNT(*) AS total_employees, 
             SUM(salary) AS total_salary,
             AVG(age) AS lowest_age
FROM employees
WHERE department = 'HR' ;

Задача 7
SELECT 
             COUNT(*) AS total_employees,
             MIN(salary) AS lowest_salary,
             MAX(salary) AS maximum_salary
FROM employees
WHERE first_name LIKE 'A%' ;

Задача 8
SELECT 
             COUNT(*) AS total_employees,
             AVG(salary) AS average_salary,
             MAX(age) AS maximum_age
FROM employees
WHERE department <> 'Marketing' ;

Задача 9
SELECT 
             COUNT(*) AS total_employees,
             SUM(salary) AS total_salary,
             AVG(age) AS average_age,
             MIN(salary) AS lowest_salary
FROM employees
WHERE department IN ('IT', 'Sales') ;

Задача 10
SELECT 
             COUNT(*) AS total_employees,
             SUM(salary) AS total_salary,
             AVG(salary) AS average_salary,
             MIN(salary) AS minimum_salary,
             MAX(salary) AS maximum_salary
FROM employees
WHERE department = 'IT' ;