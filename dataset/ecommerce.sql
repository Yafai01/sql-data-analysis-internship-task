CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT
);

INSERT INTO users (id, name, email) VALUES
(1, 'Aarav', 'aarav@example.com'),
(2, 'Diya', 'diya@example.com'),
(3, 'Yafai', 'yafai@example.com');

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    order_amount REAL,
    order_date TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO orders (order_id, user_id, order_amount, order_date) VALUES
(101, 1, 500.00, '2023-01-01'),
(102, 1, 799.00, '2023-01-05'),
(103, 2, 299.00, '2023-01-09'),
(104, 3, 999.00, '2023-01-15'),
(105, 3, 1200.00, '2023-01-20');
