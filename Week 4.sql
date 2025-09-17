Use saledb;
SELECT 
    Payment_date,
    SUM(Amount) AS Total_amount
FROM payment
GROUP BY Payment_date
ORDER BY Payment_date DESC 
LIMIT 5;

SELECT
    AVG(Credit_limit) AS Average_credit,
    Customer_name,
    Country
FROM Customers
GROUP BY Customer_name AND Country;

SELECT
    product_code,
    quantity_ordered,
    SUM(price_each) AS Total_price
FROM OrderDetails
GROUP BY product_code and quantity_ordered;

SELECT 
    Check_number,
    MAX(Amount) AS Highest_amount
FROM Payment
GROUP BY Check_number;
