#
#
# Tutorial 2: SELECT from WORLD
#
#

# 1. Selects the name, continent and population records from world table

SELECT name, continent, population FROM world

# 2. Filters records of countries from the world table with populations greater than 200 million

SELECT name FROM world
  WHERE population > 200000000

# 3. Selects the name records and calculates GDP per capita for countries from the world table with a population greater than 200 million

SELECT name, GDP/population FROM world
  WHERE population > 200000000

# 4. Selects the name records from the world table and calculates population in millions for countries of South America

SELECT name, population/1000000 FROM world
  WHERE continent LIKE 'South America'

# 5. Selects the name and population records from the world table for France, Germany and Italy

SELECT name, population FROM world
  WHERE name IN ('France', 'Germany', 'Italy');

# 6. Selects the name records from the world table that contain the word United

SELECT name FROM world
  WHERE name LIKE '%United%'

# 7. Selects the name, population and area records from the world table for countries that have a population greater than 250 million or an area greater than 3 million sq km

SELECT name, population, area FROM world
  WHERE population > 250000000 OR area > 3000000

# 8. Selects the name, population and area records from the world table for countries that either have a population greater than 250 million or an area greater than 3 million sq km, but not both

SELECT name, population, area FROM world
  WHERE population > 250000000 XOR area > 3000000

# 9. Selects the name, population and GDP records from the world table to calculate GDP in billions and population in millions, both rounded to two decimal places, for countries of South America

SELECT name, ROUND(population/1000000,2), ROUND(GDP/1000000000,2) FROM world
  WHERE continent LIKE 'South America'

# 10. Selects the name and GDP records from the world table to calculate GDP per capita, rounded to the nearest thousand, for countries with a GDP greater than one trillion

SELECT name, ROUND(GDP/population,-3) FROM world
  WHERE GDP > 1000000000000

# 11. Selects the name and capital records from the world table of countries in which the name and capital have the same length

SELECT name, capital FROM world
 WHERE LENGTH(name) = LENGTH(capital)

# 12. Selects the name and capital records from the world table of countries in which the first letters of the country name and the capital match, but the country name and the capital are not the same

SELECT name, capital FROM world
  WHERE LEFT(name,1) = LEFT(capital,1) && name <> capital

# 13. Selects the name records from the world table of countries that contain all of the vowels in the name which must be a single word

SELECT name FROM world
  WHERE name LIKE '%A%E%' &&
  name LIKE '%I%' &&
  name LIKE '%O%U%' &&
  name NOT LIKE '% %'
