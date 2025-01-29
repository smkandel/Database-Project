SELECT l.name AS league_name, COUNT(m.id) AS total_matches
FROM matches m
JOIN league l ON m.league_id = l.id
WHERE EXTRACT(YEAR FROM m.date) = 2016
GROUP BY l.name
ORDER BY total_matches DESC
FETCH FIRST 1 ROWS ONLY;