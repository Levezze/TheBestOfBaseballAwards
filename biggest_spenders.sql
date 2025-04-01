-- SELECT *
-- FROM salaries;

SELECT SUM(salaries.salary) AS total_salary,
	salaries.yearid AS year,
	teams.name AS team_name
FROM salaries
JOIN teams ON salaries.teamid = teams.teamid
GROUP BY year, team_name
ORDER BY total_salary DESC;