-- ALTER

-- Додавання нового стовпця MiddleName до таблиці Students
ALTER TABLE dbo.Students
    ADD MiddleName NVARCHAR(50) NULL;


    -- Видалення стовпця MiddleName з таблиці Students
    ALTER TABLE dbo.Students
    DROP COLUMN MiddleName;