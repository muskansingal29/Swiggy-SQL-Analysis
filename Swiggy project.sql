-- =========================================
-- SWIGGY RESTAURANT ANALYSIS
-- Demonstrating Subqueries vs CTEs
-- =========================================

USE swiggy;

SELECT * FROM restaurants;


-- 1. Which restaurant of delhi is visited by least number of people?
SELECT name, rating_count
FROM restaurants
WHERE city = 'Delhi'
  AND rating_count = (
      SELECT MIN(rating_count)
      FROM restaurants
      WHERE city = 'Delhi'
  )
  LIMIT 5;


-- 2. Which restaurant has generated maximum revenue all over india?
      SELECT name, cost*rating_count AS revenve from restaurants
      WHERE cost*rating_count = ( SELECT max(cost*rating_count)
      from restaurants)
      Limit 5;
      
      alter table restaurants
      ADD COLUMN Revenue Decimal(12,2);
      
      update restaurants set revenue = cost*rating_count;
      SET SQL_SAFE_UPDATES = 0;
      
      
      
      
	-- 3. How many restaurants are having rating more than the average rating?
    SELECT COUNT(*) 
FROM restaurants
WHERE rating > (
    SELECT AVG(rating)
    FROM restaurants);
    
    
    SELECT * FROM restaurants ;
    
   -- 4. Which restaurant of Delhi has generated most revenue?
      SELECT name, city, cost*rating_count AS revenve from restaurants
    WHERE city = 'delhi' AND cost*rating_count = (SELECT max(cost*rating_count) from restaurants WHERE city = 'delhi');
    
    
 -- 5. Which restaurant chain has maximum number of restaurants?
    with T1 as ( 
    SELECT name, count(*) as chains from restaurants
    group by name)
    
    SELECT name, chains from t1 
    WHERE chains = (Select max(chains) from t1);
    
--- Through a singal query
SELECT name, COUNT(*) AS No_of_restaurants
FROM restaurants
GROUP BY name
ORDER BY COUNT(*) DESC
LIMIT 1;


-- 6. Which restaurant chain has generated maximum revenue?
Select name,  sum(cost*rating_count) as total_revenue
from restaurants 
GROUP BY name
ORDER BY total_revenue DESC
LIMIT 4;

-- 7. Which city has maximum number of restaurants?
SELECT * from restaurants;

SELECT city, count(name) as totalnoofrestaurants
from restaurants
Group by city
order by totalnoofrestaurants DESC
LIMIT 10;

-- 8. Which city has generated maximum revenue all over india?

SELECT City , sum(cost*rating_count) as total_revenue
from restaurants
Group by city
order by total_revenue DESC
LIMIT 10;

---  Which cuisine is most famous in delhi
SELECT city, cuisine, max(rating)
from restaurants
where city = 'delhi'
GROUP BY Cuisine;

-- 9. List 10 least expensive cuisines?
SELECT cuisine,
       AVG(cost) AS avg_cost
FROM restaurants
GROUP BY cuisine
ORDER BY avg_cost ASC
LIMIT 10;

-- 10. List 10 most expensive cuisines?
SELECT cuisine,
       AVG(cost) AS avg_cost
FROM restaurants
GROUP BY cuisine
ORDER BY avg_cost DESC
LIMIT 10;

-- 11. What is the city is having Biryani as most popular cuisine
SELECT city,
       SUM(rating_count) AS total_rating_count
FROM restaurants
WHERE cuisine = 'Biryani'
GROUP BY city
ORDER BY total_rating_count DESC
LIMIT 1;

-- 12. List top 10 unique restaurants with unique name only 
-- throughout the dataset as per generate maximum revenue (Single restaurant with that name)

WITH unique_restaurants AS (
    SELECT name FROM restaurants
    GROUP BY name
    HAVING count(*) = 1)
SELECT name, SUM(cost*rating_count) AS total_revenue
FROM restaurants
WHERE NAME IN 
( SELECT name  FROM unique_restaurants)
GROUP BY name
ORDER BY total_revenue DESC
LIMIT 10;
    