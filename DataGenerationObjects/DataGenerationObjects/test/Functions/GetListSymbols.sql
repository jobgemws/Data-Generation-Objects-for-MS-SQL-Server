
CREATE FUNCTION [test].[GetListSymbols]
(
	@str NVARCHAR(MAX),
	@IsGroupUnique BIT=0
)
RETURNS 
@ListSymbols TABLE 
(
	[ID] INT,
	[Symbol] NVARCHAR(1),
	[Count] INT
)
AS
BEGIN
	IF(@IsGroupUnique=1)
	BEGIN
		;WITH cte ([ID])
		AS
		(SELECT
				1
			UNION ALL
			SELECT
				[ID] + 1
			FROM cte
			WHERE [ID] < LEN(@str))
		INSERT INTO @ListSymbols ([ID], [Symbol], [Count])
		SELECT
			ROW_NUMBER() OVER(ORDER BY [Symbol] ASC) AS [ID]
		   ,[Symbol]
		   ,COUNT(*) AS [Count]
		FROM cte
		CROSS APPLY (SELECT
		SUBSTRING(@str, [ID], 1)) AS J ([Symbol])
		GROUP BY [Symbol]
		OPTION (MAXRECURSION 0);
	END
	ELSE
	BEGIN
		;WITH cte ([ID])
		AS
		(SELECT
				1
			UNION ALL
			SELECT
				[ID] + 1
			FROM cte
			WHERE [ID] < LEN(@str))
		INSERT INTO @ListSymbols ([ID], [Symbol], [Count])
		SELECT
			[ID]
		   ,[Symbol]
		   , 1 AS [Count]
		FROM cte
		CROSS APPLY (SELECT
		SUBSTRING(@str, [ID], 1)) AS J ([Symbol]) OPTION (MAXRECURSION 0);
	END
	   	 	
	RETURN 
END
