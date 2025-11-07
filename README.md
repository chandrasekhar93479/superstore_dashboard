# 🏪 Superstore Data Analytics & ML Project

## 📊 Overview
An end-to-end data analysis and machine learning project to analyze sales, profit, discounts, and customer insights using the **Superstore Dataset**.

The project covers:
- Data Cleaning & Preparation (SQL & Excel)
- Exploratory Data Analysis (EDA) in Python
- Power BI Dashboard for business KPIs
- ML Model to predict order profitability (Random Forest)
- Final insights & recommendations

---

## 🧠 Problem Statement
The business needed a unified analytics solution to:
- Clean messy sales data
- Understand profitability drivers
- Identify loss-making categories and regions
- Predict if an order will be **Profitable** or **Not Profitable**
- Visualize insights in an interactive Power BI dashboard

---

## 🧩 Project Pipeline
1. **Data Cleaning (SQL + Excel)**  
   Removed nulls, handled inconsistent data, and formatted dates.

2. **Feature Engineering**  
   Added `Profitability_Flag`, `Profit Margin`, `Discount Band`, and `Ship Duration`.

3. **EDA (Python Notebook)**  
   Visualized sales, profit, category-wise trends, and outliers.

4. **Machine Learning**  
   Model: Random Forest Classifier  
   Accuracy: **94%**  
   Metrics: Precision, Recall, F1-score via **Confusion Matrix**

5. **Dashboard (Power BI)**  
   KPIs: Total Sales, Total Profit, Avg Discount, Top Customers, Region-wise Performance.

---

## 📂 Project Files
| Folder | Description |
|--------|--------------|
| `Data/` | Raw and cleaned datasets |
| `SQL/` | SQL scripts for data summary and KPIs |
| `Notebooks/` | Python EDA & ML notebook |
| `Reports/` | Project documents & justification reports |
| `Dashboard/` | Power BI dashboards (.pbix files) |

---

## 🧾 Key Insights
- **Technology** is the most profitable category.  
- **Furniture (Tables)** shows consistent losses.  
- **High Discounts** strongly correlate with losses.  
- **West Region** has top sales but lower profit margins.  
- Predictive Model flags **risky orders** before approval.

---

## 📈 Tools & Technologies
- **Python (Pandas, Matplotlib, Seaborn, Scikit-Learn)**
- **SQL (MySQL / SQLite)**
- **Power BI**
- **Excel**

---

## 🚀 How to Run
1. Clone the repo  
   ```bash
   git clone https://github.com/your-username/Superstore-Data-Analytics-Project.git
   cd Superstore-Data-Analytics-Project
