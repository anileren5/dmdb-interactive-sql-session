-- Drop table if it already exists
DROP TABLE IF EXISTS accounts;

-- Create the 'accounts' table
CREATE TABLE accounts (
    id SERIAL PRIMARY KEY,         -- Account ID
    name VARCHAR(100) NOT NULL,     -- Customer's name
    email VARCHAR(150) UNIQUE NOT NULL, -- Customer's email (unique)
    phone VARCHAR(20),              -- Customer's phone
    balance DECIMAL(15, 2) DEFAULT 0.00 CHECK (balance >= 0), -- Account balance must be >= 0
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
