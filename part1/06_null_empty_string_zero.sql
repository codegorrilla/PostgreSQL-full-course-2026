-- null => unknown/ missing value
-- empty string => known string val but it contains no charatcers
-- zero => actual numeric value of 0

DROP TABLE IF EXISTS basics.value_examples;

CREATE TABLE basics.value_examples(
    id SERIAL PRIMARY KEY,
    nickname TEXT,
    bio TEXT,
    score INTEGER
);


INSERT INTO basics.value_examples(nickname, bio, score)
VALUES  
    -- nick name is null
    (null, 'learning postgres', 10),
    ('', 'empty nick name', 20),
    ('sanjib', '', 0),
    ('john', null, null);

--SELECT * FROM basics.value_examples;

--SELECT * FROM basics.value_examples WHERE nickname IS NULL;

-- write one query where nickname is empty string
-- SELECT * FROM basics.value_examples WHERE nickname = '';
-- SELECT * FROM basics.value_examples WHERE score = 0;
-- SELECT * FROM basics.value_examples WHERE nickname IS NOT NULL;
SELECT * FROM basics.value_examples WHERE score != 0;