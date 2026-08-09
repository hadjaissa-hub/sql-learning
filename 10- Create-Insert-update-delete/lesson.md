# CREATE TABLE, INSERT, UPDATE & DELETE

## 🎯 Цель урока

Научиться создавать таблицы в PostgreSQL и изменять данные с помощью:

* `CREATE TABLE`
* `INSERT`
* `UPDATE`
* `DELETE`

---

# 1. CREATE TABLE

## 🧱 Базовый синтаксис

```sql
CREATE TABLE table_name (
    column_name data_type,
    column_name data_type,
    ...
);
```

Пример:

```sql
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    age INT,
    email VARCHAR(100)
);
```

## 🧠 Главное

### SERIAL

Автоматически создаёт последовательные значения для ID:

```sql
student_id SERIAL
```

### PRIMARY KEY

Уникально идентифицирует строку:

```sql
student_id SERIAL PRIMARY KEY
```

### Основные типы данных

```text
VARCHAR(100)  → текст
INT           → целое число
NUMERIC(10,2) → число с десятичной частью
BOOLEAN       → TRUE / FALSE
SERIAL        → автоматически увеличивающийся ID
```

---

# 2. INSERT

## 🧱 Базовый синтаксис

```sql
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
```

## ➕ Несколько строк

Можно добавить несколько строк одним запросом:

```sql
INSERT INTO employees (
    first_name,
    salary
)
VALUES
    ('Mike', 3500),
    ('Anna', 4200),
    ('John', 5000);
```

## 🎯 Можно указать только нужные столбцы

```sql
INSERT INTO employees (first_name, salary)
VALUES ('Mike', 3500);
```

Остальные столбцы получат `NULL`, если для них не задано другое ограничение.

---

# 3. UPDATE

`UPDATE` изменяет существующие строки.

## 🧱 Базовый синтаксис

```sql
UPDATE employees
SET salary = 4500
WHERE first_name = 'John';
```

## ⚠️ Главное правило

`WHERE` определяет, **какие строки будут изменены**.

Без `WHERE`:

```sql
UPDATE employees
SET salary = 4500;
```

изменятся **все строки таблицы**.

---

## ➕ Увеличение значения

Неправильно:

```sql
salary =+ 500
```

Правильно:

```sql
salary = salary + 500
```

---

## 📈 Увеличение на процент

На 10%:

```sql
SET salary = salary * 1.10
```

На 15%:

```sql
SET salary = salary * 1.15
```

---

## 🔗 UPDATE с подзапросом

Если нужная информация находится в другой таблице:

```sql
UPDATE employees
SET salary = salary * 1.10
WHERE department_id = (
    SELECT id
    FROM departments
    WHERE department_name = 'HR'
);
```

---

# 4. DELETE

`DELETE` удаляет строки из таблицы.

## 🧱 Базовый синтаксис

```sql
DELETE FROM employees
WHERE first_name = 'John';
```

## ⚠️ Главное правило

`WHERE` определяет, какие строки будут удалены.

Без `WHERE`:

```sql
DELETE FROM employees;
```

будут удалены **все строки таблицы**.

---

## 🔗 DELETE с IN и подзапросом

Например, удалить сотрудников из HR и Sales:

```sql
DELETE FROM employees
WHERE department_id IN (
    SELECT id
    FROM departments
    WHERE department_name IN ('HR', 'Sales')
);
```

Здесь:

1. Подзапрос находит ID отделов.
2. `IN` проверяет `department_id`.
3. `DELETE` удаляет подходящих сотрудников.

---

## 🔍 DELETE с NOT EXISTS

Можно удалить сотрудников, для которых не существует соответствующего отдела:

```sql
DELETE FROM employees e
WHERE NOT EXISTS (
    SELECT 1
    FROM departments d
    WHERE d.id = e.department_id
);
```

Это пример **коррелированного подзапроса**.

---

# 🧠 Самое важное для повторения

### CREATE TABLE

Создаёт структуру таблицы:

```sql
CREATE TABLE ...
```

### INSERT

Добавляет новые строки:

```sql
INSERT INTO ... VALUES ...
```

### UPDATE

Изменяет существующие строки:

```sql
UPDATE ...
SET ...
WHERE ...
```

### DELETE

Удаляет существующие строки:

```sql
DELETE FROM ...
WHERE ...
```

---

# ⚠️ Критически важное правило

Перед `UPDATE` и `DELETE` всегда проверяй `WHERE`.

Можно сначала выполнить:

```sql
SELECT *
FROM employees
WHERE ...;
```

и убедиться, что именно эти строки ты собираешься изменить или удалить.

---

# 📌 Ключевые шаблоны

```sql
-- CREATE
CREATE TABLE table_name (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

-- INSERT
INSERT INTO table_name (name)
VALUES ('John');

-- UPDATE
UPDATE table_name
SET name = 'Mike'
WHERE id = 1;

-- DELETE
DELETE FROM table_name
WHERE id = 1;
```

---

## 🏆 Статус

* ✅ `CREATE TABLE`
* ✅ `SERIAL`
* ✅ `PRIMARY KEY`
* ✅ Основные типы данных
* ✅ `INSERT`
* ✅ INSERT нескольких строк
* ✅ INSERT с выбранными столбцами
* ✅ `UPDATE`
* ✅ Изменение нескольких столбцов
* ✅ Арифметика в `UPDATE`
* ✅ `UPDATE` с подзапросами
* ✅ `DELETE`
* ✅ `DELETE` с `IN`
* ✅ `DELETE` с `NOT EXISTS`

**DML (`INSERT / UPDATE / DELETE`) — завершён.**

---

## 🚀 Следующая тема

**CTE (`WITH`)**

Будем учиться разбивать сложные SQL-запросы на понятные логические части.
