CREATE OR ALTER FUNCTION 
	[dbo].[RemainDay]
	(
		@ExpireOn AS DATE
	)
	RETURNS INT

BEGIN

	RETURN 
		DATEDIFF
		(
			DAY,
			CAST(GETUTCDATE() AS DATE),  -- GETDATE()
			CAST(@ExpireOn    AS DATE)
		)

END