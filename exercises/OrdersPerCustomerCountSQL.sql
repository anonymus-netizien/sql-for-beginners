-- Write a SQL query below --
SELECT
    c.first_name,
    c.last_name,
    COUNT(o.id) AS order_count

FROM customers c
JOIN orders o ON c.id = o.customer_id

GROUP BY
    c.id,
    c.first_name,
    c.last_name

HAVING 
    COUNT(o.id) >= 1

ORDER BY
    order_count DESC