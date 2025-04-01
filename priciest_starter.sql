-- SELECT *
-- FROM salaries
-- WHERE salary = 0;

SELECT p.namegiven AS pitcher_name, 
	MAX(ROUND(s.salary / pi.gs)) AS cost_per_game,
	pi.yearid AS year
FROM people p
JOIN salaries s ON p.playerid = s.playerid
JOIN pitching pi ON p.playerid = pi.playerid
WHERE s.salary > 0 AND pi.gs >= 10
GROUP BY pitcher_name, year
ORDER BY cost_per_game DESC;