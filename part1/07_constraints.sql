-- NOT NULL, UNIQUE, DEFAULT, CHECK
-- app, script, developer can directly write into DB
-- Db constants are much stronger than backend data validations but both are equally important

DROP TABLE IF EXISTS basics.accounts;
CREATE TABLE basics.accounts(
    id SERIAL PRIMARY KEY,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    is_active BOOLEAN DEFAULT true,
    age INTEGER CHECK(age>= 3),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.accounts(full_name, email, age)
    VALUES
    ('sanjib', 'sanjib.id@gmail.com', 43),
    ('rishaan', 'juman@gmail.com', 6);

SELECT * FROM basics.accounts;