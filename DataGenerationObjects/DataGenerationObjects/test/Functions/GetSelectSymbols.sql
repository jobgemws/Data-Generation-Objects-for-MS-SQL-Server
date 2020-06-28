

CREATE FUNCTION [test].[GetSelectSymbols]
(	
	@IsNumeral BIT=0
   ,@IsUpperCase BIT=0
   ,@IsLatin BIT=1
   ,@IsRus BIT=0
   ,@IsExtra BIT=0
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT ROW_NUMBER() OVER(ORDER BY [ValueInt] ASC) AS [Num], [ValueInt], [ValueNChar], [ValueChar], [IsNumeral], [IsUpperCase], [IsLatin], [IsRus], [IsExtra]
	from
	(
		SELECT 33 AS [ValueInt], '!' AS [ValueNChar], '!' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 34 AS [ValueInt], '"' AS [ValueNChar], '"' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 35 AS [ValueInt], '#' AS [ValueNChar], '#' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 36 AS [ValueInt], '$' AS [ValueNChar], '$' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 37 AS [ValueInt], '%' AS [ValueNChar], '%' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 38 AS [ValueInt], '&' AS [ValueNChar], '&' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 39 AS [ValueInt], '''' AS [ValueNChar], '''' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 40 AS [ValueInt], '(' AS [ValueNChar], '(' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 41 AS [ValueInt], ')' AS [ValueNChar], ')' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 42 AS [ValueInt], '*' AS [ValueNChar], '*' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 43 AS [ValueInt], '+' AS [ValueNChar], '+' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 44 AS [ValueInt], ',' AS [ValueNChar], ',' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 45 AS [ValueInt], '-' AS [ValueNChar], '-' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 46 AS [ValueInt], '.' AS [ValueNChar], '.' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 47 AS [ValueInt], '/' AS [ValueNChar], '/' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 48 AS [ValueInt], '0' AS [ValueNChar], '0' AS [ValueChar], 1 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 49 AS [ValueInt], '1' AS [ValueNChar], '1' AS [ValueChar], 1 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 50 AS [ValueInt], '2' AS [ValueNChar], '2' AS [ValueChar], 1 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 51 AS [ValueInt], '3' AS [ValueNChar], '3' AS [ValueChar], 1 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 52 AS [ValueInt], '4' AS [ValueNChar], '4' AS [ValueChar], 1 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 53 AS [ValueInt], '5' AS [ValueNChar], '5' AS [ValueChar], 1 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 54 AS [ValueInt], '6' AS [ValueNChar], '6' AS [ValueChar], 1 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 55 AS [ValueInt], '7' AS [ValueNChar], '7' AS [ValueChar], 1 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 56 AS [ValueInt], '8' AS [ValueNChar], '8' AS [ValueChar], 1 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 57 AS [ValueInt], '9' AS [ValueNChar], '9' AS [ValueChar], 1 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 58 AS [ValueInt], ':' AS [ValueNChar], ':' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 59 AS [ValueInt], ';' AS [ValueNChar], ';' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 60 AS [ValueInt], '<' AS [ValueNChar], '<' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 61 AS [ValueInt], '=' AS [ValueNChar], '=' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 62 AS [ValueInt], '>' AS [ValueNChar], '>' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 63 AS [ValueInt], '?' AS [ValueNChar], '?' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 64 AS [ValueInt], '@' AS [ValueNChar], '@' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 0 AS [IsRus], 1 AS [IsExtra] UNION ALL
		SELECT 65 AS [ValueInt], 'A' AS [ValueNChar], 'A' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 66 AS [ValueInt], 'B' AS [ValueNChar], 'B' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 67 AS [ValueInt], 'C' AS [ValueNChar], 'C' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 68 AS [ValueInt], 'D' AS [ValueNChar], 'D' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 69 AS [ValueInt], 'E' AS [ValueNChar], 'E' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 70 AS [ValueInt], 'F' AS [ValueNChar], 'F' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 71 AS [ValueInt], 'G' AS [ValueNChar], 'G' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 72 AS [ValueInt], 'H' AS [ValueNChar], 'H' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 73 AS [ValueInt], 'I' AS [ValueNChar], 'I' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 74 AS [ValueInt], 'J' AS [ValueNChar], 'J' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 75 AS [ValueInt], 'K' AS [ValueNChar], 'K' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 76 AS [ValueInt], 'L' AS [ValueNChar], 'L' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 77 AS [ValueInt], 'M' AS [ValueNChar], 'M' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 78 AS [ValueInt], 'N' AS [ValueNChar], 'N' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 79 AS [ValueInt], 'O' AS [ValueNChar], 'O' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 80 AS [ValueInt], 'P' AS [ValueNChar], 'P' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 81 AS [ValueInt], 'Q' AS [ValueNChar], 'Q' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 82 AS [ValueInt], 'R' AS [ValueNChar], 'R' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 83 AS [ValueInt], 'S' AS [ValueNChar], 'S' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 84 AS [ValueInt], 'T' AS [ValueNChar], 'T' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 85 AS [ValueInt], 'U' AS [ValueNChar], 'U' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 86 AS [ValueInt], 'V' AS [ValueNChar], 'V' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 87 AS [ValueInt], 'W' AS [ValueNChar], 'W' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 88 AS [ValueInt], 'X' AS [ValueNChar], 'X' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 89 AS [ValueInt], 'Y' AS [ValueNChar], 'Y' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 90 AS [ValueInt], 'Z' AS [ValueNChar], 'Z' AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 97 AS [ValueInt], 'a' AS [ValueNChar], 'a' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 98 AS [ValueInt], 'b' AS [ValueNChar], 'b' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 99 AS [ValueInt], 'c' AS [ValueNChar], 'c' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 100 AS [ValueInt], 'd' AS [ValueNChar], 'd' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 101 AS [ValueInt], 'e' AS [ValueNChar], 'e' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 102 AS [ValueInt], 'f' AS [ValueNChar], 'f' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 103 AS [ValueInt], 'g' AS [ValueNChar], 'g' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 104 AS [ValueInt], 'h' AS [ValueNChar], 'h' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 105 AS [ValueInt], 'i' AS [ValueNChar], 'i' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 106 AS [ValueInt], 'j' AS [ValueNChar], 'j' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 107 AS [ValueInt], 'k' AS [ValueNChar], 'k' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 108 AS [ValueInt], 'l' AS [ValueNChar], 'l' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 109 AS [ValueInt], 'm' AS [ValueNChar], 'm' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 110 AS [ValueInt], 'n' AS [ValueNChar], 'n' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 111 AS [ValueInt], 'o' AS [ValueNChar], 'o' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 112 AS [ValueInt], 'p' AS [ValueNChar], 'p' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 113 AS [ValueInt], 'q' AS [ValueNChar], 'q' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 114 AS [ValueInt], 'r' AS [ValueNChar], 'r' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 115 AS [ValueInt], 's' AS [ValueNChar], 's' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 116 AS [ValueInt], 't' AS [ValueNChar], 't' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 117 AS [ValueInt], 'u' AS [ValueNChar], 'u' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 118 AS [ValueInt], 'v' AS [ValueNChar], 'v' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 119 AS [ValueInt], 'w' AS [ValueNChar], 'w' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 120 AS [ValueInt], 'x' AS [ValueNChar], 'x' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 121 AS [ValueInt], 'y' AS [ValueNChar], 'y' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 122 AS [ValueInt], 'z' AS [ValueNChar], 'z' AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 1 AS [IsLatin], 0 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1040 AS [ValueInt], 'А' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1041 AS [ValueInt], 'Б' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1042 AS [ValueInt], 'В' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1043 AS [ValueInt], 'Г' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1044 AS [ValueInt], 'Д' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1045 AS [ValueInt], 'Е' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1046 AS [ValueInt], 'Ж' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1047 AS [ValueInt], 'З' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1048 AS [ValueInt], 'И' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1049 AS [ValueInt], 'Й' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1050 AS [ValueInt], 'К' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1051 AS [ValueInt], 'Л' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1052 AS [ValueInt], 'М' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1053 AS [ValueInt], 'Н' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1054 AS [ValueInt], 'О' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1055 AS [ValueInt], 'П' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1056 AS [ValueInt], 'Р' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1057 AS [ValueInt], 'С' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1058 AS [ValueInt], 'Т' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1059 AS [ValueInt], 'У' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1060 AS [ValueInt], 'Ф' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1061 AS [ValueInt], 'Х' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1062 AS [ValueInt], 'Ц' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1063 AS [ValueInt], 'Ч' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1064 AS [ValueInt], 'Ш' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1065 AS [ValueInt], 'Щ' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1066 AS [ValueInt], 'Ъ' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1067 AS [ValueInt], 'Ы' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1068 AS [ValueInt], 'Ь' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1069 AS [ValueInt], 'Э' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1070 AS [ValueInt], 'Ю' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1071 AS [ValueInt], 'Я' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 1 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1072 AS [ValueInt], 'а' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1073 AS [ValueInt], 'б' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1074 AS [ValueInt], 'в' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1075 AS [ValueInt], 'г' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1076 AS [ValueInt], 'д' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1077 AS [ValueInt], 'е' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1078 AS [ValueInt], 'ж' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1079 AS [ValueInt], 'з' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1080 AS [ValueInt], 'и' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1081 AS [ValueInt], 'й' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1082 AS [ValueInt], 'к' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1083 AS [ValueInt], 'л' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1084 AS [ValueInt], 'м' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1085 AS [ValueInt], 'н' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1086 AS [ValueInt], 'о' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1087 AS [ValueInt], 'п' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1088 AS [ValueInt], 'р' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1089 AS [ValueInt], 'с' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1090 AS [ValueInt], 'т' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1091 AS [ValueInt], 'у' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1092 AS [ValueInt], 'ф' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1093 AS [ValueInt], 'х' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1094 AS [ValueInt], 'ц' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1095 AS [ValueInt], 'ч' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1096 AS [ValueInt], 'ш' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1097 AS [ValueInt], 'щ' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1098 AS [ValueInt], 'ъ' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1099 AS [ValueInt], 'ы' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1100 AS [ValueInt], 'ь' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1101 AS [ValueInt], 'э' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1102 AS [ValueInt], 'ю' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra] UNION ALL
		SELECT 1103 AS [ValueInt], 'я' AS [ValueNChar], NULL AS [ValueChar], 0 AS [IsNumeral], 0 AS [IsUpperCase], 0 AS [IsLatin], 1 AS [IsRus], 0 AS [IsExtra]
	) AS tbl
	WHERE ([IsNumeral]=@IsNumeral AND @IsNumeral=1)
	  OR ([IsLatin]=@IsLatin AND [IsLatin]=1 AND ([IsUpperCase]=@IsUpperCase OR @IsUpperCase IS NULL))
	  OR ([IsRus]=@IsRus AND [IsRus]=1 AND ([IsUpperCase]=@IsUpperCase OR @IsUpperCase IS NULL))
	  OR ([IsExtra]=@IsExtra AND [IsExtra]=1)
)
