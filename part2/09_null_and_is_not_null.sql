-- null => missing or unknown value
-- you should not check null using = null
-- use IS NULL
-- use IS NOT NULL
-- check the column has an empty string

-- SELECT name, description
-- FROM products
-- WHERE description IS NULL;


SELECT name, category, is_active, description
FROM products
WHERE is_active = true AND description IS NULL;

