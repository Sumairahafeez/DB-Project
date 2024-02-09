SELECT HireDate, Title FROM Employees
Where Title IS NOT  NULL
ORDER BY HireDate DESC, Title ASC;
/*SECOND QUERY */
SELECT categoryID FROM Categories
Where CategoryID>0
ORDER BY CategoryID DESC
/*THIRD QUERY*/
SELECT City,Country FROM Customers
Where City IS NOT NULL
ORDER BY City Desc, Country ASC