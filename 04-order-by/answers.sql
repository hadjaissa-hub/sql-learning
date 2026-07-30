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