SELECT category, COUNT(*)
FROM products
GROUP BY category
ORDER BY category;
