📘 SQL Data Analysis – Internship Task

This project contains the complete solution for Task 3: SQL for Data Analysis from the Data Analyst Internship program.
The goal of this task is to perform SQL-based data analysis on an e-commerce dataset using SQLite and VS Code SQLTools.

📂 Project Structure
sql-data-analysis-task/
│
├── dataset/
│   └── ecommerce.sql          # Raw dataset (SQL format)
│
├── queries/
│   └── task3_queries.sql      # All SQL queries for the task
│
├── ecommerce.db               # SQLite database built from the dataset
│
└── README.md                  # Project documentation

🛠 Tools Used

SQLite — local lightweight database

VS Code with SQLTools (SQLite Driver)

PowerShell / CMD for db setup

Git & GitHub for version control

🎯 Objectives

The task demonstrates the ability to:

Query structured data

Use SELECT, WHERE, ORDER BY, GROUP BY

Join tables

Use aggregate functions (SUM, AVG)

Write subqueries

Create SQL views

Analyze user spending and revenue patterns

🧩 Key Queries (Examples)
✔ 1. All Users
SELECT * FROM users;

✔ 2. Average Revenue per User
SELECT user_id, AVG(order_amount) AS avg_revenue
FROM orders
GROUP BY user_id;

✔ 3. Join Users and Orders
SELECT u.id, u.name, o.order_id, o.order_amount, o.order_date
FROM users u
INNER JOIN orders o ON u.id = o.user_id;

✔ 4. High Spenders View
CREATE VIEW high_spenders AS
SELECT user_id, SUM(order_amount) AS total_spent
FROM orders
GROUP BY user_id
HAVING total_spent > 1000;

⚙️ How to Run the Project
▶ 1. Build the SQLite Database

From project root:

sqlite3 ecommerce.db ".read dataset/ecommerce.sql"

▶ 2. Open in VS Code

Install SQLTools → SQLite Driver.

▶ 3. Connect to Database

Use:

ecommerce.db

▶ 4. Run Queries

Open:

queries/task3_queries.sql


Highlight → Right-click → Run Query

✨ Author

Yafai
AIML Student | Data Analyst Intern
“I don’t give up.”

🚀 End of README

If you want, boss, I can also:

🔹 Add GitHub badges
🔹 Add an ER diagram
🔹 Add a more advanced dataset
🔹 Add formatted screenshots section (if required later)

Just say “upgrade README again.”

You said:
proprer readme profissional 
ChatGPT said:

Say less, boss — your intern will deliver a clean, premium, professional, GitHub-ready README.md that looks like it came straight out of a top-tier data engineer’s portfolio.

This one is polished, structured, industry-grade, and perfect for internship submission or recruiters.

Copy-paste this directly into README.md.
(No screenshots section included, as you asked to remove screenshots from the repo.)

🚀 SQL Data Analysis Internship Task – Project Documentation

A complete SQL analysis project built as part of the Data Analyst Internship – Task 3.
This project demonstrates the ability to query, analyze, and derive insights from an e-commerce dataset using SQLite and VS Code SQLTools.

📌 Overview

The primary goal of this task is to use SQL for:

Extracting data

Performing aggregations

Joining relational tables

Creating meaningful insights

Designing reusable SQL views

This project showcases strong foundational SQL skills and the ability to work with real-world tabular data structures.

📂 Project Structure
sql-data-analysis-task/
│
├── dataset/
│   └── ecommerce.sql          # Raw dataset in SQL format
│
├── queries/
│   └── task3_queries.sql      # All SQL queries for analysis
│
├── ecommerce.db               # SQLite database generated from the dataset
│
└── README.md                  # Project documentation (this file)

🛠 Tools & Technologies
Tool	Purpose
SQLite	Local lightweight database engine
VS Code + SQLTools	Query execution & database visualization
PowerShell / CMD	Database creation and setup
Git & GitHub	Version control and submission
📊 SQL Concepts Implemented

This project demonstrates hands-on usage of essential SQL topics, including:

SELECT, WHERE, ORDER BY

GROUP BY & Aggregations (SUM, AVG, COUNT)

Table Joins (INNER JOIN)

Subqueries

Creating Views

Filtering high-value users

Understanding user behavior through transaction analysis

These are core skills expected from any entry-level Data Analyst or Business Analyst intern.

🧩 Key SQL Queries
🔹 Fetch all users
SELECT * FROM users;

🔹 Fetch all orders
SELECT * FROM orders;

🔹 Average revenue per user
SELECT user_id, AVG(order_amount) AS avg_revenue
FROM orders
GROUP BY user_id;

🔹 Join users and orders
SELECT u.id, u.name, o.order_id, o.order_amount, o.order_date
FROM users u
INNER JOIN orders o ON u.id = o.user_id;

🔹 High-spending users (View)
CREATE VIEW high_spenders AS
SELECT user_id, SUM(order_amount) AS total_spent
FROM orders
GROUP BY user_id
HAVING total_spent > 1000;

🔹 Use the view
SELECT * FROM high_spenders;

⚙️ How to Run the Project
1️⃣ Build the SQLite Database

Inside the project directory:

sqlite3 ecommerce.db ".read dataset/ecommerce.sql"

2️⃣ Open Project in VS Code

Install SQLTools

Install SQLite (Node) Driver

3️⃣ Connect to Database

Open SQLTools sidebar

Add new connection → Select SQLite

Choose ecommerce.db

4️⃣ Run SQL Queries

Open:

queries/task3_queries.sql


Then:

Highlight any query

Right-click → Run Query
OR

Press Ctrl + Shift + E

🧠 Learning Outcomes

By completing this project, the following skills were demonstrated:

Practical SQL execution on a live database

Data aggregation & summarization

Understanding entity relationships

Writing reusable analytical queries

Creating database views for reporting

Clean project structuring & documentation

These are essential capabilities for Data Analyst internships and entry-level roles.

👤 Author

Yafai
AIML Student | Data Analyst Intern
