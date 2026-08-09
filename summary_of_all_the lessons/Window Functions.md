# 📚 SQL — Window Functions

## 🎯 Что я изучил

Ты изучил **оконные функции (Window Functions)** — функции, которые позволяют выполнять вычисления по набору связанных строк, **не объединяя их в одну строку**, как это делает `GROUP BY`.

Ты прошёл:

* `OVER()`;
* `PARTITION BY`;
* `ROW_NUMBER()`;
* `RANK()`;
* `DENSE_RANK()`;
* различия между функциями ранжирования.

Главная идея:

> **Window Function вычисляет значение для каждой строки, сохраняя все исходные строки.**

---

## 🧠 Главные понятия

### `OVER()`

`OVER()` превращает обычную функцию в оконную.

Например:

```sql id="g4s7p2"
SELECT
    first_name,
    salary,
    AVG(salary) OVER() AS average_salary
FROM employees;
```

Средняя зарплата будет показана **в каждой строке**, при этом сотрудники не объединяются.

---

### `PARTITION BY`

Разделяет строки на отдельные группы для оконной функции.

```sql id="k8m3v6"
SELECT
    first_name,
    department_id,
    salary,
    AVG(salary) OVER(
        PARTITION BY department_id
    ) AS department_avg
FROM employees;
```

Здесь средняя зарплата считается **отдельно для каждого отдела**, но все сотрудники остаются в результате.

Можно представить:

```text
Все сотрудники
      ↓
PARTITION BY department_id
      ↓
Отдел 1 | Отдел 2 | Отдел 3
      ↓
AVG() отдельно внутри каждой группы
```

---

### `ROW_NUMBER()`

Присваивает каждой строке **уникальный последовательный номер**.

```sql id="q2n5r8"
ROW_NUMBER() OVER(
    ORDER BY salary DESC
)
```

Например:

```text
salary     row_number
5000       1
4500       2
4500       3
4000       4
```

Даже если зарплаты одинаковые, номера будут разными.

---

### `RANK()`

Присваивает ранг, но при одинаковых значениях даёт одинаковое место.

```sql id="w6p3c9"
RANK() OVER(
    ORDER BY salary DESC
)
```

Например:

```text
salary     rank
5000       1
4500       2
4500       2
4000       4
```

После одинаковых значений появляется **пропуск**.

---

### `DENSE_RANK()`

Похож на `RANK()`, но **не оставляет пропусков**.

```sql id="v7k4m2"
DENSE_RANK() OVER(
    ORDER BY salary DESC
)
```

Результат:

```text
salary     dense_rank
5000       1
4500       2
4500       2
4000       3
```

---

## 📝 Основной синтаксис

### Оконная агрегатная функция

```sql id="c5x8n1"
FUNCTION(column) OVER()
```

Например:

```sql id="s9m2q7"
AVG(salary) OVER()
```

### С `PARTITION BY`

```sql id="r3v6k4"
FUNCTION(column) OVER(
    PARTITION BY column
)
```

### Ранжирование

```sql id="p8d4w5"
ROW_NUMBER() OVER(
    ORDER BY column DESC
)
```

```sql id="h6j3t9"
RANK() OVER(
    ORDER BY column DESC
)
```

```sql id="n2q7c5"
DENSE_RANK() OVER(
    ORDER BY column DESC
)
```

---

## 🔑 Важные команды / конструкции

* `OVER()` — определяет окно, по которому выполняется вычисление.
* `PARTITION BY` — разделяет строки на группы внутри окна.
* `ORDER BY` внутри `OVER()` — определяет порядок строк для оконной функции.
* `ROW_NUMBER()` — уникальный номер каждой строки.
* `RANK()` — одинаковый ранг для одинаковых значений + пропуски после совпадений.
* `DENSE_RANK()` — одинаковый ранг для одинаковых значений, но без пропусков.

---

## 💡 Примеры

### 1. Средняя зарплата всех сотрудников

```sql id="f4n8s2"
SELECT
    first_name,
    salary,
    AVG(salary) OVER() AS average_salary
FROM employees;
```

В отличие от обычного:

```sql id="z7k3m6"
SELECT AVG(salary)
FROM employees;
```

оконная функция **не превращает все строки в одну**.

---

### 2. Средняя зарплата по каждому отделу

```sql id="a5q9v3"
SELECT
    first_name,
    department_id,
    salary,
    AVG(salary) OVER(
        PARTITION BY department_id
    ) AS department_avg
FROM employees;
```

---

### 3. Нумерация сотрудников по зарплате

```sql id="x8c2p5"
SELECT
    first_name,
    salary,
    ROW_NUMBER() OVER(
        ORDER BY salary DESC
    ) AS row_num
FROM employees;
```

---

### 4. Рейтинг сотрудников

```sql id="m6v4r8"
SELECT
    first_name,
    salary,
    RANK() OVER(
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;
```

---

### 5. Рейтинг без пропусков

```sql id="j3n7w2"
SELECT
    first_name,
    salary,
    DENSE_RANK() OVER(
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;
```

---

### 6. Рейтинг внутри каждого отдела

`PARTITION BY` можно комбинировать с ранжированием:

```sql id="t9k5q4"
SELECT
    first_name,
    department_id,
    salary,
    RANK() OVER(
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS department_rank
FROM employees;
```

Теперь сотрудники получают рейтинг **отдельно внутри каждого отдела**.

---

## 🔥 Главное различие `ROW_NUMBER`, `RANK`, `DENSE_RANK`

Допустим, зарплаты:

```text
5000
4500
4500
4000
```

| Зарплата | `ROW_NUMBER()` | `RANK()` | `DENSE_RANK()` |
| -------: | -------------: | -------: | -------------: |
|     5000 |              1 |        1 |              1 |
|     4500 |              2 |        2 |              2 |
|     4500 |              3 |        2 |              2 |
|     4000 |              4 |        4 |              3 |

**Запомнить:**

```text
ROW_NUMBER()
→ всегда уникальный номер

RANK()
→ одинаковое место + пропуски

DENSE_RANK()
→ одинаковое место + без пропусков
```

И ещё одна очень важная мысль:

```text
GROUP BY
→ объединяет строки

Window Function
→ НЕ объединяет строки
→ вычисляет значение, сохраняя каждую строку
```
