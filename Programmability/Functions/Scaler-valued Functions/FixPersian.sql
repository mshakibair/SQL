CREATE OR ALTER FUNCTION [dbo].[FixPersian](@Text NVARCHAR(max)) RETURNS NVARCHAR(max)
AS
BEGIN
    
	----------------------------
	-- Meghdad Shakiba        --
	-- meghdad.shakiba@gmail.com --
	----------------------------
	
	------------------------------------------
	-- Convert Persian digit to ascii digit --
	------------------------------------------
	
    SET @Text = REPLACE(@Text, NCHAR(0x660) ,NCHAR(48)) -- ۰
	SET @Text = REPLACE(@Text, NCHAR(0x6F0) ,NCHAR(48)) -- ۰

    SET @Text = REPLACE(@Text, NCHAR(0x661), NCHAR(49)) -- ۱
	SET @Text = REPLACE(@Text, NCHAR(0x6F1), NCHAR(49)) -- ۱

    SET @Text = REPLACE(@Text, NCHAR(0x662), NCHAR(50)) -- ۲
	SET @Text = REPLACE(@Text, NCHAR(0x6F2), NCHAR(50)) -- ۲

    SET @Text = REPLACE(@Text, NCHAR(0x663), NCHAR(51)) -- ۳
	SET @Text = REPLACE(@Text, NCHAR(0x6F3), NCHAR(51)) -- ۳

    SET @Text = REPLACE(@Text, NCHAR(0x664), NCHAR(52)) -- ۴
	SET @Text = REPLACE(@Text, NCHAR(0x6F4), NCHAR(52)) -- ۴

    SET @Text = REPLACE(@Text, NCHAR(0x665), NCHAR(53)) -- ۵
	SET @Text = REPLACE(@Text, NCHAR(0x6F5), NCHAR(53)) -- ۵

    SET @Text = REPLACE(@Text, NCHAR(0x666), NCHAR(54)) -- ۶
	SET @Text = REPLACE(@Text, NCHAR(0x6F6), NCHAR(54)) -- ۶

    SET @Text = REPLACE(@Text, NCHAR(0x667), NCHAR(55)) -- ۷
	SET @Text = REPLACE(@Text, NCHAR(0x6F7), NCHAR(55)) -- ۷

    SET @Text = REPLACE(@Text, NCHAR(0x668), NCHAR(56)) -- ۸
	SET @Text = REPLACE(@Text, NCHAR(0x6F8), NCHAR(56)) -- ۸

    SET @Text = REPLACE(@Text, NCHAR(0x669), NCHAR(57)) -- ۹
	SET @Text = REPLACE(@Text, NCHAR(0x6F9), NCHAR(57)) -- ۹

	------------------------------------------
	-- Convert Persian character to Arabic  --
	------------------------------------------

	SET @Text = REPLACE(@Text, NCHAR(0x6A9), NCHAR(0x643)) -- ک
    SET @Text = REPLACE(@Text, NCHAR(0x649), NCHAR(0x64A)) -- ی
    SET @Text = REPLACE(@Text, NCHAR(0x6cc), NCHAR(0x64A)) -- ی
    SET @Text = REPLACE(@Text, NCHAR(0x6C0), NCHAR(0x647) + NCHAR(0x654)) -- هٔ
    
    RETURN @Text

END