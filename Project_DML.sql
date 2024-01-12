-- What are all the programs available at RH Smith business school which made top 10 list 
-- during the period of last 5 years.
SELECT P.prgName AS 'Program Name', R.rank AS 'Rank', R.rankType AS 'Rank Type', Y.year AS 'Year'
FROM Program_T P JOIN Ranking_T R
ON P.prgId = R.prgId
JOIN Corresponds_T C
ON R.rankId = c.rankId
JOIN Year_T Y
ON c.yearId = Y.yearId
WHERE R.rank <= 10
AND Y.year > 2018;

-- How did the course rankings for a particular program evolve over the years?
SELECT P.prgName, R.rank, R.rankType, Y.year
FROM Program_T P JOIN Ranking_T R
ON P.prgId = R.prgId
JOIN Corresponds_T C
ON R.rankId = c.rankId
JOIN Year_T Y
ON C.yearID = Y.yearID
WHERE P.prgName = 'Master of Science in Information Systems'
ORDER BY Y.year;

-- Which are the programs instructed by the smith school online?
SELECT P.prgName AS 'Program Name'
FROM Program_T P
WHERE P.prgInstructionMode = 'Online';

-- What are all the programs which are not ranked by any sources?
SELECT PR.prgName AS 'Unranked Programs'
FROM Program_T PR
WHERE PR.prgName NOT IN (
SELECT prgName 
FROM Program_T P JOIN Ranking_T R
ON P.prgId = R.prgId);