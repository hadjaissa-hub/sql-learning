Полный порядок
Запомни последовательность:
FROM
INNER JOIN
ON
WHERE
GROUP BY
HAVING
ORDER BY
LIMIT
## Урок: INNER JOIN + GROUP BY

Запомни шаблон:
Это классический шаблон поиска отсутствующих данных.
SELECT ...
FROM table1 t1
LEFT JOIN table2 t2
ON t1.id = t2.table1_id
WHERE t2.id IS NULL;

### Что изучаем

До этого мы группировали данные внутри одной таблицы.

Теперь научимся:
- объединять несколько таблиц (`INNER JOIN`);
- группировать результаты (`GROUP BY`);
- использовать агрегатные функции после объединения таблиц.

---

### Схема таблиц

employees

| id | first_name | age | salary | department_id |
|----|------------|-----|--------|---------------|
| 1  | Alex       | 30  | 4200   | 2 |

departments

| id | department_name |
|----|-----------------|
| 1  | HR              |
| 2  | IT              |
| 3  | Sales           |

---

### Базовый пример

```sql
SELECT
    d.department_name,
    COUNT(*) AS total_employees
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.id
GROUP BY d.department_name;
```

---

### Использование агрегатных функций

```sql
SELECT
    d.department_name,
    AVG(e.salary) AS average_salary
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.id
GROUP BY d.department_name;
```

---

### Несколько агрегатов

```sql
SELECT
    d.department_name,
    COUNT(*) AS total_employees,
    MIN(e.salary) AS lowest_salary,
    MAX(e.salary) AS highest_salary,
    AVG(e.salary) AS average_salary
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.id
GROUP BY d.department_name;
```


LEFT JOIN
Возвращает:
все строки из левой таблицы;
совпадения из правой таблицы;
если совпадения нет — будут значения NULL.
SELECT
    e.first_name,
    d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.id;
Результат:
first_name	department_name
Alex	IT
John	HR
Kate	NULL