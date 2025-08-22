-- Revenue of each product category

SELECT
	c.CategoryName,
	SUM(od.UnitPrice * od.Quantity * (1-od.Discount)) AS Revenue
FROM [Order Details] od
JOIN Products p ON p.ProductID = od.ProductID
JOIN Categories c ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName
ORDER BY Revenue DESC;
