# 📚 SQL — CREATE DATABASE / CREATE TABLE / INSERT / UPDATE / DELETE

## 🎯 Что я изучил

Ты изучил основные SQL-команды для **создания структуры базы данных и изменения данных в таблицах**:

* `CREATE DATABASE` — создание базы данных;
* `CREATE TABLE` — создание таблицы;
* `INSERT INTO` — добавление новых строк;
* `UPDATE` — изменение существующих строк;
* `DELETE` — удаление строк.

Также ты научился:

* задавать столбцы и их типы данных при создании таблицы;
* использовать `PRIMARY KEY`;
* вставлять одну и несколько строк;
* изменять один или несколько столбцов;
* изменять значения на процент;
* удалять строки по условиям;
* использовать подзапросы в `DELETE`;
* использовать `NOT EXISTS` в `DELETE`.

> Важно: `CREATE DATABASE` и `CREATE TABLE` создают **структуру**, а `INSERT`, `UPDATE` и `DELETE` работают непосредственно с **данными**.

---

## 🧠 Главные понятия

### `CREATE DATABASE`

Используется для **создания новой базы данных**.

```sql
CREATE DATABASE company;
```

После создания базы данных в ней можно создавать таблицы.

---

### `CREATE TABLE`

Используется для **создания новой таблицы**.

При создании таблицы мы указываем:

* название таблицы;
* названия столбцов;
* типы данных;
* ограничения (`PRIMARY KEY`, `NOT NULL` и т.д.).

```sql
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    age INT,
    salary NUMERIC(10, 2),
    department_id INT
);
```

---

### Типы данных

Тип данных определяет, **какие значения можно хранить в столбце**.

| Тип            | Что хранит                                     |
| -------------- | ---------------------------------------------- |
| `INT`          | целые числа                                    |
| `VARCHAR(n)`   | текст до `n` символов                          |
| `NUMERIC(p,s)` | точные числа с десятичной частью               |
| `SERIAL`       | автоматически увеличивающийся целочисленный ID |

---

### `PRIMARY KEY`

Определяет столбец, который **уникально идентифицирует каждую строку**.

```sql
employee_id SERIAL PRIMARY KEY
```

Каждый сотрудник должен иметь уникальный `employee_id`.

---

### `INSERT INTO`

Используется для **добавления новых строк** в таблицу.

Можно добавить одну или несколько строк.

---

### `UPDATE`

Используется для **изменения существующих данных**.

Можно изменить один или сразу несколько столбцов.

```sql
UPDATE employees
SET salary = 4000
WHERE employee_id = 1;
```

---

### `DELETE`

Используется для **удаления строк** из таблицы.

```sql
DELETE FROM employees
WHERE age > 50;
```

---

### `WHERE` в `UPDATE` и `DELETE`

`WHERE` определяет, **какие строки будут изменены или удалены**.

Особенно важно помнить:

```sql
UPDATE employees
SET salary = 5000;
```

Без `WHERE` будут изменены **все строки**.

И:

```sql
DELETE FROM employees;
```

Без `WHERE` будут удалены **все строки таблицы**.

---

## 📝 Основной синтаксис

### Создание базы данных

```sql
CREATE DATABASE database_name;
```

### Создание таблицы

```sql
CREATE TABLE table_name (
    column1 data_type,
    column2 data_type,
    column3 data_type
);
```

### Создание таблицы с `PRIMARY KEY`

```sql
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    age INT,
    salary NUMERIC(10, 2)
);
```

### Вставка одной строки

```sql
INSERT INTO table_name (column1, column2)
VALUES (value1, value2);
```

### Вставка нескольких строк

```sql
INSERT INTO table_name (column1, column2)
VALUES
    (value1, value2),
    (value3, value4),
    (value5, value6);
```

### `UPDATE`

```sql
UPDATE table_name
SET column1 = value1
WHERE condition;
```

### Изменение нескольких столбцов

```sql
UPDATE employees
SET
    salary = 5000,
    age = 30
WHERE employee_id = 1;
```

### `DELETE`

```sql
DELETE FROM table_name
WHERE condition;
```

---

## 🔑 Важные команды / конструкции

### Создание структуры

