-- Month-over-Month Revenue Growth
-- --------------------------------
-- This query calculates total revenue per month
-- and compares it to the previous month using a window function.

-- Field mapping (from raw SQLite import):
-- field5 = InvoiceDate
-- field4 = Quantity
-- field6 = UnitPrice

WITH monthly AS (
    SELECT
        strftime('%Y-%m', field5) AS month,      -- extract Year-Month from InvoiceDate
        SUM(field4 * field6) AS revenue          -- Quantity × UnitPrice
    FROM ecommerce_sql
    WHERE field4 > 0                             -- exclude returns / cancellations
    GROUP BY month
)
SELECT
    month,
    ROUND(revenue, 2) AS revenue,
    ROUND(
        LAG(revenue) OVER (ORDER BY month),
        2
    ) AS prev_month_revenue,
    ROUND(
        (revenue - LAG(revenue) OVER (ORDER BY month))
        / LAG(revenue) OVER (ORDER BY month) * 100,
        1
    ) AS growth_pct
FROM monthly
ORDER BY month;
