

CREATE FUNCTION [test].[GetRandString]
(
	@Length INT = 16,
	@IsNumeral BIT=0,
	@IsUpperCase BIT=0,
	@IsLatin BIT=1,
	@IsRus BIT=0,
	@IsExtra BIT=0
)
RETURNS NVARCHAR(MAX)
AS
BEGIN
	DECLARE @count INT=@Length;
	DECLARE @res NVARCHAR(MAX)=N'';
	DECLARE @count_tbl INT;
	DECLARE @tbl TABLE ([ID] INT, [Value] NCHAR(1));
	
	INSERT INTO @tbl([ID], [Value])
	SELECT [Num], [ValueNChar]
	FROM [test].[GetSelectSymbols](@IsNumeral, @IsUpperCase, @IsLatin, @IsRus, @IsExtra);
	
	DECLARE @ind float;
	DECLARE @id INT;
	
	SET @count_tbl= (SELECT COUNT(*) FROM @tbl);
	
	WHILE(@count>0)
	BEGIN
		SET @ind=(SELECT TOP(1) [Value] FROM [test].[GetRand]);
		SET @id=CAST(((@count_tbl + 1) - 1) * @ind + 1 AS INT);
		
		SET @res+= (SELECT TOP(1) [Value] FROM @tbl WHERE [ID]=@id);	
		SET @count-=1;
	END

	RETURN @res;
END
