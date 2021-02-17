-- CASE WHEN, works like if/else for each row
-- Use before the FROM statement
-- Is therefore a filter on column selection prior to WHERE

SELECT player_name,
       year,
       CASE WHEN year = 'SR' THEN 'yes'
       ELSE 'Not a senior' END
       AS is_a_senior
  FROM benn.college_football_players

  SELECT player_name, state,
  CASE WHEN state = 'CA' THEN 'yes'
  ELSE 'no' END
  AS from_CA
  FROM benn.college_football_players
  LIMIT 300
