# Write your MySQL query statement below
# Self join 

SELECT name 
FROM CUSTOMER 
WHERE 
referee_id <> 2 
OR 
referee_id is NULL