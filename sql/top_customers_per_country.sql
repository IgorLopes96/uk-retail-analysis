-- Top customer per country by total revenue
-- -----------------------------------------
-- Identifies the highest-revenue customer within each country
-- using a window function (RANK).

-- Field mapping:
-- field4 = Quantity
-- field6 = UnitPrice
-- field7 = CustomerID
-- field8 = Country

WITH customer_revenue AS (
    SELECT
        field8 AS country,
        field7 AS customer_id,
        SUM(field4 * field6) AS total_revenue
    FROM ecommerce_sql
    WHERE field7 IS NOT NULL
      AND field8 IS NOT NULL
    GROUP BY country, customer_id
),
ranked_customers AS (
    SELECT
        country,
        customer_id,
        total_revenue,
        RANK() OVER (
            PARTITION BY country
            ORDER BY total_revenue DESC
        ) AS country_rank
    FROM customer_revenue
)
SELECT
    country,
    customer_id,
    ROUND(total_revenue, 2) AS total_revenue
FROM ranked_customers
WHERE country_rank = 1
ORDER BY total_revenue DESC;
