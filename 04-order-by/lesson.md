# Module 4 — ORDER BY

## Goal

Learn how to sort query results.

---

## ORDER BY

`ORDER BY` sorts rows returned by a query.

Syntax:

```sql
SELECT *
FROM employees
ORDER BY salary;

ASC
Ascending order (smallest to largest, A to Z).
Example:
SELECT *
FROM employees
ORDER BY age ASC;

DESC
Descending order (largest to smallest, Z to A).
Example:
SELECT *
FROM employees
ORDER BY salary DESC;

ORDER BY after WHERE
Filtering happens first, then sorting.
SELECT *
FROM employees
WHERE salary > 3500
ORDER BY salary DESC;