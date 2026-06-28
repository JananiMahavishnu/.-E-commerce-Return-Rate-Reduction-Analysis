#Count Total Records
SELECT COUNT(*) AS Total_Orders
FROM ecommerce_returns;

#Return Rate by Category
SELECT
    category,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN returned='Yes' THEN 1 ELSE 0 END) AS Returned_Orders,
    ROUND(
        SUM(CASE WHEN returned='Yes' THEN 1 ELSE 0 END) * 100.0 /
        COUNT(*),
        2
    ) AS Return_Rate
FROM ecommerce_returns
GROUP BY category
ORDER BY Return_Rate DESC;

#Return Rate by Region
SELECT
    region,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN returned='Yes' THEN 1 ELSE 0 END) AS Returned_Orders,
    ROUND(
        SUM(CASE WHEN returned='Yes' THEN 1 ELSE 0 END) * 100.0 /
        COUNT(*),
        2
    ) AS Return_Rate
FROM ecommerce_returns
GROUP BY region
ORDER BY Return_Rate DESC;

#Return Rate by Payment Method
SELECT
    payment_method,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN returned='Yes' THEN 1 ELSE 0 END) AS Returned_Orders,
    ROUND(
        SUM(CASE WHEN returned='Yes' THEN 1 ELSE 0 END) * 100.0 /
        COUNT(*),
        2
    ) AS Return_Rate
FROM ecommerce_returns
GROUP BY payment_method
ORDER BY Return_Rate DESC;

#Top 10 Most Returned Products
SELECT
    product_id,
    COUNT(*) AS Total_Returns
FROM ecommerce_returns
WHERE returned='Yes'
GROUP BY product_id
ORDER BY Total_Returns DESC
LIMIT 10;

#Return Reason Analysis
SELECT
    return_reason,
    COUNT(*) AS Total_Returns
FROM ecommerce_returns
WHERE returned='Yes'
GROUP BY return_reason
ORDER BY Total_Returns DESC;

#Average Discount (Returned vs Not Returned)
SELECT
    returned,
    ROUND(AVG(discount),2) AS Average_Discount
FROM ecommerce_returns
GROUP BY returned;

#Average Profit Margin
SELECT
    returned,
    ROUND(AVG(profit_margin),2) AS Average_Profit_Margin
FROM ecommerce_returns
GROUP BY returned;

#Monthly Return Trend
SELECT
    strftime('%Y-%m', order_date) AS Month,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN returned='Yes' THEN 1 ELSE 0 END) AS Returns
FROM ecommerce_returns
GROUP BY Month
ORDER BY Month;

#Optimize Queries Using Indexes
CREATE INDEX idx_category
ON ecommerce_returns(category);

CREATE INDEX idx_region
ON ecommerce_returns(region);

CREATE INDEX idx_returned
ON ecommerce_returns(returned);

CREATE INDEX idx_order_date
ON ecommerce_returns(order_date);