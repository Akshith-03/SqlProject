WITH MonthlySales AS (
    SELECT 
        DATE_TRUNC('month', TransactionDate) AS Month,
        SUM(TotalAmount) AS TotalSales
    FROM 
        SalesTransactions
    WHERE 
        TransactionDate >= CURRENT_DATE - INTERVAL '1 year'
    GROUP BY 
        Month
)
SELECT 
    Month, 
    TotalSales
FROM 
    MonthlySales
ORDER BY 
    Month;



