# Module 5 — Aggregate Functions

## Goal

Learn how to summarize data using aggregate functions.

---

# COUNT()

`COUNT()` returns the number of rows.

## Syntax

```sql
SELECT COUNT(*)
FROM employees;
```

# SUM()

`SUM()` calculates the total of numeric values.

## Syntax

```sql
SELECT SUM(salary)
FROM employees;
```

Calculate the total salary of IT employees:

```sql
SELECT SUM(salary)
FROM employees
WHERE department = 'IT';
```

Using an alias:

```sql
SELECT SUM(salary) AS total_salary
FROM employees;
```

# AVG()

`AVG()` returns the average value of a numeric column.

## Syntax

```sql
SELECT AVG(salary)
FROM employees;
```

Average salary in IT:

```sql
SELECT AVG(salary)
FROM employees
WHERE department = 'IT';
```

Average age:

```sql
SELECT AVG(age)
FROM employees;
```

Using an alias:

```sql
SELECT AVG(salary) AS average_salary
FROM employees;
```


# MIN()

`MIN()` returns the smallest value from a column.

## Syntax

```sql
SELECT MIN(salary)
FROM employees;
```

Minimum salary in IT:

```sql
SELECT MIN(salary)
FROM employees
WHERE department = 'IT';
```

Youngest employee:

```sql
SELECT MIN(age)
FROM employees;
```

Using an alias:

```sql
SELECT MIN(salary) AS minimum_salary
FROM employees;
```

# Module Summary

## Learned Functions

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

## Combined Aggregates

Multiple aggregate functions can be used in one query.

Example:

```sql
SELECT
    COUNT(*) AS total_employees,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary
FROM employees;
```