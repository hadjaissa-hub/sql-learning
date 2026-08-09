# 📚 SQL — LAG / LEAD

## 🎯 Что я изучил

Ты изучил оконные функции `LAG()` и `LEAD()`, которые позволяют **получить значение из другой строки относительно текущей**.

* `LAG()` → значение из **предыдущей строки**.
* `LEAD()` → значение из **следующей строки**.

Они особенно полезны, когда нужно сравнить текущую строку с предыдущей или следующей.

---

## 🧠 Главные понятия

### `LAG()`

Получает значение из предыдущей строки относительно текущей.

```sql id="p7x3m2"
LAG(salary) OVER(
    ORDER BY salary
)
```

Например:

| salary | previous_salary |
| -----: | --------------: |
|   3000 |          `NULL` |
|   4000 |            3000 |
|   5000 |            4000 |

У первой строки нет предыдущей строки, поэтому результат — `NULL`.

---

### `LEAD()`

Получает значение из следующей строки.

```sql id="k4n8v5"
LEAD(salary) OVER(
    ORDER BY salary
)
```

Например:

| salary | next_salary |
| -----: | ----------: |
|   3000 |        4000 |
|   4000 |        5000 |
|   5000 |      `NULL` |

У последней строки нет следующей строки, поэтому результат — `NULL`.

---

### `ORDER BY` внутри `OVER()`

Очень важен для `LAG()` и `LEAD()`, потому что он определяет, **какая строка считается предыдущей и следующей**.

```sql id="w9c2q6"
LAG(salary) OVER(
    ORDER BY salary
)
```

---

## 📝 Основной синтаксис

### `LAG()`

```sql id="a6m3r8"
LAG(column_name) OVER(
    ORDER BY column_name
)
```

### `LEAD()`

```sql id="d5k7p1"
LEAD(column_name) OVER(
    ORDER BY column_name
)
```

Можно указать, на сколько строк нужно отступить:

```sql id="v2n9x4"
LAG(salary, 2) OVER(
    ORDER BY salary
)
```

Здесь берётся значение **на 2 строки раньше**.

---

## 🔑 Важные команды / конструкции

* `LAG()` — получает значение из предыдущей строки.
* `LEAD()` — получает значение из следующей строки.
* `OVER()` — определяет окно.
* `ORDER BY` — определяет порядок строк.
* `LAG(column, n)` — получить значение на `n` строк раньше.
* `LEAD(column, n)` — получить значение на `n` строк позже.
* `NULL` — появляется, если нужной предыдущей/следующей строки нет.

Также `LAG()` и `LEAD()` можно комбинировать с `PARTITION BY`:

```sql id="s8q4m6"
LAG(salary) OVER(
    PARTITION BY department_id
    ORDER BY salary
)
```

В таком случае предыдущая строка ищется **только внутри того же отдела**.

---

## 💡 Примеры

### 1. Получить зарплату предыдущего сотрудника

```sql id="h3v7k9"
SELECT
    first_name,
    salary,
    LAG(salary) OVER(
        ORDER BY salary
    ) AS previous_salary
FROM employees;
```

---

### 2. Получить зарплату следующего сотрудника

```sql id="q5m2x8"
SELECT
    first_name,
    salary,
    LEAD(salary) OVER(
        ORDER BY salary
    ) AS next_salary
FROM employees;
```

---

### 3. Сравнить текущую зарплату с предыдущей

Можно получить предыдущую зарплату и вычислить разницу:

```sql id="n7p4c2"
SELECT
    first_name,
    salary,
    salary - LAG(salary) OVER(
        ORDER BY salary
    ) AS salary_difference
FROM employees;
```

Например:

| salary | previous_salary | difference |
| -----: | --------------: | ---------: |
|   3000 |          `NULL` |     `NULL` |
|   4000 |            3000 |       1000 |
|   5000 |            4000 |       1000 |

---

### 4. Сравнение внутри каждого отдела

```sql id="r6w8j3"
SELECT
    first_name,
    department_id,
    salary,
    LAG(salary) OVER(
        PARTITION BY department_id
        ORDER BY salary
    ) AS previous_salary
FROM employees;
```

Теперь сотрудник сравнивается с предыдущим сотрудником **внутри своего отдела**.

---

## 🔥 Главное, что нужно запомнить

```text id="z4m6q1"
LAG()
→ посмотреть назад
→ предыдущая строка

LEAD()
→ посмотреть вперёд
→ следующая строка
```

И:

```text id="e8r2v5"
ORDER BY
→ определяет порядок строк

PARTITION BY
→ определяет отдельные группы,
   внутри которых ищется предыдущая/следующая строка
```

**Простая ассоциация:**

> `LAG` = шаг назад
> `LEAD` = шаг вперёд
