CREATE DATABASE food_delivery_db;

USE food_delivery_db;

SELECT * FROM delivery_data;

SELECT COUNT(*) AS total_orders
FROM delivery_data;

SELECT AVG(rating) AS avg_rating
FROM delivery_data;

SELECT AVG(delivery_time_min) AS avg_delivery_time
FROM delivery_data;

SELECT location,AVG(rating) AS avg_rating
FROM delivery_data
GROUP BY location
ORDER BY avg_rating DESC;

SELECT agent_name,AVG(rating) AS avg_rating
FROM delivery_data
GROUP BY agent_name
ORDER BY avg_rating DESC;

SELECT delivery_time_min,AVG(rating) AS avg_rating FROM delivery_data
GROUP BY delivery_time_min
ORDER BY delivery_time_min;

SELECT discount_applied , AVG(rating) AS avg_rating
FROM delivery_data
GROUP BY discount_applied;

SELECT order_accuracy, COUNT(*) AS total_orders
FROM delivery_data
GROUP BY order_accuracy;

SELECT rating,COUNT(*) AS count FROM delivery_data
GROUP BY rating
ORDER BY rating;

SELECT * FROM delivery_data
WHERE rating >=4 AND delivery_time_min < 30;

SELECT customer_service_rating,AVG(rating) AS avg_rating
FROM delivery_data
GROUP BY customer_service_rating;

SELECT agent_name,rating,CASE
WHEN rating >= 4 THEN 'EXCELLENT'
WHEN rating >= 3 THEN 'GOOD'
ELSE 'POOR'
END AS rating_category
FROM delivery_data;


