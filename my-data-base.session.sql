CREATE TABLE users(
    us_name varchar(100) NOT NULL CHECK(us_name != ''),
    us_surname varchar(100) NOT NULL,
    height numeric(3,2) CONSTRAINT my_name_for_constraint CHECK(height BETWEEN 0 AND 5.0),
    email varchar(300) UNIQUE NOT NULL
);

INSERT INTO users (us_name, us_surname, height, email) VALUES
('bkjl', 'userovch', 4.99, 'glikj');

-- DROP TABLE users