-- select * returns every columns
-- select specific cols is going to return the cols that I want

-- SELECT * FROM products;
-- SELECT name, category, price, stock
-- FROM products;

--aliases =>  AS creates and alias for the output of the column name
-- makes the col name easier to read

SELECT
    name AS product_name,
    price AS selling_price,
    stock AS available_quantity
FROM products;