# CREATE TABLE

## 🎯 Цель урока

Научиться создавать таблицы в PostgreSQL и выбирать подходящие типы данных для столбцов.

---

## 🧱 Базовый синтаксис

```sql
CREATE TABLE table_name (
    column_name data_type,
    column_name data_type,
    ...
);

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    age INT,
    email VARCHAR(100)
);

# INSERT
Главный шаблон:

INSERT INTO employees (
    first_name,
    last_name,
    age,
    salary,
    department_id
)
VALUES (
    'John',
    'Smith',
    30,
    4500,
    2
);


И для нескольких строк:

INSERT INTO employees (
    first_name,
    salary
)
VALUES
    ('Mike', 3500),
    ('Anna', 4200),
    ('John', 5000);
