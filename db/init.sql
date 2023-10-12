CREATE TABLE book (
id SERIAL PRIMARY KEY,
name varchar(255),
author varchar(255),
price float,
secret_field varchar(255)
);

CREATE TABLE category (
id SERIAL PRIMARY KEY,
name varchar(255)
);

CREATE TABLE category_book (
book_id int,
category_id int,
PRIMARY KEY (book_id, category_id),
CONSTRAINT fk_book_id FOREIGN KEY (book_id) REFERENCES book(id),
CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES category(id)
);

CREATE TABLE _user (
username varchar(255) PRIMARY KEY,
password varchar(255),
full_name varchar(255),
email varchar(255)
);

INSERT INTO book (name, author, price) VALUES 
('Tinh hà xán lạn', 'HDN', 1000),
('Cầu vòng sau mưa', 'HDN', 999),
('Big City Boy', 'HDN', 1000),
('Ánh sáng phía cuối con đường', 'HDN', 999);

INSERT INTO category (name) VALUES 
('Cinematic'),
('Drama');

INSERT INTO category_book (book_id, category_id) VALUES 
(1, 2),
(2, 2),
(3, 1),
(4, 1),
(4, 2);
