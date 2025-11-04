# 🧮 dbt Order Analytics Project

![Python](https://img.shields.io/badge/Python-3.13-blue)
![dbt](https://img.shields.io/badge/dbt-core-orange)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-blue)
![License: MIT](https://img.shields.io/badge/License-MIT-green)
![Build](https://github.com/dat-eng/dbt-order-analytics/actions/workflows/dbt-ci.yml/badge.svg)

---

## 📊 Overview
This project demonstrates an **end-to-end analytics engineering workflow** using [dbt](https://www.getdbt.com/).

It models order transactions from a raw source into clean, tested, documented analytical tables — ready for BI and reporting.

---

## 🏗️ Architecture
```text
raw.orders
    │
    ▼
staging.stg_orders
    │
    ▼
marts.fct_revenue

	•	Staging Layer: Cleans raw data.
	•	Mart Layer: Aggregates revenue and order counts.
	•	Tests: Ensure data quality (no nulls, no duplicates).
	•	Docs: Auto-generated lineage and column metadata.

⚙️ Setup Instructions

1️⃣ Install dbt + Postgres adapter
python3 -m venv venv
source venv/bin/activate
pip install dbt-postgres

Create Postgres Database

CREATE DATABASE dbt_learn;
CREATE USER dbt_user WITH PASSWORD 'dbtpass';
GRANT ALL PRIVILEGES ON DATABASE dbt_learn TO dbt_user;

CREATE SCHEMA raw;
CREATE TABLE raw.orders (
  order_id INT PRIMARY KEY,
  customer_name TEXT,
  amount NUMERIC,
  currency TEXT,
  created_at TIMESTAMP
);

INSERT INTO raw.orders VALUES
(1, 'Alice', 100, 'USD', NOW()),
(2, 'Bob', 200, 'EUR', NOW()),
(3, 'Cathy', NULL, 'USD', NOW());
