CREATE DATABASE skypro;
\c skypro
CREATE TABLE employee(
                         id BIGSERIAL NOT NULL PRIMARY KEY,
                         first_name VARCHAR(50) NOT NULL,
                         last_name VARCHAR(50) NOT NULL,
                         gender VARCHAR(6) NOT NULL,
                         age INT NOT NULL
);
INSERT INTO employee (
    id, first_name, last_name, gender, age)
VALUES (1, 'Ivan', 'Ivanov', 'male', 18 );
INSERT INTO employee (
    id, first_name, last_name, gender, age)
VALUES (2, 'Sergey', 'Vasnetsov', 'male',57);
INSERT INTO employee (
    id, first_name, last_name, gender, age)
VALUES (3, 'Maria', 'Mironova', 'female', 22);
SELECT * FROM employee;
UPDATE employee SET first_name = 'Semen', last_name = 'Semenov', gender = 'male',
                    age = 15    WHERE id = 1;
SELECT * FROM employee;
DELETE FROM employee WHERE id = 1;
SELECT * FROM employee;
