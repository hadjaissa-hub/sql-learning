🟢 Базовые задачи
Задача 1
Вывести:
имя;
зарплату;
среднюю зарплату компании.
Задача 2
Вывести:
имя;
зарплату;
максимальную зарплату компании.
Задача 3
Вывести:
имя;
зарплату;
минимальную зарплату компании.
Задача 4
Вывести:
имя;
возраст;
средний возраст сотрудников.
Задача 5
Вывести:
имя;
количество сотрудников в компании.
🔵 Практические задачи
Задача 6
Вывести:
имя;
зарплату;
общую сумму зарплат компании.
Задача 7
Вывести:
имя;
возраст;
максимальный возраст сотрудников.
Задача 8
Вывести:
имя;
зарплату;
среднюю зарплату;
максимальную зарплату.
Задача 9
Вывести:
имя;
зарплату;
среднюю зарплату.
Показать только сотрудников с зарплатой выше 4000.
⭐ Задача 10
Вывести:
имя;
возраст;
зарплату;
средний возраст компании;
среднюю зарплату компании;
максимальную зарплату компании.
💼 Реальные задачи
Задача A
Для каждого сотрудника показать:
имя;
зарплату;
сумму всех зарплат компании;
количество сотрудников.
Задача B
Вывести:
имя;
зарплату;
минимальную;
среднюю;
максимальную зарплату компании.


Задача 1
SELECT 
              first_name,
              salary,
              AVG(salary) OVER() AS company_average_salary
FROM employees;

Задача 2
SELECT 
             first_name,
             salary,
            MAX(salary) OVER() AS company_highest_salary
FROM employees;

Задача 3
SELECT
             first_name,
             salary,
            MIN(salary) OVER() AS company_minimum_salary
FROM employees;
 

Задача 4
SELECT
             first_name,
             age,
             AVG(age) OVER() AS company_average_age
FROM employees;

Задача 5
SELECT 
             first_name;
             COUNT(*) OVER() AS company_total_employees
FROM employees;

Задача 6
SELECT
             first_name,
             salary,
             SUM(salary) OVER() AS company_total_salary
FROM employees;

Задача 7
SELECT
             first_name,
             age,
            MAX(age) OVER() AS compnay_highest_age
FROM employees;

Задача 8
SELECT 
             first_name,
             salary,
             AVG(salary) OVER() AS company_average_salary,
            MAX(salary) OVER() AS company_highest_salary
FROM employees;

Задача 9
SELECT 
             first_name,
             salary,
             AVG(salary) OVER() AS company_average_salary
FROM employees
WHERE salary > 4000;


Задача 10
SELECT
             first_name,
             age,
             salary,
             AVG(age) OVER() AS company_average_age, 
             AVG(salary) OVER() AS company_average_salary,
            MAX(salary) OVER() AS company_highest_salary
FROM employees;

Задача A
SELECT 
             first_name,
             salary,
             SUM(salary) OVER() AS company_total_salary,
             COUNT(*) OVER() AS company_total_employees
FROM employees;

Задача B
SELECT
             first_name,
             salary,
             MIN(salary) OVER() AS company_lowest_salary,
             AVG(salary) OVER() AS company_average_salary,
             MAX(salary) OVER() AS company_highest_salary
FROM employees;