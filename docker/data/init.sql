CREATE DATABASE IF NOT EXISTS QUOTEMANAGER;

USE QUOTEMANAGER;

DROP TABLE IF EXISTS QUOTE;

DROP TABLE IF EXISTS AUTHOR;

CREATE TABLE AUTHOR (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    AUTHOR_NAME VARCHAR(250) NOT NULL
);

CREATE TABLE QUOTE (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    QUOTE_TEXT VARCHAR(10000) CHARACTER SET utf8 NOT NULL,
    AUTHOR_ID INT NOT NULL,
    FOREIGN KEY (AUTHOR_ID)
        REFERENCES AUTHOR (ID)
        ON DELETE CASCADE
);

COMMIT;

INSERT INTO AUTHOR
    (ID, AUTHOR_NAME)
VALUES
    (1, 'Duke Nukem')
;

INSERT INTO QUOTE
    (AUTHOR_ID, QUOTE_TEXT)
VALUES
    (1, 'Your face, your ass - what''s the difference?'),
    (1, 'Now you see me, now you''re dead.'),
    (1, 'Your ass is grass, and I''ve got the weed whacker.'),
    (1, 'You''re an inspiration for birth control.'),
    (1, 'My boot, your face; the perfect couple.'),
    (1, 'I''m an equal opportunity ass kicker.'),
    (1, 'Little pig, little pig let me in. Or I''ll huff and I''ll puff and I''ll kick your ass in!'),
    (1, 'I''ve got balls of steel.'),
    (1, 'Hail to the king, baby!'),
    (1, 'It''s time to kick ass and chew bubble gum...and I''m all outta gum.')
;

COMMIT;