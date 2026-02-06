

--SELECT * FROM Teachers, Departments
--WHERE Teachers.DepartmentId = Departments.Id
--;


SELECT Name, Financing, Id FROM Departments
UNION ALL
SELECT N'Усього', SUM(Financing), NULL FROM Departments
UNION ALL
SELECT N'Середнє фінансування',AVG(Financing), NULL FROM Departments
UNION
SELECT N'Середнє фінансування1',AVG(Financing), NULL FROM Departments

ORDER BY Name;


SELECT * FROM Departments WHERE Id = 3;

-- INTERSECT

SELECT * FROM Teachers WHERE Salary > 32000;
SELECT * FROM Teachers WHERE Premium > 7000;

SELECT * FROM Teachers WHERE Salary > 32000
EXCEPT
SELECT * FROM Teachers WHERE Premium > 7000


SELECT * FROM Teachers WHERE Salary > 32000
INTERSECT
SELECT * FROM Teachers WHERE Premium > 7000;

UPDATE Teachers
SET Premium = 10000
WHERE Id=1


SELECT * FROM Teachers;



-- EXCEPT



-- вивести вчителів які отримують зарплатню більше ніж 32000 

SELECT * FROM Teachers WHERE Salary > 40000

UNION
-- або викладають на кафедрі 1

SELECT * FROM Teachers WHERE DepartmentId = 1

UNION
-- або не мають жодної групи

SELECT * FROM Teachers t
WHERE NOT EXISTS (
	SELECT 1 FROM TeacherGroups tg
	WHERE tg.TeacherId = t.Id
)

SELECT * FROM Teachers WHERE ID NOT IN (
	SELECT TeacherId FROM TeacherGroups
)

SELECT * FROM Teachers t
WHERE Id <> ALL (
	SELECT TeacherId FROM TeacherGroups
)



