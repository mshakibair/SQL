CREATE OR ALTER FUNCTION 
	[dbo].[Check_EMail_Format]
	(
		@EMail varchar(max)
	)
	RETURNS bit
AS
BEGIN

	if @EMail Like '_%@__%.__%'
		return 1

	return 0
       
END