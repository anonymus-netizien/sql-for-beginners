-- Write a SQL query below --
SELECT p.name AS product_name, c.name AS category_name, ifnull(SUM(o.quantity),0) AS total_sold FROM products p

LEFT JOIN categories c ON p.category_id = c.id
LEFT JOIN order_items o ON p.id = o.product_id

GROUP BY p.name, c.name

ORDER BY total_sold DESC, product_name ASC
