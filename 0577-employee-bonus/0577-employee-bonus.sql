# Write your MySQL query statement below
# Employee and Bonus 
# Left outer join on empid
# find bonus < 1000

# SELECT e.name, b.bonus 
# FROM Employee e
# LEFT JOIN Bonus b
# ON e.empId = b.empId
# WHERE ifnull(b.bonus, 0) < 1000

SELECT e.name, b.bonus 
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId
WHERE b.bonus < 1000 
or b.bonus IS NULL