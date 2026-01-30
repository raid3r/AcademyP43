

SELECT * FROM dbo.Teachers;


SELECT 
Id,
N'вчитель' as Position,
-- Surname as LastName, 
-- Name as FirstName,
Surname + N' ' + Name as FullName,
Surname + N' ' + SUBSTRING(Name, 1, 1) + N'.' as ShortName,
Salary,
Premium,
Salary + Premium as TotalCompensation,
CASE 
  WHEN Salary + Premium > 40000 THEN N'Висока'
  WHEN Salary + Premium BETWEEN 30000 AND 40000 THEN N'Середня'
  ELSE N'Низька'
END
  AS CompensationLevel


FROM dbo.Teachers
WHERE CASE 
  WHEN Salary + Premium > 40000 THEN N'Висока'
  WHEN Salary + Premium BETWEEN 30000 AND 40000 THEN N'Середня'
  ELSE N'Низька'
END = N'Висока' 
ORDER BY Salary ASC, Premium ASC, Surname ASC;


-- SUBSTRING(Surname, 1, 1) IN (N'К', N'Л', N'М')

;


/*
 Вивести усіх вчителів у яких зарплатня між 30000 та 40 000 включно,
 вивести ім'я, прізвище, ініціали (перша літера прізвища та імені) та загальну зарплатню (Salary + Premium)
 відсортувати за прізвищем за зростанням

*/


















UPDATE dbo.Teachers
SET Premium = 0, Salary = 25000

WHERE Id=9;








SELECT * FROM dbo.Teachers;
SELECT * FROM dbo.Groups;
SELECT * FROM dbo.TeacherGroups;


SELECT GroupId FROM dbo.TeacherGroups 
WHERE TeacherId = 3;

SELECT * FROM Groups
WHERE Id IN (SELECT GroupId FROM dbo.TeacherGroups WHERE TeacherId = 3);
