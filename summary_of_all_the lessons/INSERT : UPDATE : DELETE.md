# 📚 SQL — INSERT / UPDATE / DELETE

## 🎯 Что я изучил

Ты изучил основные SQL-команды для **изменения данных в таблицах**:

* `INSERT` — добавление новых строк;
* `UPDATE` — изменение существующих строк;
* `DELETE` — удаление строк.
* `DELETE` — CREATE DATABASE

Также ты научился использовать их вместе с **условиями и подзапросами**, в том числе `NOT EXISTS`.

> Важно: `SELECT` получает данные, а `INSERT`, `UPDATE` и `DELETE` изменяют данные.

---

## 🧠 Главные понятия

### `INSERT INTO`

Используется для **добавления новых строк** в таблицу.

Можно добавить одну или несколько строк.

---

### `UPDATE`

Используется для **изменения существующих данных**.

Можно изменить один или сразу несколько столбцов.

```sql id="h7m2q4"
UPDATE employees
SET salary = 4000
WHERE employee_id = 1;
```

---

### `DELETE`

Используется для **удаления строк** из таблицы.

Можно удалять строки по условию:

```sql id="k4p8v1"
DELETE FROM employees
WHERE age > 50;
```

---

### `WHERE` в `UPDATE` и `DELETE`

`WHERE` определяет, **какие строки будут изменены или удалены**.

Особенно важно помнить:

```sql id="r5n9c3"
UPDATE employees
SET salary = 5000;
```

Без `WHERE` будут изменены **все строки**.

И:

```sql id="w2x6m8"
DELETE FROM employees;
```

Без `WHERE` будут удалены **все строки таблицы**.

---

## 📝 Основной синтаксис

### Вставка одной строки

```sql id="s8q3j6"
INSERT INTO table_name (column1, column2)
VALUES (value1, value2);
```

### Вставка нескольких строк

```sql id="p4v7k2"
INSERT INTO table_name (column1, column2)
VALUES
    (value1, value2),
    (value3, value4),
    (value5, value6);
```

### `UPDATE`

```sql id="m6c9r4"
UPDATE table_name
SET column1 = value1
WHERE condition;
```

### Изменение нескольких столбцов

```sql id="x3n8w5"
UPDATE employees
SET
    salary = 5000,
    age = 30
WHERE employee_id = 1;
```

### `DELETE`

```sql id="q7k2p9"
DELETE FROM table_name
WHERE condition;
```

---

## 🔑 Важные команды / конструкции

* `INSERT INTO` — добавляет строки.
* `VALUES` — задаёт значения для вставляемых строк.
* `UPDATE` — изменяет существующие строки.
* `SET` — указывает новые значения.
* `DELETE FROM` — удаляет строки.
* `WHERE` — определяет, какие строки затронуть.
* `NOT EXISTS` — позволяет удалить строки, для которых не существует соответствия.
* Подзапрос — позволяет использовать результат другого запроса внутри `UPDATE` или `DELETE`.

### Изменение значения на процент

Чтобы увеличить зарплату, например, на `10%`:

```sql id="v5r1m7"
UPDATE employees
SET salary = salary * 1.10;
```

Уменьшить на `10%`:

```sql id="d8q4n2"
UPDATE employees
SET salary = salary * 0.90;
```

---

## 💡 Примеры

### 1. Добавить одного сотрудника

```sql id="c6m3x8"
INSERT INTO employees (first_name, age, salary)
VALUES ('John', 30, 4000);
```

---

### 2. Добавить нескольких сотрудников

```sql id="n4p7s2"
INSERT INTO employees (first_name, age, salary)
VALUES
    ('John', 30, 4000),
    ('Anna', 25, 3500),
    ('Mike', 40, 5000);
```

---

### 3. Изменить зарплату одного сотрудника

```sql id="j8v5q3"
UPDATE employees
SET salary = 4500
WHERE first_name = 'John';
```

---

### 4. Изменить несколько столбцов

```sql id="r2k6w9"
UPDATE employees
SET
    salary = 5000,
    age = 31
WHERE employee_id = 1;
```

---

### 5. Увеличить зарплату на 10%

```sql id="f7m4c1"
UPDATE employees
SET salary = salary * 1.10
WHERE department_id = 2;
```

Здесь зарплата сотрудников отдела `2` увеличится на `10%`.

---

### 6. Удалить сотрудников по условию

```sql id="t9q3n6"
DELETE FROM employees
WHERE age > 50;
```

Удаляются только сотрудники старше 50 лет.

---

### 7. `DELETE` с подзапросом

Например, удалить сотрудников из отдела `IT`:

```sql id="b5x8p2"
DELETE FROM employees
WHERE department_id = (
    SELECT id
    FROM departments
    WHERE department_name = 'IT'
);
```

Подзапрос сначала находит `id` отдела `IT`, после чего `DELETE` удаляет соответствующих сотрудников.

---

### 8. `DELETE` с `NOT EXISTS`

Удалить сотрудников, для которых **нет соответствующего отдела**:

```sql id="m3v7k4"
DELETE FROM employees e
WHERE NOT EXISTS (
    SELECT 1
    FROM departments d
    WHERE d.id = e.department_id
);
```

Логика:

```text id="q8c2n5"
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

```text id="z4m6p8"
INSERT → добавить данные

UPDATE → изменить данные

DELETE → удалить данные
```

И особенно важно:

```text id="y7n3c1"
UPDATE + WHERE
→ изменить определённые строки

DELETE + WHERE
→ удалить определённые строки

UPDATE без WHERE
→ изменить ВСЕ строки

DELETE без WHERE
→ удалить ВСЕ строки
```

`INSERT / UPDATE / DELETE` — это базовые **DML-команды (Data Manipulation Language)** для работы непосредственно с данными в таблицах.
