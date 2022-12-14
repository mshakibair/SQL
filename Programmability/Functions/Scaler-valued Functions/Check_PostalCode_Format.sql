CREATE OR ALTER FUNCTION 
	[dbo].[Check_PostalCode_Format]
	(
		@PostalCode varchar(max)
	)
	RETURNS bit
AS
BEGIN

	---------------------------
	-- check 10 digits input --
	---------------------------

	if (LEN(@PostalCode) <> 10)
		return 0

	declare @ASCII_Code int = 0

	declare @i tinyint = 1

	WHILE (@i <= 10)
	begin

		set @ASCII_Code = ASCII(SUBSTRING(@PostalCode,@i,1))

		if not((@ASCII_Code >= 48 and @ASCII_Code <= 57))
			return 0

		set @i = @i + 1

	end

	return 1
        
END