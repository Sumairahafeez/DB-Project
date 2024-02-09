--AGGREATE FUNCTIONS
--AVG
SELECT AVG(UnitPrice)
FROM [Order Details];
--MIN
SELECT MIN(UnitPrice)
FROM [Order Details]
--SUM
SELECT SUM(UnitPrice)
FROM [Order Details]
--COUNT
SELECT COUNT(UnitPrice)
FROM [Order Details]
--STDEV(It calculates the standard deviation from the coloumn)
SELECT STDEV(UnitPrice)
From [Order Details]
--STDEVP(It calculates the amount of dispersion adn variation in the colomumn
SELECT STDEVP(UnitPrice)
FROM [Order Details]
--VAR(It calculates the variance in a coloumn)
SELECT VAR(UnitPrice)
FROM [Order Details]
--VARP
SELECT VARP(UnitPrice)
FROM [Order Details]
--MAX
SELECT MAX(UnitPrice)
FROM [Order Details]
--GROUP BY CLAUSE
SELECT Discount,Quantity,AVG(UnitPrice)
FROM [Order Details]
GROUP BY Discount,Quantity
--HAVING CLAUSE
--AVG FUNCTION
SELECT Discount,Quantity,AVG(UnitPrice)
FROM [Order Details]
Group By Discount,Quantity
Having AVG(UnitPrice)>10;
--MIN Function
SELECT Discount,Quantity,MIN(UnitPrice)
From [Order Details]
Group By Discount,Quantity
Having Discount>0;
--SUM Function
SELECT Discount,Quantity,SUM(UnitPrice)
From [Order Details]
Group By Discount,Quantity
Having Quantity>0;
--COUNT Function
SELECT Discount,Quantity,COUNT(UnitPrice)
From [Order Details]
Group By Discount,Quantity
Having COUNT(UnitPrice)>1;
--STDEV FUCNTION
SELECT Discount,Quantity,STDEV(UnitPrice)
From [Order Details]
Group By Discount,Quantity
Having STDEV(UnitPrice)>5;
--STDEVP FUNCTION
SELECT Discount,Quantity,STDEVP(UnitPrice)
From [Order Details]
Group By Discount,Quantity
Having STDEVP(UnitPrice)>10;
--VAR FUNCTION
SELECT Discount,Quantity,VAR(Discount)
From [Order Details]
Group By Discount,Quantity
Having Var(Discount)>10;
--VARP FUCNTION
SELECT Discount,Quantity,VARP(Discount)
From [Order Details]
Group By Discount,Quantity
Having VarP(Discount)>10;
--MAX FUNCTION
SELECT Discount,Quantity,MAX(Quantity)
From [Order Details]
Group by Discount,Quantity
Having MAX(Quantity)>1;
--ALIASING FUNCTION
SELECT Discount AS Dics
From  [Order Details]

SELECT Discount 
From [Order Details] as Orders
--YEAR
SELECT YEAR(OrderDate)
FROM [Orders]
--MONTH
SELECT Month(OrderDate)
FROM Orders
--DATE
SELECT DAY(OrderDate)
FROM Orders


