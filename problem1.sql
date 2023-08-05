-- As the table wants name,population and area we select those columns
-- We use the WHERE clause to filter the data
-- We use the OR operator to get the countries that have an area greater than 3 million or a population greater than 25 million

SELECT name, population, area
FROM World
WHERE area >= 3000000 OR
population >= 25000000;

