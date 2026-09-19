-- Insert data into 'TableName'
INSERT INTO products (name, category, price, stock, sku, description)
VALUES ('temp product to be deleted', 'furniture', '1000.50', 20, 'FURN-DSK-008', 'temp product desc');

SELECT name, category, sku
FROM products
WHERE sku = 'FURN-DSK-008';

-- Delete rows from 'TableName' where condition is met
DELETE FROM products
WHERE sku = 'FURN-DSK-008';

SELECT name, category, sku
FROM products
WHERE sku = 'FURN-DSK-008';