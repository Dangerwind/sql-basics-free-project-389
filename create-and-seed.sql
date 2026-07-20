CREATE TABLE products (
  id	BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR NOT NULL, 
  category VARCHAR NOT NULL,
  brand VARCHAR,
  sku	VARCHAR	NOT NULL UNIQUE,
  price REAL NOT NULL CHECK(price >= 0),
  stock	INT	NOT NULL DEFAULT 0 CHECK(stock >= 0),
  rating REAL CHECK(rating >= 0 AND	rating <= 5),
  discount REAL,
  created_at TIMESTAMP
);

INSERT INTO products (name, category, brand, sku, price, stock, rating, discount, created_at) 
VALUES
('iPhone 15', 'Смартфоны', 'Apple', 'PH-1001', 79990.00, 12, 4.8, NULL, '2024-01-10 09:00'),
('Galaxy S24', 'Смартфоны', 'Samsung', 'PH-1002', 69990.00, 8, 4.6, 10.0, '2024-01-12 10:30'),
('Pixel 8',	'Смартфоны', 'Google',	'PH-1003',	59990.00,	0, 4.5,	NULL,	'2024-01-15 14:00'),
('MacBook Air',	'Ноутбуки',	'Apple',	'NB-2001',	119990.00,	5,	4.9,	5.0,	'2024-02-01 11:00'),
('ThinkPad X1',	'Ноутбуки',	'Lenovo',	'NB-2002',	139990.00,	3,	4.7,	NULL,	'2024-02-03 09:45'),
('AirPods Pro',	'Аксессуары',	'Apple',	'AC-3001',	24990.00,	25,	4.4,	15.0,	'2024-02-10 16:20'),
('Galaxy Buds',	'Аксессуары',	'Samsung',	'AC-3002',	12990.00,	40,	4.2,	NULL,	'2024-02-12 12:00'),
('Mouse MX',	'Аксессуары',	'Logitech',	'AC-3003',	7990.00,	100,	4.3, 20.0,	'2024-03-01 08:00'),
('iPad Air',	'Планшеты',	'Apple',	'TB-4001',	64990.00,	7,	4.6,	NULL,	'2024-03-05 13:30'),
('Tab S9',	'Планшеты',	'Samsung',	'TB-4002',	54990.00,	0,	4.1,	8.0,	'2024-03-08 15:00');
