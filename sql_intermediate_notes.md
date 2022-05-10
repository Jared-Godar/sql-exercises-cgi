# Intermediate SQL

## Set Operations

- UNION & UNION ALL
  - Combine results of two queries into one single result set
  - UNION removes duplicates
  - UNION ALL preserves duplicates
  - ![Union](union.jpg)
  > SELECT * FROM tablle1
  > UNION
  > SELECT * FROM table2
  - Can specify column instead of `*`