# 📚 SQL — GROUP BY и HAVING

## 🎯 Что я изучил

Ты изучил **группировку данных** с помощью `GROUP BY` и фильтрацию уже созданных групп с помощью `HAVING`.

Главная идея:

* `GROUP BY` — объединяет строки в группы.
* `WHERE` — фильтрует **отдельные строки до группировки**.
* `HAVING` — фильтрует **группы после группировки**.

---

## 🧠 Главные понятия

### `GROUP BY`

Группирует строки с одинаковым значением.

Например, можно сгруппировать сотрудников по отделам:

```sql id="5m7d9n"
SELECT department_id, COUNT(*)
FROM employees
GROUP BY department_id;
```

Результат покажет количество сотрудников **в каждом отделе**.

---

### `HAVING`

Фильтрует группы после `GROUP BY`.

Например:

```sql id="k2j7q4"
SELECT department_id, COUNT(*)
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 2;
```

Здесь останутся только те отделы, где **больше 2 сотрудников**.

---

### `WHERE` vs `HAVING`

| `WHERE`                                  | `HAVING`                                   |
| ---------------------------------------- | ------------------------------------------ |
| Фильтрует строки                         | Фильтрует группы                           |
| Работает до `GROUP BY`                   | Работает после `GROUP BY`                  |
| Обычно используется с обычными условиями | Часто используется с агрегатными функциями |
| `WHERE salary > 3000`                    | `HAVING AVG(salary) > 3000`                |

Запомнить можно так:

> **WHERE → какие строки взять?**
> **GROUP BY → как их сгруппировать?**
> **HAVING → какие группы оставить?**

---

## 📝 Основной синтаксис

```sql id="6z2v5x"
SELECT column_name, AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;
```

---

## 🔑 Важные команды / конструкции

* `GROUP BY` — объединяет строки в группы.
* `HAVING` — фильтрует группы.
* `WHERE` — фильтрует строки.
* `COUNT()` — можно использовать в `HAVING`.
* `SUM()` — можно использовать в `HAVING`.
* `AVG()` — можно использовать в `HAVING`.
* `MIN()` / `MAX()` — можно использовать в `HAVING`.

Типичная конструкция:

```sql id="s7q5p1"
GROUP BY department_id
HAVING COUNT(*) > 2;
```

---

## 💡 Примеры

### Посчитать сотрудников в каждом отделе

```sql id="z7v2n3"
SELECT
    department_id,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department_id;
```

### Оставить только отделы, где больше 2 сотрудников

```sql id="m1c8s4"
SELECT
    department_id,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 2;
```

### Найти отделы со средней зарплатой больше 4000

```sql id="f4k9r2"
SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 4000;
```

### Использовать `WHERE` и `HAVING` вместе

```sql id="p3x6w8"
SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employees
WHERE age > 25
GROUP BY department_id
HAVING AVG(salary) > 4000;
```

Здесь порядок действий такой:

**1. `WHERE`** → берём сотрудников старше 25 лет
**2. `GROUP BY`** → группируем их по отделам
**3. `AVG()`** → считаем среднюю зарплату каждой группы
**4. `HAVING`** → оставляем группы со средней зарплатой больше 4000.
