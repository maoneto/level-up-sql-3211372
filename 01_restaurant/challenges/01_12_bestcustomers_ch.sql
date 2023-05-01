-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT Customers.FirstName, Customers.LastName, Customers.Email, COUNT(Orders.OrderID) as OrderCount
  FROM Orders
  JOIN Customers ON Orders.CustomerID = Customers.CustomerID
  GROUP BY Orders.CustomerID
  ORDER BY OrderCount DESC
  LIMIT 15;