# ZeptoAnalysis

# 🛒 Zepto SQL Data Analytics Project

## 📌 Project Overview

This project simulates how Data Analysts in the e-commerce and retail industry use SQL to analyze, clean, and extract business insights from inventory data. Using a real-world dataset scraped from Zepto's product catalog, the project demonstrates the complete analytics workflow—from database creation and data cleaning to exploratory data analysis (EDA) and business intelligence reporting.

The objective is to transform raw inventory data into meaningful insights that support pricing, inventory management, and revenue-related decisions.


## 🎯 Objectives
- Design a relational database for an e-commerce inventory system
- Perform Exploratory Data Analysis (EDA)
- Clean and preprocess messy inventory data
- Write business-focused SQL queries
- Generate actionable insights for inventory and pricing optimization


## 📂 Dataset

The dataset was sourced from *Kaggle* and contains product listings scraped from *Zepto's official catalog*.
Each record represents a unique *SKU (Stock Keeping Unit)*. The same product may appear multiple times because it is available in different package sizes, weights, quantities, or discount combinations—similar to how real e-commerce catalogs are structured.


## 📋 Dataset Schema

Columns:

- sku_id: Unique identifier for each product entry (Synthetic Primary Key)
- name: Product name as it appears on the app
- category: Product category like Fruits, Snacks, Beverages, etc.
- mrp: Maximum Retail Price (originally in paise, converted to ₹)
- discountPercent: Discount applied on MRP
- discountedSellingPrice: Final price after discount (also converted to ₹)
- availableQuantity: Units available in inventory
- weightInGms: Product weight in grams
- outOfStock: Boolean flag indicating stock availability
- quantity: Number of units per package (mixed with grams for loose produce)


# 📈 Project Workflow

## 1. Database Design

Created a relational table using appropriate SQL data types and constraints.

- Primary Key
- Numeric price fields
- Boolean stock indicator
- Inventory-related attributes



## 2. Data Import

Imported the dataset into PostgreSQL using pgAdmin.

During the import process:

- Resolved UTF-8 encoding issues
- Successfully loaded CSV data into PostgreSQL
- Verified imported records



## 3. Exploratory Data Analysis (EDA)

Performed exploratory analysis to understand the dataset.

### Analysis Included

- Total number of products
- Dataset preview
- Missing value detection
- Distinct product categories
- In-stock vs Out-of-stock products
- Duplicate product names with different SKUs



## 4. Data Cleaning

Improved data quality before analysis by:

- Removing records with invalid pricing
- Eliminating products having zero MRP
- Removing rows with zero selling price
- Converting prices from paise to rupees
- Standardizing price values for analysis



## 5. Business Analysis

Answered practical business questions using SQL.

### Key Insights Generated

- Top 10 products with the highest discounts
- High-value products currently out of stock
- Estimated revenue by product category
- Premium products with minimal discounts
- Categories offering the highest average discounts
- Best value products based on price per gram
- Product segmentation by weight
- Total inventory weight across categories



# 📊 SQL Concepts Used

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- DISTINCT
- Aggregate Functions
- CASE WHEN
- Common Table Expressions (CTEs)
- Data Cleaning
- Filtering
- Sorting
- Business KPI Analysis



# 💡 Key Business Problems Solved

- Which products offer the highest discounts?
- Which expensive products are currently unavailable?
- Which categories contribute the most potential revenue?
- Which products provide the best value based on price per gram?
- Which categories maintain the largest inventory?
- Which premium products receive minimal discounts?



# 🚀 Learning Outcomes

Through this project, I gained hands-on experience in:

- Relational database design
- SQL querying
- Exploratory Data Analysis (EDA)
- Data cleaning techniques
- Business KPI analysis
- Inventory analytics
- Pricing analysis
- Revenue estimation
- Writing production-style SQL queries


# ⭐ Future Improvements

- Build an interactive Power BI dashboard
- Automate the ETL pipeline
- Perform time-series inventory analysis
- Add profitability and margin calculations
- Integrate PostgreSQL with Python for advanced analytics

