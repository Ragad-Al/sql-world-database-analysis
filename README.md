# SQL World Database Analysis

## Project Overview

This repository demonstrates my practical SQL skills developed during the **Data Technician Skills Bootcamp with Leeptalent**.

The project combines two areas of SQL practice:

1. **World Database Analysis** using the MySQL World sample database
2. **SQL Fundamentals Practice** covering core querying and table-management techniques

The exercises demonstrate how SQL can be used to retrieve, filter, sort, aggregate, join, and analyse structured data.

## Repository Structure

```text
sql-world-database-analysis/
│
├── README.md
├── world-analysis-queries.sql
├── sql-fundamentals-practice.sql
│
└── data/
    └── world-db.sql
```

## World Database Analysis

The main analysis uses the MySQL World database containing geographic and demographic information about cities and countries.

The SQL queries explore questions such as:

* How many cities are recorded in the USA?
* Which country has the highest life expectancy?
* Which cities contain specific words or prefixes in their names?
* Which cities have populations above selected thresholds?
* What are the most and least populated cities?
* Which country has the largest population?
* What is the capital of Spain?
* Which cities are located in Europe?
* What is the average city population by country?
* How do capital-city populations compare?
* Which countries have the lowest population density?
* Which countries have above-average GDP per capita?
* Which cities rank between 31st and 40th by population?

## SQL Techniques Demonstrated

### Data Retrieval

```sql
SELECT Name, Population
FROM city;
```

### Filtering

```sql
SELECT Name, Population
FROM city
WHERE Population > 2000000;
```

### Pattern Matching

```sql
SELECT Name
FROM city
WHERE Name LIKE 'Be%';
```

### Sorting and Limiting Results

```sql
SELECT Name, Population
FROM city
ORDER BY Population DESC
LIMIT 10;
```

### Aggregation

```sql
SELECT
    CountryCode,
    AVG(Population) AS Avg_Population
FROM city
GROUP BY CountryCode;
```

### Joins

```sql
SELECT
    country.Name AS Country,
    city.Name AS Capital,
    city.Population
FROM country
JOIN city
    ON country.Capital = city.ID
ORDER BY city.Population DESC;
```

### Calculated Fields

```sql
SELECT
    Name,
    Population,
    SurfaceArea,
    (Population / SurfaceArea) AS Density
FROM country
WHERE SurfaceArea > 0
ORDER BY Density ASC;
```

### Subqueries

```sql
SELECT
    Name,
    (GNP * 1000000 / Population) AS GDP_Per_Capita
FROM country
WHERE (GNP * 1000000 / Population) >
(
    SELECT AVG(GNP * 1000000 / Population)
    FROM country
    WHERE GNP IS NOT NULL
);
```

### Pagination

```sql
SELECT Name, Population
FROM city
ORDER BY Population DESC
LIMIT 10 OFFSET 30;
```

## SQL Fundamentals Practice

The repository also includes additional SQL practice covering:

* `SELECT`
* `WHERE`
* `AND`
* `OR`
* `BETWEEN`
* `LIKE`
* Comparison operators
* `ORDER BY`
* `COUNT`
* `SUM`
* `AVG`
* `MIN`
* `MAX`
* `ALTER TABLE`
* Adding and removing columns

These exercises use example `Customers`, `Orders`, and `Shippings` tables to demonstrate common SQL operations.

The original practice questions were retained from my bootcamp notes. Where the original saved query answers were unavailable, I recreated the solutions from those tasks to consolidate and demonstrate the SQL concepts practised during the course.

## Skills Demonstrated

* SQL querying
* Relational databases
* Data filtering
* Pattern matching
* Sorting
* Aggregation
* Grouping
* Table joins
* Subqueries
* Calculated fields
* Database structure
* Data analysis
* MySQL

## Learning Outcomes

Through this work, I strengthened my ability to:

* Translate analytical questions into SQL queries
* Retrieve relevant information from relational databases
* Combine related tables using joins
* Summarise data using aggregation functions
* Apply filters and pattern matching
* Create calculated measures directly in SQL
* Structure queries clearly for readability and reuse

## Tools

* MySQL
* MySQL Workbench
* Git
* GitHub

## Author

**Ragad Alfatih**

Data Analyst | Business Intelligence | Bioinformatics

Birmingham, United Kingdom
