-- Insert sample customers
INSERT INTO Customers (Name, Email, Phone) VALUES 
('Alice Smith', 'alice@example.com', '123-456-7890'),
('Bob Jones', 'bob@example.com', '098-765-4321');

-- Insert sample products
INSERT INTO Products (Name, Price, Stock) VALUES 
('Coffee Mug', 5.99, 50),
('Notebook', 2.49, 100);

-- Insert a sample order
INSERT INTO Orders (CustomerID, OrderDate, Total) VALUES 
(1, '2025-02-27', 8.48);

-- Link order to products
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES 
(1, 1, 1),  -- 1 Coffee Mug
(1, 2, 1);  -- 1 Notebook