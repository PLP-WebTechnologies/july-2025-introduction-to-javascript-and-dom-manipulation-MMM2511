use salesdb;
SELECT paymentDate, 
       SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;
SELECT customerName, 
       country, 
       AVG(creditLimit) AS avg_credit_limit
FROM customers
GROUP BY customerName, country;
SELECT productCode, 
       quantityOrdered, 
       SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;
