-- EXPLORATORY ANALYSIS

-- Total orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- Orders by month
SELECT 
    MONTH(order_date) AS month,
    COUNT(order_id) AS orders
FROM orders
GROUP BY MONTH(order_date)
ORDER BY month;

-- Revenue by category
SELECT 
    mi.category,
SUM(oi.quantity * mi.price) AS revenue
FROM order_items oi
JOIN menu_items mi
    ON oi.item_id = mi.item_id
GROUP BY mi.category;
