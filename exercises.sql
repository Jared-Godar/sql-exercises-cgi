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

-- 1,270 riws

