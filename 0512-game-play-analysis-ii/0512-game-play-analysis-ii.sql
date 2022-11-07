# Write your MySQL query statement below
# device first logged in for each player
# player_id , device_id from Activity


SELECT A1.player_id, A1.device_id 
FROM Activity A1
WHERE (A1.player_id, A1.event_date) IN
(SELECT A2.player_id,min(A2.event_date)
FROM Activity A2
GROUP BY A2.player_id)
 