CREATE OR ALTER FUNCTION 
	[dbo].[Check_PersianDate_Format]
	(
		@Date varchar(max)
	)
	RETURNS bit
AS
BEGIN

	if @Date like '1[3-4][0-9][0-9]/[0-1][0-9]/[0-3][0-9]' -- 1300 to 1499
		RETURN 1

	RETURN 0
	
END