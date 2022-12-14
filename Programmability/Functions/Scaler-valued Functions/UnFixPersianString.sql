CREATE OR ALTER FUNCTION 
	[dbo].[UnFixPersianString]
	(
		@Text NVARCHAR(max)
	) 
	RETURNS NVARCHAR(max)
AS
BEGIN
    
	-----------------------------------------
	-- Convert Arabic character to Persian --
	-----------------------------------------

	SET @Text = REPLACE(@Text, NCHAR(0x643), NCHAR(0x6A9)) -- ک
	SET @Text = REPLACE(@Text, NCHAR(0x64A), NCHAR(0x6cc)) -- ی
    
	RETURN @Text

END