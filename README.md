

<div align="center">

# 🍽️ Swiggy SQL Analysis

<img src="https://readme-typing-svg.demolab.com?font=Poppins&size=25&pause=1000&color=FF6B35&center=true&vCenter=true&width=700&lines=Swiggy+Restaurant+Data+Analysis;SQL+Business+Insights;Advanced+SQL+Project;Data+Analytics+Portfolio" alt="Typing SVG"/>

<br>

<img src="https://img.shields.io/badge/SQL-MySQL-orange?style=for-the-badge&logo=mysql&logoColor=white"/>
<img src="https://img.shields.io/badge/Data%20Analytics-Project-blue?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Status-Completed-success?style=for-the-badge"/>
<img src="https://img.shields.io/badge/GitHub-Portfolio-black?style=for-the-badge&logo=github"/>

</div>

---

## 📖 Project Overview

This project analyzes Swiggy restaurant data using SQL to uncover valuable business insights.

### 🎯 Objectives

- Identify top-performing restaurants
- Analyze cuisine popularity
- Study customer engagement
- Estimate restaurant revenue
- Compare restaurant performance across cities

---

## 🛠️ Tools Used

- SQL
- MySQL
- GitHub

---

## 📊 SQL Concepts Used

✅ Aggregate Functions

✅ GROUP BY

✅ HAVING

✅ JOINS

✅ Subqueries

✅ Common Table Expressions (CTEs)

✅ Window Functions

✅ RANK()

✅ DENSE_RANK()

✅ ROW_NUMBER()

✅ SELF JOIN

---

## 💻 Sample Query

```sql
WITH Revenue_CTE AS (
    SELECT
        Name,
        Cost * Rating_Count AS Revenue
    FROM restaurants
)

SELECT *
FROM Revenue_CTE
ORDER BY Revenue DESC
LIMIT 10;
```

---

## 🔥 Key Insights

📌 Identified top revenue-generating restaurants

📌 Discovered the most popular cuisines

📌 Analyzed city-wise restaurant trends

📌 Evaluated customer engagement using ratings and reviews

📌 Generated business-focused insights

---

## 📂 Repository Structure

```text
Swiggy-SQL-Analysis
│
├── README.md
├── Swiggy project.sql
└── Dataset
```

---

## 👩‍💻 Author

### Muskan Singal

📊 Data Analyst | SQL Enthusiast

🔗 GitHub: https://github.com/muskansingal29

---

<div align="center">

## ⭐ Don't forget to star this repository!

<img src="https://readme-typing-svg.demolab.com?font=Poppins&size=20&pause=1000&color=FF6B35&center=true&vCenter=true&width=500&lines=Thank+You+For+Visiting!;Happy+Learning+SQL!;Keep+Building+Projects!" alt="Typing SVG"/>

</div>
