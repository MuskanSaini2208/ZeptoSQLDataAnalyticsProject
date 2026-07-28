drop table if exists zepto;

create table zepto(
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent INTEGER,
availableQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightInGms INTEGER,
outofStock BOOLEAN,
quantity INTEGER
);

SELECT column_name 
FROM information_schema.columns
WHERE table_name = 'zepto'
ORDER BY ordinal_position;


COPY zepto
(
    category,
    name,
    mrp,
    discountpercent,
    availablequantity,
    discountedsellingprice,
    weightingms,
    outofstock,
    quantity
)
FROM 'C:\Users\hp\OneDrive\Desktop\DA PROJECTS\SQL PROJECTS\PROJECT 1\ZeptoSQLproject\zepto_v2.csv'
DELIMITER ','
CSV HEADER;

-- COUNT NO. OF ROWS
SELECT COUNT(*) FROM zepto;
-- SAMPLE DATA
SELECT * FROM zepto LIMIT 10;
--NULL VALUES
SELECT * FROM zepto 
WHERE name IS NULL
OR
category IS NULL
OR
mrp IS NULL
OR
discountPercent IS NULL
OR
discountedSellingPrice IS NULL
OR
weightInGms IS NULL
OR
availableQuantity IS NULL
OR
outOfStock IS NULL
OR
quantity IS NULL;


--different product categories
SELECT DISTINCT category
FROM zepto
ORDER BY category;

--products in stock vs our of stock
SELECT outOfStock, COUNT(sku_id)
FROM zepto
GROUP BY outOfStock;

--PRODUCT NAMES PRESENT MULTIPLE TIMES
SELECT name, count(sku_id) as "Number of SKUs"
FROM zepto
GROUP BY name
HAVING count(sku_id)>1
ORDER BY COUNT(sku_id) DESC;


--DATA CLEANING

-- PRODUCTS WITH PRICE = 0
SELECT * FROM zepto
WHERE mrp = 0 OR discountedSellingPrice = 0;

DELETE FROM zepto WHERE mrp = 0;


-- convert paise to rupees
UPDATE zepto 
SET mrp = mrp/100.0, 
discountedSellingPrice = discountedSellingPrice/100.0;

SELECT mrp, discountedSellingPrice FROM zepto;


--Q1.Find the top 10 best-value products based on the discount percentage.

--Q2.What are the Products with High MRP but Out of Stock

--Q3.Calculate Estimated Revenue for each category

--Q4.Find all products where MRP is greater than ₹500 and discount is less than 10%.

--Q5.Identify the top 5 categories offering the highest average discount percentage.

--Q6.Find the top 5 rarest products above 100g and sort by best value.

--Q7.Group the products into categories like Low, Medium, Bulk.

--Q8.What is the Total Inventory Weight Per Category









