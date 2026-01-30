
-- SELECT

SELECT * FROM Students;

SELECT 
*  --     колонки       усі
FROM 
Groups;  -- назва_таблиці

SELECT [Name], [Year] FROM Groups;


-- INSERT

INSERT INTO
Groups -- назва_таблиці
([Name], [Rating], [Year])  -- (колонки)
VALUES  -- значення
('P43', 5, 2026), 
('Group A', 3, 2023), 
('Group B', 4, 2024),
('Group C', 2, 2022);


-- UPDATE

UPDATE 
Groups -- назва_таблиці
SET 
	[Rating] = 5,
	[Year] = 2025,
	[Name] = 'Updated Group P43'
WHERE 
	[Id] = 1;  -- умова


	UPDATE Groups SET Rating = 2;


-- DELETE

DELETE FROM
Groups -- назва_таблиці
WHERE 
	[Id] = 2;  -- умова


	DELETE FROM Groups;