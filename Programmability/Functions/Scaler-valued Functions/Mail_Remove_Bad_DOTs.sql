CREATE OR ALTER FUNCTION 
	[dbo].[Mail_Remove_Bad_DOTs]
	(
		@EMail varchar(max)
	) 
RETURNS varchar(max)

AS
BEGIN

 -- Meghdada.Shakiba@gmail.com -> MeghdadaShakiba@gmail.com

if right(@EMail,10) <> '@gmail.com'
	return @EMail

return
	replace( 
				replace(
						@EMail,
						'@gmail.com',
						''
						),
				'.',
				''
				)
	+ 
	'@gmail.com' 

END