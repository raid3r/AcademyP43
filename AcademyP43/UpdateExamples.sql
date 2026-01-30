

SELECT * FROM dbo.Departments;


-- Update Examples

UPDATE dbo.Departments
SET Financing = 10000.95, 
	Name = N'Географія'
WHERE Id = 3;


-- Додати усім по 5 гривень фінансування

UPDATE dbo.Departments
SET Financing = Financing + 5;


UPDATE dbo.Departments
SET Financing = Financing + Financing * 0.1; -- + 10%


UPDATE dbo.Departments
SET Financing = Financing - Financing * 0.2 -- - 20%
WHERE 
Financing > 100000;



SELECT * FROM dbo.Departments;
SELECT * FROM dbo.Faculties;

UPDATE dbo.Departments
SET FacultyId = 10
WHERE Id = 3;

