SELECT name, price, discount, price * (1 - discount / 100) AS final_price
FROM products
WHERE discount > 0
ORDER BY discount DESC;
