select*from superstore.cleaned;
--- checking missing and null values---
SELECT 
    SUM(CASE WHEN `Order ID` IS NULL THEN 1 ELSE 0 END) AS OrderID_Nulls,
    SUM(CASE WHEN `Customer ID` IS NULL THEN 1 ELSE 0 END) AS CustomerID_Nulls,
    SUM(CASE WHEN `Sales` IS NULL THEN 1 ELSE 0 END) AS Sales_Nulls,
    SUM(CASE WHEN `Profit` IS NULL THEN 1 ELSE 0 END) AS Profit_Nulls,
    SUM(CASE WHEN `Order Date` IS NULL THEN 1 ELSE 0 END) AS OrderDate_Nulls
FROM superstore.cleaned;






---summary of orders---
SELECT 
    COUNT(*) AS Total_Orders,
    COUNT(DISTINCT `Customer ID`) AS Total_Customers,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit,
    ROUND(AVG(Discount),2) AS Avg_Discount
FROM superstore.cleaned;


---top 10 products by sales---
SELECT `Product Name`, ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore.cleaned
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

----profit by category---

SELECT Category, ROUND(SUM(Sales),2) AS Total_Sales, ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore.cleaned
GROUP BY Category
ORDER BY Total_Profit DESC;

---region wise performance---
SELECT Region, ROUND(SUM(Sales),2) AS Sales, ROUND(SUM(Profit),2) AS Profit
FROM superstore.cleaned
GROUP BY Region
ORDER BY Profit DESC;

----avg delivery delay---
SELECT 
    ROUND(AVG(DATEDIFF(`Ship Date`, `Order Date`)),2) AS Avg_Delivery_Days
FROM superstore.cleaned


----segment that brings highest profit--
SELECT Segment, ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore.cleaned
GROUP BY Segment
ORDER BY Total_Profit DESC;

----feedback distribution--
SELECT `Customer Feedback`, COUNT(*) AS Feedback_Count
FROM superstore.cleaned
GROUP BY `Customer Feedback`;

---most used payment modes---
SELECT `Payment Mode`, COUNT(*) AS Count
FROM superstore.cleaned
GROUP BY `Payment Mode`
ORDER BY Count DESC;


---delivery status vs rating--
SELECT `Delivery Status`, ROUND(AVG(Rating),2) AS Avg_Rating, COUNT(*) AS Orders
FROM superstore.cleaned
GROUP BY `Delivery Status`
ORDER BY Avg_Rating DESC;

---profit by state---
SELECT State, ROUND(SUM(Sales),2) AS Total_Sales, ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore.cleaned
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 10;


