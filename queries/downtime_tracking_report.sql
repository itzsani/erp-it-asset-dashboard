-- Find assets returned and calculate downtime duration
SELECT 
    a.asset_name,
    e.employee_name,
    aa.allocation_date,
    aa.return_date,
    DATEDIFF(aa.return_date, aa.allocation_date) AS days_in_use
FROM 
    asset_allocations aa
JOIN assets a ON aa.asset_id = a.asset_id
JOIN employees e ON aa.employee_id = e.employee_id
WHERE 
    aa.return_date IS NOT NULL;