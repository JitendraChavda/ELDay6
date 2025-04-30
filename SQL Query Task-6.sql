SELECT * FROM sales;


SELECT  
    EXTRACT(YEAR FROM "dates") AS year,  
    EXTRACT(MONTH FROM "dates") AS month,  
    SUM("sales") AS monthly_revenue,  
    COUNT(DISTINCT "product") AS order_volume  
FROM  
    sales  
GROUP BY  
    year,  
    month  
ORDER BY  
    year,  
    month;  