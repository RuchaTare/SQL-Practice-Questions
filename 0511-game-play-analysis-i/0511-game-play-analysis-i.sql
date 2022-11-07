# Write your MySQL query statement below


# select player_id , min(event_date) as first_login 
#      from Activity 
#     group by player_id

# SELECT
#   X.player_id,
#   X.event_date AS first_login
# FROM
#   (
#     SELECT
#       A.player_id,
#       A.event_date,
#       RANK() OVER (
#         PARTITION BY
#           A.player_id
#         ORDER BY
#           A.event_date
#       ) AS rnk
#     FROM
#       Activity A
#   ) X
# WHERE
#   X.rnk = 1;

SELECT DISTINCT
  A.player_id,
  FIRST_VALUE(A.event_date) OVER (
    PARTITION BY
      A.player_id
    ORDER BY
      A.event_date
  ) AS first_login
FROM
  Activity A;

