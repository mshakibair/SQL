CREATE OR ALTER FUNCTION 
	[dbo].[FixPersian]
	(
		@Text NVARCHAR(max)
	) 
	RETURNS NVARCHAR(max)
AS
BEGIN
    
	-------------------------------
	-- Meghdad Shakiba           --
	-- meghdad.shakiba@gmail.com --
	-------------------------------
	
	---------------------------------------------------
	-- Convert Persian & Arabic digit to ascii digit --
	---------------------------------------------------
	
	SET @Text = REPLACE(@Text, NCHAR(0x660) ,NCHAR(48)) -- ۰ -> 0
	SET @Text = REPLACE(@Text, NCHAR(0x6F0) ,NCHAR(48)) -- ۰ -> 0

	SET @Text = REPLACE(@Text, NCHAR(0x661), NCHAR(49)) -- ۱ -> 1
	SET @Text = REPLACE(@Text, NCHAR(0x6F1), NCHAR(49)) -- ۱ -> 1

	SET @Text = REPLACE(@Text, NCHAR(0x662), NCHAR(50)) -- ۲ -> 2
	SET @Text = REPLACE(@Text, NCHAR(0x6F2), NCHAR(50)) -- ۲ -> 2

	SET @Text = REPLACE(@Text, NCHAR(0x663), NCHAR(51)) -- ۳ -> 3
	SET @Text = REPLACE(@Text, NCHAR(0x6F3), NCHAR(51)) -- ۳ -> 3

	SET @Text = REPLACE(@Text, NCHAR(0x664), NCHAR(52)) -- ۴ -> 4
	SET @Text = REPLACE(@Text, NCHAR(0x6F4), NCHAR(52)) -- ۴ -> 4

	SET @Text = REPLACE(@Text, NCHAR(0x665), NCHAR(53)) -- ۵ -> 5
	SET @Text = REPLACE(@Text, NCHAR(0x6F5), NCHAR(53)) -- ۵ -> 5

	SET @Text = REPLACE(@Text, NCHAR(0x666), NCHAR(54)) -- ۶ -> 6
	SET @Text = REPLACE(@Text, NCHAR(0x6F6), NCHAR(54)) -- ۶ -> 6

	SET @Text = REPLACE(@Text, NCHAR(0x667), NCHAR(55)) -- ۷ -> 7
	SET @Text = REPLACE(@Text, NCHAR(0x6F7), NCHAR(55)) -- ۷ -> 7

	SET @Text = REPLACE(@Text, NCHAR(0x668), NCHAR(56)) -- ۸ -> 8
	SET @Text = REPLACE(@Text, NCHAR(0x6F8), NCHAR(56)) -- ۸ -> 8

	SET @Text = REPLACE(@Text, NCHAR(0x669), NCHAR(57)) -- ۹ -> 9
	SET @Text = REPLACE(@Text, NCHAR(0x6F9), NCHAR(57)) -- ۹ -> 9

	------------------------------------------
	-- Convert Persian character to Arabic  --
	------------------------------------------

	SET @Text = REPLACE(@Text, NCHAR(0x6A9), NCHAR(0x643)) -- ک
	SET @Text = REPLACE(@Text, NCHAR(0x649), NCHAR(0x64A)) -- ی
	SET @Text = REPLACE(@Text, NCHAR(0x6cc), NCHAR(0x64A)) -- ی
	SET @Text = REPLACE(@Text, NCHAR(0x6C0), NCHAR(0x647) + NCHAR(0x654)) -- هٔ
    
	RETURN @Text

END