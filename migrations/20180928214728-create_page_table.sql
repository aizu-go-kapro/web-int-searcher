
-- +migrate Up

CREATE TABLE Page (
    ID INT AUTO_INCREMENT NOT NULL,
    URL VARCHAR(256) NOT NULL,
    CONTENT TEXT DEFAULT NULL,
    FULLTEXT INDEX ngram_idx(CONTENT) WITH PARSER ngram,
    PRIMARY KEY (ID)
) Engine=InnoDB CHARACTER SET utf8mb4;
-- +migrate Down

DROP TABLE Page;
