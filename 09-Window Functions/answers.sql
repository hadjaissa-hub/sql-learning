🟢 Базовые задачи
Задача 1
Вывести:
имя;
отдел (department_id);
зарплату;
среднюю зарплату своего отдела.
Задача 2
Вывести:
имя;
отдел;
максимальную зарплату отдела.
Задача 3
Вывести:
имя;
отдел;
минимальную зарплату отдела.
Задача 4
Вывести:
имя;
отдел;
количество сотрудников в отделе.
Задача 5
Вывести:
имя;
отдел;
сумму зарплат отдела.
🔵 Практические задачи
Задача 6
Вывести:
имя;
возраст;
отдел;
средний возраст сотрудников отдела.
Задача 7
Вывести:
имя;
зарплату;
отдел;
среднюю зарплату отдела;
максимальную зарплату отдела.
Задача 8
Вывести:
имя;
зарплату;
отдел.
Показать только сотрудников с зарплатой выше 4000.
При этом средняя зарплата отдела должна считаться по всем сотрудникам отдела, а не только по тем, кто прошёл WHERE.
Задача 9
Вывести:
имя;
отдел;
количество сотрудников отдела;
сумму зарплат отдела.
Отсортировать по department_id.
⭐ Задача 10
Вывести:
имя;
отдел;
зарплату;
среднюю зарплату отдела;
минимальную зарплату отдела;
максимальную зарплату отдела;
количество сотрудников отдела.
💼 Реальные задачи
Задача A
Для каждого сотрудника вывести:
имя;
зарплату;
среднюю зарплату своего отдела.
Затем отсортировать по зарплате по убыванию.
Задача B
Для каждого сотрудника вывести:
имя;
отдел;
сумму зарплат отдела;
количество сотрудников отдела;
среднюю зарплату отдела.

Задача 1
SELECT 
             first_name,
             department_id, 
             salary,
             AVG(salary) OVER(PARTITION BY department_id) AS department_average_salary
FROM employees;

Задача 2
SELECT 
             first_name,
             department_id, 
             MAX(salary) OVER(PARTITION BY department_id) AS department_highest_salary
FROM employees;

Задача 3
SELECT 
              first_name,
              department_id,
              MIN(salary) OVER(PARTITION BY department_id) AS department_lower_salary
FROM employees;

Задача 4
SELECT 
             first_name,
             department_id,
             COUNT(*) OVER(PARTITION BY department_id) AS department_total_employees
FROM employees;

Задача 5
SELECT
             first_name,
             department_id,
             SUM(salary) OVER(PARTITION BY department_id) AS department_total_salary
FROM employees;

Задача 6
SELECT
             first_name,
             age,
             department_id, 
             AVG(age) OVER(PARTITION BY department_id) AS department_average_age
FROM employees;


Задача 7
SELECT 
             first_name,
             salary,
             department_id,
             AVG(salary) OVER(PARTITION BY department_id) AS department_average_salary
FROM employees;

Задача 8
SELECT
             first_name,
             salary,
            department_id,
            AVG(salary) OVER(PARTITION BY department_id) AS department_average_salary
FROM employees
WHERE salary > 4000;


Задача 8
SELECT
             first_name,
             salary,
            department_id,
            AVG(salary) OVER(PARTITION BY department_id) AS department_average_salary
FROM employees
WHERE salary > 4000;

Задача 9
SELECT 
             first_name,
             department_id,
             COUNT(*) OVER(PARTITION BY department_id) AS department_totat_employees,
             SUM(salary) OVER(PARTITION BY department_id) AS department_total_salaries
FROM employees
ORDER BY department_id ASC;

Задача 10
SELECT
             first_name,
             department_id,
             salary,
             AVG(salary) OVER(PARTITION BY department_id) AS department_average_salary,
            MIN(salary) OVER(PARTITION BY department_id) AS department_lowest_salary,
            MAX(salary) OVER(PARTITION BY department_id) AS department_highest_salary,
            COUNT(*) OVER(PARTITION BY department_id) AS department_total_employees
FROM employees;
 
Задача A
SELECT 
             first_name,
             salary,
             AVG(salary) OVER(PARTITION BY department_id) AS department_average_salary
FROM employees
ORDER BY salary DESC;

