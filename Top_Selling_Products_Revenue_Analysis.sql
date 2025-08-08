CREATE TABLE Products1 (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(50),
    Price NUMERIC(10, 2)
);
INSERT INTO Products1 (ProductName, Price) VALUES
('Apple', 2.50),
('Banana', 1.50),
('Orange', 3.00),
('Mango', 2.00);

CREATE TABLE Orders1 (
    OrderID SERIAL PRIMARY KEY,
    ProductID INTEGER,
    Quantity INTEGER,
    Sales NUMERIC(10, 2),
    FOREIGN KEY (ProductID) REFERENCES Products1(ProductID)
);
INSERT INTO Orders1 (ProductID, Quantity, Sales) VALUES
(1, 10, 25.00),
(1, 5, 12.50),
(2, 8, 12.00),
(3, 12, 36.00),
(4, 6, 12.00);

-- Top selling products by total revenue
SELECT 
    p.ProductName,
    SUM(o.Sales) AS TotalRevenue
FROM Products1 p
JOIN Orders1 o ON p.ProductID = o.ProductID
GROUP BY p.ProductName
ORDER BY TotalRevenue DESC;
