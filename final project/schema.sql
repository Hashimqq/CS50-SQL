-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it

-- Define the counsels table
CREATE TABLE counsels (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    release TEXT NOT NULL,
    total_sales INTEGER DEFAULT 0,
    number_of_games INTEGER DEFAULT 0
);

-- Define the games table
CREATE TABLE games (
    id INTEGER PRIMARY KEY,
    counsel_id INTEGER,
    name TEXT NOT NULL,
    release TEXT NOT NULL,
    game_type TEXT,
    publisher TEXT,
    rating REAL,
    FOREIGN KEY (counsel_id) REFERENCES counsels(id)
);


CREATE INDEX counsels_index ON counsels (name, number_of_games)
CREATE INDEX games_index ON games (counsel_id, name, release, rating)

