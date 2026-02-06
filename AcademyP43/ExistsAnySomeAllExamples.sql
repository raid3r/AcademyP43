

-- EXISTS

SELECT * FROM Faculties;
SELECT * FROM Departments;

SELECT * FROM Faculties WHERE Id NOT IN (
	SELECT DISTINCT FacultyId FROM Departments 
	WHERE Departments.FacultyId = Faculties.Id
);



SELECT * FROM Faculties WHERE NOT EXISTS (
-- чи є хоча б один рядок у підзапиті EXISTS  
-- якщо так - повертає TRUE, якщо ні - FALSE
	SELECT 1 FROM Departments WHERE Departments.FacultyId = Faculties.Id
);

-- ANY / SOME

SELECT * FROM Teachers;
SELECT * FROM TeacherGroups;

-- Хто викладає хоча б у одній групі
SELECT * FROM Teachers WHERE Id = ANY (
	SELECT TeacherId FROM TeacherGroups
);

-- Хто викладає у групі з Id = 1
SELECT * FROM Teachers WHERE Id = ANY (
	SELECT TeacherId FROM TeacherGroups WHERE GroupId = 1
);

-- Вчителі які отримує зарплатню більше ніж [хоча б один] вчитель з кафедри 1
SELECT * FROM Teachers WHERE Salary > ANY (
	SELECT Salary FROM Teachers WHERE DepartmentId = 1
);

-- ALL

-- Вчителі які отримує зарплатню більше ніж усі вчителі з кафедри 1
SELECT * FROM Teachers WHERE Salary > ALL (
	SELECT Salary FROM Teachers WHERE DepartmentId = 1
);





