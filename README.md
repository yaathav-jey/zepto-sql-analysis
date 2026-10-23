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

Analysis of the 3,732-record Zepto dataset produced the following findings:

- **Data quality:** The source dataset contained no missing values across its nine columns. One record had both MRP and discounted selling price equal to zero and was removed during cleaning.
- **Discount analysis:** The highest observed discount was 51%, offered on three Dukes Waffy wafer varieties.
- **Stock availability:** The original dataset contained 3,279 in-stock records and 453 out-of-stock records.
- **High-priced unavailable products:** Four products had an MRP above 300 (after price conversion) and were marked out of stock.
- **Category discounts:** Fruits & Vegetables had the highest average discount percentage at 15.46%, followed by Meats, Fish & Eggs at 11.03%.
- **Price-per-gram analysis:** Onion appeared among the lowest-cost products by weight, at approximately 0.02 per gram.
- **Inventory analysis:** Cooking Essentials and Munchies each had an estimated inventory weight of 1,404,654 grams based on product weight and available quantity.

### Business Takeaways

The analysis demonstrates how SQL can help compare product discounts, identify unavailable high-priced items, evaluate relative product value, and summarize estimated inventory across categories.

Estimated revenue and inventory weight are calculated from the available dataset fields and should not be interpreted as verified sales or physical inventory measurements.

