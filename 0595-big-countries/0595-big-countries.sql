# Write your MySQL query statement below
# name continent area population gdp


SELECT w.name,w.population,w.area 
FROM world w
WHERE area >= 3000000 OR w.population >= 25000000

