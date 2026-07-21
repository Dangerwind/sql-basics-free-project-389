SELECT name, price
FROM products
WHERE price < 70000 AND category = 'Смартфоны'
ORDER BY price ASC;
