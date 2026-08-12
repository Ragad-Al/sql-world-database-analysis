-- ============================================================
-- World Database Analysis
-- Data Technician Skills Bootcamp
-- Author: Ragad Alfatih
-- Database: MySQL World Sample Database
-- ============================================================

USE world;

-- ------------------------------------------------------------
-- 1. Count cities in the USA
-- ------------------------------------------------------------

SELECT COUNT(*) AS Total_Cities
FROM city
WHERE CountryCode = 'USA';


-- ------------------------------------------------------------
-- 2. Country with the highest life expectancy
-- ------------------------------------------------------------

SELECT Name, LifeExpectancy
FROM country
WHERE LifeExpectancy IS NOT NULL
ORDER BY LifeExpectancy DESC
LIMIT 1;


-- ------------------------------------------------------------
-- 3. Cities containing "New" in their name
-- ------------------------------------------------------------

SELECT Name
FROM city
WHERE Name LIKE '%New%';


-- ------------------------------------------------------------
-- 4. Ten most populated cities
-- ------------------------------------------------------------

SELECT Name, Population
FROM city
ORDER BY Population DESC
LIMIT 10;


-- ------------------------------------------------------------
-- 5. Cities with populations greater than 2 million
-- ------------------------------------------------------------

SELECT Name, Population
FROM city
WHERE Population > 2000000;


-- ------------------------------------------------------------
-- 6. Cities beginning with "Be"
-- ------------------------------------------------------------

SELECT Name
FROM city
WHERE Name LIKE 'Be%';


-- ------------------------------------------------------------
-- 7. Cities with populations between 500,000 and 1,000,000
-- ------------------------------------------------------------

SELECT Name, Population
FROM city
WHERE Population BETWEEN 500000 AND 1000000;


-- ------------------------------------------------------------
-- 8. Cities sorted alphabetically
-- ------------------------------------------------------------

SELECT Name
FROM city
ORDER BY Name ASC;


-- ------------------------------------------------------------
-- 9. Most populated city
-- ------------------------------------------------------------

SELECT Name, Population
FROM city
ORDER BY Population DESC
LIMIT 1;


-- ------------------------------------------------------------
-- 10. Frequency of city names
-- ------------------------------------------------------------

SELECT
    Name,
    COUNT(*) AS Frequency
FROM city
GROUP BY Name
ORDER BY Name ASC;


-- ------------------------------------------------------------
-- 11. City with the lowest population
-- ------------------------------------------------------------

SELECT Name, Population
FROM city
ORDER BY Population ASC
LIMIT 1;


-- ------------------------------------------------------------
-- 12. Country with the largest population
-- ------------------------------------------------------------

SELECT Name, Population
FROM country
ORDER BY Population DESC
LIMIT 1;


-- ------------------------------------------------------------
-- 13. Capital city of Spain
-- ------------------------------------------------------------

SELECT c.Name AS Capital
FROM city AS c
JOIN country AS co
    ON c.ID = co.Capital
WHERE co.Name = 'Spain';


-- ------------------------------------------------------------
-- 14. Cities located in Europe
-- ------------------------------------------------------------

SELECT city.Name
FROM city
JOIN country
    ON city.CountryCode = country.Code
WHERE country.Continent = 'Europe';


-- ------------------------------------------------------------
-- 15. Average city population by country
-- ------------------------------------------------------------

SELECT
    CountryCode,
    AVG(Population) AS Avg_Population
FROM city
GROUP BY CountryCode;


-- ------------------------------------------------------------
-- 16. Capital cities ranked by population
-- ------------------------------------------------------------

SELECT
    country.Name AS Country,
    city.Name AS Capital,
    city.Population
FROM country
JOIN city
    ON country.Capital = city.ID
ORDER BY city.Population DESC;


-- ------------------------------------------------------------
-- 17. Countries ranked by population density
-- ------------------------------------------------------------

SELECT
    Name,
    Population,
    SurfaceArea,
    (Population / SurfaceArea) AS Density
FROM country
WHERE SurfaceArea > 0
ORDER BY Density ASC;


-- ------------------------------------------------------------
-- 18. Countries with above-average GDP per capita
-- ------------------------------------------------------------

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


-- ------------------------------------------------------------
-- 19. Cities ranked 31st to 40th by population
-- ------------------------------------------------------------

SELECT Name, Population
FROM city
ORDER BY Population DESC
LIMIT 10 OFFSET 30;
