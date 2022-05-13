SELECT a.LastName
FROM (
Select
e.EmployeeID,
e.LastName,
count(distinct o.OrderID) as total_orders
FROM [Orders] o
JOIN [Employees] e on e.EmployeeID = o.EmployeeID
GROUP BY o.EmployeeID
ORDER BY total_orders desc
limit 1
) a
