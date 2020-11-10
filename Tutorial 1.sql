#
#
# Tutorial 1: SELECT names
#
#

# 1. Selects name records from world table where name begins with character Y

SELECT name FROM world
  WHERE name LIKE 'Y%'

# 2. Selects name records from world table where name ends with character Y

SELECT name FROM world
  WHERE name LIKE '%Y'

# 3. Selects name records that contain character X from world table

SELECT name FROM world
  WHERE name LIKE '%X%'

# 4. Selects name records that end with LAND from world table

SELECT name FROM world
  WHERE name LIKE '%LAND'

# 5. Selects name records that start with C and end with IA from world table

SELECT name FROM world
  WHERE name LIKE 'C%%IA'

# 6. Selects name records that contain the double OOs from the world table

SELECT name FROM world
  WHERE name LIKE '%OO%'

# 7. Selects name records that contain 3 or more As from the world table

SELECT name FROM world
  WHERE name LIKE '%A%A%A%'

# 8. Selects name records that have T as the 2nd character from the world table and sorts by name

SELECT name FROM world
  WHERE name LIKE '_T%'
  ORDER BY name

# 9. Selects name records that contain two O characters separated by any other characters from the world table

SELECT name FROM world
  WHERE name LIKE '%O__O%'

# 10. Selects name records that are exactly 4 characters long from the world table

SELECT name FROM world
  WHERE name LIKE '____'

# 11. Selects name records that have the same capital names as the country names from the world table

SELECT name FROM world
  WHERE name LIKE capital

# 12. Selects name records where the capital is the country name plus city

SELECT name
  FROM world
  WHERE capital LIKE concat(name, '_city')

# 13. Selects capital and name records from the world table where the capital contains the name of the country

SELECT capital, name FROM world
  WHERE capital LIKE concat(name, '%')

# 14. Selects capital and name records from the world table where the capital is an extension of the name of the country

SELECT capital, name FROM world
  WHERE capital LIKE concat(name, '_%')

# 15. Selects name records and extensions of countries from the world table that have capitals with the same as the name of the country plus an extension

SELECT name, REPLACE(capital, name, '') FROM world
  WHERE capital LIKE concat(name, '_%')
