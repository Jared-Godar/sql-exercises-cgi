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