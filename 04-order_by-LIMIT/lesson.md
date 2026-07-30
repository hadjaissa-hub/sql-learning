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

## Sorting by Multiple Columns

SQL allows sorting by more than one column.

Example:

```sql
SELECT *
FROM employees
ORDER BY department ASC, salary DESC;
```

How it works:

1. Sort by `department` (A → Z).
2. Inside each department, sort by `salary` (highest → lowest).

Another example:

```sql
SELECT *
FROM employees
ORDER BY salary DESC, first_name ASC;
```

This means:

- highest salaries first;
- if salaries are equal, sort alphabetically by `first_name`.


## Module 4 — ORDER BY & LIMIT

### Completed

- ORDER BY
- ASC / DESC
- Multiple column sorting
- LIMIT
