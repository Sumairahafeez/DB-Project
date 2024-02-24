SELECT TerritoryDescription
FROM Territories,Region
Where Territories.RegionID = Region.RegionID
--JOIN
SELECT TerritoryDescription
FROM Territories
JOIN Region ON Territories.RegionID = Region.RegionID
--CROSSJOIN
SELECT *
FROM Territories
Cross Join Region
--INNER JOIN
Select *
FROM Region
INNER JOIN Territories ON Territories.TerritoryID != Region.RegionID
--Left Outer JOIN
SELECT *
FROM Region
Left join Territories ON Territories.TerritoryID = Region.RegionID
--RIGHT OUTER JOIN
Select * FROM Region
Right Join Territories ON Territories.TerritoryID = Region.RegionID
--OUTER JOIN
Select * FROM Region
Full Outer Join Territories ON Territories.TerritoryID =  Region.RegionID
--Self Cross Join
Select * 
From Employees AS E1, Employees AS E2
Where E1.EmployeeID = E2.EmployeeID 
--Return customers and their orders, including customers who placed no orders (CustomerID, OrderID, OrderDate)
Select Customers.CustomerID,Orders.OrderID,OrderDate
From Customers, Orders,[Order Details]
Where Customers.CustomerID = Orders.CustomerID And [Order Details].OrderID = Orders.OrderID AND Quantity = 0;

--Report only those customer IDs who never placed any order. (CustomerID,
--OrderID, OrderDate)
SELECT Orders.CustomerID, OrderDate
From Orders
LEFT JOIN Customers
ON Orders.CustomerID=Customers.CustomerID AND OrderDate is Null
--Report those customers who placed orders on July,1997. (CustomerID, OrderID,OrderDate)

SELECT ContactName,Customers.CustomerID, OrderID, OrderDate FROM Customers,Orders
Where Customers.CustomerID = Orders.CustomerID And (Month(OrderDate) = 07 AND YEAR(OrderDate) = 1997)
--Report the total orders of each customer. (customerID, totalorders)
SELECT Customers.CustomerID,
Count(Orders.OrderID) as[Total Orders]
From Orders
Left Join Customers ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID
--

--Make 5 copies
SELECT e.EmployeeID,e.FirstName,e.LastName from Employees as e
Cross Join(Select 1 as num union all select 2 union all select 3 union all select 4 union all select 5) as eID order by e.EmployeeID
--Write a query that returns a row for each employee and day in the range 04-07-
--1996 through 04-08 1997. (EmployeeID, Date)
Select Employees.EmployeeID From Employees Cross Join Orders where Employees.EmployeeID = Orders.EmployeeID AND OrderDate Between '04-07-1996' and 
'04-08-1997'
--Further Clarification
Select Employees.EmployeeID,FirstName, OrderDate From Employees Cross Join Orders where Employees.EmployeeID = Orders.EmployeeID AND OrderDate Between '04-07-1996' and 
'04-08-1997'
--Return US customers, and for each customer return the total number of orders and total quantities. (CustomerID, Totalorders, totalquantity)
SELECT Customers.CustomerID,[Order Details].Quantity,
Count(Orders.OrderID) as[Total Orders]
From [Order Details], Customers,Orders 
Where Orders.OrderID = [Order Details].OrderID AND Customers.CustomerID = Orders.CustomerID AND Country = 'MEXICO' --I USED MEXICO BECAUSE THERE WAS NO CUSTOMER FROM US
GROUP BY Customers.CustomerID,[Order Details].Quantity
--Write a query that returns all customers in the output, but matches them with their respective orders only if they were placed on July 04,1997. (CustomerID,
--CompanyName, OrderID, Orderdate)
SELECT * FROM Customers
Left Join Orders ON  Customers.CustomerID = Orders.CustomerID AND  OrderDate = '04-07-1997'
-- There is no employee who is greater than teh age of his manager
--List that names of those employees and their ages. (EmployeeName, Age, Manager
--Age)
Select * from Employees as e1 CROSS join Employees as e2
where e1.ReportsTo = e2.ReportsTo and e1.EmployeeID = e2.EmployeeID and e1.ReportsTo = 5 and e1.BirthDate<'04-03-1955'
--List the names of products which were ordered on 8th August 1997.
--(ProductName, OrderDate)
select * from Products,[Order Details],Orders 
where Products.ProductID =[Order Details].ProductID And [Order Details].OrderID = Orders.OrderID  AND OrderDate = '08-08-1997'
--List the addresses, cities, countries of all orders which were serviced by Anne and
--were shipped late. (Address, City, Country)
Select ShipAddress,ShipCity,ShipCountry from orders,Employees 
where RequiredDate<ShippedDate AND Employees.EmployeeID = Orders.EmployeeID AND Employees.FirstName='Anne'
--List all countries to which beverages have been shipped. (Country)
select ShipCountry from Orders, [Order Details],Products, Categories Where
[Order Details].OrderID = Orders.OrderID And [Order Details].ProductID = Products.ProductID
And Products.CategoryID = Categories.CategoryID And CategoryName = 'Beverages'
