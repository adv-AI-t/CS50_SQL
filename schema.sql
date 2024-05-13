-- Use .read followed by the sql file name to run the commands

CREATE TABLE "riders" (
    "id" INTEGER,
    "name" TEXT,
    PRIMARY KEY("id")
    -- when a column is declared as a primary key, it cannot be NULL, so no need to specify explicitly "NOT NULL" after the datatype
    --  primary key is UNIQUE by default, so no need of explicit declaration
);

CREATE TABLE "stations"(
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "line" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "visits"(
    "rider_id" INTEGER,
    "station_id" INTEGER,
    -- PRIMARY KEY("rider_id", "station_id"); -- the combination of rider_id and station_id MUST BE UNIQUE, so together it is a PRIMARY KEY
    FOREIGN KEY("rider_id") REFERENCES "riders"("id")
    FOREIGN KEY("station_id") REFERENCES "stations"("id")
);