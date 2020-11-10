#
#
# Tutorial 3: Select from Nobel Tutorial
#
#

# 1. Selects year, subject and winner from the nobel table for the year 1950

SELECT yr, subject, winner FROM nobel
  WHERE yr = 1950

# 2. Selects winner records from the nobel table for 1962 Literature prizes

SELECT winner FROM nobel
  WHERE yr = 1962 && subject = 'Literature'

# 3. Selects yr and subject records from the nobel table for Albert Einstein

SELECT yr, subject FROM nobel
  WHERE winner = 'Albert Einstein'

# 4. Selects winner records from the nobel prize table for Peace prizes awarded in 2000 and later

SELECT winner FROM nobel
  WHERE subject = 'Peace' && yr > 1999

# 5. Selects yr, subject and winner from the nobel table for Literature prizes awarded between 1980 and 1989

SELECT yr, subject, winner FROM nobel
  WHERE subject = 'Literature' && (yr >= 1980 && yr <= 1989)

# 6. Selects all records from the nobel table pertaining to 4 U.S. presidents

SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                  'Barack Obama')

# 7. Selects winner records from the nobel table for people whose name starts with John

SELECT winner FROM nobel
  WHERE winner LIKE 'John%'

# 8. Selects yr, subject and winner records from the nobel table for 1980 Physics and 1984 Chemistry prizes

SELECT yr, subject, winner FROM nobel
  WHERE (subject = 'Physics' && yr = 1980) OR
        (subject = 'Chemistry' && yr = 1984)

# 9. Selects yr, subject and winner records from the nobel table for 1980 winners excluding Chemistry and Medicine

SELECT yr, subject, winner FROM nobel
  WHERE yr = 1980 && (subject <> 'Chemistry' && subject <> 'Medicine')

# 10. Selects yr, subject and winner from the nobel table for Medicine prizes awarded prior to 1910 and Literature prizes awarded in 2004 or later

SELECT yr, subject, winner FROM nobel
  WHERE (subject = 'Medicine' && yr < 1910) OR
        (subject = 'Literature' && yr >=2004)

# 11. Selects all records from the nobel table for Peter Grǖnberg; uses a non-ascii character

SELECT * FROM nobel
  WHERE winner = 'PETER GRÜNBERG'

# 12. Selects all records from the nobel table for Eugene O'Neill; uses an escape character

SELECT * FROM nobel
  WHERE winner = 'Eugene O''Neill'

# 13. Selects winner, yr and subject from the nobel table for names that begin with Sir

SELECT winner, yr, subject FROM nobel
  WHERE winner LIKE 'Sir%'

# 14. Selects winner and subject records from the nobel table for the year 1984 and sorts by subject and winner name, but chemistry and physics are listed last

SELECT winner, subject FROM nobel
  WHERE yr=1984
  ORDER BY subject IN ('Physics','Chemistry'),subject,winner
