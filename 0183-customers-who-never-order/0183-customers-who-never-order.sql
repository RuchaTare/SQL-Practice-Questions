# Write your MySQL query statement below
#what do we need:
# We need customer name from customers table 
# by matching id from customer table to id customerid in orders to find people who
#have no orders

#approach 
#un match customer - id to orders - customerid

# SELECT  name as Customers from Customers c
# WHERE c.id not in (select customerId from orders)

SELECT Customers.name AS Customers
FROM Customers
LEFT JOIN Orders
ON Customers.Id = Orders.CustomerId
WHERE Orders.CustomerId IS NULL ;