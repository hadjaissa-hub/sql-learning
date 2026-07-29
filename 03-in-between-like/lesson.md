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