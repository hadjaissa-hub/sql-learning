Подзапрос выполняется первым.
Например:
SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

# Lesson 15 — Subqueries (Scalar Subqueries)

## 📌 Что изучили

Подзапрос — это запрос внутри другого запроса.

Он сначала выполняется сам, а затем его результат используется внешним запросом.

Пример:

```sql
SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
```

---

## Где используются подзапросы

Чаще всего:

- WHERE
- HAVING
- SELECT
- FROM

В этом уроке использовали подзапросы в `WHERE`.

---

## Алгоритм решения

1. Определи значение, которое нужно сначала вычислить.
2. Напиши внутренний запрос.
3. Используй его результат во внешнем запросе.

---

## Типичный шаблон

```sql
SELECT ...
FROM table
WHERE column > (
    SELECT ...
    FROM table
);
```

---

## Что уже умеем

✔ сравнение с AVG()

✔ сравнение с MIN()

✔ сравнение с MAX()

✔ получение значения из другой таблицы

Например:

```sql
SELECT *
FROM employees
WHERE department_id = (
    SELECT id
    FROM departments
    WHERE department_name = 'IT'
);

## Шпаргалка

Одно значение

```sql
=
<
>
>=
<=
<>
```

Несколько значений

```sql
IN (...)
```

---

## Что важно запомнить

✔ Подзапрос выполняется первым.

✔ Его результат передается внешнему запросу.

✔ Если ожидается одно значение — используем обычное сравнение.

✔ Если несколько значений — используем `IN`.
## 📌 Что изучили

Подзапрос может возвращать не одно значение, а несколько.

В этом случае вместо обычного сравнения (`=`) используется оператор `IN`.

---

## Когда использовать `IN`

Если подзапрос возвращает список значений.

Например:

```sql
SELECT *
FROM employees
WHERE department_id IN (
    SELECT id
    FROM departments
    WHERE department_name IN ('IT', 'HR')
);
```
# Lesson 17 — EXISTS & Correlated Subqueries

## 📌 Что изучили

`EXISTS` проверяет не значение, а **существование хотя бы одной строки**.

Если подзапрос вернул хотя бы одну строку → `EXISTS = TRUE`.

Если не вернул ни одной → `EXISTS = FALSE`.

---

## EXISTS

Пример:

```sql
SELECT *
FROM departments d
WHERE EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.id
);
```

Вернуть отделы, в которых есть сотрудники.

---

## NOT EXISTS

```sql
SELECT *
FROM departments d
WHERE NOT EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.id
);
```

Вернуть отделы, в которых нет сотрудников.

---

# Что такое коррелированный подзапрос

Главная особенность:

Внутренний запрос использует данные внешнего запроса.

Например:

```sql
SELECT *
FROM departments d
WHERE EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.id
);
```

Здесь

```sql
d.id
```

принадлежит внешнему запросу.

Поэтому внутренний запрос выполняется отдельно для каждой строки таблицы `departments`.

---

## Главный шаблон

```sql
SELECT ...
FROM parent p
WHERE EXISTS (
    SELECT 1
    FROM child c
    WHERE c.parent_id = p.id
);
```

Именно строка

```sql
c.parent_id = p.id
```

делает подзапрос коррелированным.

---

## Алгоритм

1. Выбираем строку внешнего запроса.
2. Выполняем внутренний запрос только для неё.
3. Если найдена хотя бы одна строка — условие истинно.
4. Переходим к следующей строке.


### Correlated subqueries
Найти сотрудников с максимальной зарплатой в своем отделе.
SELECT *
FROM employees e
WHERE salary =
(
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = e.department_id
);


Найти самых молодых сотрудников каждого отдела.
SELECT *
FROM employees e
WHERE age =
(
    SELECT MIN(age)
    FROM employees
    WHERE department_id = e.department_id
);