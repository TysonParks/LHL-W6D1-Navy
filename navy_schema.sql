--DROP PREVIOUS TABLES
DROP TABLE IF EXISTS navy_schema.fleet, navy_schema.ships, navy_schema.sailors, navy_schema.tourOfDuty, navy_schema.ships_tourOfDuty;


--CREATE TABLES
CREATE TABLE fleet
(id INTEGER PRIMARY KEY,
  fleet_name VARCHAR(50)
);

CREATE TABLE ships
(id INTEGER PRIMARY KEY,
  fleet_id INTEGER,
  ship_name VARCHAR(50),
  build_date VARCHAR(50)
);

CREATE TABLE sailors
(id INTEGER PRIMARY KEY,
  sailor_name VARCHAR(50),
  birth_date VARCHAR(50)
);

CREATE TABLE tourOfDuty
(id INTEGER PRIMARY KEY,
  sailor_id INTEGER,
  tourOfDuty_name VARCHAR(50),
  tourOfDuty_rank VARCHAR(50),
  start_date VARCHAR(50),
  end_date VARCHAR(50)
);

CREATE TABLE ships_tourOfDuty
(id INTEGER PRIMARY KEY,
  ship_id INTEGER,
  tourOfDuty_id INTEGER
);


--INSERT DATA
INSERT INTO fleet (id, fleet_name)
VALUES
(1, "Pacific"),
(2, "Atlantic"),
(3, "Arctic");

INSERT INTO ships (id, fleet_id, ship_name, build_date)
VALUES
(1, 3, "Crusher", "2003"),
(2, 1,"Cruiser", "1969"),
(3, 2, "PanHandler", "1991"),
(4, 1, "Skipper", "1984"),
(5, 3, "Hopper", "2012");

INSERT INTO sailors (id, sailor_name, birth_date)
VALUES
(1, "Sad Boy", "1998-04-30"),
(2, "Diesel Pump", "1999-12-31"),
(3, "Skid Row", "1994-03-23"),
(4, "Mac Mall", "2001-08-17"),
(5, "Spice Bumps", "1984-11-11"),
(6, "Long Song", "1990-03-03");

INSERT INTO tourOfDuty (id, sailor_id, tourOfDuty_name, tourOfDuty_rank, start_date, end_date)
VALUES
(1, 4, "Op Ivy", "Flag Bearer", "2016-11", "2017-01"),
(2, 5, "Op Ivy", "Submarine Pilot", "2016-11", "2017-01"),
(3, 1, "Operation Penetrate Panama", "Flag Bearer", "2017-02", "2017-05"),
(4, 5, "Operation Penetrate Panama", "Kernal", "2017-02", "2017-05"),
(5, 3, "Scuttle Butt Training", "BucketMuppet", "2017-07", "2018-06"),
(6, 5, "Swim Dances With Wolves", "Costneral", "2018-02", "2018-04"),
(7, 2, "Swim Dances With Wolves", "Kernal", "2018-02", "2018-04"),
(8, 6, "Swim Dances With Wolves", "BucketMuppet", "2018-02", "2018-04"),
(9, 1, "Paddlesup", "Kernal", "2018-05", "2019-10"),
(10, 2, "Paddlesup", "Submarine Pilot", "2018-05", "2019-10");

INSERT INTO ships_tourOfDuty (id, ship_id, tourOfDuty_id)
VALUES
(1, 5, 1),
(2, 5, 2),
(3, 1, 3),
(4, 1, 4),
(5, 3, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 4, 9),
(10, 4, 10);
