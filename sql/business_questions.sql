BUSINESS QUESTIONS

-- Top selling items
SELECT 
    mi.item_name,
    SUM(oi.quantity) AS total_quantity
FROM order_items oi
JOIN menu_items mi
    ON oi.item_id = mi.item_id
GROUP BY mi.item_name
ORDER BY total_quantity DESC;

-- Monthly revenue
SELECT 
    MONTH(o.order_date) AS month,
    SUM(oi.quantity * mi.price) AS revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN menu_items mi
    ON oi.item_id = mi.item_id
GROUP BY MONTH(o.order_date)
ORDER BY month;
