CREATE TABLE [dbo].[Teachers]
(
	Id INT IDENTITY(1,1) PRIMARY KEY,
    EmploymentDate DATE NOT NULL CHECK (EmploymentDate >= '1990-01-01'),
    Name NVARCHAR(MAX) NOT NULL CHECK (LEN(Name) > 0),
    Surname NVARCHAR(MAX) NOT NULL CHECK (LEN(Surname) > 0),
    Premium MONEY NOT NULL DEFAULT 0 CHECK (Premium >= 0),
    Salary MONEY NOT NULL CHECK (Salary > 0),
    DepartmentId INT NOT NULL FOREIGN KEY REFERENCES Departments(Id)
)
