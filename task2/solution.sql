CREATE VIEW v_region_sales_summary AS
SELECT region, COUNT(*) AS Sales_count, SUM(CAST(Unit_Price AS REAL)* CAST(Quantity_Sold AS REAL) * (1 - CAST(Discount AS REAL))) AS Total_revenue
FROM sales
GROUP BY region
ORDER BY Total_Revenue DESC;