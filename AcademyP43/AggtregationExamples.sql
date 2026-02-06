

SELECT * FROM Departments ORDER BY FacultyId;

-- Кількість кафедр в базі даних

SELECT 
COUNT(Id) as NumberOfDepartments
FROM Departments;

-- AVG

SELECT AVG(Financing) as AverageFinancing FROM Departments;


-- SUM

SELECT SUM(Financing) as TotalFinancing FROM Departments;

-- MIN

SELECT MIN(Financing) as MinimumFinancing FROM Departments;

-- MAX

SELECT MAX(Financing) as MaximumFinancing FROM Departments;



-- Комбінація агрегатних функцій

SELECT 	
	COUNT(Id) as NumberOfDepartments,
	AVG(Financing) as AverageFinancing,
	SUM(Financing) as TotalFinancing,
	MIN(Financing) as MinimumFinancing,
	MAX(Financing) as MaximumFinancing
	FROM Departments;


	SELECT
	Faculties.Name,
	COUNT(Departments.Id) as NumberOfDepartments,
	AVG(Financing) as AverageFinancing,
	SUM(Financing) as TotalFinancing,
	MIN(Financing) as MinimumFinancing,
	MAX(Financing) as MaximumFinancing
	FROM Departments, Faculties
	WHERE Departments.FacultyId = Faculties.Id
	GROUP BY FacultyId, Faculties.Name;

	SELECT
	AVG(Salary + Premium) as AverageTotalSalary
	FROM Teachers;


	-- Порахувати кількість викладачів 
	-- Порахувати кількість викладачів в кожній кафедрі

	-- Виведіть мінімальну загальну зарплатню 
	-- (зарплата + премія) на факультеті з назвою "Факультет комп`ютерних наук"

	SELECT 
	d.Name,
	COUNT(t.Id) as NumberOfTeachers
	FROM Teachers t, Departments d
	WHERE t.DepartmentId = d.Id
	GROUP BY d.Id, d.Name;



	-- Виведіть викладача з найбільшою загальною зарплатнею
	SELECT 
	Name, 
	Surname,
	Salary + Premium as TotalSalary
	FROM Teachers
	WHERE Salary + Premium = (
	SELECT MAX(Salary + Premium) as MaximumTotalSalary	
	FROM Teachers
	)
	ORDER BY TotalSalary DESC;

	-- Максимальна загальна зарплатня серед всіх викладачів
	SELECT MAX(Salary + Premium) as MaximumTotalSalary	
	FROM Teachers;
	
	
	-- Середня загальна зарплатня викладачів 
	SELECT AVG(Salary + Premium) as AverageTotalSalary
	FROM Teachers;


	-- Виведіть викладачів, у яких загальна зарплатня більша за середню
	SELECT 
	Name, 
	Surname,
	Salary + Premium as TotalSalary,
	(SELECT AVG(Salary + Premium) as AverageTotalSalary	
	FROM Teachers) as AverageTotalSalary,
	(Salary + Premium ) * 100 / (SELECT AVG(Salary + Premium) as AverageTotalSalary	
	FROM Teachers) as PercentageOfAverageSalary -- Відсоток від середньої зарплатні
	FROM Teachers
	WHERE Salary + Premium > (
	SELECT AVG(Salary + Premium) as AverageTotalSalary	
	FROM Teachers
	)
	ORDER BY TotalSalary DESC;


	--


	-- Виведіть факультети та кафедри, на яких працює більше ніж 2 викладачі
	SELECT 
	f.Name, 
	d.Name, 
	COUNT(t.Id) as NumberOfTeachers
	FROM Teachers t, Departments d, Faculties f
	WHERE t.DepartmentId = d.Id
	AND d.FacultyId = f.Id
	GROUP BY f.Id, f.Name, d.Id, d.Name
	HAVING COUNT(t.Id) > 2;




	-- Виведіть групи з рейтингом вище за середній

	-- Виведіть викладачів, у яких премія нижче за середню премію
		
	-- Виведіть середній відсоток премії від зарплатні по кожній кафедрі-- Виведіть таблицю номер місяця та кількість викладачів, які були прийняті на роботу в цей місяць (по всій базі даних)

	-- Виведіть таблицю номер місяця та кількість викладачів, 
	-- які були прийняті на роботу в цей місяць (по всій базі даних)
	-- де кількість викладачів більше за 2

	




	SELECT 
	Name, Surname,
	EmploymentDate,
	MONTH(EmploymentDate) as EmploymentMonth,
	YEAR(EmploymentDate) as EmploymentYear,
	DAY(EmploymentDate) as EmploymentDay
	FROM Teachers


