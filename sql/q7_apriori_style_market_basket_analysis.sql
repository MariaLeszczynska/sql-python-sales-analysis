-- Market basket analysis with apriori style metrics.
-- It finds frequent product pairs and calculates support, confidence, lift

WITH basket AS (
	SELECT DISTINCT od.OrderID, od.ProductID
	FROM [Order Details] od
),

pair_counts AS (
	SELECT 
		b1.ProductID AS ProductA,
		b2.ProductID AS ProductB,
		COUNT(*) AS PairCount
	FROM basket b1
	JOIN basket b2
	ON b1.OrderID = b2.OrderID
	AND b1.ProductID < b2.ProductID
	GROUP BY b1.ProductID, b2.ProductID
),

order_counts AS (
	SELECT ProductID, 
	COUNT(DISTINCT OrderID) AS OrdersWithProduct
	FROM basket
	GROUP BY ProductID
),

total_orders AS (
	SELECT COUNT(DISTINCT OrderID) AS TotalOrders
	FROM basket
)

SELECT TOP(10)
	p1.ProductName AS ProductA,
	p2.ProductName AS ProductB,
	pc.PairCount,
	CAST(1.0 * pc.PairCount / t.TotalOrders AS DECIMAL(5,3)) AS Support,
    CAST(1.0 * pc.PairCount / ocA.OrdersWithProduct AS DECIMAL(5,3)) AS ConfidenceAtoB,
    CAST(1.0 * pc.PairCount / ocB.OrdersWithProduct AS DECIMAL(5,3)) AS ConfidenceBtoA,
    CAST(
        (1.0 * pc.PairCount / t.TotalOrders) / 
        ((1.0 * ocA.OrdersWithProduct / t.TotalOrders) * (1.0 * ocB.OrdersWithProduct / t.TotalOrders))
        AS DECIMAL(5,3)
    ) AS Lift
FROM pair_counts as pc
JOIN Products p1 ON p1.ProductID = pc.ProductA
JOIN Products p2 ON p2.ProductID = pc.ProductB
JOIN order_counts ocA ON ocA.ProductID = pc.ProductA
JOIN order_counts ocB ON ocB.ProductID = pc.ProductB
CROSS JOIN total_orders t
ORDER BY Support DESC, Lift DESC;