# INNER JOIN

## What is INNER JOIN?

`INNER JOIN` combines rows from two tables when matching values exist.

---

## Syntax

```sql
SELECT
    e.first_name,
    d.department_name
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.id;
```

---

## Why use JOIN?

Data is usually stored in multiple related tables.

Example:

employees

| id | first_name | department_id |
|---:|------------|--------------:|
| 1 | Alex | 2 |

departments

| id | department_name |
|---:|-----------------|
| 2 | IT |

Result:

| first_name | department_name |
|------------|-----------------|
| Alex | IT |

---

## Best Practices

- Use table aliases (`e`, `d`).
- Always qualify columns when joining tables.
- Keep `ON` conditions readable.

---

## Common Mistakes

❌

```sql
JOIN INNER departments
```

✅

```sql
INNER JOIN departments
```

❌

```sql
WHERE department = 'IT'
```

✅

```sql
WHERE d.department_name = 'IT'
```

---

## Status

🟡 In Progress