CREATE DATABASE IF NOT EXISTS banking_db;
USE banking_db;

-- Drop table if it already exists
DROP TABLE IF EXISTS accounts;

-- Create the 'accounts' table
CREATE TABLE accounts (
    id INT AUTO_INCREMENT PRIMARY KEY,    -- Account ID
    name VARCHAR(100) NOT NULL,           -- Customer's name
    email VARCHAR(150) UNIQUE NOT NULL,   -- Customer's email (unique)
    phone VARCHAR(20),                    -- Customer's phone
    balance DECIMAL(15, 2) DEFAULT 0.00,  -- Account balance (default 0)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Account creation timestamp
);

-- Insert seed data into 'accounts' (customers with balances)
INSERT INTO accounts (name, email, phone, balance)
VALUES
    ('Alice Smith', 'alice@example.com', '555-1234', 5000.00),
    ('Bob Johnson', 'bob@example.com', '555-5678', 1500.00),
    ('Charlie Brown', 'charlie@example.com', '555-9876', 10000.00),
    ('David Williams', 'david@example.com', '555-6543', 2500.00),
    ('Eve Davis', 'eve@example.com', '555-1122', 3000.00);
    
    

CREATE TABLE nation (
  n_nationkey INT NOT NULL,
  n_name CHAR(25),
  n_regionkey INT,
  n_comment VARCHAR(152),
  PRIMARY KEY (n_nationkey)
);

CREATE TABLE region (
  r_regionkey INT NOT NULL,
  r_name CHAR(25),
  r_comment VARCHAR(152),
  PRIMARY KEY (r_regionkey)
);

CREATE TABLE part (
  p_partkey INT NOT NULL,
  p_name VARCHAR(55),
  p_mfgr CHAR(25),
  p_brand CHAR(10),
  p_type VARCHAR(25),
  p_size INT,
  p_container CHAR(10),
  p_retailprice DECIMAL(15,2),
  p_comment VARCHAR(23),
  PRIMARY KEY (p_partkey)
);

CREATE TABLE supplier (
  s_suppkey INT NOT NULL,
  s_name CHAR(25),
  s_address VARCHAR(40),
  s_nationkey INT,
  s_phone CHAR(15),
  s_acctbal DECIMAL(15,2),
  s_comment VARCHAR(101),
  PRIMARY KEY (s_suppkey)
);

CREATE TABLE partsupp (
  ps_partkey INT NOT NULL,
  ps_suppkey INT NOT NULL,
  ps_availqty INT,
  ps_supplycost DECIMAL(15,2),
  ps_comment VARCHAR(199),
  PRIMARY KEY (ps_partkey, ps_suppkey)
);

CREATE TABLE customer (
  c_custkey INT NOT NULL,
  c_name VARCHAR(25),
  c_address VARCHAR(40),
  c_nationkey INT,
  c_phone CHAR(15),
  c_acctbal DECIMAL(15,2),
  c_mktsegment CHAR(10),
  c_comment VARCHAR(117),
  PRIMARY KEY (c_custkey)
);

CREATE TABLE orders (
  o_orderkey INT NOT NULL,
  o_custkey INT,
  o_orderstatus CHAR(1),
  o_totalprice DECIMAL(15,2),
  o_orderdate DATE,
  o_orderpriority CHAR(15),
  o_clerk CHAR(15),
  o_shippriority INT,
  o_comment VARCHAR(79),
  PRIMARY KEY (o_orderkey)
);

CREATE TABLE lineitem (
  l_orderkey INT NOT NULL,
  l_partkey INT NOT NULL,
  l_suppkey INT NOT NULL,
  l_linenumber INT NOT NULL,
  l_quantity DECIMAL(15,2),
  l_extendedprice DECIMAL(15,2),
  l_discount DECIMAL(15,2),
  l_tax DECIMAL(15,2),
  l_returnflag CHAR(1),
  l_linestatus CHAR(1),
  l_shipdate DATE,
  l_commitdate DATE,
  l_receiptdate DATE,
  l_shipinstruct CHAR(25),
  l_shipmode CHAR(10),
  l_comment VARCHAR(44),
  PRIMARY KEY (l_orderkey, l_linenumber)
);

