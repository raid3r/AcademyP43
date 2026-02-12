CREATE FUNCTION [dbo].[BirthdayText]
(
	@birthdayDate DATETIME
)
RETURNS NVARCHAR(MAX)
AS
BEGIN -- {
	DECLARE @currentDate DATETIME = GETDATE();
	DECLARE @currentMonth INT = MONTH(@currentDate);
	DECLARE @currentDay INT = DAY(@currentDate);
	DECLARE @birthdayMonth INT = MONTH(@birthdayDate);
	DECLARE @birthdayDay INT = DAY(@birthdayDate);
	DECLARE @diffInDays INT = 5;
	
	IF @currentMonth = @birthdayMonth AND @currentDay = @birthdayDay
	BEGIN -- {
		RETURN N'Сьогодні день народження!';
	END -- }

	DECLARE @birthdayInThisYear DATETIME = DATEFROMPARTS(YEAR(@currentDate), @birthdayMonth, @birthdayDay);

	IF DATEDIFF(DAY, @currentDate, @birthdayInThisYear) < (-1 * @diffInDays)
		RETURN N'День народження не сьогодні.';

	IF DATEDIFF(DAY, @currentDate, @birthdayInThisYear) < @diffInDays AND DATEDIFF(DAY, @currentDate, @birthdayInThisYear) >= 0
		RETURN N'День народження скоро!';
	
	IF DATEDIFF(DAY, @currentDate, @birthdayInThisYear) > (-1 * @diffInDays) AND DATEDIFF(DAY, @currentDate, @birthdayInThisYear) < 0
		RETURN N'День народження було нещодавно!';
		
	
	RETURN N'День народження не сьогодні.';


END -- }
