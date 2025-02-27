-- Orders with customer names
SELECT o.OrderID, c.Name, o.OrderDate, o.Total
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;

-- Order details with product info
SELECT od.OrderID, p.Name, od.Quantity, p.Price
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
WHERE od.OrderID = 1;