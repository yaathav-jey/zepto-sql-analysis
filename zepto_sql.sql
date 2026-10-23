drop table if exists zepto;

create table zepto(
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightInGms INTEGER,
outOfStock BOOLEAN,
quantity INTEGER
);

-- data exploration

-- count of rows
SELECT COUNT(*) FROM zepto
;

-- sample data
SELECT * FROM zepto
LIMIT 10
;

-- null values
SELECT * FROM zepto
where name IS NULL
OR
category IS NULL
OR
mrp IS NULL
OR
discountPercent IS NULL
OR
discountedSellingPrice IS NULL
OR
WeightInGms IS NULL
OR
AvailableQuantity IS NULL
OR
OutOfStock IS NULL
OR
Quantity IS NULL
;

-- different product categories
SELECT DISTINCT category
FROM zepto
ORDER BY category
;

-- products in stock vs products out of stock
SELECT outOfStock, COUNT(sku_id)
FROM zepto
group by outOfStock
;

-- product names present multiple times
SELECT name,COUNT(sku_id) as "Number of SKU"
FROM zepto
Group by name
Having count(sku_id) > 1
order by count(sku_id) desc;

-- data cleaning 

-- products with price = 0
SELECT * FROM zepto
where mrp = 0 or discountedSellingPrice = 0
;

Select *
From zepto
limit 10
;

DELETE FROM zepto 
where mrp = 0
;

-- converting units of dollar
UPDATE zepto      
SET mrp = mrp/100.0,
discountedSellingPrice = discountedSellingPrice/100.0;

SELECT mrp, discountedSellingPrice FROM zepto;

--- 1. Find the top 10 best value products badsed on the discounted percentage

Select Distinct name, mrp, discountPercent
From zepto
order by discountPercent desc
limit 10
;

-- 2. what are the products with high MRP but Out Of Stock

Select Distinct name, mrp
from zepto
where OutOfStock = TRUE and mrp>300
order by mrp desc
;

-- 3. calculate estimated revenue for each category

select category, sum(discountedSellingPrice * availableQuantity) as total_revenue
from zepto
group by category
order by total_revenue
;

-- 4. Find all products where MRP is greater than 500 but discount is less than 10%

Select distinct name, mrp, discountPercent
from zepto
where mrp > 500 and discountPercent < 10
order by mrp desc, discountPercent desc
;

-- 5. Identify the top 5 categories offering the highest average discount percentage

Select category, Round (avg(discountPercent),2) as avg_discount
from zepto 
group by category
order by avg_discount desc
limit 5
;

-- 6. Find the price per gram for products above 100g and sort by best value

select distinct name, weightInGms, discountedSellingPrice, 
Round(discountedSellingPrice / weightInGms,2) as price_per_gram
from zepto
where weightInGms >= 100
order by price_per_gram
;

-- 7. Group the products into categories like Low,Medium, Bulk

Select distinct name, weightInGms,
case when weightInGms < 1000 then 'Low'
	when weightInGms < 5000 then ' Medium'
	Else 'Bulk'
	END as weight_category
From zepto
;

-- 8. what is the total inventory weight per category

select category, Sum(weightInGms * availableQuantity) as total_weight
from zepto
group by category
order by total_weight
;
--