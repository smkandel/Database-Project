SELECT t.team_long_name AS team_name, 
       l.name AS league_name, 
       m.season, 
       GREATEST(m.home_team_goal, m.away_team_goal) AS max_goals
FROM Matches m
JOIN League l ON m.league_id = l.id
JOIN Team t 
    ON (m.home_team_goal >= m.away_team_goal AND m.home_team_api_id = t.team_api_id)
    OR (m.away_team_goal > m.home_team_goal AND m.away_team_api_id = t.team_api_id)
ORDER BY max_goals DESC
FETCH FIRST 1 ROWS ONLY;