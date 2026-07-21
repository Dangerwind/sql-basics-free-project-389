SELECT name, price, discount, ROUND(price * (1 - discount / 100), 2) AS final_price
FROM products
WHERE discount > 0
ORDER BY discount DESC;
