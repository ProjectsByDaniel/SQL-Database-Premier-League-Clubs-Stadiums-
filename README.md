# Premier League Clubs & Stadiums SQL Database

## Overview

This project shows fundamental SQL database design and querying techniques using a dataset of Premier League football clubs and their stadiums.

The database contains two related tables:

* clubs– stores club information and geographic area.
* stadiums – stores stadium information and stadium capacity.

The tables are linked using a foreign key relationship through `club_id`.

## Database Structure

### clubs

| Column    | Data Type    | Description     |
| --------- | ------------ | --------------- |
| club_id   | INT          | Primary Key     |
| club_name | VARCHAR(100) | Club Name       |
| club_area | VARCHAR(100) | Geographic Area |

### stadiums

| Column       | Data Type    | Description      |
| ------------ | ------------ | ---------------- |
| stadium_id   | INT          | Primary Key      |
| club_id      | INT          | Foreign Key      |
| stadium_name | VARCHAR(100) | Stadium Name     |
| capacity     | INT          | Stadium Capacity |

## SQL Concepts Demonstrated

* Creating tables with `CREATE TABLE`
* Primary Keys
* Foreign Keys
* Data insertion using `INSERT INTO`
* Table joins using `JOIN`
* Filtering data with `WHERE`
* Sorting results with `ORDER BY`
* Aggregating data using `COUNT()`
* Grouping results with `GROUP BY`

## Example Queries

### Join clubs and stadiums

```sql
SELECT *
FROM clubs c
JOIN stadiums s
    ON c.club_id = s.club_id;
```

### Top 10 largest stadiums

```sql
SELECT
    c.club_name,
    s.stadium_name,
    s.capacity
FROM clubs c
JOIN stadiums s
    ON c.club_id = s.club_id
ORDER BY s.capacity DESC
LIMIT 10;
```

### Count clubs by area with stadium capacity over 30,000

```sql
SELECT
    c.club_area,
    COUNT(*) AS number_of_clubs
FROM clubs c
JOIN stadiums s
    ON c.club_id = s.club_id
WHERE s.capacity >= 30000
GROUP BY c.club_area
ORDER BY number_of_clubs DESC;
```

## Skills Demonstrated

* Relational Database Design
* SQL Querying
* Data Analysis
* Joins and Relationships
* Aggregation and Reporting
