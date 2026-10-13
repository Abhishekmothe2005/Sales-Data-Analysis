# Cross check total sale calculate 
USE sales_analysis;

SELECT
    SUM(Quantity * UnitPrice) AS Total_Sales
FROM sales;

# Cross check Region-wise Total Sale

USE sales_analysis;

SELECT
    Region,
    SUM(Quantity * UnitPrice) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;
# Cross check Category-wise Total Sales
USE sales_analysis;

SELECT
    Category,
    SUM(Quantity * UnitPrice) AS Total_Sales
FROM sales
GROUP BY Category
ORDER BY Total_Sales DESC;

# Cross check check correct query
SELECT DATABASE();
SELECT *
FROM sales
LIMIT 5;

# Cross data base
SELECT DATABASE();

# Cross check 20 rows sample data
USE sales_analysis;
SELECT
    Category,
    SUM(Quantity * UnitPrice) AS Total_Sales
FROM sales
GROUP BY Category
ORDER BY Total_Sales DESC;

# Cross check 
USE sales_analysis;

SELECT
    OrderID,
    Category,
    Quantity,
    UnitPrice,
    Quantity * UnitPrice AS Sales
FROM sales
ORDER BY OrderID;

# Cross check total order
SELECT COUNT(*) AS Total_Orders
FROM sales;

SELECT * FROM sales LIMIT 1;

# Cross check sales total values
SELECT
    SUM(Quantity * UnitPrice) AS Total_Sales
FROM sales;


SELECT
    SUM(Quantity * UnitPrice) AS Total_Sales,
    SUM(Quantity * UnitPrice) AS Sales_Column_Total
FROM sales;


SELECT
    Category,
    SUM(Quantity * UnitPrice) AS Total_Sales
FROM sales
GROUP BY Category
ORDER BY Total_Sales DESC;


SELECT
    Region,
    SUM(Quantity * UnitPrice) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;


SELECT
    Product,
    SUM(Quantity * UnitPrice) AS Total_Sales
FROM sales
GROUP BY Product
ORDER BY Total_Sales DESC;


SELECT
    DATE_FORMAT(OrderDate, '%Y-%m') AS Sales_Month,
    SUM(Quantity * UnitPrice) AS Total_Sales
FROM sales
GROUP BY DATE_FORMAT(OrderDate, '%Y-%m')
ORDER BY Sales_Month;

#Cross check orallay sale summary

SELECT
    COUNT(OrderID) AS Total_Orders,
    SUM(Quantity) AS Total_Quantity_Sold,
    SUM(Quantity * UnitPrice) AS Total_Sales,
    ROUND(AVG(Quantity * UnitPrice), 2) AS Average_Order_Value
FROM sales;

#Cross check how many order and how many sales
SELECT
    Region,
    COUNT(OrderID) AS Total_Orders,
    SUM(Quantity * UnitPrice) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;

# Cross check High-Value Orders Analysis

SELECT
    OrderID,
    OrderDate,
    Region,
    Category,
    Product,
    Quantity,
    UnitPrice,
    Quantity * UnitPrice AS Total_Sales
FROM sales
WHERE Quantity * UnitPrice > 5000
ORDER BY Total_Sales DESC;

# Cross check Low-Quantity Orders Analysis

SELECT
    OrderID,
    Product,
    Quantity,
    UnitPrice,
    Quantity * UnitPrice AS Total_Sales
FROM sales
WHERE Quantity <= 2
ORDER BY Quantity ASC;

# Cross check Category-wise Order Count

SELECT
    Category,
    COUNT(OrderID) AS Total_Orders,
    SUM(Quantity * UnitPrice) AS Total_Sales
FROM sales
GROUP BY Category
ORDER BY Total_Orders DESC;

#Cross check Highest Sales Order

SELECT
    OrderID,
    Product,
    Region,
    Quantity * UnitPrice AS Total_Sales
FROM sales
ORDER BY Total_Sales DESC
LIMIT 1;
#Cross check Lowest Sales Order

SELECT
    OrderID,
    Product,
    Region,
    Quantity * UnitPrice AS Total_Sales
FROM sales
ORDER BY Total_Sales ASC
LIMIT 1;
# cross check Final Sales Report

SELECT
    COUNT(OrderID) AS Total_Orders,
    SUM(Quantity * UnitPrice) AS Total_Sales,
    ROUND(AVG(Quantity * UnitPrice), 2) AS Average_Sales,
    MAX(Quantity * UnitPrice) AS Highest_Order,
    MIN(Quantity * UnitPrice) AS Lowest_Order
FROM sales;












