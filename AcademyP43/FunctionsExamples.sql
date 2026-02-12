



SELECT * FROM Teachers;

SELECT GETDATE() AS CurrentDateTime;

SELECT 
MONTH(GETDATE()) AS CurrentMonth,
YEAR(GETDATE()) AS CurrentYear,
DAY(GETDATE()) AS CurrentDay,
DATEPART(HOUR, GETDATE()) AS CurrentHour,
DATEPART(MINUTE, GETDATE()) AS CurrentMinute,
DATEPART(SECOND, GETDATE()) AS CurrentSecond;


SELECT DATEPART(HOUR, '2022-01-01 18:34:56') AS DateTimeHour;


SELECT * FROM Teachers
WHERE DATEPART(MONTH, EmploymentDate) = DATEPART(MONTH, GETDATE());	


SELECT 
Name,
Surname,
EmploymentDate,
dbo.BirthdayText(EmploymentDate) AS BirthdayText
FROM Teachers;


DECLARE @currentDate DATETIME = GETDATE();
DECLARE @birthdayDay INT = 15;
DECLARE @birthdayMonth INT = 02;
DECLARE @birthdayInThisYear DATETIME = DATEFROMPARTS(YEAR(@currentDate), @birthdayMonth, @birthdayDay);
PRINT 'DIFF IN DAYS: ' + CAST(DATEDIFF(DAY, @currentDate, @birthdayInThisYear) AS NVARCHAR);



DECLARE @departmentId INT = 2;
SELECT * FROM Teachers WHERE DepartmentId = @departmentId;






UPDATE Teachers
SET EmploymentDate = DATEADD(DAY, -3, GETDATE())
WHERE Id = 1;
UPDATE Teachers
SET EmploymentDate = DATEADD(DAY, 3, GETDATE())
WHERE Id = 2;
UPDATE Teachers
SET EmploymentDate = GETDATE()
WHERE Id = 3;



SELECT DATEADD(MONTH, -1, GETDATE()) AS PreviousMonth;

SELECT DATEADD(HOUR, -3, GETDATE()) AS Previous3Hour;









/*

-- HOUR(GETDATE()) AS CurrentHour,
-- MINUTE(GETDATE()) AS CurrentMinute,
-- SECOND(GETDATE()) AS CurrentSecond
*/