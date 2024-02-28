CREATE TABLE
  passengers (
    "id" integer,
    "first_name" text,
    "last_name" text,
    "age" integer,
    primary key ("id")
  );

CREATE TABLE
  airlines (
    "id" integer,
    "name" text,
    "concourse" text ,
    primary key ("id")
  );


create table
	flights (
    "id" integer,
    "flight_number" integer,
    "airline_id" integer,
    "departing_airport_code" text,
    "arrival_airport_code" text,
    "departure_datetime" datetime,
    "arrival_datetime" datetime,
    primary key ("id")
    foreign key ("airline_id") references "airlines" ("id")
    );

create table
	checkIns (
    "id" integer,
    "datetime" datetime,
    "passenger_id" integer,
    "flight_id" integer,

    primary key ("id")
    foreign key ("passenger_id") references "passengers"("id")
    foreign key ("flight_id") references "flights"("id")
    );





