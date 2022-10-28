-- Workshop 1
-- 1- Get the number of each saled products

SELECT ProductName, COUNT(Quantity) [Count] FROM Products p INNER JOIN [Order Details] od ON p.ProductID = od.ProductID
INNER JOIN Orders o ON od.OrderID = o.OrderID
GROUP BY p.ProductName
ORDER BY p.ProductName

-- 2- Get the number of saled products for each categories
SELECT CategoryName, COUNT(*) FROM Products p INNER JOIN [Order Details] od ON p.ProductID = od.ProductID
INNER JOIN Orders o ON od.OrderID = o.OrderID
INNER JOIN Categories c ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName
ORDER BY c.CategoryName

-- 3- Get the table with two columns that include employee's first-last name and whom this employee reports to
SELECT e2.LastName + ' ' + e2.FirstName EmployeeName, e1.LastName + ' ' + e1.FirstName ReportsTo 
FROM Employees e1 INNER JOIN Employees e2
ON e1.EmployeeID = e2.ReportsTo

