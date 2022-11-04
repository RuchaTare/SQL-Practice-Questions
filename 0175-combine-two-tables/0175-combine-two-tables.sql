# Write your MySQL query statement below

  (SELECT firstName, lastName, state, city
 from Person as P 
 left join Address as A
 on P.personId = A.personId)

