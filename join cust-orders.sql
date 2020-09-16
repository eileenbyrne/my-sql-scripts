-- Give me all customers and all orders in SQL syntax
select * 
 from customers c
join orders o 
  on C.id = o.CustomerID;
-- this is all you need