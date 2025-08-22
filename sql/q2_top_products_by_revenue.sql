-- Top 10 products by sales revenue

SELECT TOP (10)
	p.ProductName,
	SUM(od.UnitPrice * od.Quantity * (1-od.Discount)) AS Revenue
FROM [Order Details] od
JOIN Products p ON p.ProductID = od.ProductID
GROUP BY p.ProductName
ORDER BY Revenue DESC;


