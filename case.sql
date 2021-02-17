-- CASE WHEN, works like if/else for each row
-- Use before the FROM statement
-- Is therefore a filter on column selection prior to WHERE

/* Basics of CASE WHEN...

The CASE statement always goes in the SELECT clause
1. CASE must include the following components: WHEN, THEN, and END. ELSE is an optional component.
2. You can make any conditional statement using any conditional operator (like WHERE ) between WHEN and THEN. This includes stringing together multiple conditional statements using AND and OR.
3. You can include multiple WHEN statements, as well as an ELSE statement to deal with any unaddressed conditions.
*/


SELECT player_name,
       year,
       CASE WHEN year = 'SR' THEN 'yes'
       ELSE 'Not a senior' END
       AS is_a_senior
  FROM benn.college_football_players


-- multiple CASE WHEN statements are evaluated in the order in which they're written...

  SELECT player_name, state,
  CASE WHEN state = 'CA' THEN 'from_california'
      WHEN state = 'FL' THEN 'from_florida'
      ELSE 'not_from_CA_or_FL' END
     AS from_CA_or_FL
  FROM benn.college_football_players
  LIMIT 300


-- SELECT *...

  SELECT *,
  CASE WHEN year = 'JR' THEN 'junior'
  WHEN year = 'SR' THEN 'senior'
  ELSE 'neither_junior_or_senior' END AS seniority
  FROM benn.college_football_players
  LIMIT 10

-- Bit more of an advanced example, using GROUP BY...

SELECT
CASE WHEN year = 'FR' THEN 'FR'
ELSE 'Not FR' END AS year_group,
COUNT(1) AS count
FROM benn.college_football_players
GROUP BY CASE WHEN year = 'FR' THEN 'FR' -- Grouping by the first selection, as there's a COUNT
ELSE 'Not FR' END


/* Write a query that counts the number of 300lb+ players for each of the following regions: West Coast (CA, OR, WA), Texas, and Other (Everywhere else). */

SELECT CASE
WHEN state = 'CA' THEN 'California'
WHEN state = 'OR' THEN 'Oregon'
WHEN state = 'WA' THEN 'Washington'
ELSE 'Other' END AS Weight_above_300_and_state,
COUNT(1) as players
FROM benn.college_football_players
WHERE weight > 300
GROUP BY 1
