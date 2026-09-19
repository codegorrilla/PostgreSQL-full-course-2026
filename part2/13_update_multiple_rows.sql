SELECT name, category, price, is_active
FROM products
WHERE category = 'stationery';

-- Update rows in 'products' where condition is met
UPDATE products
SET price = ROUND(price * 1.10, 2)
WHERE category = 'stationery';

SELECT name, category, price, is_active
FROM products
WHERE category = 'stationery';

UPDATE products
SET is_active = FALSE
WHERE stock <= 10;

