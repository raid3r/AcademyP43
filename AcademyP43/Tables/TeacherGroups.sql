CREATE TABLE [dbo].[TeacherGroups]
(
	TeacherId INT NOT NULL FOREIGN KEY REFERENCES Teachers(Id),
	GroupId INT NOT NULL FOREIGN KEY REFERENCES Groups(Id),
	PRIMARY KEY (TeacherId, GroupId)
)
