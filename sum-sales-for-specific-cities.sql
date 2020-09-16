select city, sum(sales) as 'sales'
  from Customers
  group by city, state
  -- nhaving city = 'Cincinnati' or city = 'columbus'
having sum(sales) > 600000