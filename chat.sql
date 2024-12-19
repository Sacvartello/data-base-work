CREATE TABLE chat(
    id serial PRIMARY KEY,
    chat_name varchar(500) NOT NULL,
    owner_id int REFERENCES users(id) NOT NULL,
    created timestamp DEFAULT current_date
);
INSERT INTO chat (chat_name, owner_id) VALUES
('Chat1', 1);

CREATE TABLE users_to_chat(
    us_id int REFERENCES users(id),
    chat_id int REFERENCES chat(id),
    PRIMARY KEY(chat_id, us_id)
);

INSERT INTO users_to_chat (us_id, chat_id) VALUES
(3, 1), (4, 1);