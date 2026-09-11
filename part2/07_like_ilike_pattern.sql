-- like => case sensitive pattern match
-- ilike => case insensitive pattern match
-- % means any no. of chars
-- exactly one charatcer

-- the % means after wireless anything can come after
-- SELECT name, price
-- FROM products
-- WHERE name LIKE 'Wireless%';

-- Desk, desk, DESK
-- SELECT name, category, price
-- FROM products
-- WHERE name ILIKE '%Desk%';

SELECT name, category, description
FROM products
WHERE name ILIKE '%chair%'
OR description ILIKE '%chair%';
