# 🍕 Pizza Sales Data Analytics Project

## 📌 Project Overview
This repository showcases a comprehensive data analysis project focused on uncovering performance insights, customer trends, and revenue patterns for a commercial pizza business. By utilizing structured relational data, this project models operational metrics to drive data-backed business decisions regarding menu management, inventory optimization, and staffing efficiency.

## 📊 Business Key Performance Indicators (KPIs)

| Metric | Performance Value | Strategic Meaning |
|------|------------------|------------------|
| Total Volume | 21,350 Orders | Total consumer demand handled across the dataset |
| Gross Revenue | $817,860.05 | Consolidated gross financial turnover |
| Operational Baseline | 138 Pizzas / Day | Average daily production load required by the kitchen |
| Premium Pricing | $35.95 | Maximum single product price anchor (The Greek Pizza) |


## 🗄️ Database Architecture

The analytical pipeline relies on a relational schema comprising four core tables:

- **orders**  
  Captures foundational transaction data, including explicit timestamps and calendar dates.

- **orderdetails**  
  Maps individual itemized breakdowns per transaction, identifying specific quantities and pizza variants selected.

- **pizza**  
  Acts as the operational inventory table matching specific size profiles and item SKU codes to target pricing tiers.

- **pizzatypes**  
  Contains master data detailing descriptive names, ingredient classifications, and core culinary categories.


## 📈 Executive Summary & Key Insights

### ⏰ Peak Demand & Resource Planning
- **Dual Rush Hours:** Order volume exhibits predictable spikes twice a day  
  - Lunch peak: 12:00 PM – 1:00 PM  
  - Dinner peak: 5:00 PM – 7:00 PM  
- **Staffing Insight:** Labor allocation and ingredient preparation should be optimized around these time windows to reduce wait times and avoid kitchen bottlenecks.


### 🍕 Customer Preferences & Inventory Mix
- **Size Dominance:**  
  - Large (L): 18,956 units sold  
  - Medium (M): 15,635 units sold  
  - Small (S): 14,403 units sold  
  - XL & XXL: Minimal demand  

- **Category Performance:**  
  Chicken recipes dominate top revenue items, while the **Classic category** contributes the highest overall segment revenue at **26.91%**

### 💼 Revenue & Product Performance
- **Revenue Uniformity:**  
  All major categories (Classic, Supreme, Chicken, Veggie) contribute nearly equally to total revenue, showing a balanced product portfolio.

- **Menu Engineering Strategy:**  
  Ranking analysis highlights underperforming items in each category, providing clear opportunities for:
  - Menu optimization  
  - Targeted promotions  
  - Product pruning decisions
