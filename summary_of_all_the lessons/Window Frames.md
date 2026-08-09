# 📚 SQL — Window Frames

## 🎯 Что я изучил

Ты изучил **оконные рамки (Window Frames)** — способ указать, **какие именно строки должны участвовать в оконном вычислении для каждой текущей строки**.

Главная конструкция:

```sql id="u6v3m8"
ROWS BETWEEN ... AND ...
```

С помощью неё можно создавать, например:

* накопительные суммы (`running total`);
* скользящие вычисления;
* вычисления относительно текущей строки.

---

## 🧠 Главные понятия

### Window Frame

Window Frame определяет **границы окна относительно текущей строки**.

Например:

```sql id="p4k8s2"
ROWS BETWEEN 1 PRECEDING AND CURRENT ROW
```

Означает:

> взять **предыдущую строку + текущую строку**.

Если значения такие:

```text id="d8m2q5"
100
200
300
400
```

Для строки `300` рамка будет:

```text id="q1v6n9"
200 + 300
```

---

### `PRECEDING`

Означает строки **до текущей строки**.

```sql id="z7c3m5"
1 PRECEDING
```

→ одна строка перед текущей.

```sql id="f2r8k4"
2 PRECEDING
```

→ две строки перед текущей.

---

### `CURRENT ROW`

Означает **текущую строку**.

```sql id="s5n9p3"
CURRENT ROW
```

---

### `UNBOUNDED PRECEDING`

Означает **самую первую строку окна**.

```sql id="w4m7x2"
UNBOUNDED PRECEDING
```

То есть:

> от начала данных до текущей строки.

---

## 📝 Основной синтаксис

Общий вид:

```sql id="c8q2v6"
FUNCTION(column) OVER(
    ORDER BY column
    ROWS BETWEEN start AND end
)
```

Например:

```sql id="n5j3r8"
SUM(salary) OVER(
    ORDER BY salary
    ROWS BETWEEN 1 PRECEDING AND CURRENT ROW
)
```

---

## 🔑 Важные команды / конструкции

* `ROWS` — работа с конкретными строками.
* `BETWEEN ... AND ...` — задаёт начало и конец рамки.
* `PRECEDING` — строки перед текущей.
* `CURRENT ROW` — текущая строка.
* `UNBOUNDED PRECEDING` — от самой первой строки.
* `ORDER BY` — определяет порядок строк, относительно которого строится рамка.

### Основные варианты

```sql id="h7m4c9"
ROWS BETWEEN 1 PRECEDING AND CURRENT ROW
```

→ предыдущая + текущая.

```sql id="b3x8q1"
ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
```

→ от первой строки до текущей.

---

## 💡 Примеры

### 1. Running Total — накопительная сумма

```sql id="r6p2w9"
SELECT
    first_name,
    salary,
    SUM(salary) OVER(
        ORDER BY salary
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total
FROM employees;
```

Если зарплаты:

```text id="k4v8s3"
1000
2000
3000
4000
```

Получим:

```text id="m9q5x2"
1000
3000
6000
10000
```

Каждая строка содержит сумму **от начала до текущей строки**.

---

### 2. Предыдущая + текущая строка

```sql id="t7c3n6"
SELECT
    first_name,
    salary,
    SUM(salary) OVER(
        ORDER BY salary
        ROWS BETWEEN 1 PRECEDING AND CURRENT ROW
    ) AS two_row_sum
FROM employees;
```

Для зарплат:

```text id="v2m6q8"
1000
2000
3000
4000
```

Получим:

```text id="x5r9k1"
1000
3000
5000
7000
```

Потому что:

```text id="j8p3d4"
1000                → 1000
1000 + 2000         → 3000
2000 + 3000         → 5000
3000 + 4000         → 7000
```

---

### 3. Running Total внутри каждого отдела

Можно объединить `PARTITION BY` и Window Frame:

```sql id="q6n4w8"
SELECT
    first_name,
    department_id,
    salary,
    SUM(salary) OVER(
        PARTITION BY department_id
        ORDER BY salary
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS department_running_total
FROM employees;
```

Здесь накопительная сумма начинается **заново для каждого отдела**.

---

## 🔥 Главное, что нужно запомнить

```text id="y3m7q2"
ROWS BETWEEN
→ определяет, какие строки участвуют в вычислении
```

```text id="a8v4n6"
1 PRECEDING
→ одна строка назад

CURRENT ROW
→ текущая строка

UNBOUNDED PRECEDING
→ от самого начала
```

И самая важная конструкция для **running total**:

```sql id="p5c9r3"
SUM(column) OVER(
    ORDER BY column
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
)
```

**Простая ассоциация:**

> `Window Function` → что вычислять
> `PARTITION BY` → в какой группе
> `ORDER BY` → в каком порядке
> `ROWS BETWEEN` → какие строки брать для вычисления
