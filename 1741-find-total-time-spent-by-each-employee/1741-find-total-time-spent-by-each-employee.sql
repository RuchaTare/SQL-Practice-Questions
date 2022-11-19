# Write your MySQL query statement below
select event_day as day, emp_id, sum(out_time - in_time) as total_time from employees
WHERE out_time > in_time
and in_time between 0 and 1440
and out_time between 0 and 1440
GROUP BY event_day, emp_id

