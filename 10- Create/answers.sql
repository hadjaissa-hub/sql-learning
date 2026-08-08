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
