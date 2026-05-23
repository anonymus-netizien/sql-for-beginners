-- Write a SQL query below --
SELECT
    o.order_id,
    p.name AS product_name,
    o.quantity,
    ROUND(o.price, 2) as price

FROM order_items o

LEFT JOIN products p ON o.product_id = p.id

WHERE o.quantity > 1

ORDER BY o.order_id ASC