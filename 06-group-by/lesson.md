# GROUP BY

## What is GROUP BY?

`GROUP BY` combines rows with the same value into groups.

Instead of one result for the whole table, SQL returns one result for each group.

---

## Basic Syntax

```sql
SELECT
    department,
    COUNT(*) AS total_employees
FROM employees
GROUP BY department;
```

---

## Example with Multiple Aggregate Functions

```sql
SELECT
    department,
    COUNT(*) AS total_employees,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary
FROM employees
GROUP BY department;
```

---

## Important Rule

Every selected column must:

- appear inside an aggregate function;

or

- be listed in `GROUP BY`.

Correct:

```sql
SELECT
    department,
    AVG(salary)
FROM employees
GROUP BY department;
```

Incorrect:

```sql
SELECT
    department,
    salary
FROM employees
GROUP BY department;
```
