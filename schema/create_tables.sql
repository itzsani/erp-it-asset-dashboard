-- schema/create_tables.sql

-- Create departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- Create employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Create assets table
CREATE TABLE assets (
    asset_id INT PRIMARY KEY,
    asset_name VARCHAR(100) NOT NULL,
    asset_type VARCHAR(50) NOT NULL,
    purchase_date DATE,
    warranty_expiration DATE
);

-- Create asset allocations table
CREATE TABLE asset_allocations (
    allocation_id INT PRIMARY KEY,
    asset_id INT,
    employee_id INT,
    allocation_date DATE,
    return_date DATE,
    FOREIGN KEY (asset_id) REFERENCES assets(asset_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