Задача B
SELECT 
              first_name,
              department_id,
              SUM(salary) OVER(PARTITION BY department_id) AS department_total_salaries,
              COUNT(*) OVER(PARTITION BY department_id) AS department_total_employees,
              AVG(salary) OVER(PARTITON BY department_id) AS department_average_department
FROM employees;


🟢 Базовые задачи
Задача 1
Вывести:
имя;
зарплату;
порядковый номер по зарплате (от большей к меньшей).
Задача 2
Вывести:
имя;
отдел;
зарплату;
порядковый номер внутри отдела по зарплате.
Задача 3
Вывести:
имя;
возраст;
порядковый номер по возрасту (от младшего к старшему).
Задача 4
Вывести:
имя;
отдел;
возраст;
порядковый номер внутри отдела по возрасту.
Задача 5
Вывести:
имя;
зарплату;
порядковый номер по зарплате (от меньшей к большей).
🔵 Практические задачи
Задача 6
Получить только сотрудников с номером 1 по зарплате в каждом отделе.
Задача 7
Получить только сотрудников с номером 2 по зарплате в каждом отделе.
Задача 8
Получить двух самых высокооплачиваемых сотрудников каждого отдела.
Задача 9
Получить самого молодого сотрудника каждого отдела.
⭐ Задача 10
Получить трёх самых молодых сотрудников каждого отдела.
💼 Реальные задачи
Задача A
Вывести всех сотрудников и их место по зарплате во всей компании.
Задача B
Вывести сотрудников, которые занимают первое место по возрасту в каждом отделе (самые молодые).

Задача 1
SELECT 
              first_name,
              salary,
              ROW_NUMBER() OVER(ORDER BY salary DESC) AS rn
FROM employees;

Задача 2
SELECT
             first_name,
             department_id,
             salary,
             ROW_NUMBER() OVER(PARTITION BY deparmtent_id 
                                                           ORDER BY salary ASC) AS rn
FROM employees;

Задача 3
SELECT 
              first_name,
              age,
              ROW_NUMBER() OVER(ORDER BY age ASC) AS rn
FROM employees;

Задача 4
SELECT 
              first_name,
              department_id,
              age,
              ROW_NUMBER() OVER(PARTITION BY age ASC) AS rn
FROM employees,

Задача 5
SELECT
             first_name,
             salary,
             ROW_NUMBER() OVER(ORDER BY salary ASC) AS rn
FROM employees,

Задача 6
SELECT *
FROM (
              SELECT
                            first_name,
                            department_id,
                            salary, 
                            ROW_NUMBER() OVER(PARTITION BY department_id 
                                                                         ORDER BY salary DESC) AS rn
              FROM employees) t
WHERE rn = 1;

Задача 7
SELECT *
FROM (
              SELECT
                            first_name,
                            department_id,
                            salary,
                            ROW_NUMBER() OVER(PARTITION BY department_id 
                                                                          ORDER BY salary DESC) AS rn
             FROM employees) t
WHERE rn = 2;

Задача 8
SELECT *
FROM (
              SELECT 
                            first_name,
                            department_id,
                            salary,
                            ROW_NUMBER() OVER(PARTITION BY department_id                  
                                                                         ORDER BY salary DESC) AS rn
              FROM employees) t
WHERE rn IN (1, 2);

Задача 9
SELECT *
FROM (
             SELECT 
                          first_name, 
                          depatment_id,
                          salary,
                          ROW_NUMBER() OVER(PARTITION BY department_id      ORDER BY age ASC) AS rn
            FROM employees) t
WHERE rn = 1; 

Задача 10
SELECT *
FROM (
              SELECT 
                           first_name,
                           department_id,
                           salary,
                           ROW_NUMBER() OVER(PARTITION BY department_id ORDER BY age ASC) AS rn
              FROM employees) t
WHERE rn IN (1, 2, 3);

Задача A
SELECT 
              first_name,
              department_id,
              salary,
              ROW_NUMBER() OVER(ORDER BY salary DESC) AS rn
FROM employees;

Задача B
SELECT *
FROM (
              SELECT
                            first_name,
                            department_name,
                            age,
                            ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY age ASC) AS rn
              FROM employees) t
WHERE rn = 1;