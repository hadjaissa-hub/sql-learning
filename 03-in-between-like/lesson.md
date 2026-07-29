## IN / NOT IN

### IN

`IN` проверяет, входит ли значение в список.

Example:

```sql
SELECT *
FROM employees
WHERE department IN ('IT', 'HR', 'Sales');

Equivalent to:

SELECT *
FROM employees
WHERE department = 'IT'
   OR department = 'HR'
   OR department = 'Sales';


### NOT IN

'NOT IN' проверяет, что значение не входит в список.

SELECT *
FROM employees
WHERE department NOT IN ('IT', 'HR');



## BETWEEN

`BETWEEN` используется для проверки, находится ли значение в диапазоне.

Example:

```sql
SELECT *
FROM employees
WHERE salary BETWEEN 3500 AND 5000;


NOT BETWEEN
Используется, когда значение должно находиться за пределами диапазона.

SELECT *
FROM employees
WHERE salary NOT BETWEEN 3500 AND 5000;


### LIKE / NOT LIKE
LIKE is used to search text using a pattern.

SELECT *
FROM employees
WHERE first_name LIKE 'A%';



