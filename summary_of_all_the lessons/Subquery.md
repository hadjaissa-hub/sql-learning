# 📚 SQL — Подзапросы

## 🎯 Что я изучил

Ты изучил **подзапросы (Subqueries)** — SQL-запросы, которые находятся внутри другого SQL-запроса.

Подзапрос позволяет использовать результат одного запроса внутри другого.

Ты изучил несколько основных вариантов:

* обычные подзапросы;
* подзапросы с `IN`;
* `EXISTS` и `NOT EXISTS`;
* коррелированные подзапросы.

---

## 🧠 Главные понятия

### Подзапрос (Subquery)

Это запрос, расположенный внутри другого запроса.

Например:

```sql id="a8f2k4"
SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
```

Внутренний запрос сначала находит **среднюю зарплату**, а внешний выбирает сотрудников, которые получают больше неё.

---

### `IN` + подзапрос

Используется, когда нужно проверить, входит ли значение в **результат другого запроса**.

```sql id="m6p9s2"
SELECT *
FROM employees
WHERE department_id IN (
    SELECT id
    FROM departments
    WHERE department_name = 'IT'
);
```

---

### `EXISTS`

Проверяет, существует ли **хотя бы одна строка**, удовлетворяющая условию.

```sql id="q4v7n1"
WHERE EXISTS (
    SELECT 1
    ...
)
```

Главное: `EXISTS` проверяет **существование результата**, а не возвращает сами данные подзапроса.

---

### `NOT EXISTS`

Проверяет, что подходящих строк **не существует**.

```sql id="r3k8w5"
WHERE NOT EXISTS (
    SELECT 1
    ...
)
```

Часто используется для поиска записей, у которых **нет соответствующих записей** в другой таблице.

---

### Коррелированный подзапрос

Это подзапрос, который **ссылается на строку внешнего запроса**.

Например:

```sql id="t5c9j3"
SELECT e.first_name, e.salary
FROM employees e
WHERE e.salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);
```

Здесь `e.department_id` берётся из внешнего запроса.

Поэтому средняя зарплата считается **отдельно для каждого отдела**, а затем зарплата сотрудника сравнивается со средней зарплатой его отдела.

---

## 📝 Основной синтаксис

### Обычный подзапрос

```sql id="y2h6p8"
SELECT ...
FROM table
WHERE column > (
    SELECT ...
    FROM table
);
```

### `IN` + подзапрос

```sql id="c7m4x9"
SELECT ...
FROM table
WHERE column IN (
    SELECT column
    FROM table
    WHERE condition
);
```

### `EXISTS`

```sql id="v1q5s7"
SELECT ...
FROM table1 t1
WHERE EXISTS (
    SELECT 1
    FROM table2 t2
    WHERE t2.id = t1.id
);
```

### `NOT EXISTS`

```sql id="n8k3d6"
SELECT ...
FROM table1 t1
WHERE NOT EXISTS (
    SELECT 1
    FROM table2 t2
    WHERE t2.id = t1.id
);
```

### Коррелированный подзапрос

```sql id="p6r2w4"
SELECT ...
FROM table t1
WHERE column > (
    SELECT AVG(column)
    FROM table t2
    WHERE t2.group_id = t1.group_id
);
```

---

## 🔑 Важные команды / конструкции

* `Subquery` — запрос внутри другого запроса.
* `IN` — проверяет, входит ли значение в набор результатов.
* `EXISTS` — проверяет наличие хотя бы одной подходящей строки.
* `NOT EXISTS` — проверяет отсутствие подходящих строк.
* `SELECT 1` — часто используется внутри `EXISTS`, когда сами значения подзапроса не нужны.
* Коррелированный подзапрос — подзапрос, который зависит от строки внешнего запроса.
* `()` — подзапрос обычно заключается в скобки.

---

## 💡 Примеры

### 1. Зарплата выше средней

```sql id="e8k2m5"
SELECT first_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
```

**Логика:**

```text
AVG(salary)
     ↓
средняя зарплата
     ↓
salary > средняя
     ↓
подходящие сотрудники
```

---

### 2. Сотрудники из определённых отделов

```sql id="z4p7c1"
SELECT first_name, department_id
FROM employees
WHERE department_id IN (
    SELECT id
    FROM departments
    WHERE department_name IN ('IT', 'HR')
);
```

---

### 3. `EXISTS`

```sql id="b6n3v8"
SELECT e.first_name
FROM employees e
WHERE EXISTS (
    SELECT 1
    FROM departments d
    WHERE d.id = e.department_id
);
```

Получаем сотрудников, для которых существует соответствующий отдел.

---

### 4. `NOT EXISTS`

```sql id="j9s5q2"
SELECT e.first_name
FROM employees e
WHERE NOT EXISTS (
    SELECT 1
    FROM departments d
    WHERE d.id = e.department_id
);
```

Получаем сотрудников, для которых **нет соответствующего отдела**.

---

### 5. Коррелированный подзапрос

```sql id="x3v8k6"
SELECT
    e.first_name,
    e.salary,
    e.department_id
FROM employees e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);
```

Здесь каждый сотрудник сравнивается **со средней зарплатой именно своего отдела**.

---

### 🔥 Главное, что нужно запомнить

```text
Обычный подзапрос
→ результат одного запроса используется в другом

IN
→ значение входит в результат подзапроса

EXISTS
→ существует подходящая строка

NOT EXISTS
→ подходящей строки не существует

Коррелированный подзапрос
→ подзапрос зависит от текущей строки внешнего запроса
```

Это действительно важный этап: после `JOIN`, `GROUP BY`, `HAVING` и подзапросов ты уже работаешь с довольно существенной частью практического SQL для Junior.
