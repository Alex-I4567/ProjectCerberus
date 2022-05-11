SELECT ProductName
FROM (SELECT
p.ProductID
, p.ProductName
, sum(od.Quantity) as total_ordered
FROM [Customers] c
JOIN [Orders] o on o.CustomerID = c.CustomerID
JOIN [OrderDetails] od on od.OrderID = o.OrderID
JOIN [Products] p on p.ProductID = od.ProductID
WHERE c.Country = 'Germany'
GROUP BY p.ProductID
ORDER BY total_ordered desc
LIMIT 1) a
