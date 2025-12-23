# 📊 E-commerce Sales & Customer Analysis

## 📌 Project Overview
This project focuses on analyzing e-commerce transaction data to understand **sales performance** and **customer purchasing behavior**.  
The goal is to support business decision-making through data cleaning, analysis, and interactive visualization.

The analysis is designed from a **business-oriented perspective**, leveraging my background in **Sales** and transitioning into **Data Analytics**.

---

## 🎯 Business Objectives & Key Questions
- How does revenue change over time?
- How to categorize customers into different segments?
- Which products contribute most to total revenue?
- What trends can be identified to support marketing and sales strategies?

---

## 🗂 Dataset Information
- **Dataset Name**: Online Retail Dataset  
- **Source**: UCI Machine Learning Repository  
  https://archive.ics.uci.edu/ml/datasets/online+retail

### ⚠️ Raw Data Availability
The original raw dataset is **not included** in this repository due to file size limitations.

To ensure reproducibility:
- The data source link is provided
- All data cleaning and transformation steps are fully documented in SQL scripts

⚠️ Note: Cleaned data is excluded due to file size limitations. 
All cleaning steps are fully documented in SQL scripts.

---

## 🔄 Analysis Workflow
1. Download raw data from the source
2. Import raw data into **SQL Server**
3. Perform data cleaning:
   - Remove cancelled orders
   - Handle negative or zero prices and quantities
   - Exclude invalid or missing CustomerID
4. Create a clean analysis table
5. Perform analytical queries using SQL
6. Load cleaned data into **Power BI**
7. Build an interactive dashboard for insights and reporting

---

## 🛠 Tools & Technologies
- **SQL Server** – Data cleaning, transformation, analysis
- **Power BI** – Data modeling, DAX measures, visualization
- **Excel / CSV** – Data storage
- **GitHub** – Project documentation & portfolio

---

## 📈 Key Metrics & Definitions
- **Total Revenue**: Sum of (Quantity × Unit Price)
- **New Customers**: Customers making their first purchase
- **Returning Customers**: Customers with more than one purchase
- **Retention Rate**: Percentage of customers who returned in a later period

---

## 🔍 Key Insights
- Returning customers contribute a significant share of total revenue
- UK contributes a large portion of sales
- Repeat purchase behavior indicates short-term customer loyalty
- Revenue shows noticeable seasonal patterns over time

---

## 📊 Dashboard Preview
Below is a snapshot of the Power BI dashboard built for this project:

<img width="1051" height="1425" alt="dashboard_overview" src="https://github.com/user-attachments/assets/ee798ad0-6deb-47ff-86a2-dad437f6c1e9" />

---

## 📁 Project Structure
```
ecommerce-sales-analysis/
│
├── data/
│   ├── OnlineRetail_clean_sample.csv
│   └── README.md
│
├── sql/
│   ├── data_cleaning.sql
│   └── analysis_queries.sql
│
├── powerbi/
│   └── ecommerce_dashboard.pbix
│
├── images/
│   └── dashboard_overview.png
│
└── README.md
```

---

## 🚀 Future Improvements
- Cohort-based retention analysis
- RFM customer segmentation
- Customer Lifetime Value (CLV) modeling
- Automated data refresh pipeline

---

## 👤 Author
**Đỗ Thanh Hải**  
Aspiring Data Analyst | Background in Sales & Business  
📧 Email: dthai.250899@gmail.com
📞 Phone: +84942713289 
🔗 LinkedIn: https://www.linkedin.com/in/dthai2508/

---

## ✅ Why This Project Matters
This project demonstrates:
- Ability to clean and analyze real-world data
- Business-oriented thinking beyond technical skills
- End-to-end data analytics workflow
- Clear communication through dashboards and documentation


