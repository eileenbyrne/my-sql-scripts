--  give me all orders and customers and lines of the order
select * 
 from customers c
 join orders o 
  on C.id = o.CustomerID
 join orderlines ol
  on o.ID = ol.OrdersID;
  -- this is all you need