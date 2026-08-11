Отлично. Переходим к **CTE (`WITH`)** — это последняя большая тема перед финальным проектом.

# 📘 CTE — Common Table Expression

### 🎯 Цель урока

Научиться создавать временный результат внутри SQL-запроса с помощью `WITH`, а затем использовать его как обычную таблицу.

---

## 1. Зачем нужен CTE?

Представь, что у тебя есть такой запрос:

```sql
SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
```

Он работает.

Но если подзапрос становится сложнее, запрос может быть трудно читать.

С помощью CTE можно написать понятнее:

```sql
WITH average_salary AS (
    SELECT AVG(salary) AS avg_salary
    FROM employees
)
SELECT *
FROM employees
WHERE salary > (
    SELECT avg_salary
    FROM average_salary
);
```

Здесь:

```sql
WITH average_salary AS (...)
```

создаёт **временный результат**, который существует только во время выполнения этого запроса.

---

# 2. Базовый синтаксис

```sql
WITH cte_name AS (
    SELECT ...
)
SELECT ...
FROM cte_name;
```

Например:

```sql
WITH high_salary AS (
    SELECT *
    FROM employees
    WHERE salary > 5000
)
SELECT *
FROM high_salary;
```

Логика:

```text
WITH high_salary AS (...)
        ↓
создали результат
        ↓
SELECT *
FROM high_salary
        ↓
использовали его
```

---

# 3. CTE можно представить как временную таблицу

Допустим:

```sql
WITH high_salary AS (
    SELECT *
    FROM employees
    WHERE salary > 5000
)
```

Получается что-то вроде:

| first_name | salary |
| ---------- | -----: |
| John       |   6000 |
| Sarah      |   7000 |
| Mike       |   5500 |

И затем:

```sql
SELECT *
FROM high_salary;
```

Но важно:

**CTE не создаёт настоящую постоянную таблицу в базе данных.**

После выполнения запроса `high_salary` больше не существует.

---

# 4. CTE + агрегатная функция

Например, найдём среднюю зарплату:

```sql
WITH salary_stats AS (
    SELECT AVG(salary) AS average_salary
    FROM employees
)
SELECT *
FROM salary_stats;
```

Получим примерно:

```text
average_salary
--------------
4250
```

Можно использовать результат дальше:

```sql
WITH salary_stats AS (
    SELECT AVG(salary) AS average_salary
    FROM employees
)
SELECT
    first_name,
    salary
FROM employees
WHERE salary > (
    SELECT average_salary
    FROM salary_stats
);
```

То есть:

```text
CTE
 ↓
получили среднюю зарплату
 ↓
основной запрос
 ↓
нашли сотрудников выше среднего
```

---

# 5. CTE + GROUP BY

Очень полезный вариант.

Допустим, хотим получить среднюю зарплату каждого отдела:

```sql
WITH department_stats AS (
    SELECT
        department_id,
        AVG(salary) AS average_salary
    FROM employees
    GROUP BY department_id
)
SELECT *
FROM department_stats;
```

Получится:

| department_id | average_salary |
| ------------: | -------------: |
|             1 |           4200 |
|             2 |           4700 |
|             3 |           3900 |

Теперь можем использовать этот CTE:

```sql
WITH department_stats AS (
    SELECT
        department_id,
        AVG(salary) AS average_salary
    FROM employees
    GROUP BY department_id
)
SELECT *
FROM department_stats
WHERE average_salary > 4000;
```

Получаем только отделы со средней зарплатой выше `4000`.

---

# 6. CTE + JOIN

Например, хотим получить среднюю зарплату каждого отдела вместе с названием отдела.

```sql
WITH department_stats AS (
    SELECT
        department_id,
        AVG(salary) AS average_salary
    FROM employees
    GROUP BY department_id
)
SELECT
    d.department_name,
    ds.average_salary
FROM department_stats ds
JOIN departments d
    ON ds.department_id = d.id;
```

Здесь:

```text
employees
    ↓
GROUP BY
    ↓
department_stats
    ↓
JOIN
    ↓
departments
```

---

# 7. CTE можно использовать для сложного запроса

Например, найдём сотрудников, которые получают больше средней зарплаты **своего отдела**.

Без CTE мы писали бы коррелированный подзапрос.

С CTE:

```sql
WITH department_stats AS (
    SELECT
        department_id,
        AVG(salary) AS average_salary
    FROM employees
    GROUP BY department_id
)
SELECT
    e.first_name,
    e.salary,
    d.average_salary
FROM employees e
JOIN department_stats d
    ON e.department_id = d.department_id
WHERE e.salary > d.average_salary;
```

Это очень важный паттерн:

```sql
WITH ...
SELECT ...
FROM ...
JOIN CTE ...
```

---

# 8. Несколько CTE

Можно создать несколько CTE через запятую:

```sql
WITH department_stats AS (
    SELECT
        department_id,
        AVG(salary) AS average_salary
    FROM employees
    GROUP BY department_id
),
high_salary AS (
    SELECT *
    FROM employees
    WHERE salary > 5000
)
SELECT *
FROM high_salary;
```

То есть:

```text
WITH
    CTE №1,
    CTE №2
SELECT ...
```

---

# 🧠 Главное, что нужно запомнить

CTE начинается с:

```sql
WITH
```

Структура:

```sql
WITH имя AS (
    SELECT ...
)
SELECT ...
FROM имя;
```

### CTE особенно полезен, когда:

* запрос становится слишком длинным;
* нужно вынести промежуточный результат;
* нужно несколько этапов обработки данных;
* нужно сделать сложный запрос более читаемым;
* один промежуточный результат используется дальше.

---
