--Command to Create DB
CREATE DATABASE DAREYDB



USE DAREYDB


--CREATE STATEMENTS
CREATE TABLE Students (StudentID INT ,StudentName varchar(max),Age INT, enrollment_date DATE);



--INSERT STATEMENTS
INSERT INTO Students(StudentID,StudentName,Age,enrollment_date) VALUES (1, 'Bola Coker',32,'2023-05-19')
INSERT INTO Students(StudentID,StudentName,Age,enrollment_date) VALUES (2, 'Henry Smith',33,'2024-07-29')
INSERT INTO Students(StudentID,StudentName,Age,enrollment_date) VALUES (3, 'Steff John',22,'2020-05-19')


--ALTER STATEMENT

ALTER TABLE Students
ADD Email varchar(255);

--SELECT STATEMENT
SELECT *
FROM Students


--SELECT STATEMENT
SELECT *
FROM Students
WHERE StudentName = 'Bola Coker'



--SELECT STATEMENT  - ORDER BY 
SELECT *
FROM Students
ORDER BY Age DESC


--SELECT STATEMENT  - LIMIT 
SELECT *
FROM Students
ORDER BY Age DESC


--DELETE A COLUMN
ALTER TABLE Students
DROP COLUMN Email;



INSERT INTO Students(StudentID,StudentName,Age,enrollment_date) VALUES (8, 'Bila John',22,'2020-05-19')

INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (1, 'James Teff', 20, '2023-01-15');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (2, 'Jane Smith', 22, '2023-02-20');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (3, 'Michael Johnson', 19, '2023-03-10');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (4, 'Emily Davis', 21, '2023-04-05');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (5, 'Chris Brown', 23, '2023-05-15');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (6, 'Jessica Miller', 18, '2023-06-20');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (7, 'Daniel Wilson', 22, '2023-07-30');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (8, 'Sarah Moore', 20, '2023-08-25');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (9, 'DavStudentID Taylor', 21, '2023-09-10');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (10, 'Laura Anderson', 19, '2023-10-15');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (11, 'Robert Thomas', 22, '2023-11-05');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (12, 'Lisa Jackson', 20, '2023-12-01');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (13, 'Kevin White', 23, '2024-01-10');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (14, 'Karen Harris', 18, '2024-02-20');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (15, 'Brian Martin', 21, '2024-03-15');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (16, 'Nancy Thompson', 20, '2024-04-10');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (17, 'Steven Garcia', 22, '2024-05-05');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (18, 'Betty Martinez', 19, '2024-06-01');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (19, 'Paul Robinson', 23, '2024-07-15');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (20, 'Angela Clark', 18, '2024-08-20');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (20, 'Angela Clark', 30, '2024-08-20');
INSERT INTO Students (StudentID, StudentName, age, enrollment_date) VALUES (24, 'Angela Clark', 30, '2024-08-20');

CREATE TABLE Courses (
    CourseID INT,
    CourseName VARCHAR(100),
    StudentID INT
);



INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (1, 'Math 101', 1);
INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (2, 'History 201', 2);
INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (3, 'Science 301', 3);
INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (6, 'Biology 101', 4);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (5, 'Physics 201', 5);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (6, 'Chemistry 301', 6);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (7, 'Biology 101', 7);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (8, 'Economics 201', 8);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (9, 'Philosophy 301', 9);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (10, 'Art History 101', 10);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (11, 'Computer Science 201', 11);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (12, 'Political Science 301', 12);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (13, 'Music 101', 13);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (14, 'Engineering 201', 14);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (15, 'Psychology 301', 15);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (16, 'Sociology 101', 16);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (17, 'Anthropology 201', 17);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (18, 'Geography 301', 18);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (19, 'Astronomy 101', 19);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (20, 'Statistics 201', 20);





--Filtering with conditional operators < > =****/

SELECT * 
FROM Students
WHERE Age  < 30

SELECT * 
FROM Students
WHERE enrollment_date  > '2024-01-01'

--AND, NOT AND OR OPERATORS
SELECT * 
FROM Students
WHERE Age  > 20 AND enrollment_date > '2024-01-01'


SELECT * 
FROM Students
WHERE Age  > 20 OR enrollment_date > '2024-01-01'


SELECT * 
FROM Students
WHERE Age  > 20 AND enrollment_date > '2024-01-01'


SELECT * 
FROM Students
WHERE NOT Age = 32

--LIKE OPERATORS--- using Wild Card Operators
SELECT  * 
FROM Students
WHERE StudentName LIKE 'E%'

SELECT  * 
FROM Students
WHERE StudentName LIKE '%E'


SELECT  * 
FROM Students
WHERE StudentName LIKE '%hn%'

--SQL AGGREGATE FUNCTIONS - SUM, COUNT , AVG, MIN , MAX
SELECT SUM(Age) 
FROM Students

SELECT COUNT(*) As TotalNumberOfStudents
FROM Students

SELECT MAX(Age) As OldestAge
FROM Students

SELECT MIN(Age)
FROM Students

SELECT AVG(Age)
FROM Students

SELECT Age,COUNT(*) as StudentCount 
FROM Students
GROUP BY Age
HAVING COUNT(*) > 2



--**Create a Courses table:**

CREATE TABLE Courses (
    CourseID INT,
    CourseName VARCHAR(100),
    StudentID INT
);



INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (1, 'Math 101', 1);
INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (2, 'History 201', 2);
INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (3, 'Science 301', 3);
INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (4, 'Literature 101', 4);
INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (5, 'Physics 201', 5);
INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (6, 'Chemistry 301', 6);
INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (7, 'Biology 101', 7);
INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (8, 'Economics 201', 8);
INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (29, 'Philosophy 301', 9);

INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (10, 'Art History 101', 10);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (11, 'Computer Science 201', 11);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (12, 'Political Science 301', 12);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (13, 'Music 101', 13);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (14, 'Engineering 201', 14);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (15, 'Psychology 301', 15);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (16, 'Sociology 101', 16);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (17, 'Anthropology 201', 17);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (18, 'Geography 301', 18);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (19, 'Astronomy 101', 19);INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES (20, 'Statistics 201', 20);








WHERE StudentID = 12





SELECT * FROM Students
SELECT * FROM Courses



--INNER JOIN STATEMENT

SELECT Students.StudentID, Students.StudentName, Courses.CourseName
FROM Students
INNER JOIN Courses ON Students.StudentID = Courses.StudentID

--LEFT JOIN STATEMENT

SELECT Students.StudentID, Students.StudentName, Courses.CourseName
FROM Students
LEFT JOIN Courses ON Students.StudentID = Courses.StudentID


--RIGHT JOIN STATEMENT
SELECT Students.StudentID, Students.StudentName, Courses.CourseName
FROM Students
RIGHT JOIN Courses ON Students.StudentID = Courses.StudentID

--FULL OUTER JOIN STATEMENT
SELECT Students.StudentID, Students.StudentName, Courses.CourseName
FROM Students
FULL OUTER JOIN Courses ON Students.StudentID = Courses.StudentID



--DELETE FROM STATEMENTS
SELECT * FROM students
DELETE FROM Students
WHERE StudentID = 1 AND StudentName = 'John Doe'



UPDATE Students
 SET StudentID = 1
 WHERE StudentName LIKE '%John'




DROP Students

ALTER TABLE Students
ADD email varchar(255)



ALTER TABLE Students
RENAME COLUMN StudentID to StudentIdentityNO;


--TO MODIFY A DATA TYPE
ALTER TABLE Students
ALTER COLUMN StudentID varchar(255)

--SUB QUERY - Give me the number of students offering History
--Find the number of Students on the Course table that are offering History using their student ID 

-- To match the record of the students offering History and the records on my student table and return the ones that fit
SELECT * FROM Students 
SELECT * FROM Courses 


SELECT * FROM Students 
WHERE StudentID IN 

(
SELECT StudentID FROM Courses 
WHERE CourseName = 'History 201');

--WITH CLAUSE
WITH HistCourseOffering AS ( 
     SELECT s.StudentName,s.StudentID,c.CourseID,c.CourseName FROM Students s
     INNER JOIN Courses c ON s.StudentID = c.StudentID
	 )
SELECT * FROM HistCourseOffering
WHERE CourseName = 'Math 101'




--- JOIN STATEMENT
--list all the customer's First name, last name along with the total amount they spent. 
--Sales.SalesOrderHeader Table
--Sales.Customer Table

SELECT Sales.Customer.CustomerID,Sales.SalesOrderHeader.TotalDue
FROM Sales.SalesOrderHeader 
INNER JOIN Sales.Customer 
ON Sales.SalesOrderHeader.CustomerID =   Sales.Customer.CustomerID

--Quantity ordered for each Product( Name)
. 
--Sales.SalesOrderDetail Table

--Production.Product Table

--OrderQuantity Column, Product ID, Product Name
--ALIAS

SELECT POP.ProductID,POP.Name,SUM(SOD.OrderQty) as TotalOrderQty
FROM Sales.SalesOrderDetail SOD
INNER JOIN Production.Product POP
ON SOD.ProductID = POP.ProductID
GROUP BY POP.ProductID,POP.Name

--ANALYZE ORDER FREQUENCY
--Sales order header table
-- column Customer id , count(*)
SELECT CustomerID,OrderDate, COUNT(*) AS TotalOrders
FROM Sales.SalesOrderHeader
GROUP BY OrderDate,CustomerID
ORDER BY TotalOrders desc


--Preferred Product Categories. (What are the product subcategories with the highest order quantities)
--Sales Order Detail table
--Product table
--Product Subcategory
--Product Subcategory name, Product name, Total Order Quantity

SELECT  Production.ProductSubcategory.Name, SUM(Sales.SalesOrderDetail.OrderQty) as TotalOrderQty
FROM Sales.SalesOrderDetail 
INNER JOIN Production.Product 
ON Sales.SalesOrderDetail.ProductID = Production.Product.ProductID
INNER JOIN Production.ProductSubcategory 
ON  Production.Product.ProductSubcategoryID = Production.ProductSubcategory.ProductSubcategoryID
GROUP BY Production.ProductSubcategory.Name
ORDER BY  TotalOrderQty desc

SELECT * FROM 
sales.SalesOrderHeader

--Customer lifetime value--Total revenue generated by each customer over time. 
-- Sales.Salesorder header table
--CustomerID , TotalDue

SELECT CustomerID, SUM(TotalDue) as TotalRevenue
FROM Sales.SalesOrderHeader
GROUP BY 1
ORDER BY TotalRevenue desc














