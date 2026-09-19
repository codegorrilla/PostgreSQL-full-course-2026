-- limit => how many rows you want to return
-- offset => how many rows you want to skip
-- pagination => we already know it

-- SELECT name, price
-- FROM products
-- ORDER BY name ASC
-- LIMIT 5;

-- SELECT name, price
-- FROM products
-- ORDER BY name ASC
-- LIMIT 5 OFFSET 0;

-- SELECT name, price
-- FROM products
-- ORDER BY name ASC
-- LIMIT 5 OFFSET 5;

-- (page -1) * limit
-- (2-1) * 5 => 5
-- (3-1) * 5 => 10

SELECT name, price
FROM products
ORDER BY name ASC
LIMIT 5 OFFSET 10;