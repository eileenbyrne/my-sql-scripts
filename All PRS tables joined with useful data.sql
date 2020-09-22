/*
-- This gives us order details
Select r.description, r.DeliveryMode, r.Status, r.Total, 
        l.quantity, (p.price * l.quantity) as 'Subtotal',
        p.Name, p.Price, concat(u.FirstName, ' ', u.LastName) as 'Name',
        u.PhoneNumber
        -- you NEVER need to display info in Foreign key columns - it is useless info and only needed to join tables together 
 */
 
 -- This gives us only total of each request with Description
 
 Select r.Description, sum(l.quantity * p.price) as 'Total'
 from Request r 
  Join lineitem l on l.RequestID = r.ID -- left join is going to show everything even if null in any column; join will only show if valid info in column
  join Product p on p.ID = l.ProductID
  join vendor v on v.ID = p.VendorID
  join user u on u.ID = r.UserID
Group by r.Description
  ;