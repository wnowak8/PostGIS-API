\c mydatabase;

CREATE EXTENSION IF NOT EXISTS postgis;
CREATE EXTENSION IF NOT EXISTS postgis_topology;

CREATE TABLE points (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    geom GEOMETRY(Point, 4326)
);

CREATE TABLE lines (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    geom GEOMETRY(LineString, 4326)
);

CREATE TABLE polygons (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    geom GEOMETRY(Polygon, 4326)
);

INSERT INTO points (name, geom)
VALUES ('Example Point', ST_SetSRID(ST_MakePoint(21.012229, 52.229676), 4326));

INSERT INTO lines (name, geom)
VALUES ('Example Line', ST_SetSRID(ST_MakeLine(ST_MakePoint(21.012229, 52.229676), ST_MakePoint(20.999999, 52.000000)), 4326));

INSERT INTO polygons (name, geom)
VALUES ('Example Polygon', ST_SetSRID(ST_MakePolygon(ST_MakeLine(ARRAY[
    ST_MakePoint(21.012229, 52.229676),
    ST_MakePoint(21.012229, 52.000000),
    ST_MakePoint(20.999999, 52.000000),
    ST_MakePoint(20.999999, 52.229676),
    ST_MakePoint(21.012229, 52.229676)
])), 4326));
