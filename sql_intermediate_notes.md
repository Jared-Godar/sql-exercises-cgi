# Intermediate SQL

## Set Operations

### UNION & UNION ALL

![Union](union.png)

- **PURPOSE** Combine results of two queries into one single result set
- UNION removes duplicates
- UNION ALL preserves duplicates
- Can specify column instead of `*`

```sql
SELECT * FROM table1
UNION
SELECT * FROM table2
```

### INTERSECTION

![intersect](intersect.png)

- **PURPOSE**: Returns rows that are commin in the tables

```sql
SELECT * FROM table
INTERSECT
SELECT * FROM TABLE 2
```

### EXCEPT

![except](except.png)

- **PURPOSE** returns rows in one table nut not another

```sql
SELECT * FROM TABLE 1
EXCEPT
SELECT * FROM TABLE2
```

---

## Joins 1

### INNER JOIN

- Most common type of join
- Matching records
- Focus on intersection
- Need common column between tables

```sql

--EXPLICIT

SELECT * FROM TABLE 1 INNER JOIN TABLE 2
ON TABLE1.COLUMN = TABLE2.COLUMN

-- IMPLICIT

SELECT * FROM TABLE1, TABLE2
WHERE TABLE1.COLUMN = TABLE2.COLUMN

SELECT A.ORG_ID, A_ORG_NAME, B_EMP_ID, B_EMP_NAME, B.ORG_ID
FROM ORG A INNTER JOIN EMP B
ON A.ORG_ID = B.ORG_ID

SELECT * FROM ORG A, CONSULTANT_TILE B
WHERE A.ORG_ID = B.ORG_ID
```

### tYPES

- EQUI-JOIN
  - only `=` used in join
  - most common type of inner join
  - row is associates with one or more rows in another tabel based on the equality of a column
- NON-EQUI-JOIN
  - Greater than less than, not equal to
  -List the name of all consultants that do not come from the same city as Emily Levi, but come from the same state.


```sql
SELECT c2.first_name, C2.LAST_NAME, c2.city, c2.state
FROM   consultants c1, consultants c2
WHERE  c1.first_name = 'EMILY' 
AND C1.city <> c2.city 
AND c1.state = c2.state;
```

- NATURAL JOIN
  - Excludes duplicates
- CROSS JOIN
  - Returns cartesian products

## OUTER JOIN

- LEFT
- RIGHT
- FULL

- Return rows matched between tables as well as rows that didn't match

```sql
--LEFT OUTER JOIN

SELECT table1.column, table2.column
FROM table1
LEFT OUTER JOIN table2
ON (table1.column = table2.column);

SELECT ORG.ORG_NAME, EMP.EMP_NAME
FROM ORG
LEFT OUTER JOIN EMP
ON (ORG.ORG_ID = EMP.ORG_ID);

-- RIGHT OUTER JOIN

RIGHT OUTER JOIN SYNTAX:
SELECT table1.column, table2.column
FROM table1
RIGHT OUTER JOIN table2
ON (table1.column = table2.column);

SELECT ORG.ORG_NAME, EMP.EMP_NAME
FROM ORG
RIGHT OUTER JOIN EMP
ON (ORG.ORG_ID = EMP.ORG_ID);

-- FULL OUTER JOIN

SELECT table1.column, table2.column
FROM table1
FULL OUTER JOIN table2
ON (table1.column = table2.column);

SELECT ORG.ORG_NAME, EMP.EMP_NAME
FROM ORG
FULL OUTER JOIN EMP
ON (ORG . ORG_ID = EMP. ORG_ID);
```

## SELF JOINS

- Table joins itself
- Used to compare values in a column with other values in the *same column in the same table*

```sql
SELECT DISTINCT A.FIRST_NAME, A.LAST_NAME, A.CITY,  
A.STATE FROM CONSULTANTS_CLIENT1 A, CONSULTANTS_CLIENT1 B 
WHERE A.STATE = B.STATE 
AND A.FIRST_NAME <> B.FIRST_NAME 
AND A.LAST_NAME <> B.LAST_NAME 
ORDER BY STATE, FIRST_NAME, LAST_NAME;
```

## SUB-QUERIES

- `SELECT`
- `FROM`
- `WHERE`
- `HAVING`

```sql
--Find average Salary of the EMPLOYEES in the IT Department
SELECT AVG(A.SALARY) AS AVERAGE_SALARY
FROM EMPLOYEES A
WHERE A.DEPARTMENT_ID IN (SELECT B.DEPARTMENT_ID 
     FROM DEPARTMENTS B 
     WHERE DEPARTMENT_NAME = 'IT');
```

## CASE STATEMENTS

- Used to define conditions

```sql
CASE [expression]
WHEN condition_1 THEN result_1
WHEN condition_2 THEN result_2
ELSE result
END
```

```sql
SELECT
    CASE
        WHEN hour between 00 and 11 THEN 'Good_Morning'
        WHEN hour between 12 and 4 THEN 'Good Afternoon'
        ELSE 'Good Evening'
    END
FROM TIME;
```

- Usually used in stored procedures

```sql
SELECT ACCOUNTNUMBER, NAME
    CASE
        WHEN (NAME LIKE '%Bike%' OR NAME LIKE '%CYCLE%')
        AND ACTIVEFLAG = 1  THEN 'CYCLING'
        WHEN NAME LIKE '%Rent%' AND ACTIVEFLAG = 1 THEN 'RENTAL'
        ELSE 'MISC'
    END AS BUSINESS_TYPE
FROM VENDOR;
```

## OTHER SCHEMA OBJECTS

- Tables
  - Columns
  - Keys
  - Constraints
  - Indexes
  - Triggers

### VIEWS

- SQL select statement
- 2d structure of rows and columns
- Not a table, but appears as a table to users
- Users can execute `SELECT` and simple DML statements against it
- Security: limits columns users can view
- Simplicity: need to use complex joins can be minimized
- Prevent error: may present specific data not requiring understing of relationships
- Comprehensible
- Performane: optimize queries
- Simple and complex
  
### Synonyms

- Can have private and/or public
- Alternative name
- `dbo.Employees` as `employees` or `emp` Shortcut
- 

### Sequences

- unique number generation

### Indexes

- query performance enhancement
