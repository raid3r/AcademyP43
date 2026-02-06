

SELECT 
d.Name as DepartmentName,
f.Name as FacultyName
FROM Departments d, Faculties f
WHERE 
f.Id = 2 -- умова вибірки факультету з Id = 2
AND 
d.FacultyId = f.Id; -- умова поєднання таблиць


-- JOIN

SELECT
d.Name as DepartmentName,
f.Name as FacultyName
FROM Departments d JOIN Faculties f ON d.FacultyId = f.Id
WHERE f.Id = 2; -- умова вибірки факультету з Id = 2


-- Виведіть усі групи та викладачів, які викладають у цих групах. 
-- Якщо група не має викладача - виведіть її назву з NULL замість імені викладача.
-- Колонки, назва факультету, назва кафедри, ім'я викладача, прізвище викладача, назва групи


SELECT * FROM Departments ;


SELECT
t.Name as TeacherName,
t.Surname as TeacherSurname,
d.Name as DepartmentName,
f.Name as FacultyName
FROM Teachers t 
JOIN Departments d ON t.DepartmentId = d.Id 
JOIN Faculties f ON d.FacultyId = f.Id;


SELECT
t.Name as TeacherName,
t.Surname as TeacherSurname,
d.Name as DepartmentName,
f.Name as FacultyName
FROM Teachers t 
RIGHT JOIN Departments d ON t.DepartmentId = d.Id 
LEFT JOIN Faculties f ON d.FacultyId = f.Id;

SELECT 
d.Name as DepartmentName,
COUNT(t.Id) as TeacherCount
FROM Teachers t
RIGHT JOIN Departments d ON t.DepartmentId = d.Id
GROUP BY d.Name;