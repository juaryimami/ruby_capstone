CREATE TABLE item (
    id INTEGER PRIMARY KEY,
    source_id INTEGER,
    label_id INTEGER REFERENCES label(id),
    genre_id INTEGER,
    author_id INTEGER,
    published_date INTEGER,
    archived BOOLEAN,
);

CREATE TABLE book (
    id INTEGER PRIMARY KEY REFERENCES item(id),
    publisher VARCHAR,
    cover_state VARCHAR,
);

CREATE TABLE labels (
    id INTEGER PRIMARY,
    title VARCHAR,
    color VARCHAR,
)