-- Join clubs and stadiums

SELECT *
FROM clubs c
JOIN stadiums s
    ON c.club_id = s.club_id;


-- Top 10 largest stadiums

SELECT
    c.club_name,
    s.stadium_name,
    s.capacity
FROM clubs c
JOIN stadiums s
    ON c.club_id = s.club_id
ORDER BY s.capacity DESC
LIMIT 10;


-- Number of clubs in each area with stadium capacity >= 30,000

SELECT
    c.club_area,
    COUNT(*) AS number_of_clubs
FROM clubs c
JOIN stadiums s
    ON c.club_id = s.club_id
WHERE s.capacity >= 30000
GROUP BY c.club_area
ORDER BY number_of_clubs DESC;


-- Average stadium capacity by area

SELECT
    c.club_area,
    AVG(s.capacity) AS average_capacity
FROM clubs c
JOIN stadiums s
    ON c.club_id = s.club_id
GROUP BY c.club_area
ORDER BY average_capacity DESC;