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
CREATE TABLE agents(	
    AGENT_CODE char(6) NOT NULL PRIMARY KEY, 
    AGENT_NAME char(40), 
    WORKING_AREA char(35), 
    COMMISSION numeric(10,2), 
    PHONE_NO char(15), 
    COUNTRY varchar(25) 
);

INSERT INTO agents VALUES ('A007', 'Ramasundar', 'Bangalore', '0.15', '077-25814763', '');
INSERT INTO agents VALUES ('A003', 'Alex ', 'London', '0.13', '075-12458969', '');
INSERT INTO agents VALUES ('A008', 'Alford', 'New York', '0.12', '044-25874365', '');
INSERT INTO agents VALUES ('A011', 'Ravi Kumar', 'Bangalore', '0.15', '077-45625874', '');
INSERT INTO agents VALUES ('A010', 'Santakumar', 'Chennai', '0.14', '007-22388644', '');
INSERT INTO agents VALUES ('A012', 'Lucida', 'San Jose', '0.12', '044-52981425', '');
INSERT INTO agents VALUES ('A005', 'Anderson', 'Brisbane', '0.13', '045-21447739', '');
INSERT INTO agents VALUES ('A001', 'Subbarao', 'Bangalore', '0.14', '077-12346674', '');
INSERT INTO agents VALUES ('A002', 'Mukesh', 'Mumbai', '0.11', '029-12358964', '');
INSERT INTO agents VALUES ('A006', 'McDen', 'London', '0.15', '078-22255588', '');
INSERT INTO agents VALUES ('A004', 'Ivan', 'Toronto', '0.15', '008-22544166', '');
INSERT INTO agents VALUES ('A009', 'Benjamin', 'Hampshair', '0.11', '008-22536178', '');


CREATE TABLE customer(	
    CUST_CODE varchar(6) NOT NULL PRIMARY KEY, 
    CUST_NAME varchar(40) NOT NULL, 
    CUST_CITY char(35), 
    WORKING_AREA varchar(35) NOT NULL, 
    CUST_COUNTRY varchar(20) NOT NULL, 
    GRADE integer, 
    OPENING_AMT numeric(12,2) NOT NULL, 
    RECEIVE_AMT numeric(12,2) NOT NULL, 
    PAYMENT_AMT numeric(12,2) NOT NULL, 
    OUTSTANDING_AMT numeric(12,2) NOT NULL, 
    PHONE_NO varchar(17) NOT NULL, 
    AGENT_CODE char(6) NOT NULL REFERENCES agents
); 

