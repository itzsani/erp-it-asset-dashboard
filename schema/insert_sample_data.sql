-- schema/insert_sample_data.sql

-- Insert departments
INSERT INTO departments (department_id, department_name) VALUES
(1, 'IT'),
(2, 'Finance'),
(3, 'Human Resources'),
(4, 'Operations');

-- Insert employees
INSERT INTO employees (employee_id, employee_name, department_id) VALUES
(101, 'John Doe', 1),
(102, 'Jane Smith', 2),
(103, 'Alice Johnson', 3),
(104, 'Bob Brown', 4),
(105, 'Charlie White', 1);

-- Insert assets
INSERT INTO assets (asset_id, asset_name, asset_type, purchase_date, warranty_expiration) VALUES
(201, 'Dell Laptop', 'Laptop', '2023-01-15', '2026-01-15'),
(202, 'HP Printer', 'Printer', '2022-05-10', '2025-05-10'),
(203, 'Cisco Router', 'Network', '2021-03-22', '2024-03-22'),
(204, 'Apple MacBook Pro', 'Laptop', '2023-09-05', '2026-09-05'),
(205, 'Samsung Monitor', 'Monitor', '2022-11-11', '2025-11-11');

-- Insert asset allocations
INSERT INTO asset_allocations (allocation_id, asset_id, employee_id, allocation_date, return_date) VALUES
(301, 201, 101, '2023-02-01', NULL),
(302, 202, 102, '2023-04-15', NULL),
(303, 203, 103, '2023-06-20', '2024-06-20'),
(304, 204, 104, '2024-01-10', NULL),
(305, 205, 105, '2023-08-25', NULL);
