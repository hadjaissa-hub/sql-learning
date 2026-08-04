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



# HERE STARTS SECOND BLOCK OF EXERCICES!!!
🟢 Базовые задачи
Задача 1
Для каждого отдела вывести:
название отдела;
количество сотрудников.
Задача 2
Для каждого отдела вывести:
название отдела;
среднюю зарплату.
Задача 3
Для каждого отдела вывести:
название отдела;
сумму зарплат.
Задача 4
Для каждого отдела вывести:
название отдела;
минимальную зарплату.
Задача 5
Для каждого отдела вывести:
название отдела;
максимальную зарплату.
🔵 Практические задачи
Задача 6
Для каждого отдела вывести:
название отдела;
средний возраст.
Задача 7
Для каждого отдела вывести:
название отдела;
минимальный возраст;
максимальный возраст.
Задача 8
Для каждого отдела вывести:
название отдела;
количество сотрудников;
среднюю зарплату.
Задача 9
Для каждого отдела вывести:
название отдела;
сумму зарплат;
минимальную зарплату;
максимальную зарплату.
⭐ Задача 10 (как на собеседовании)
Руководитель попросил отчёт по каждому отделу.
Для каждого отдела вывести:
название отдела;
количество сотрудников;
общую сумму зарплат;
среднюю зарплату;
минимальную зарплату;
максимальную зарплату.
Используй понятные псевдонимы (AS).
🎯 Две реальные задачи
💼 Задача A
Нужно узнать, в каком отделе работает больше всего сотрудников.
Пока используй только GROUP BY и COUNT(). (На следующем уроке с HAVING и позже с сортировкой мы сделаем это ещё красивее.)
💼 Задача B
Нужно подготовить отчёт для финансового отдела:
«Покажи общую сумму зарплат по каждому отделу.»

Задача 1
SELECT
              department,
              COUNT(*) AS total_employees
FROM employees
GROUP BY department;

Задача 2
SELECT
             department,
             AVG(salary) AS average_salary
FROM employees
GROUP BY department ;

Задача 3
SELECT 
             department,
             SUM(salary) AS total_salary
FROM employees
GROUP BY department ;

Задача 4
SELECT 
             department,
             MIN(salary) AS lowest_salary
FROM employees
GROUP BY department ;

Задача 5
SELECT 
             department,
             MAX(salary) AS highest_salary
FROM employees
GROUP BY department ;

Задача 6
SELECT 
             department,
             AVG(age) AS average_age
FROM employees
GROUP BY department ;

Задача 7
SELECT 
             department,
             MIN(age) AS youngest_employee,
             MAX(age) AS oldest_employee
FROM employees
GROUP BY department ;

Задача 8
SELECT 
             department,
             COUNT(*) AS total_employees,
             AVG(salary) AS average_salary
FROM employees
GROUP BY department ;

Задача 9
SELECT
              department,
              SUM(salary) AS total_salary,
              MIN(salary) AS lowest_salary,
              MAX(salary) AS hightest_salary
FROM employees
GROUP BY department ;

Задача 10
SELECT
             department,
             COUNT(*) AS total_employees,
             SUM(salary) AS total_salary,
             AVG(salary) AS average_salary,
             MIN(salary) AS lowest_salary,
             MAX(salary) AS highest_salary
FROM employees
GROUP BY department ;

Задача A
SELECT 
             department,
             COUNT(*) AS total_employees
FROM employees
GROUP BY department ;

Задача B
SELECT 
             department,
             SUM(salary) AS total_salary
FROM employees
GROUP BY department ;




# HERE STARTS SECOND BLOCK OF EXERCICES!!!
🟢 Базовые задачи
Задача 1
Для каждого отдела вывести количество сотрудников.
Оставить только отделы, где сотрудников больше 2.
Задача 2
Для каждого отдела вывести среднюю зарплату.
Оставить только отделы, где средняя зарплата больше 4000.
Задача 3
Для каждого отдела вывести сумму зарплат.
Оставить только отделы, где сумма зарплат больше 20000.
Задача 4
Для каждого отдела вывести максимальную зарплату.
Оставить только отделы, где максимальная зарплата больше 5000.
Задача 5
Для каждого отдела вывести минимальный возраст.
Оставить только отделы, где минимальный возраст меньше 25.
🔵 Практические задачи
Задача 6
Рассмотреть только сотрудников старше 25 лет.
Для каждого отдела вывести количество сотрудников.
Оставить только отделы, где таких сотрудников больше 3.
Задача 7
Рассмотреть только сотрудников отдела IT или HR.
Для каждого отдела вывести среднюю зарплату.
Оставить только отделы, где средняя зарплата больше 4500.
Задача 8
Рассмотреть только сотрудников с зарплатой больше 3000.
Для каждого отдела вывести:
количество сотрудников;
среднюю зарплату.
Оставить только отделы, где сотрудников больше 2.
Задача 9
Для каждого отдела вывести:
минимальную зарплату;
максимальную зарплату.
Оставить только отделы, где максимальная зарплата больше 4500.
⭐ Задача 10 (как на собеседовании)
Нужно подготовить отчёт.
Рассмотреть только сотрудников:
возраст от 25 до 40;
зарплата больше 3500.
Для каждого отдела вывести:
количество сотрудников;
среднюю зарплату;
сумму зарплат.
Оставить только отделы, где сотрудников больше 2.
💼 Реальные задачи
Задача A
Найти отделы, где средняя зарплата выше 4500.
Задача B
Найти отделы, где работает не менее 5 сотрудников.

Задача 1
SELECT 
             department,
             COUNT(*) AS total_employees
FROM employees
GROUP BY department
HAVING COUNT(*) > 2 ;

Задача 2
SELECT 
             department,
             AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 4000 ;

Задача 3
SELECT 
             department,
             SUM(salary) AS total_salaries
FROM employees
GROUP BY department
HAVING SUM(salary) > 20000 ;

Задача 4
SELECT 
              department,
              MAX(salary) AS biggest_salary
FROM employees
GROUP BY department
HAVING MAX(salary) > 5000 ;

Задача 5
SELECT 
             department,
             MIN(age) AS youngest_employee
FROM employees
GROUP BY department
HAVING MIN(age) < 25 ;

Задача 6
SELECT 
             department,
             COUNT(*) AS total_employees
FROM employees
WHERE age > 25
GROUP BY department
HAVING COUNT(*) > 3 ;

Задача 7
SELECT 
             department,
             AVG(salary) AS average_salary
FROM employees
WHERE department IN ('IT', 'HR')
GROUP BY department
HAVING AVG(salary) > 4500 ;

Задача 8
SELECT 
              department,
              COUNT(*) AS total_employees,
              AVG(salary) AS average_salary
FROM employees
WHERE salary > 3000
GROUP BY department 
HAVING COUNT(*) > 2 ;

Задача 9
SELECT 
             department,
             MIN(salary) AS lowest_salary,
             MAX(salary) AS highest_salary
FROM employees
GROUP BY department
HAVING MAX(salary) > 4500 ; 

Задача 10
SELECT 
             department,
             COUNT(*) AS total_employees,
             AVG(salary) AS average_salary,
             SUM(salary) AS total_salaries
FROM employees
WHERE age BETWEEN 25 AND 40
AND salary > 3500
GROUP BY department
HAVING COUNT(*) > 2 ;

Задача A
SELECT 
             department, 
             AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 4500 ;

Задача B
SELECT 
             department,
             COUNT(*) AS total_employees
FROM employees
GROUP BY department
HAVING COUNT(*) > 5 ;
