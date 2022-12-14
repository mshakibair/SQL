CREATE OR ALTER FUNCTION
	[dbo].[Time_Passed]
	(
		@Datetime Datetime2(7)
	)

	RETURNS nvarchar(max)
AS
BEGIN
	
	declare @Now datetime2(7) = GETDATE() -- UTC

	declare @Hour int = DATEDIFF(hour,@Datetime,@Now)

	if @Hour >= 24
		return convert(nvarchar(max),1 + convert(int,@Hour/24)) + N' روز'

	if @Hour > 0
		return convert(nvarchar(max),@Hour) + N' ساعت'

	declare @Minute int = DATEDIFF(MINUTE,@Datetime,@Now)

	if @Minute > 0
		return convert(nvarchar(max),@Minute) + N' دقیقه'

	declare @Second int = DATEDIFF(SECOND,@Datetime,@Now)

	if @Second > 0
		return convert(nvarchar(max),@Second) + N' ثانیه'

	RETURN N''

END