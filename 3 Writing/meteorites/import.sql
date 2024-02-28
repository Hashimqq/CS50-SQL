CREATE TABLE
  meteorites_temp (
    name text,
    id integer,
    nametype text,
    class text,
    mass real,
    discovery text,
    year integer,
    lat real,
    long real,
    primary key (id)
  );


.import --csv --skip 1 meteorites.csv meteorites_temp



update meteorites_temp
set mass = null
where mass = 0;

update meteorites_temp
set lat = null
where lat = 0;

update meteorites_temp
set long = null
where long = 0;

update meteorites_temp
set year = null
where year = 0;

update meteorites_temp
set year = null
where year like '';

update meteorites_temp
set mass = round(mass,2),
	lat = round(lat,2),
    long = round(long,2);




CREATE TABLE
  meteorites (
    name text,
    id integer,
    class text,
    mass real,
    discovery text,
    year integer,
    lat real,
    long real,
    primary key (id)
  );


insert into meteorites (name, class, mass, discovery, year, lat, long)
select name, class, mass, discovery, year, lat, long from meteorites_temp
where nametype not like '%relict%'
order by year,name;














