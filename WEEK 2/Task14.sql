/*AND OR AND NOT OPERATOR */
SELECT ProductName, ProductId FROM Products
Where UnitPrice = 10 AND NOT UnitsInStock = Null
SELECT ProductName,ProductId FROM Products
Where UnitPrice =10 OR ProductName = 'chai'
