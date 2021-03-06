CREATE TABLE email_queue (
    id INTEGER PRIMARY KEY ASC AUTOINCREMENT,
    failures INTEGER NOT NULL,

    sender VARCHAR(255) NOT NULL,
    recipient VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    data TEXT NOT NULL,

    created_at DATETIME DEFAULT (strftime('%s','now')) NOT NULL,
    modified_at DATETIME DEFAULT (strftime('%s','now')) NOT NULL
);
