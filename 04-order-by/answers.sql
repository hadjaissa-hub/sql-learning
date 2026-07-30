Практика
Задача 1
Вывести всех сотрудников, отсортировав по возрасту по возрастанию.
Задача 2
Вывести сотрудников по зарплате по убыванию.
Задача 3
Вывести сотрудников по имени в алфавитном порядке.
Задача 4
Вывести сотрудников отдела IT, отсортировав их по зарплате по убыванию.
Задача 5
Вывести сотрудников старше 25 лет, отсортировав их по возрасту.
Задача 6
Вывести сотрудников с зарплатой больше 3500, отсортировав по имени.
Задача 7
Вывести сотрудников отдела HR по возрасту по убыванию.
Задача 8
Вывести сотрудников, возраст которых от 25 до 40 лет, отсортировав по зарплате.
Задача 9
Вывести сотрудников, имя которых начинается с A, отсортировав по зарплате по убыванию.
⭐ Задача 10
Вывести сотрудников:
из отделов IT, HR или Sales;
возраст от 25 до 40 лет;
зарплата больше 3500;
и отсортировать по зарплате по убыванию.


Задача 1
SELECT *
FROM employees
ORDER BY age ASC;

Задача 2
SELECT *
FROM employees
ORDER BY salary DESC;

Задача 3
SELECT *
FROM employees
ORDER BY first_name ASC;

Задача 4
SELECT * 
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;

Задача 5
SELECT *
FROM employees
WHERE age > 25
ORDER BY age ASC;

Задача 6
SELECT *
FROM employees
WHERE salary > 3500
ORDER BY first_name ASC;

Задача 7
SELECT *
FROM employees
WHERE department = 'HR'
ORDER BY age DESC;

Задача 8
SELECT *
FROM employees
WHERE age BETWEEN 25 AND 40
ORDER BY salary ASC;

Задача 9
SELECT *
FROM employees
WHERE first_name LIKE 'A%'
ORDER BY salary DESC;

Задача 10
SELECT *
FROM employees
WHERE department IN ('HR', 'IT', 'Sales')
AND age BETWEEN 25 AND 40
AND salary > 3500
ORDER BY salary DESC;




Практика (10 задач)
Задача 1
Вывести всех сотрудников, отсортировав:
по отделу (ASC);
затем по зарплате (DESC).
Задача 2
Вывести сотрудников, отсортировав:
по возрасту (ASC);
затем по имени (ASC).
Задача 3
Вывести сотрудников отдела IT, отсортировав:
по возрасту (DESC);
затем по зарплате (DESC).
Задача 4
Вывести сотрудников с зарплатой больше 3000, отсортировав:
по отделу;
затем по имени.
Задача 5
Вывести сотрудников в возрасте от 25 до 40 лет, отсортировав:
по возрасту;
затем по зарплате (DESC).
Задача 6
Вывести сотрудников, имя которых начинается с A, отсортировав:
по зарплате (DESC);
затем по возрасту (ASC).
Задача 7
Вывести сотрудников не из Marketing, отсортировав:
по отделу;
затем по возрасту.
Задача 8
Вывести сотрудников с зарплатой от 3000 до 5000, отсортировав:
по зарплате (DESC);
затем по имени (ASC).
Задача 9
Вывести сотрудников из HR или Sales, отсортировав:
по возрасту (DESC);
затем по фамилии (ASC).
⭐ Задача 10
Вывести сотрудников:
из IT, HR или Sales;
возраст от 25 до 40;
зарплата больше 3500;
и отсортировать:
по отделу (ASC);
затем по зарплате (DESC);
затем по имени (ASC).


Задача 1
SELECT *
FROM employees
ORDER BY department ASC, salary DESC;

Задача 2
SELECT *
FROM employees
ORDER BY age ASC, first_name ASC;

Задача 3
SELECT *
FROM employees
WHERE department = 'IT'
ORDER BY age DESC, salary DESC;

Задача 4
SELECT *
FROM employees
WHERE salary > 3000
ORDER BY department ASC, first_name ASC;

Задача 5
SELECT *
FROM employees
WHERE age BETWEEN 25 AND 40
ORDER BY age ASC, salary DESC;

Задача 6
SELECT *
FROM employees
WHERE first_name LIKE 'A%'
ORDER BY salary DESC, age ASC;

Задача 7
SELECT *
FROM employees
WHERE department <> 'Marketing'
ORDER BY department ASC, age ASC;

Задача 8
SELECT *
FROM employees
WHERE salary BETWEEN 3000 AND 5000
ORDER BY salary DESC, age ASC;

Задача 9
SELECT *
FROM employees
WHERE deprtment IN ('HR', 'Sales')
ORDER BY age DESC, last_name ASC;

Задача 10
SELECT *
FROM employees
WHERE department IN ('HR', 'IT', 'Sales')
AND age BETWEEN 25 AND 40
AND salary > 3500
ORDER BY department ASC, salary DESC, first_name ASC;