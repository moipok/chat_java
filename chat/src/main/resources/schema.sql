CREATE TABLE users (
                       id SERIAL PRIMARY KEY NOT NULL,
                       login VARCHAR UNIQUE NOT NULL,
                       password VARCHAR NOT NULL
);

CREATE TABLE massage (
                         id SERIAL PRIMARY KEY NOT NULL,
                         user_id INT NOT NULL,
                         text TEXT,
                         date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                         CONSTRAINT fk_users3 FOREIGN KEY (user_id) REFERENCES users(id)
);