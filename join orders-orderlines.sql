-- Give me all orders and orderlines; join on o.ID and ol.OrdersID
select *
 from orders o
 join orderlines ol
  on o.ID = ol.OrdersID;
  -- this is all you need