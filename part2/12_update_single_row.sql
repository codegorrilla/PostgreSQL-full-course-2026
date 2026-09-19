

SELECT name, price, stock, sku
FROM products
WHERE sku = 'ELEC-KEY-001';

-- Update rows in 'TableName' where condition is met
UPDATE products
SET price = 199.00,
    stock = 23
WHERE sku = 'ELEC-KEY-001';
