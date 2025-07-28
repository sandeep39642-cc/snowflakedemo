-- Create demo table
CREATE OR REPLACE TABLE demo_employees (
    id INT,
    name STRING,
    role STRING,
    start_date DATE,
    salary NUMBER(10,2)
);

-- Insert demo data
INSERT INTO demo_employees (id, name, role, start_date, salary) VALUES
    (1, 'Alice Johnson', 'Engineer', '2022-01-15', 95000),
    (2, 'Bob Smith', 'Data Analyst', '2023-04-10', 85000),
    (3, 'Carol Lee', 'Product Manager', '2021-11-05', 105000);

-- Query the data
SELECT * FROM demo_employees;
