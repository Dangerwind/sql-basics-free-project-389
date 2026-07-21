SELECT MIN(price) AS min_price, MAX(price) AS max_price, ROUND(AVG(price)::numeric,2) AS avg_price
FROM products;
