CREATE TABLE Users (
    id INT AUTO_INCREMENT ,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(128) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE Schools (
    id INT AUTO_INCREMENT ,
    name VARCHAR(100) NOT NULL,
    type ENUM('Primary', 'Secondary', 'Higher Education') NOT NULL,
    location VARCHAR(100) NOT NULL,
    founded_year INT,
    PRIMARY KEY (id)
);


CREATE TABLE Companies (
    company_id INT AUTO_INCREMENT ,
    name VARCHAR(100) NOT NULL,
    industry ENUM('Technology', 'Education', 'Business') NOT NULL,
    location VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE ConnectionsSchools (
    user_id INT,
    school_id INT,
    start_date DATE,
    end_date DATE,
    degree VARCHAR(10),
    primary key (user_id, school_id),
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (school_id) REFERENCES Schools(id)
);


CREATE TABLE ConnectionsCompanies (
    user_id INT,
    company_id INT,
    start_date DATE,
    end_date DATE,
    title VARCHAR(50),
    primary key (user_id, company_id),
    FOREIGN KEY (user_id) REFERENCES Users(id),
    FOREIGN KEY (company_id) REFERENCES Companies(id)
);


CREATE TABLE ConnectionsPeople (
    user_id1 INT,
    user_id2 INT,
    FOREIGN KEY (user_id1) REFERENCES Users(id),
    FOREIGN KEY (user_id2) REFERENCES Users(id)

);
