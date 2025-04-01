SELECT *
FROM teams;

SELECT ROUND(SUM(s.salary) / t.w) AS win_price,
	s.yearid AS year,
	t.name AS team_name
FROM salaries s
JOIN teams t ON s.teamid = t.teamid
WHERE s.yearid = 2010
GROUP BY year, team_name, t.w
ORDER BY win_price DESC
LIMIT 10;