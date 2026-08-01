# Module 6 — GROUP BY

## Goal

Learn how to group rows and calculate statistics for each group.

---

# GROUP BY

`GROUP BY` groups rows that have the same value in one or more columns.

Example:

```sql
SELECT
    department,
    COUNT(*) AS total_employees
FROM employees
GROUP BY department;