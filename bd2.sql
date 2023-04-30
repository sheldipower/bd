\c skypro
INSERT INTO employee (
    id, first_name, last_name, gender, age)
VALUES (4, 'Anastasia', 'Petrova', 'female', 48 );
INSERT INTO employee (
    id, first_name, last_name, gender, age)
VALUES (5, 'Oleg', 'Krasin', 'male',55);
SELECT first_name AS Имя, last_name AS Фамилия FROM employee;
SELECT * FROM employee WHERE age < 30 OR age >50;
SELECT * FROM employee WHERE age BETWEEN  30 AND  50;
SELECT last_name
FROM employee
ORDER BY last_name DESC;
SELECT *
FROM employee
WHERE first_name LIKE '_____%';
UPDATE employee SET first_name = 'Sergey' WHERE id = 1;
UPDATE employee SET first_name = 'Oleg' WHERE id = 4;
UPDATE employee SET last_name = 'Petrov' WHERE id = 4;
UPDATE employee SET gender = 'male' WHERE id = 1;
SELECT first_name AS Имя, SUM(age) AS сумарный_возраст FROM employee GROUP BY Имя;
SELECT first_name, age FROM employee WHERE age = (SELECT MIN(age) FROM employee);
SELECT first_name, age FROM employee WHERE age IN (SELECT MAX (age) FROM employee GROUP BY first_name HAVING COUNT (first_name) >1)ORDER BY 2;




