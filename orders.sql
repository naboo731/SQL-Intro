-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(20) NOT NULL, 
  product_price FLOAT,
  quantity INTEGER);

-- Add 5 orders to the orders table.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (562, 'burger', 5.99, 2), 
(467, 'pizza', 8.99, 1),
(266, 'cheesecake', 12.99, 3),
(211, 'turkey chili', 7.25, 1),
(562, 'sushi', 22.99, 4);

-- Make orders for at least two different people.
SELECT * FROM orders;

-- person_id should be different for different people.
SELECT * FROM orders
WHERE person_id IN (562, 467);

-- Select all the records from the orders table.
SELECT * FROM orders;

-- Calculate the total number of products ordered.
SELECT SUM (quantity) FROM orders;

-- Calculate the total order price.
SELECT SUM (product_price) FROM orders;

-- Calculate the total order price by a single person_id.
SELECT SUM (product_price) FROM orders
WHERE person_id = 562;
