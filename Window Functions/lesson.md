# Lesson 10 — PARTITION BY

## 🎯 Goal

Learn how to split data into independent windows while keeping every row in the result.

---

## 🧠 Key Idea

`OVER()` creates one window for the entire result set.

`PARTITION BY` splits that window into smaller groups.

Think of it as:

- GROUP BY → one result per group
- PARTITION BY → one window per group, but all rows stay visible

---

## 📌 Syntax

```sql
FUNCTION(column) OVER (
    PARTITION BY column
)
```

Examples:

```sql
AVG(salary) OVER(PARTITION BY department_id)

MAX(salary) OVER(PARTITION BY department_id)

COUNT(*) OVER(PARTITION BY department_id)
```

---

# Lesson 11 — ROW_NUMBER()

## 🎯 Goal

Learn how to assign a unique sequential number to every row within a sorted result set.

---

## 🧠 Key Idea

`ROW_NUMBER()` gives every row its own unique position.

Even if two rows have the same value, their row numbers are always different.

Example:

```sql
ROW_NUMBER() OVER(
    ORDER BY salary DESC
)
```

---

## 📌 Syntax

```sql
ROW_NUMBER() OVER(
    ORDER BY column
)
```

Within groups:

```sql
ROW_NUMBER() OVER(
    PARTITION BY department_id
    ORDER BY salary DESC
)
```

---