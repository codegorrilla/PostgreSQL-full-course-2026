-- aliases will make your queries shorter and easier to read
-- posts.title
-- instead I want to write like this p.title
-- users.name , instead you want to do u.name

SELECT 
p.title AS post_title,
p.status AS post_status,
p.views,
u.name AS author_name,
c.body AS comments
FROM posts AS p
INNER JOIN users AS u
ON p.user_id = u.id
LEFT JOIN comments AS c
ON p.id = c.post_id
ORDER BY p.views ASC;
