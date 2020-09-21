select name, city, sales as 'monthly sales' from customers
 where 'monthly sales' >= 9000
 and city = 'cleveland'
 or city = 'cincinnati'
order by city, sales desc;

--  why do no Cleveland sales come up with this query?

select name, city, sales from customers
