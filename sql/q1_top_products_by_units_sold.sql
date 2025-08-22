-- Top 10 products by units sold

SELECT TOP (10)
	p.ProductName,
	SUM(od.Quantity) AS UnitsSold
FROM [Order Details] od
JOIN Products p ON p.ProductID = od.ProductID
GROUP BY p.ProductName
ORDER BY UnitsSold DESC;
