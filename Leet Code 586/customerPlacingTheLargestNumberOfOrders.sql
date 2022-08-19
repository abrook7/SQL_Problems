# Write your MySQL query statement below
SELECT customer_number
FROM (SELECT customer_number, 
      COUNT(customer_number) as number  
      FROM Orders 
      GROUP BY customer_number) as customerOrders
ORDER BY number DESC LIMIT 1