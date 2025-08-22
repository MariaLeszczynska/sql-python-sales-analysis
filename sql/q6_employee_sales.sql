-- Employee performance ranking

WITH emp_sales AS (
	SELECT
	e.EmployeeID,
	(e.LastName + ' ' + e.FirstName) AS EmployeeName,
	o.OrderID,
	SUM(od.UnitPrice * od.Quantity * (1-od.Discount)) AS OrderRevenue
FROM Orders o
JOIN [Order Details] od ON od.OrderID=o.OrderID
JOIN Employees e on e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID, e.LastName, E.FirstName, o.OrderID
)

SELECT
	EmployeeID,
	EmployeeName,
	COUNT(*) AS Orders,
	SUM(OrderRevenue) AS Revenue,
	AVG(OrderRevenue) AS AverageOrderValue
FROM emp_sales
GROUP BY EmployeeID, EmployeeName
ORDER BY Revenue DESC;