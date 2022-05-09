-- 1. What if you use AND instead of OR

SELECT * FROM VENDOR
WHERE CreditRating = 3 OR PreferredVendorStatus = 1;

-- 93 rows

SELECT * FROM VENDOR
WHERE CreditRating = 3 AND PreferredVendorStatus = 1;

-- 7 ROWS

-- 2. Write  a query to view the different Job Titles the employees have. A Job Title should not be repeated more than once.

SELECT DISTINCT JobTitle FROM Employee;

-- 67 rows

-- 3. Write  a query to display the LoginID’s of employees who are Sales Representatives and Female. Use the EMPLOYEES table.

SELECT LoginID
    FROM Employee
    WHERE JobTitle = 'Sales Representative' AND
    Gender= 'F';

-- 6 rows

-- 4. Write  a query to display the TransactionID, ProductID, TransactionDate, and Quantity of Transactions that are for ProductID 799 or have a quantity of 5. Use the TransactionHistory table.

SELECT TransactionID, ProductID, TransactionDate, Quantity
    FROM TransactionHistory
    WHERE ProductID = 799 OR Quantity = 5;

-- 3,328 Rows

-- 5. Show unique LocationID’s that Work Orders route to? Use the WorkOrderRouting table.

SELECT DISTINCT LocationID 
    FROM WorkOrderRouting;

-- 7 rows


-- 6. Show the purchase orders have a unit price between $20 and $50? Use the PurchaseOrderDetail table.

SELECT * FROM PurchaseOrderDetail 
	WHERE UnitPrice > 20 and UnitPrice < 50;

-- 6389 rows

-- 7. List all the PurchaseOrderDetailIDs and their LineTotals that have a LineTotal over $20,000. User the PurchaseOrderDetail table.

SELECT PurchaseOrderDetailID, LineTotal 
    FROM PurchaseOrderDetail 
    WHERE LineTotal > 20000;

-- 1,270 rows

-- 8. AGGREGATE FUNCTIONS

-- The maximum Vacation Hours amount

SELECT MAX(VacationHours) AS "Max_Vacation_hours"
	FROM Employee;

    --99

-- The minimum Vacation Hours amount

SELECT MAX(VacationHours) AS "Max_Vacation_hours"
	FROM Employee;

    --0

-- The total Sick Leave Hours across all employees

SELECT SUM(VacationHours) AS "Total_Vacation_hours"
	FROM Employee;

    --14678

-- The average Vacation Hours amount

SELECT AVG(VacationHours) AS "Average_Vacation_hours"
	FROM Employee;

    -- 50


-- The total number of employees

SELECT COUNT(BusinessEntityID) as "Total_number_employeees"
	FROM Employee;

    --290

-- The total number of employees with less than 30 Sick Leave Hours

SELECT COUNT(BusinessEntityID) AS "Employees_under_30"
	FROM Employee
	WHERE SickLeaveHours < 30;

    --52
    
-- 9. How many total hours did each employee take off for vacation and sick leave?

SELECT LoginID, VacationHours + SickLeaveHours AS "Leave"
	FROM Employee;

-- 10. Display the LoginID, Job Title, and Gender of all the Engineers

SELECT LoginID, JobTitle, Gender
	FROM Employee
	WHERE JobTitle LIKE '%engineer';

    -- 6 rows

-- 11. Using the ProductInventory table, return the total quantity of products on shelf A

SELECT SUM(Quantity) 
    FROM ProductInventory
    WHERE Shelf = 'A';


-- 12. Using the ProductInventory table, show the total quantity of each Product ID. Display the results in order from most to least.

SELECT SUM(Quantity) AS 'Shelf_A_Total'
    FROM ProductInventory
    WHERE Shelf = 'A';

-- 13. 2 new addresses need to be added. Insert their information in the Address table. 


/* 123 Street | Somewhere | 1 | 55555
   456 Road   | SQLCity   | 2 | 22222 */



-- 14. Update the Postal Code of SQLCity to be 33333 



-- 15.1. Create an exact replica of the Employee table, with data



-- 15.2. Create an exact replica of the Employee table, without any data


