 -- Pending to declare all foreign keys in tables, run out of time.
 -- state_id to state table, same for target, group and weapon 

CREATE TABLE Crime (
    id            INTEGER       PRIMARY KEY,
    state_id INTEGER,
    city   VARCHAR(50),
    latitude FLOAT(8) not null,
    longitude FLOAT(8) not null,
    gname    VARCHAR(50)   not null,
    motive   VARCHAR(50),
    targtype1	INTEGER   not null,
    group_id         INTEGER   not null,    
    weaptype1 INTEGER   not null,
);

CREATE TABLE State (
    id            INTEGER       PRIMARY KEY,
    name   VARCHAR(50),
    population INTEGER,
    median_income FLOAT(8)
    pp_race_white FLOAT(8),
    pp_race_africanamerican FLOAT(8),
    pp_race_other FLOAT(8)
);

CREATE TABLE Target (
    id            INTEGER       PRIMARY KEY,
    name   VARCHAR(50)
);

CREATE TABLE Group (
    id            INTEGER       PRIMARY KEY,
    name   VARCHAR(50)
);

CREATE TABLE WeaponType (
    id            INTEGER       PRIMARY KEY,
    name   VARCHAR(50)
);

CREATE TABLE Motive (
    id            INTEGER       PRIMARY KEY,
    name   VARCHAR(50)
);