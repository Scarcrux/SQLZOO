#
#
# Tutorial 4: Select within Select
#
#

# 1.Select name records from the world table for countries in which the population is greater than Russia

SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

# 2. Select name records from the world table for countries in which the GDP per capita is greater than the United Kingdom's GDP per capita

SELECT name FROM world
  WHERE continent = 'Europe' && GDP/population >
  (SELECT GDP/population FROM world WHERE name = 'United Kingdom')

# 3. Select name and continent records from the world table for the continents containing Argentina or Australia

SELECT name, continent FROM world
  WHERE continent = 'South America' OR continent = 'Oceania'
  ORDER BY name

# 4. Select name records from the world table for the country with a population greater than Canada but less than Poland

SELECT name FROM world
  WHERE population > 'Canada' && population < 'Poland'

# 5. Select name records and calculate the population as a percentage of Germany's population for European countries in the world table

SELECT name, CONCAT(ROUND((population/(SELECT population FROM world WHERE name = 'Germany')*100)),'%') FROM world
  WHERE continent = 'Europe'

# 6. Select name from the world table for countries that have a GDP greater than all of Europe

SELECT name FROM world
  WHERE gdp > ALL(SELECT gdp
                  FROM world
                  WHERE continent = 'Europe'
                  && GDP > 0)

# 7. Select continent, name and area records from the world table for countries that are the largest in each continent

SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area > 0)

# 8. Select continent and name records from the world table for countries that are alphabetically first on each continent

SELECT continent, name
  FROM world x
  WHERE name <= ALL(SELECT name FROM world y
                    WHERE y.continent = x.continent)

# 9. Select name, continent and population records from the world table for countries with a population greater than 250 million

SELECT name, continent, population FROM world x
  WHERE 25000000 >= ALL(SELECT population FROM world y
                        WHERE y.continent = x.continent
                        && population > 0)

# 10. Select name and continent records from the world table for countries with a population more than 3 times greater than any other country on the same continent

SELECT name, continent FROM world x
  WHERE population > ALL(SELECT population * 3 FROM world y
                         WHERE y.continent = x.continent
                         && population > 0
                         && y.name != x.name)
