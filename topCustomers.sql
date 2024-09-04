SELECT 
    c.CustomerName, 
    SUM(st.TotalAmount) AS TotalSpent
FROM 
    SalesTransactions st
JOIN 
    Customers c ON st.CustomerID = c.CustomerID
GROUP BY 
    c.CustomerName
ORDER BY 
    TotalSpent DESC
LIMIT 5;
