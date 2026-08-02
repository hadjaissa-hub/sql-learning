# Module 6 Summary

## Topics Covered

- GROUP BY
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- HAVING

---

## Example

```sql
SELECT
    department,
    COUNT(*) AS total_employees,
    AVG(salary) AS average_salary,
    SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING COUNT(*) >= 5;
```

---

## Key Difference

WHERE → filters rows before grouping.

HAVING → filters groups after grouping.

---

## Best Practices

- Use meaningful aliases.
- Read conditions carefully (`>`, `>=`, `<`, `<=`).
- Keep queries formatted consistently.

---

## Module Status

✅ Completed

Accuracy: 95%