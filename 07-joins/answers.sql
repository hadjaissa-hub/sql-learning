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







🟢 Базовые задачи
Задача 1
Для каждого отдела вывести:
название отдела;
количество сотрудников.
Оставить только отделы, где сотрудников больше 2.
Задача 2
Для каждого отдела вывести:
название отдела;
среднюю зарплату.
Оставить только отделы, где средняя зарплата больше 4000.
Задача 3
Для каждого отдела вывести:
название отдела;
сумму зарплат.
Оставить только отделы, где сумма зарплат больше 20000.
Задача 4
Рассмотреть только сотрудников старше 30 лет.
Для каждого отдела вывести:
название отдела;
количество сотрудников.
Оставить только отделы, где сотрудников больше 2.
Задача 5
Рассмотреть только сотрудников с зарплатой больше 3500.
Для каждого отдела вывести:
название отдела;
среднюю зарплату.
Оставить только отделы, где средняя зарплата больше 4500.
🔵 Практические задачи
Задача 6
Рассмотреть только сотрудников отделов IT и HR.
Для каждого отдела вывести:
количество сотрудников;
сумму зарплат.
Оставить только отделы, где сумма зарплат больше 15000.
Задача 7
Рассмотреть только сотрудников младше 40 лет.
Для каждого отдела вывести:
минимальную зарплату;
максимальную зарплату.
Оставить только отделы, где максимальная зарплата больше 5000.
Задача 8
Рассмотреть только сотрудников с зарплатой от 3000 до 5000.
Для каждого отдела вывести:
количество сотрудников;
среднюю зарплату.
Оставить только отделы, где сотрудников больше 3.
Задача 9
Для каждого отдела вывести:
количество сотрудников;
среднюю зарплату.
Оставить только отделы, где средняя зарплата больше 4200.
Отсортировать по средней зарплате по убыванию.
⭐ Задача 10 (как на собеседовании)
Подготовить отчёт.
Рассмотреть только сотрудников:
возраст от 25 до 40;
зарплата больше 3500.
Для каждого отдела вывести:
количество сотрудников;
общую сумму зарплат;
среднюю зарплату;
минимальную зарплату;
максимальную зарплату.
Оставить только отделы, где сотрудников больше 2.
Отсортировать по средней зарплате по убыванию.
💼 Реальные задачи
Задача A
Найти отделы, где работает больше трёх сотрудников.
Вернуть:
название отдела;
количество сотрудников.
Задача B
Найти отделы, где средняя зарплата выше 4500.
Вернуть:
название отдела;
среднюю зарплату.

Задача 1
SELECT
             d.department_name,
             COUNT(*) AS total_employees
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id
GROUP BY d.department_name
HAVING COUNT(*) > 2 ; 

Задача 2
SELECT 
             d.department_name,
             AVG(e.salary) AS average_salary
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id 
GROUP BY d.department_name
HAVING AVG(e.salary) > 4000 ; 

Задача 3
SELECT 
             d.department_name,
             SUM(e.salary) AS total_salaries
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id
GROUP BY d.department_name
HAVING SUM(e.salary) > 20000 ;

Задача 4
SELECT 
             d.department_name,
             COUNT(*) AS total_evmployees
FROM employements e
INNER JOIN departments d
ON e.department_id = d.id
WHERE e.age > 30
GROUP BY d.department_name
HAVING COUNT(*) > 2; 

Задача 5
SELECT 
             d.department_name,
             AVG(e.salary) AS average_salary 
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id
WHERE e.salary > 3500
GROUP BY d.department_name
HAVING AVG(e.salary) > 4500;

Задача 6
SELECT 
             d.department_name,
             COUNT(*) AS total_employees,
             SUM(e.salary) AS total_salaries
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id
WHERE d.department_name IN ('IT', 'HR')
GROUP BY d.department_name
HAVING SUM(e.salary) > 15000;  

Задача 7
SELECT 
             d.department_name,
             MIN(e.salary) AS lowest_salary,
            MAX(e.salary) AS highest_salary
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id
WHERE e.age < 40
GROUP BY d.department_name
HAVING MAX(e.salary) > 500 ;

Задача 8
SELECT 
             d.department_name,
             COUNT(*) AS total_employees,
             AVG(e.salary) AS average_salary
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id
WHERE e.salary BETWEEN 3000 AND 5000
GROUP BY d.department_name
HAVING COUNT(*) > 3;
             
Задача 9
SELELCT 
               d.department_name,
               COUNT(*) AS total_employees,
              AVG(e.salary) AS average_salary
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id
GROUP BY d.department_name
HAVING AVG(e.salary) > 4200
ORDER BY AVG(e.salary) DESC; 

Задача 10
SELECT 
             d.department_name,
             COUNT(*) AS totat_employees,
             SUM(e.salary) AS total_salaries,
            AVG(e.salary) AS average_salary,
            MIN(e.salary) AS lowest_salary,
            MAX(e.salary) AS highest_salary
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id
WHERE e.age BETWEEN 25 AND 40
AND e.salary > 3500
GROUP BY d.department_name
HAVING COUNT(*) > 2
ORDER BY AVG(e.salary) DESC;

Задача A
SELECT
             d.department_name,
             COUNT(*) AS total_employees
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id
GROUP BY d.department_name
HAVING COUNT(*) > 3;

Задача B
SELECT
             d.department_name,
             AVG(e.salary) AS average_salary
FROM employees e
INNER JOIN departments d
ON e.department_id = d.id
HAVING AVG(e.salary) > 4500;