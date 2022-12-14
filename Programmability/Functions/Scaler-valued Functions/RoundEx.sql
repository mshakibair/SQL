CREATE OR ALTER FUNCTION 
	[dbo].[RoundEx]
	(
		@Value decimal(38,6)
	) 
	RETURNS varchar(20)
AS
BEGIN

	RETURN
		
	CAST(
		CAST(
			CASE
				WHEN ABS(@Value) >= 100    THEN ROUND(@Value,0)
				WHEN ABS(@Value) >= 10     THEN ROUND(@Value,1)
				WHEN ABS(@Value) >= 1      THEN ROUND(@Value,2)
				WHEN ABS(@Value) >= 0.0005 THEN ROUND(@Value,3)
										   ELSE 0
			END
			AS real
			)
		AS varchar(20)
		)
END