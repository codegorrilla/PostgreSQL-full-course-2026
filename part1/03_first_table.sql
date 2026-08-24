-- this is just for teaching pupose
DROP TABLE IF EXISTS basics.students;

CREATE TABLE basics.students(
    -- create an auto incrementing integar
    -- 1, 2,3, 4, 5 and so on...
    -- primary key simply means that this col uniquely identifies each row
    id SERIAL PRIMARY KEY,

    -- text => string data
    -- not null means this col is required
    -- postgres is going to reject if this name value is not present
    name TEXT NOT NULL,

    -- unique means => no 2 student going to have same mail id
    email TEXT NOT NULL UNIQUE,

    age INTEGER CHECK (age >= 18),

    -- TIMESTAMP => stores date and time format
    -- default means if u dont give any value it will take the current date and time
    create_at TIMESTAMP DEFAULT NOW()
)