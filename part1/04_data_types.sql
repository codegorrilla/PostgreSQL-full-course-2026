DROP TABLE IF EXISTS basics.products_basic;

CREATE TABLE basics.products_basic(
    id SERIAL PRIMARY KEY,

    -- string => max length of 100 characters
    name VARCHAR(100) NOT NULL,

    description TEXT,

    stock INTEGER DEFAULT 0,

    -- we want to store larger whole number than integer
    total_views BIGINT DEFAULT 0,

    -- exact decimal values
    -- 10 means total digits
    -- 2 means digits after the decimal point
    price NUMERIC(10,2),

    is_active BOOLEAN DEFAULT true
);

--queries

INSERT INTO basics.products_basic
    (NAME, description, stock, total_views, price, is_active)
VALUES
    ('product 1', 'product_desc', 100, 1200, 2455.65, true),
    ('product 2', 'product_desc2', 100, 1000, 2405.65, false);

SELECT * FROM basics.products_basic;
SELECT id, name, price, is_active
FROM basics.products_basic
WHERE is_active;

