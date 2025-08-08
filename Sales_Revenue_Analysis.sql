CREATE TABLE Sales (
    CustomerID INTEGER,
    ProductID VARCHAR(10),
    PurchaseDate DATE,
    Quantity INTEGER,
    Revenue NUMERIC(10, 2)
);
INSERT INTO Sales (CustomerID, ProductID, PurchaseDate, Quantity, Revenue) VALUES
(1, 'A', '2023-01-01', 5, 100.00),
(2, 'B', '2023-01-02', 3, 50.00),
(3, 'A', '2023-01-03', 2, 30.00),
(4, 'C', '2023-01-03', 1, 20.00),
(1, 'B', '2023-01-04', 4, 80.00);

-- Total_Revenue
SELECT SUM(Revenue) AS TotalRevenue FROM Sales;

-- Total_Sales_By_Product
SELECT 
  ProductID,
  SUM(Quantity) AS TotalQuantity,
  SUM(Revenue) AS TotalRevenue
FROM Sales
GROUP BY ProductID
ORDER BY ProductID;

-- Top Customers by Revenue
SELECT 
  CustomerID,
  SUM(Revenue) AS TotalRevenue
FROM Sales
GROUP BY CustomerID
ORDER BY TotalRevenue DESC;
