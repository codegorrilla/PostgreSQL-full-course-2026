CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS post_tags;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS tags;
DROP TABLE IF EXISTS users;

CREATE TABLE users(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL
);

CREATE TABLE posts(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id),
    title TEXT NOT NULL,

    status TEXT NOT NULL DEFAULT 'draft'
        CHECK (status IN ('draft', 'published') ),

    views INTEGER NOT NULL DEFAULT 0 CHECK (views >= 0)
);

CREATE TABLE comments(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    post_id UUID NOT NULL REFERENCES posts(id),
    body TEXT NOT NULL
);

CREATE TABLE tags(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE post_tags(
    post_id UUID NOT NULL REFERENCES posts(id),
    tag_id UUID NOT NULL REFERENCES tags(id),
    PRIMARY KEY (post_id, tag_id) 
);

INSERT INTO users(name) VALUES
('Baishali'),
('Malina');

INSERT INTO posts(user_id, title, status, views)
SELECT id, 'PostgreSQL Joins explained', 'published', 100
FROM users
WHERE name = 'Baishali';

INSERT INTO posts(user_id, title, status, views)
SELECT id, 'Backend APIs with PostgreSQL', 'published', 180
FROM users
WHERE name = 'Malina';

INSERT INTO posts(user_id, title, status, views)
SELECT id, 'Indexes for beginners', 'published', 40
FROM users
WHERE name = 'Baishali';

INSERT INTO comments(post_id, body)
SELECT id, 'Very clear explanation'
FROM posts
WHERE title = 'PostgreSQL Joins explained';

INSERT INTO comments(post_id, body)
SELECT id, 'Please add more examples'
FROM posts
WHERE title = 'Backend APIs with PostgreSQL';

INSERT INTO tags(name) VALUES
('sql'),
('backend');

INSERT INTO post_tags(post_id, tag_id)
SELECT p.id, t.id
FROM posts p, tags t
WHERE p.title = 'PostgreSQL Joins explained'
AND t.name = 'sql';

INSERT INTO post_tags(post_id, tag_id)
SELECT p.id, t.id
FROM posts p, tags t
WHERE p.title = 'Indexes for beginners'
AND t.name = 'sql';

INSERT INTO post_tags(post_id, tag_id)
SELECT p.id, t.id
FROM posts p, tags t
WHERE p.title = 'Backend APIs with PostgreSQL'
AND t.name = 'backend';

SELECT 'Part 3 reduced data base reset and sample data inserted successfully' AS message;