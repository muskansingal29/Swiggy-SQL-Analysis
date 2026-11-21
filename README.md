🍽️ Swiggy SQL Analysis
Typing SVG

SQLStatusGitHub

📖 Project Overview
This project analyzes Swiggy restaurant data using SQL to uncover valuable business insights such as:

Top revenue-generating restaurants
Most popular cuisines
City-wise restaurant analysis
Rating and review trends
Customer engagement insights
🛠️ Tools Used
SQL
MySQL
GitHub
📊 SQL Concepts Used
✅ Aggregate Functions

✅ GROUP BY

✅ HAVING

✅ Subqueries

✅ Common Table Expressions (CTEs)

✅ Window Functions

✅ RANK()

✅ DENSE_RANK()

✅ Self Join

💻 Sample Query
WITH revenue_cte AS (
    SELECT
        name,
        cost * rating_count AS revenue
    FROM restaurants
)

SELECT *
FROM revenue_cte
ORDER BY revenue DESC;
🚀 Key Insights
Identified top-performing restaurants.
Analyzed cuisine popularity across cities.
Compared restaurant pricing trends.
Estimated restaurant revenue.
👩‍💻 Author
Muskan Singal

GitHub: https://github.com/muskansingal29

⭐ If you like this project, give it a star!
