-- IN => must match one item from the list
-- NOTIN => value must not match any item from the list
-- BETWEEN => value must be inside a particular range

-- SELECT name, category, price
-- FROM products
-- WHERE category IN ('electronics', 'furniture');

-- SELECT name, category, price
-- FROM products
-- WHERE category NOT IN ('electronics', 'furniture');

-- SELECT name, category, price
-- FROM products
-- WHERE price BETWEEN 100 AND 500;

SELECT name, category, price, stock
FROM products
WHERE category IN ('electronics', 'furniture')
AND price BETWEEN 500 AND 1499;