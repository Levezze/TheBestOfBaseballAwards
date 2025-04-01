SELECT batting.yearid AS year,
	AVG(people.height) AS avg_height,
	teams.name AS team_name
FROM batting
JOIN people ON batting.playerid = people.playerid
JOIN teams ON batting.teamid = teams.teamid
GROUP BY year, team_name
ORDER BY avg_height ASC;