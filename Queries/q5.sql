SELECT COUNT(*) AS match_count
FROM Matches
WHERE (home_team_api_id = 10260 OR away_team_api_id = 10260)
  AND season = '2011/2012';