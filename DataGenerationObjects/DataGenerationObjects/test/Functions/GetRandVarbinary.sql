
CREATE FUNCTION [test].[GetRandVarbinary] (@Length INT = 16)
RETURNS VARBINARY(MAX)
AS
BEGIN
	DECLARE @res VARBINARY(MAX);
	DECLARE @count INT = @Length / 16;

	IF (@count = 0)
	BEGIN
		SET @res = SUBSTRING((SELECT TOP(1) [Value] FROM [test].[GetRandVarbinary16]), 1, @Length);
	END
	ELSE
	BEGIN
		SET @res = (SELECT TOP(1) [Value] FROM [test].[GetRandVarbinary16]);

		SET @count -= 1;
		SET @Length -= 16;

		WHILE (@count > 0)
		BEGIN
		SET @res += (SELECT TOP(1) [Value] FROM [test].[GetRandVarbinary16]);

		SET @count -= 1;
		SET @Length -= 16;
		END

		SET @res += SUBSTRING((SELECT TOP(1) [Value] FROM [test].[GetRandVarbinary16]), 1, @Length);
	END

	RETURN @res;
END
