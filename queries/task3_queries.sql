-- 1️⃣ Get all users
SELECT * FROM users;

-- 2️⃣ Get all orders
SELECT * FROM orders;

-- 3️⃣ Total number of users
SELECT COUNT(*) AS total_users FROM users;

-- 4️⃣ Total number of orders
SELECT COUNT(*) AS total_orders FROM orders;

-- 5️⃣ Average revenue per user
SELECT user_id, AVG(order_amount) AS avg_revenue
FROM orders
GROUP BY user_id;

-- 6️⃣ Total revenue
SELECT SUM(order_amount) AS total_revenue
FROM orders;

-- 7️⃣ Join users and orders
SELECT u.id, u.name, o.order_id, o.order_amount, o.order_date
FROM users u
INNER JOIN orders o ON u.id = o.user_id;

-- 8️⃣ Users who spent more than 1000
SELECT user_id, SUM(order_amount) AS total_spent
FROM orders
GROUP BY user_id
HAVING total_spent > 1000;

-- 9️⃣ Subquery: Users who placed at least one order
SELECT name
FROM users
WHERE id IN (SELECT user_id FROM orders);

-- 🔟 Create a view for high spenders
CREATE VIEW high_spenders AS
SELECT user_id, SUM(order_amount) AS total_spent
FROM orders
GROUP BY user_id
HAVING total_spent > 1000;

-- 1️⃣1️⃣ Fetch data from the view
SELECT * FROM high_spenders;
