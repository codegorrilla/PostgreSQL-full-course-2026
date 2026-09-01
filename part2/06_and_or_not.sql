-- AND => every condition must be true
-- OR => at least one condition must be true
-- NOT => reverse/ exclude a condition

-- products where it is electronics product but the price is greater than 5000

-- SELECT name, category, price
-- FROM products
-- WHERE category = 'electronics' AND price > 100;

-- products where category is electronics or furniture

-- SELECT name, category, price
-- FROM products
-- WHERE category = 'electronics' OR category = 'furniture';

-- SELECT name, category
-- FROM products
-- WHERE NOT category = 'electronics';

SELECT name, category, price, stock
FROM products
WHERE (category = 'electronics' OR category = 'furniture')
    AND stock > 0;