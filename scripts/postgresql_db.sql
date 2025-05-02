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


-- For View Tutorial 

DROP TABLE IF EXISTS sales_agent;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS marketers;
DROP TABLE IF EXISTS agents;
DROP TABLE IF EXISTS contractors;

CREATE TABLE sales_agent(	
    EMPLOYEE_ID char(6) NOT NULL PRIMARY KEY, 
    EMPLOYEE_NAME char(40), 
    WORKING_AREA char(35), 
    COMMISSION numeric(10,2), 
    PHONE_NO char(15)
);


INSERT INTO sales_agent 
VALUES 
    ('A001', 'John', 'Bangalore', '0.14', '077-12346674'),
    ('A002', 'Mukesh', 'Mumbai', '0.11', '029-12358964'),
    ('A003', 'Alex ', 'London', '0.13', '075-12458969'),
    ('A004', 'Ivan', 'Toronto', '0.15', '008-22544166'),
    ('A005', 'Anderson', 'Brisbane', '0.13', '045-21447739'),
    ('A006', 'McDen', 'London', '0.15', '078-22255588'),
    ('A007', 'Ramasundar', 'Bangalore', '0.15', '077-25814763'),
    ('A008', 'Alford', 'New York', '0.12', '044-25874365'),
    ('A009', 'Benjamin', 'Hampshair', '0.11', '008-22536178'),
    ('A010', 'Santakumar', 'Chennai', '0.14', '007-22388644'),
    ('A011', 'Ravi Kumar', 'Bangalore', '0.15', '077-45625874'),
    ('A012', 'Lucida', 'San Jose', '0.12', '044-52981425');


CREATE TABLE customers(	
    CUST_ID varchar(6) NOT NULL PRIMARY KEY, 
    CUST_NAME varchar(40) NOT NULL, 
    CUST_CITY char(35), 
    PAYMENT_AMT numeric(12,2) NOT NULL, 
    EMPLOYEE_ID char(6) NOT NULL,
    FOREIGN KEY (EMPLOYEE_ID)
        REFERENCES sales_agent
        ON DELETE CASCADE
); 

INSERT INTO customers 
VALUES 
    ('C00013', 'Holmes', 'London', '6000.00', 'A003'),
    ('C00001', 'Micheal', 'New York', '3000.00', 'A008'),
    ('C00020', 'Albert', 'New York', '5000.00', 'A008'),
    ('C00025', 'Ravindran', 'Bangalore', '5000.00', 'A011'),
    ('C00024', 'Cook', 'London', '4000.00', 'A006'),
    ('C00015', 'Stuart', 'London', '6000.00', 'A003'),
    ('C00002', 'Bolt', 'New York', '5000.00', 'A008'),
    ('C00018', 'Fleming', 'Brisbane', '7000.00', 'A005'),
    ('C00021', 'Jacks', 'Brisbane', '7000.00', 'A005'),
    ('C00019', 'Yearannaidu', 'Bangalore', '8000.00', 'A010'),
    ('C00005', 'Sasikant', 'Dehli','7000.00', 'A002'),
    ('C00007', 'Ramanathan', 'Dehli','7000.00', 'A010'),
    ('C00022', 'Avinash', 'Mumbai', '7000.00', 'A002'),
    ('C00004', 'Winston', 'Brisbane', '5000.00', 'A005'),
    ('C00023', 'Karl', 'London', '4000.00', 'A006'),
    ('C00006', 'Shilton', 'Toronto', '10000.00', 'A004'),
    ('C00010', 'Charles', 'Hampshair', '6000.00', 'A009'),
    ('C00017', 'Srinivas', 'Bangalore', '8000.00', 'A007'),
    ('C00012', 'Steven', 'San Jose', '5000.00', 'A012'),
    ('C00008', 'Karolina', 'Toronto', '7000.00', 'A004'),
    ('C00003', 'Martin', 'Toronto', '8000.00', 'A004'),
    ('C00009', 'Ramesh', 'Mumbai', '8000.00', 'A002'),
    ('C00014', 'Rangarappa', 'Bangalore', '8000.00', 'A001'),
    ('C00016', 'Venkatpati', 'Bangalore', '8000.00', 'A007'),
    ('C00011', 'Sundariya', 'Chennai', '7000.00', 'A010');

CREATE TABLE marketers(	
    EMPLOYEE_ID char(6) NOT NULL PRIMARY KEY, 
    EMPLOYEE_NAME char(40), 
    WORKING_AREA char(35), 
    SALARY numeric(10,2), 
    PHONE_NO char(15)
);

INSERT INTO marketers 
VALUES 
    ('A013', 'John', 'New York', '50000', '077-11124769'),
    ('A014', 'Sarah ', 'San Francisco', '52000', '032-89790125'),
    ('A015', 'Liam', 'Dublin', '38000', '011-33447076'),
    ('A016', 'Richard', 'Vancouver', '47000', '008-44720826'),
    ('A017', 'Whitaker', 'New York', '54000', '012-58859201'),
    ('A018', 'Lucia', 'San Jose', '49000', '032-81027792');