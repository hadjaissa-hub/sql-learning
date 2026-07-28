# Module 2 — Filtering Data with WHERE

## Goal

Learn how to filter rows using conditions.

---

## Theory

### WHERE

Used to return only rows that satisfy a condition.

Syntax:

```sql
SELECT column_name
FROM table_name
WHERE condition;
```

---

## Comparison Operators

| Operator | Meaning |
|----------|---------|
| = | Equal |
| <> | Not equal |
| > | Greater than |
| < | Less than |
| >= | Greater than or equal |
| <= | Less than or equal |

---

## Logical Operators

### AND

All conditions must be true.

Example:

```sql
SELECT *
FROM employees
WHERE age > 30
AND salary > 4000;
```

---

### OR

At least one condition must be true.

Example:

```sql
SELECT *
FROM employees
WHERE department = 'IT'
OR department = 'HR';
```

---

## Combining AND and OR

Use parentheses to make complex conditions easier to read.

Example:

```sql
SELECT *
FROM employees
WHERE (department = 'IT'
       OR department = 'HR')
AND salary > 3500;
```

---

## Common Mistakes

### 1. Missing value after an operator

❌

```sql
WHERE age >
```

✅

```sql
WHERE age > 30
```

---

### 2. Missing FROM

❌

```sql
SELECT *
WHERE salary > 3000;
```

✅

```sql
SELECT *
FROM employees
WHERE salary > 3000;
```

---

### 3. Semicolon in the wrong place

❌

```sql
SELECT *
FROM employees;
WHERE age > 30;
```

✅

```sql
SELECT *
FROM employees
WHERE age > 30;
```

---

## What I Learned

- Use WHERE to filter rows.
- Use comparison operators.
- Combine conditions with AND.
- Combine conditions with OR.
- Write readable SQL queries.

---

## Module Statistics

Exercises completed: 20

Accuracy: 90%

Status: Completed ✅