* `CREATE DATABASE` — создаёт базу данных.
* `CREATE TABLE` — создаёт таблицу.
* `PRIMARY KEY` — уникально идентифицирует строку.
* `SERIAL` — автоматически увеличивающийся числовой ID.
* `VARCHAR` — хранит текст.
* `INT` — хранит целые числа.
* `NUMERIC` — хранит точные числовые значения.

### Работа с данными

* `INSERT INTO` — добавляет строки.
* `VALUES` — задаёт значения.
* `UPDATE` — изменяет строки.
* `SET` — задаёт новые значения.
* `DELETE FROM` — удаляет строки.
* `WHERE` — определяет, какие строки затронуть.
* `NOT EXISTS` — позволяет удалить строки, для которых не существует соответствия.
* Подзапрос — позволяет использовать результат другого запроса внутри `UPDATE` или `DELETE`.

### Изменение значения на процент

Увеличить зарплату на `10%`:

```sql
UPDATE employees
SET salary = salary * 1.10;
```

Уменьшить на `10%`:

```sql
UPDATE employees
SET salary = salary * 0.90;
```

---

## 💡 Примеры

### 1. Создать базу данных

```sql
CREATE DATABASE company;
```

---

### 2. Создать таблицу

```sql
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    salary NUMERIC(10, 2),
    department_id INT
);
```

---

### 3. Добавить одного сотрудника

```sql
INSERT INTO employees (first_name, age, salary)
VALUES ('John', 30, 4000);
```

---

### 4. Добавить нескольких сотрудников

```sql
INSERT INTO employees (first_name, age, salary)
VALUES
    ('John', 30, 4000),
    ('Anna', 25, 3500),
    ('Mike', 40, 5000);
```

---

### 5. Изменить зарплату одного сотрудника

```sql
UPDATE employees
SET salary = 4500
WHERE first_name = 'John';
```

---

### 6. Изменить несколько столбцов

```sql
UPDATE employees
SET
    salary = 5000,
    age = 31
WHERE employee_id = 1;
```

---

### 7. Увеличить зарплату на 10%

```sql
UPDATE employees
SET salary = salary * 1.10
WHERE department_id = 2;
```

Здесь зарплата сотрудников отдела `2` увеличится на `10%`.

---

### 8. Удалить сотрудников по условию

```sql
DELETE FROM employees
WHERE age > 50;
```

Удаляются только сотрудники старше 50 лет.

---

### 9. `DELETE` с подзапросом

Например, удалить сотрудников из отдела `IT`:

```sql
DELETE FROM employees
WHERE department_id = (
    SELECT id
    FROM departments
    WHERE department_name = 'IT'
);
```

Подзапрос сначала находит `id` отдела `IT`, после чего `DELETE` удаляет соответствующих сотрудников.

---

### 10. `DELETE` с `NOT EXISTS`

Удалить сотрудников, для которых **нет соответствующего отдела**:

```sql
DELETE FROM employees e
WHERE NOT EXISTS (
    SELECT 1
    FROM departments d
    WHERE d.id = e.department_id
);
```

Логика:

```text
employees
    ↓
проверяем department_id
    ↓
существует соответствующий department?
    ↓
НЕТ → DELETE
```

---

## 🔥 Главное, что нужно запомнить

```text
CREATE DATABASE → создать базу данных

CREATE TABLE
→ создать таблицу

INSERT
→ добавить данные

UPDATE
→ изменить данные

DELETE
→ удалить данные
```

Полная логика работы:

```text
DATABASE
   ↓
TABLE
   ↓
INSERT
   ↓
SELECT
   ↓
UPDATE / DELETE
```

И особенно важно:

```text
UPDATE + WHERE
→ изменить определённые строки

DELETE + WHERE
→ удалить определённые строки

UPDATE без WHERE
→ изменить ВСЕ строки

DELETE без WHERE
→ удалить ВСЕ строки
```

`CREATE DATABASE` и `CREATE TABLE` относятся к **DDL (Data Definition Language)** — они создают структуру базы данных.

`INSERT`, `UPDATE` и `DELETE` относятся к **DML (Data Manipulation Language)** — они изменяют данные внутри этой структуры.
