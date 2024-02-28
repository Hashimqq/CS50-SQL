-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database

SELECT * FROM counsels

SELECT * FROM games

-----------------------------------------------------------------
-- COUNSELS TABLE

--PlayStation 1

INSERT INTO counsels (name, release, total_sales, number_of_games)
VALUES ('PlayStation 1', '1994', 0, 0);

UPDATE counsels
SET total_sales = 102490000
WHERE name = "PlayStation 1";

UPDATE counsels
SET number_of_games  = 2898
WHERE name = "PlayStation 1";

---------------------------------------------------------------------
--PlayStation 2

INSERT INTO counsels (name, release, total_sales, number_of_games)
VALUES ('PlayStation 2', '2000', 0, 0);

UPDATE counsels
SET total_sales = 155000000
WHERE name = "PlayStation 2";

UPDATE counsels
SET number_of_games  = 3423
WHERE name = "PlayStation 2";

----------------------------------------------------------------------
--PlayStation 3

INSERT INTO counsels (name, release, total_sales, number_of_games)
VALUES ('PlayStation 3', '2006', 0, 0);

UPDATE counsels
SET total_sales = 87400000
WHERE name = "PlayStation 3";

UPDATE counsels
SET number_of_games  = 5130
WHERE name = "PlayStation 3";

----------------------------------------------------------------------
--Xbox

INSERT INTO counsels (name, release, total_sales, number_of_games)
VALUES ('Xbox', '2001', 0, 0);

UPDATE counsels
SET total_sales = 24000000
WHERE name = "Xbox";

UPDATE counsels
SET number_of_games  = 1016
WHERE name = "Xbox";

-----------------------------------------------------------------------
--Xbox 360

INSERT INTO counsels (name, release, total_sales, number_of_games)
VALUES ('Xbox 360', '2005', 0, 0);

UPDATE counsels
SET total_sales = 84000000
WHERE name = "Xbox 360";

UPDATE counsels
SET number_of_games  = 4784
WHERE name = "Xbox 360";


--------------------------------------------------------------------
-- GAMES TABLE

INSERT INTO games (counsel_id, name, release, game_type, publisher, rating)
VALUES (
    (SELECT id FROM counsels WHERE name = 'PlayStation 1'),
    'Metal Gear Solid',
    '1998',
    'Stealth, action-adventure',
    'Konami',
    9.4
);

INSERT INTO games (counsel_id, name, release, game_type, publisher, rating)
VALUES (
    (SELECT id FROM counsels WHERE name = 'PlayStation 2'),
    'Grand Theft Auto: San Andreas',
    '2004',
    'Action-adventure',
    'Rockstar Games',
    9.5
);

INSERT INTO games (counsel_id, name, release, game_type, publisher, rating)
VALUES (
    (SELECT id FROM counsels WHERE name = 'PlayStation 3'),
    'The Last of Us',
    '2013',
    'Action-adventure, survival horror',
    'Sony Computer Entertainment',
    9.4
);


INSERT INTO games (counsel_id, name, release, game_type, publisher, rating)
VALUES (
    (SELECT id FROM counsels WHERE name = 'Xbox'),
    'Halo: Combat Evolved',
    '2001',
    'First-person shooter',
    'Microsoft Game Studios',
    9.7
);

INSERT INTO games (counsel_id, name, release, game_type, publisher, rating)
VALUES (
    (SELECT id FROM counsels WHERE name = 'Xbox 360'),
    'Red Dead Redemption',
    '2010',
    'Action-adventure',
    'Rockstar Games',
    9.5
);

