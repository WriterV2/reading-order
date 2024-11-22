CREATE TABLE IF NOT EXISTS user
(
    id    INTEGER PRIMARY KEY NOT NULL,
    email TEXT                NOT NULL UNIQUE,
    pw    TEXT                NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS bookorder
(
    id         INTEGER PRIMARY KEY NOT NULL,
    bookid     TEXT,
    nextid     TEXT,
    uid        INTEGER             NOT NULL,
    finished   INTEGER             NOT NULL DEFAULT 0,
    FOREIGN KEY (uid) REFERENCES user(id)
);

CREATE TABLE IF NOT EXISTS link 
(
    id     INTEGER PRIMARY KEY NOT NULL,
    bookid TEXT,
    url    TEXT                NOT NULL
);
