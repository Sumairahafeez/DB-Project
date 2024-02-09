/*IS NULL OPERATOR*/
 SELECT ProductName from Products WHERE UnitPrice is null
  

  /* BETWEEN AND*/
  SELECT UnitPrice
  From Products
  where UnitPrice between 10 and 20;
  /*IN OPERATOR */
  SELECT ProductName, UnitPrice, ProductID From Products
  Where UnitPrice IN (10, 20, 30)
  /* LIKE OPERATOR */
  SELECT ProductName, UnitPrice, ProductID FROM Products
  WHERE ProductName like'Chai'
  
