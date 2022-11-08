# Write your MySQL query statement below

 SELECT employee_id,
COUNT(employee_id) OVER (PARTITION BY team_id) team_size
FROM EMPLOYEE