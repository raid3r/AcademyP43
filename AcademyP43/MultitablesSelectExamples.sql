

SELECT * FROM Faculties;
SELECT * FROM Departments;


SELECT 
Departments.Name AS DepartmentName,
Faculties.Name AS FacultyName
FROM Departments, Faculties
WHERE Departments.FacultyId = Faculties.Id;

SELECT 
*
FROM Teachers, Departments, Faculties
WHERE 
Departments.Id = Teachers.DepartmentId
AND 
Departments.FacultyId = Faculties.Id
ORDER BY Faculties.Name ASC, Teachers.Surname ASC
;

