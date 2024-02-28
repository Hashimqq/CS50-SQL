create table
	Users(
    id integer ,
    first_name text,
    last_name text,
    username text unique,
    password text,

    primary key (id)
    );


create table
	Schools (
    id integer,
    name text,
    type text,
    location text,
    year integer,

    primary key (id)
    );


create table
	Companies (
    id integer,
    name text,
    industry text,
    location text,

    primary key (id)
    );


create table
	UserConnections (
    user1_id integer,
    user2_id integer,

    primary key (user1_id, user2_id)
    foreign key (user1_id) references Users(id)
    foreign key (user2_id) references Users(id)
   );


create table
	UserSchools (
    user_id integer,
    school_id integer,
    start date,
    end date,
    degree text,

    primary key (user_id, school_id)
    foreign key (user_id) references Users(id)
    foreign key (school_id) references Schools(id)
    );


create table
	UserCompanies (
    user_id integer,
    company_id integer,
    start date,
    end date,
    title text,

    primary key (user_id, company_id)
    foreign key (user_id) references Users(id)
    foreign key (company_id) references Companies(id)
    );













