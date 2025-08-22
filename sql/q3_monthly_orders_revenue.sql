-- Monthly orders and their revenue

SELECT
	CONVERT(date, DATEFROMPARTS(YEAR(o.OrderDate), MONTH(o.OrderDate), 1)) AS MonthStart,
	COUNT(DISTINCT o.OrderID) AS Orders,
	SUM(od.UnitPrice * od.Quantity * (1-od.Discount)) AS Revenue
FROM Orders o
JOIN [Order Details] od ON od.OrderID = o.OrderID
GROUP BY CONVERT(date, DATEFROMPARTS(YEAR(o.OrderDate), MONTH(o.OrderDate), 1))
ORDER BY MonthStart
