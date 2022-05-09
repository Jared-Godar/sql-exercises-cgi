# SQL Lesson Day 1

> Shayna Patel
> Itali Makubise

- Intro lesson
- Breakout sessions to work on problems together
- Present answers to questions

## Intro to SQL - Beginner Level

### SQL and Databases

- Structured Query Language
- Communicate with relational databases
- Stores large amounts of data well
- Scalable
- Metadata
- Secure

### DBMS

- Set of programs used to define, administer and process
- Oracle, Microsoft SQL
- MS Access
- MySQL
- FireBird
- IBM DB2

### DB Instances

- Complete database environment
- RDBMS software, table structure, stores procedures, other functions
- AKA, environment
- Production, test, and development instances

### Client / Server Overview

- Database on server, application on client machine
- Server reads, interprets, and executes SQL commands and communicates to client
- Client - hardware component and software component
- Client provides user interface

### SQL Client Tools

- SQLCMD
- SQL Management Studio SSMA

### SQL Server Management Studio

- Object explorer
- Qury Tabs
  
### Tables

- 2D data structure in rows and columns

### SQL COMMANDS

#### DDL - Data Definitaion Language

- `CREATE`
- `ALTER`
- `DROP`
- `RENAME`
- `TRUNCATE`
- `COMMENT`

#### DML - Data Manipulation Language

- `SELECT`
- `INSERT`
- `UPDATE`
- `DELETE`
- `MERGE`

#### DCL - Data Control Language

- Used by DB owners to allow or disallow specific permissions
- `GRANT`
- `REVOKE`

#### TCL - Transaction Control Language

- Save or undo changes to DML
- `COMMIT`
- `ROLLBACK`

### Things to know

1. Indentations: not dependent to execute, but lines and indents for readability important.
2. SQL Terminator - use `;` after every query
3. Not Case sensitive, but uppercase commands good style
4. Data dictionary and metadata: Information Schema

### SP COMMANDS / INFORMATION_SCHEMA

- `SP_COLUMNS` | Used to view structral info in Oracle DB
- `INFORMATION_SCHEMA`

> `SELCCT * FROM
>   {Database}.INFORMATION_SCHEMA.columns

---

> Itai

## Query in SQL

### Basic Select

> SELECT * FROM TABLE_NAME;

- Specific columns

>SELECT col_name1 [, col_name2...]
>    FROM TABLE_NAME;

- Distinct
- View distinct rows from a table

>SELECT DISTINCT COL_NAME1
>     FROM TABLE_NAME

>SELECT DISTINCT CITY
>     FROM ADDRESS;

- WHERE - select specific row

> SELECT COL_NAME1
> FROM TABLE_NAME
> WHERE CONDITION;

> SELECT * FROM ADDRESS
> WHERE CITY = 'Seattle';

- Ensure filter conforms with datatype - '' for strings


- View Address, city, and postcode of addresses in seattle

> SELECT AddressLine1, City, PostalCode
> FROM ADDDRESSES
> WHERE CITY = 'Seattle';

- Multiple conditions AND/OR

- All employees that are either female or marketing assistants

>SELECT BusinessEntityID, JobTitle, MaritalStatus, Gender
FROM employee
WHERE 

## Operators and Functions

- Arithmetic `+`, `-`, `*`, `/`
  
> SELECT MAX_SALARY-MIN_SALARY AS "SALARY_RANGE" FROM JOBS;

- Comparison `=`, `<`, `<=`, `>=`, `>`, `<>`, `!=`

> SELECT * FROM PurchaseOrderDetail WHERE 

- Other `LIKE`, `NOT LIKE`, `BETWEEN`, `NOT BETWEEN`, `IN`, `NOT IN`

> SELECT * FROM PurchaseOrderDetail WHERE LineTotal BETWEEN 20000 AND 30000;

## String Operations and Functions

- `+` Concatenate
- `LOWER()`
- `UPPER()`
- `LEN()`
- `LTRIM()` Left trim
- `RTRIM()`
- `SUBSTRING(strinname, start, end)`

## Aggregate

- `COUNT()`
- `COUNT(*)` Total rows
- `COUNT DISTINCT`
- `MAX()`
- `MIN()`
- `SUM()`
- `AVG()`