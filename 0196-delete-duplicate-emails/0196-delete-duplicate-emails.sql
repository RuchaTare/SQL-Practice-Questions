# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below

#we need unique email ids from email column person table
# smallest id must stay if duplicate
#note : Delete works with table name without column name

# DELETE p1 from Person p1
# JOIN Person p2
# ON p1.email = p2.email
# WHERE p1.id > p2.id

DELETE p from Person p where id NOT IN (SELECT * FROM(
    SELECT MIN(Id) FROM Person GROUP BY Email) as p);