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