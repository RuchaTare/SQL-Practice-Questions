# Write your MySQL query statement below

select email 
from (select distinct email, count(email) as num
from Person
group by Email) as stat
where num > 1
