-- WITH base AS (
-- 	SELECT batting.playerid,
-- 		batting.yearid AS year,
-- 		people.weight,
-- 		teams.name
-- 	FROM batting
-- 	JOIN people
-- 	ON batting.playerid = people.playerid
-- 	JOIN teams
-- 	ON batting.teamid = teams.teamid
-- 	WHERE people.weight IS NOT null
-- )
-- SELECT year,
-- 	AVG(base.weight) AS avg_weight,
-- 	name
-- FROM base
-- GROUP BY year, name
-- ORDER BY avg_weight DESC;

SELECT batting.yearid AS year,
	AVG(people.weight) AS avg_weight,
	teams.name AS team_name
FROM batting
JOIN people ON batting.playerid = people.playerid
JOIN teams ON batting.teamid = teams.teamid
WHERE people.weight IS NOT NULL
GROUP BY year, team_name
ORDER BY avg_weight DESC;