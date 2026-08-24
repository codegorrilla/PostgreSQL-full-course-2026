-- db => schema => table => rows

-- if not exists is going to prevent an error if the schema is already created
CREATE SCHEMA IF NOT EXISTS basics;

-- to generate random UUID
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- query, I can write this from psql cli as well, this is for learning purpose
SELECT schema_name
FROM information_schema.schemata
ORDER BY schema_name;

