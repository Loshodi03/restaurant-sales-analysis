-- DATA CLEANING

-- Check for missing order dates
SELECT *
FROM orders
WHERE order_date IS NULL;

-- Remove duplicate orders
SELECT DISTINCT *
FROM orders;

-- Convert order_date to DATE (if needed)
-- Example for SQL Server:
-- ALTER TABLE orders
-- ALTER COLUMN order_date DATE;
