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