INSERT INTO customer VALUES ('C00013', 'Holmes', 'London', 'London', 'UK', '2', '6000.00', '5000.00', '7000.00', '4000.00', 'BBBBBBB', 'A003');
INSERT INTO customer VALUES ('C00001', 'Micheal', 'New York', 'New York', 'USA', '2', '3000.00', '5000.00', '2000.00', '6000.00', 'CCCCCCC', 'A008');
INSERT INTO customer VALUES ('C00020', 'Albert', 'New York', 'New York', 'USA', '3', '5000.00', '7000.00', '6000.00', '6000.00', 'BBBBSBB', 'A008');
INSERT INTO customer VALUES ('C00025', 'Ravindran', 'Bangalore', 'Bangalore', 'India', '2', '5000.00', '7000.00', '4000.00', '8000.00', 'AVAVAVA', 'A011');
INSERT INTO customer VALUES ('C00024', 'Cook', 'London', 'London', 'UK', '2', '4000.00', '9000.00', '7000.00', '6000.00', 'FSDDSDF', 'A006');
INSERT INTO customer VALUES ('C00015', 'Stuart', 'London', 'London', 'UK', '1', '6000.00', '8000.00', '3000.00', '11000.00', 'GFSGERS', 'A003');
INSERT INTO customer VALUES ('C00002', 'Bolt', 'New York', 'New York', 'USA', '3', '5000.00', '7000.00', '9000.00', '3000.00', 'DDNRDRH', 'A008');
INSERT INTO customer VALUES ('C00018', 'Fleming', 'Brisbane', 'Brisbane', 'Australia', '2', '7000.00', '7000.00', '9000.00', '5000.00', 'NHBGVFC', 'A005');
INSERT INTO customer VALUES ('C00021', 'Jacks', 'Brisbane', 'Brisbane', 'Australia', '1', '7000.00', '7000.00', '7000.00', '7000.00', 'WERTGDF', 'A005');
INSERT INTO customer VALUES ('C00019', 'Yearannaidu', 'Chennai', 'Chennai', 'India', '1', '8000.00', '7000.00', '7000.00', '8000.00', 'ZZZZBFV', 'A010');
INSERT INTO customer VALUES ('C00005', 'Sasikant', 'Mumbai', 'Mumbai', 'India', '1', '7000.00', '11000.00', '7000.00', '11000.00', '147-25896312', 'A002');
INSERT INTO customer VALUES ('C00007', 'Ramanathan', 'Chennai', 'Chennai', 'India', '1', '7000.00', '11000.00', '9000.00', '9000.00', 'GHRDWSD', 'A010');
INSERT INTO customer VALUES ('C00022', 'Avinash', 'Mumbai', 'Mumbai', 'India', '2', '7000.00', '11000.00', '9000.00', '9000.00', '113-12345678','A002');
INSERT INTO customer VALUES ('C00004', 'Winston', 'Brisbane', 'Brisbane', 'Australia', '1', '5000.00', '8000.00', '7000.00', '6000.00', 'AAAAAAA', 'A005');
INSERT INTO customer VALUES ('C00023', 'Karl', 'London', 'London', 'UK', '0', '4000.00', '6000.00', '7000.00', '3000.00', 'AAAABAA', 'A006');
INSERT INTO customer VALUES ('C00006', 'Shilton', 'Toronto', 'Toronto', 'Canada', '1', '10000.00', '7000.00', '6000.00', '11000.00', 'DDDDDDD', 'A004');
INSERT INTO customer VALUES ('C00010', 'Charles', 'Hampshair', 'Hampshair', 'UK', '3', '6000.00', '4000.00', '5000.00', '5000.00', 'MMMMMMM', 'A009');
INSERT INTO customer VALUES ('C00017', 'Srinivas', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '4000.00', '3000.00', '9000.00', 'AAAAAAB', 'A007');
INSERT INTO customer VALUES ('C00012', 'Steven', 'San Jose', 'San Jose', 'USA', '1', '5000.00', '7000.00', '9000.00', '3000.00', 'KRFYGJK', 'A012');
INSERT INTO customer VALUES ('C00008', 'Karolina', 'Toronto', 'Toronto', 'Canada', '1', '7000.00', '7000.00', '9000.00', '5000.00', 'HJKORED', 'A004');
INSERT INTO customer VALUES ('C00003', 'Martin', 'Toronto', 'Toronto', 'Canada', '2', '8000.00', '7000.00', '7000.00', '8000.00', 'MJYURFD', 'A004');
INSERT INTO customer VALUES ('C00009', 'Ramesh', 'Mumbai', 'Mumbai', 'India', '3', '8000.00', '7000.00', '3000.00', '12000.00', 'Phone No', 'A002');
INSERT INTO customer VALUES ('C00014', 'Rangarappa', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'AAAATGF', 'A001');
INSERT INTO customer VALUES ('C00016', 'Venkatpati', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'JRTVFDD', 'A007');
INSERT INTO customer VALUES ('C00011', 'Sundariya', 'Chennai', 'Chennai', 'India', '3', '7000.00', '11000.00', '7000.00', '11000.00', 'PPHGRTS', 'A010');

CREATE TABLE contractors(	
    CONTRACTOR_CODE char(6) NOT NULL PRIMARY KEY, 
    CONTRACTOR_NAME char(40), 
    WORKING_AREA char(35), 
    COMMISSION numeric(10,2), 
    PHONE_NO char(15), 
    COUNTRY varchar(25) 
);

INSERT INTO contractors VALUES ('C001', 'John', 'New York', '0.17', '077-11124769', '');
INSERT INTO contractors VALUES ('C002', 'Sarah ', 'San Francisco', '0.18', '032-89790125', '');
INSERT INTO contractors VALUES ('C003', 'Liam', 'Dublin', '0.14', '011-33447076', '');
INSERT INTO contractors VALUES ('C004', 'Richard', 'Vancouver', '0.15', '008-44720826', '');
INSERT INTO contractors VALUES ('C005', 'Whitaker', 'New York', '0.18', '012-58859201', '');
INSERT INTO contractors VALUES ('C006', 'Lucia', 'San Jose', '0.15', '032-81027792', '');