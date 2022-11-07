# Write your MySQL query statement below
# name as employee from Employee
# no order
# salary > salary of the manager

SELECT e1.name as Employee 
FROM Employee e1
JOIN Employee e2 
ON
e1.managerId = e2.id
WHERE e1.salary > e2.salary