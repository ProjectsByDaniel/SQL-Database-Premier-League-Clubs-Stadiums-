CREATE TABLE clubs (
    club_id INT PRIMARY KEY,
    club_name VARCHAR(100) NOT NULL,
    club_area VARCHAR(100) NOT NULL
);

INSERT INTO clubs (club_id, club_name, club_area)
VALUES
    (1, 'Arsenal', 'London'),
    (2, 'Aston Villa', 'West Midlands'),
    (3, 'Bournemouth', 'South West'),
    (4, 'Brentford', 'London'),
    (5, 'Brighton & Hove Albion', 'South East'),
    (6, 'Burnley', 'North West'),
    (7, 'Chelsea', 'London'),
    (8, 'Crystal Palace', 'London'),
    (9, 'Everton', 'North West'),
    (10, 'Fulham', 'London'),
    (11, 'Leeds United', 'Yorkshire'),
    (12, 'Liverpool', 'North West'),
    (13, 'Manchester City', 'North West'),
    (14, 'Manchester United', 'North West'),
    (15, 'Newcastle United', 'North East'),
    (16, 'Nottingham Forest', 'East Midlands'),
    (17, 'Sunderland', 'North East'),
    (18, 'Tottenham Hotspur', 'London'),
    (19, 'West Ham United', 'London'),
    (20, 'Wolverhampton Wanderers', 'West Midlands');

CREATE TABLE stadiums (
    stadium_id INT PRIMARY KEY,
    club_id INT NOT NULL,
    stadium_name VARCHAR(100) NOT NULL,
    capacity INT,
    FOREIGN KEY (club_id) REFERENCES clubs(club_id)
);

INSERT INTO stadiums (stadium_id, club_id, stadium_name, capacity)
VALUES
    (1, 1, 'Emirates Stadium', 60704),
    (2, 2, 'Villa Park', 42785),
    (3, 3, 'Vitality Stadium', 11379),
    (4, 4, 'Gtech Community Stadium', 17250),
    (5, 5, 'Amex Stadium', 31800),
    (6, 6, 'Turf Moor', 21944),
    (7, 7, 'Stamford Bridge', 40341),
    (8, 8, 'Selhurst Park', 25486),
    (9, 9, 'Hill Dickinson Stadium', 52888),
    (10, 10, 'Craven Cottage', 29589),
    (11, 11, 'Elland Road', 37645),
    (12, 12, 'Anfield', 61276),
    (13, 13, 'Etihad Stadium', 53400),
    (14, 14, 'Old Trafford', 74310),
    (15, 15, 'St James'' Park', 52305),
    (16, 16, 'City Ground', 30445),
    (17, 17, 'Stadium of Light', 49000),
    (18, 18, 'Tottenham Hotspur Stadium', 62850),
    (19, 19, 'London Stadium', 62500),
    (20, 20, 'Molineux Stadium', 31750);
