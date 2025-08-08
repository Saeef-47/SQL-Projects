CREATE TABLE product(ProductID INT,	ProductName TEXT,	SellingPrice FLOAT) 
INSERT INTO product(ProductID,	ProductName,	SellingPrice)VALUES(1,	'Product A',	100.00),(2,	'Product B',	150.00),(1,	'Product A',	120.00),(3,	'Product C',	200.00),(2,	'Product B',	180.00),(1,	'Product A',	90.00),(3,	'Product C',	210.00)
SELECT * FROM product;
SELECT ProductName,avg(SellingPrice)AS average_selling_price FROM product  GROUP BY ProductName