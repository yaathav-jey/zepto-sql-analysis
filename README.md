# zepto-sql-analysis
Exploratory data analysis and business insights using PostgreSQL and the Zepto product dataset.

# Zepto SQL Data Analysis

## Project Overview

This project uses PostgreSQL to explore and analyze Zepto product inventory data. The goal is to investigate product pricing, discounts, stock availability, estimated revenue, and inventory weight to answer practical business questions.

## Tools & Technologies

- **SQL:** PostgreSQL
- **Dataset:** Zepto product data in CSV format
- **Key concepts:** Data exploration, data cleaning, filtering, aggregation, grouping, sorting, `CASE` statements, and aggregate functions.

## Business Questions

The project addresses eight business questions:

1. **Best-value products:** Identify the top 10 products with the highest discount percentages.
2. **High-priced out-of-stock products:** Find out-of-stock products with an MRP above 300.
3. **Estimated category revenue:** Calculate estimated revenue for each category using discounted selling price and available quantity.
4. **High-priced products with low discounts:** Find products with an MRP above 500 and a discount below 10%.
5. **Highest average discounts:** Identify the top five categories by average discount percentage.
6. **Price per gram:** Calculate the price per gram for products weighing at least 100 grams and identify the lowest prices per gram.
7. **Weight classification:** Categorize products into Low, Medium, and Bulk groups based on weight.
8. **Inventory weight:** Calculate the total estimated inventory weight for each category.

## Project Workflow

### 1. Data Exploration
- Count records and inspect sample rows.
- Check for missing values.
- Identify distinct product categories.
- Compare in-stock and out-of-stock products.
- Find product names appearing multiple times.

### 2. Data Cleaning
- Identify products with zero prices.
- Remove records with an MRP of zero.
- Normalize MRP and discounted selling price values by dividing by 100.

### 3. Business Analysis
- Analyze discounts and product pricing.
- Investigate stock availability.
- Estimate revenue by category.
- Compare price per gram.
- Classify products by weight.
- Calculate inventory weight by category.

## Repository Contents

- `zepto_sql.sql` — SQL script containing table creation, exploration, cleaning, and business analysis queries.
- `zepto_v2.csv` — Source dataset, if redistribution is permitted.

## How to Run

1. Install PostgreSQL and open a PostgreSQL client such as pgAdmin.
2. Create a database for the project.
3. Execute the table-creation section of the SQL script.
4. Import the CSV data into the `zepto` table, mapping the dataset columns to the table columns.
5. Run the data exploration and cleaning sections in order.
6. Execute the eight business-analysis queries and review the results.


## Skills Demonstrated

PostgreSQL, data exploration, data cleaning, data aggregation, business analysis, inventory analysis, pricing analysis, and translating business questions into SQL queries.

## Key Findings

Results and business insights will be documented
