-- Top customers by revenue

SELECT TOP(10)
    cu.CustomerID,
    cu.CompanyName,
    COUNT(DISTINCT o.OrderID) AS Orders,
    SUM(od.UnitPrice * od.Quantity * (1-od.Discount)) AS Revenue,
    SUM(SUM(od.UnitPrice * od.Quantity * (1-od.Discount))) OVER() AS TotalRevenue
FROM Customers cu
JOIN Orders o ON o.CustomerID = cu.CustomerID
JOIN [Order Details] od ON od.OrderID = o.OrderID
GROUP BY cu.CustomerID, cu.CompanyName
ORDER BY Revenue DESC;
