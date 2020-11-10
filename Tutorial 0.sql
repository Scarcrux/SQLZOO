#
#
# Tutorial 0: SELECT basics
#
#

# 1. Selects the population record of Germany from the world table

SELECT population FROM world
  WHERE name = 'Germany'

# 2. Selects names and population records from the world table where the name is one of the 3 strings listed

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

# 3. Selects names and area records from the world table where area is between 200000 and 250000

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000
