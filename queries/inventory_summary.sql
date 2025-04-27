-- Summarize asset inventory by type
SELECT 
    asset_type,
    COUNT(*) AS total_assets
FROM 
    assets
GROUP BY 
    asset_type;