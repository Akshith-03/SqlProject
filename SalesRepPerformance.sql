WITH SalesRepPerformance AS (
    SELECT 
        sr.SalesRepName,
        COUNT(st.TransactionID) AS NumberOfSales,
        SUM(st.TotalAmount) AS TotalSalesAmount
    FROM 
        SalesTransactions st
    JOIN 
        SalesReps sr ON st.SalesRepID = sr.SalesRepID
    GROUP BY 
        sr.SalesRepName
)
SELECT 
    SalesRepName, 
    NumberOfSales, 
    TotalSalesAmount
FROM 
    SalesRepPerformance
ORDER BY 
    TotalSalesAmount DESC;
