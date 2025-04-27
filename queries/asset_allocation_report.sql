-- List all current asset allocations
SELECT 
    a.asset_name,
    a.asset_type,
    e.employee_name,
    d.department_name,
    aa.allocation_date,
    aa.return_date
FROM 
    asset_allocations aa
JOIN assets a ON aa.asset_id = a.asset_id
JOIN employees e ON aa.employee_id = e.employee_id
JOIN departments d ON e.department_id = d.department_id
WHERE 
    aa.return_date IS NULL;