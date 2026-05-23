-- Write a SQL query below --
SELECT
    cust.email,
    ci.product_id

FROM customers cust

JOIN carts cart ON cust.id = cart.customer_id

JOIN cart_items ci ON cart.id = ci.cart_id

WHERE is_active = true

ORDER BY email ASC