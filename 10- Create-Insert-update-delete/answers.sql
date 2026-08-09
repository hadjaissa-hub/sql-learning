🟢 Задание 1 — students
Создай таблицу students.
Она должна содержать 4 столбца:
Столбец	Тип
student_id	SERIAL
first_name	VARCHAR(50)
age	INT
email	VARCHAR(100)
Условия
student_id должен быть PRIMARY KEY.
Остальные столбцы пока без ограничений.
💡 Подсказка: тебе понадобится конструкция:
CREATE TABLE ...

🟢 Задание 2 — products
Создай таблицу products.
Она должна содержать 5 столбцов:
Столбец	Тип
product_id	SERIAL
product_name	VARCHAR(100)
price	NUMERIC(10, 2)
quantity	INT
category	VARCHAR(50)
Условия
product_id → PRIMARY KEY
product_name → обязательное поле (NOT NULL)
price → обязательное поле (NOT NULL)
Остальные пока без ограничений.
💡 Здесь ты потренируешь сразу:
SERIAL
VARCHAR
NUMERIC
INT
PRIMARY KEY
NOT NULL

🟡 Задание 3 — books
Теперь немного сложнее.
Создай таблицу books.
Столбец	Тип
book_id	SERIAL
title	VARCHAR(150)
author	VARCHAR(100)
year_published	INT
price	NUMERIC(8, 2)
available	BOOLEAN
Условия
book_id → PRIMARY KEY
title → NOT NULL
author → NOT NULL
year_published → NOT NULL
price → NOT NULL
available → NOT NULL


CREATE TABLE students (
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	age INT,
	email varchar(100)
);

CREATE TABLE products (
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(50) NOT NULL,
	price NUMERIC(10,2) NOT NULL,
	quantity INT,
	category VARCHAR(50)
);

CREATE TABLE books (
	book_id SERIAL PRIMARY KEY,
	title VARCHAR(150) NOT NULL,
	author VARCHAR(100) NOT NULL,
	year_published INT NOT NULL,
	price NUMERIC(8,2) NOT NULL,
	available BOOLEAN NOT NULL
);



Задача 1
INSERT INTO employees (first_name, last_name, age, salary, department_id)
VALUES ('John', 'Smith', 30, 4000, 1);

Задача 2
INSERT INTO employees (first_name, last_name, age, salary, department_id)
VALUES ('Anna', 'Brown', 27, 4500, 2);

Задача 3
INSERT INTO employees (first_name, salary)
VALUES ('Mike', 3500);

Задача 4
INSERT INTO employees (first_name, last_name, age, salary, department_id)
VALUES ('Sarah', 'Wilson', 32, 5200, 3);

Задача 5
INSERT INTO employees (first_name, age, salary, department_id)
VALUES ('Alex', 29, 3800, 1),
	('Maria', 34, 4700, 2),
	('David', 26, 3200, 3);

Задача 6
INSERT INTO employees (first_name, last_name, age, salary, department_id)
VALUES ('Robert', 'Taylor', 41, 6000, 1);

Задача 7
INSERT INTO employees (first_name, age, salary)
VALUES ('Emma', 25, 3600);

Задача 8
INSERT INTO employees (first_name, age, salary, department_id)
VALUES
	('Daniel', 31, 4300, 2),
	('Olivia', 28, 3900, 1)
;

Задача 9
INSERT INTO employees (first_name, last_name, age, salary, department_id)
VALUES ('James', 'Anderson', 36, 5500, 3);

Задача 10
INSERT INTO employees (first_name, age, salary, department_id)
VALUES 
	('Chris', 24, 3000, 1),
	('Laura', 33, 4800, 2), 
	('Kevin', 38, 5100, 3)
;
