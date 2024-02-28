# Design Document

By Hashim Abdulrahman

Video overview: <https://youtu.be/SbtTRdbFJK8>

## Scope

The database includes tables for storing information about gaming consoles and games. It tracks details such as console release dates, total sales, number of games, game names, release years, game types, publishers, and ratings.

## Functional Requirements

The database supports CRUD operations for consoles and games. It also allows for retrieving average ratings, listing games by publisher, counting games by release year, and finding the highest rated game.

## Representation

Entities are captured in SQLite tables with the following schema.

### Entities

The database includes the following entities:

#### Consoles Table

The `counsels` table includes:

* id: Unique identifier for the console (integer, primary key).
* name: Name of the console (text, not null).
* release: Release year of the console (text, not null).
* total_sales: Total sales of the console (integer, default 0).
* number_of_games: Number of games available for the console (integer, default 0).

#### Games Table

The `games` table includes:

* id: Unique identifier for the game (integer, primary key).
* counsel_id: Foreign key referencing the console id (integer).
* name: Name of the game (text, not null).
* release: Release year of the game (text, not null).
* game_type: Type of the game (text).
* publisher: Publisher of the game (text).
* rating: Rating of the game (real).

### Relationships

The below entity relationship diagram describes the relationships among the entities in the database.

![dg](diagram.png)

* Each game is associated with one console through the counsel_id foreign key.
* One-to-many relationship between consoles and games.

## Optimizations

* Index created on the name and number_of_games columns in the counsels table.
* Index created on the counsel_id, name, release, and rating columns in the games table

## Limitations

* Assumes individual submissions, not collaborative.
* No support for student responses to comments.


-----------------------------------------------------------------
# Design Document

By Hashim Abdulrahman

Video overview: <https://youtu.be/SbtTRdbFJK8>

## Scope

The database includes tables for storing information about gaming consoles and games. It tracks details such as console release dates, total sales, number of games, game names, release years, game types, publishers, and ratings.

## Functional Requirements

The database supports CRUD operations for consoles and games. It also allows for retrieving average ratings, listing games by publisher, counting games by release year, and finding the highest rated game.

## Representation

Entities are captured in SQLite tables with the following schema.

### Entities

The database includes the following entities:

#### Consoles Table

The `counsels` table includes:

* id: Unique identifier for the console (integer, primary key).
* name: Name of the console (text, not null).
* release: Release year of the console (text, not null).
* total_sales: Total sales of the console (integer, default 0).
* number_of_games: Number of games available for the console (integer, default 0).

#### Games Table

The `games` table includes:

* id: Unique identifier for the game (integer, primary key).
* counsel_id: Foreign key referencing the console id (integer).
* name: Name of the game (text, not null).
* release: Release year of the game (text, not null).
* game_type: Type of the game (text).
* publisher: Publisher of the game (text).
* rating: Rating of the game (real).

### Relationships

The below entity relationship diagram describes the relationships among the entities in the database.

![dg](diagram.png)

* Each game is associated with one console through the counsel_id foreign key.
* One-to-many relationship between consoles and games.

## Optimizations

* Index created on the name and number_of_games columns in the counsels table.
* Index created on the counsel_id, name, release, and rating columns in the games table

## Limitations

* Assumes individual submissions, not collaborative.
* No support for student responses to comments.




