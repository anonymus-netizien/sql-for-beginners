-- Write a SQL query below --
SELECT 
    o.id AS order_id,
    c.email,
    ROUND(o.total_amount, 2) AS total_amount,
    MAX(p.payment_method) AS payment_method
FROM orders o 

LEFT JOIN customers c ON
    o.customer_id = c.id
LEFT JOIN payments p ON
    o.id = p.order_id

WHERE o.ordered_at BETWEEN '2023-10-01' AND '2023-10-31'

GROUP BY 
    o.id,
    c.email,
    o.total_amount,
    o.ordered_at;