CREATE TABLE seats (
	seatId serial NOT NULL PRIMARY KEY,
	row int NOT NULL,
	numberInRow int NOT NULL,
    isAvailable boolean NOT NULL
);

CREATE TABLE layout (
	layoutId serial NOT NULL PRIMARY KEY,
	name varchar(30) NOT NULL,
	isActive boolean NOT NULL
);

CREATE TABLE seatsLayout (
	id serial NOT NULL PRIMARY KEY,
	seatId int NOT NULL REFERENCES seats,
	layoutId int NOT NULL REFERENCES layout
);

CREATE TABLE hall (
	id serial NOT NULL PRIMARY KEY,
	name varchar(30) NOT NULL,
	capacity int NOT NULL
);

CREATE TABLE hallLayout (
	id serial NOT NULL PRIMARY KEY,
	hallId int NOT NULL REFERENCES hall,
	layoutId int NOT NULL REFERENCES layout
);
