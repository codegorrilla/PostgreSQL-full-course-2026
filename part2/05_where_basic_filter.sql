-- /products?category=electronics

-- SELECT name,category, price
-- FROM products
-- WHERE category = 'electronics';

-- find products which are not active
SELECT name AS product_name
FROM products
WHERE is_active = FALSE;