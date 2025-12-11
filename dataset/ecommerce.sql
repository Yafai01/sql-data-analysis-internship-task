-- Ecommerce Dataset Placeholder
-- Add your CREATE TABLE + INSERT statements here.

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT
);

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    order_amount REAL,
    order_date TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
