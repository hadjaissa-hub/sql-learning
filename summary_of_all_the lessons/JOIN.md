# 📚 SQL — JOIN

## 🎯 Что я изучил

Ты изучил **JOIN** — механизм для объединения данных из нескольких таблиц.

Ты научился:

* соединять таблицы через `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`;
* соединять несколько таблиц;
* фильтровать объединённые данные через `WHERE`;
* группировать их через `GROUP BY`;
* фильтровать группы через `HAVING`;
* сортировать результат через `ORDER BY`;
* находить записи, для которых **нет соответствия в другой таблице**.

---

## 🧠 Главные понятия

### `JOIN`

Позволяет связать строки из разных таблиц по определённому условию.

Например, есть:

**employees**

| id | name | department_id |
| -- | ---- | ------------- |
| 1  | John | 10            |
| 2  | Anna | 20            |

**departments**

| id | department_name |
| -- | --------------- |
| 10 | IT              |
| 20 | HR              |

Можно соединить их по:

```sql id="3x3j4a"
employees.department_id = departments.id
```

---

### `INNER JOIN`

Возвращает **только строки, для которых есть соответствие в обеих таблицах**.

```sql id="m5n7q2"
SELECT *
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.id;
```

Если у сотрудника нет соответствующего отдела — он не попадёт в результат.

---

### `LEFT JOIN`

Возвращает **все строки из левой таблицы**, даже если соответствия в правой таблице нет.

```sql id="g8c1v5"
SELECT *
FROM employees e
LEFT JOIN departments d
    ON e.department_id = d.id;
```

Если соответствия нет, столбцы `departments` будут иметь значение `NULL`.

---

### `RIGHT JOIN`

Работает наоборот: возвращает **все строки из правой таблицы** и соответствия из левой.

```sql id="r4t6k9"
SELECT *
FROM employees e
RIGHT JOIN departments d
    ON e.department_id = d.id;
```

---

## 📝 Основной синтаксис

```sql id="q2w7e4"
SELECT columns
FROM table1
JOIN table2
    ON table1.column = table2.column;
```

С `LEFT JOIN`:

```sql id="a6k3p8"
SELECT columns
FROM table1
LEFT JOIN table2
    ON table1.column = table2.column;
```

---

## 🔑 Важные команды / конструкции

* `INNER JOIN` — только совпадающие записи.
* `LEFT JOIN` — все записи левой таблицы + совпадения справа.
* `RIGHT JOIN` — все записи правой таблицы + совпадения слева.
* `ON` — условие, по которому соединяются таблицы.
* `WHERE` — фильтрует строки после соединения.
* `GROUP BY` — группирует объединённые данные.
* `HAVING` — фильтрует группы.
* `ORDER BY` — сортирует результат.
* `AS` — создаёт псевдоним (alias) для таблицы или столбца.

Например:

```sql id="j9p3s6"
FROM employees e
JOIN departments d
    ON e.department_id = d.id
```

Здесь `e` — сокращение для `employees`, а `d` — для `departments`.

---

## 💡 Примеры

### 1. Объединить сотрудников и отделы

```sql id="x5m8q1"
SELECT
    e.first_name,
    d.department_name
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.id;
```

Получаем имя сотрудника вместе с названием его отдела.

---

### 2. Использовать `JOIN` + `WHERE`

```sql id="n7c2v4"
SELECT
    e.first_name,
    e.salary,
    d.department_name
FROM employees e
JOIN departments d
    ON e.department_id = d.id
WHERE e.salary > 3000;
```

Сначала таблицы соединяются, затем остаются сотрудники с зарплатой больше `3000`.

---

### 3. `JOIN` + `GROUP BY`

```sql id="b4k6m2"
SELECT
    d.department_name,
    COUNT(*) AS employee_count
FROM employees e
JOIN departments d
    ON e.department_id = d.id
GROUP BY d.department_name;
```

Получаем количество сотрудников в каждом отделе.

---

### 4. `JOIN` + `HAVING`

```sql id="v8r3p5"
SELECT
    d.department_name,
    COUNT(*) AS employee_count
FROM employees e
JOIN departments d
    ON e.department_id = d.id
GROUP BY d.department_name
HAVING COUNT(*) > 2;
```

Оставляем только отделы, в которых больше двух сотрудников.

---

### 5. `JOIN` + `ORDER BY`

```sql id="k6s2x9"
SELECT
    e.first_name,
    e.salary,
    d.department_name
FROM employees e
JOIN departments d
    ON e.department_id = d.id
ORDER BY e.salary DESC;
```

Сортируем сотрудников от самой высокой зарплаты к самой низкой.

---

### 6. Найти записи без соответствия

Это один из важных приёмов:

```sql id="p9d4w7"
SELECT
    e.first_name
FROM employees e
LEFT JOIN departments d
    ON e.department_id = d.id
WHERE d.id IS NULL;
```

Что здесь происходит:

1. `LEFT JOIN` сохраняет **всех сотрудников**.
2. Если для сотрудника нет соответствующего отдела, поля `d` становятся `NULL`.
3. `WHERE d.id IS NULL` оставляет только таких сотрудников.

**Итог:** находим записи из одной таблицы, у которых **нет соответствия в другой таблице**.

---

### 🔥 Главное, что нужно запомнить

```text
INNER JOIN → только совпадения
LEFT JOIN  → всё слева + совпадения справа
RIGHT JOIN → всё справа + совпадения слева

WHERE  → фильтрация строк
GROUP BY → группировка
HAVING → фильтрация групп
ORDER BY → сортировка
```

И особенно важная конструкция:

```sql id="h4n7c2"
LEFT JOIN ...
WHERE right_table.id IS NULL
```

→ **найти записи, у которых нет соответствия в другой таблице.**
