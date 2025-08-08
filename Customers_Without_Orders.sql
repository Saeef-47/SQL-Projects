CREATE TABLE Customer(id INT,"name" VARCHAR(50));
SELECT * FROM customer;
INSERT INTO customer (id, "name") VALUES
(1, 'Joe'),
(2, 'Henry'),
(3, 'Sam'),
(4, 'Max');

CREATE TABLE Orders(id INT,customerid INT);
SELECT * FROM orders;
INSERT INTO Orders (id, customerId) VALUES
(2, 1),
(1, 3);

SELECT c.name AS Customers
FROM customer c
LEFT JOIN Orders o ON c.id = o.customerId
WHERE o.customerId IS NULL;
