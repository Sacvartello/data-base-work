-- CREATE TABLE users(
--     us_name varchar(100) NOT NULL CHECK(us_name != ''),
--     us_surname varchar(100) NOT NULL,
--     height numeric(3,2) CONSTRAINT my_name_for_constraint CHECK(height BETWEEN 0 AND 5.0),
--     email varchar(300) UNIQUE NOT NULL
-- );

-- INSERT INTO users (us_name, us_surname, height, email) VALUES
-- ('bkjl', 'userovch', 4.99, 'glikj');

-- DROP TABLE users

-- CREATE TABLE messages(
--     id serial NOT NULL UNIQUE,
--     author varchar(500) NOT NULL CHECK(author != ''),
--     message varchar(5000) NOT NULL,
--     is_seen bool DEFAULT FALSE,
--     created timestamp DEFAULT current_date
-- );

-- INSERT INTO messages (author, message) VALUES
-- ('Ya','Hi!'),('Ti','Sho Hi?')

-- DROP TABLE messages

CREATE TABLE cars(
    id serial NOT NULL UNIQUE,
    brand varchar(256) NOT NULL CHECK(brand != ''),
    made_year date,
    volume int CHECK(volume >0 AND volume< 1500),
    color varchar(100)
);


-- DROP TABLE messages