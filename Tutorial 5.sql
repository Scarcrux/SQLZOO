#
#
# Tutorial 5: SUM and COUNT
#
#

# 1. Sum the population of all countries from the world table

SELECT SUM(population) FROM world

# 2. List every continent from the world table by using the distinct function

SELECT DISTINCT(continent) FROM world

# 3. Sum the GDP of every country in Africa from the world table

SELECT SUM(GDP) FROM world
  WHERE continent = 'Africa'

# 4. Count the countries with an area of at  least 1 million sq km from the world table

SELECT count(name) FROM world
  WHERE area > 1000000

# 5. Sum the populations of Estonia, Latvia and Lithuania from the world table

SELECT sum(population) FROM world
  WHERE name IN ('Estonia', 'Latvia', 'Lithuania');

# 6. Select continents from the world table and count the number of countries in each

SELECT continent, COUNT(name)
  FROM world
  GROUP BY continent

# 7. Select continents from the world table and count the number of countries in each with a population greater than 10 million

SELECT continent, COUNT(name) FROM world
  WHERE population > 10000000
  GROUP BY continent

# 8. Select continents from the world table that have a total population greater than 100 million

SELECT continent FROM world
  GROUP BY continent
  HAVING sum(population) >= 100000000
