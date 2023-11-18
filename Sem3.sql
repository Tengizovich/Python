CREATE database seminar3;
USE seminar3;
CREATE TABLE staff
	(id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
     first_name VARCHAR(30) NOT NULL,
     last_name VARCHAR(30) NOT NULL,
     post VARCHAR(30) NOT NULL,
     seniority SMALLINT NOT NULL,
     salary INT NOT NULL,
     age SMALLINT NOT NULL
	);
INSERT into staff(first_name, last_name, post, seniority, salary, age)
VALUE ('Вася', 'Петров', 'Начальник', '40', 100000, 60),
('Петр', 'Власов', 'Начальник', '8', 70000, 30),
('Катя', 'Катина', 'Инженер', '2', 70000, 25),
('Саша', 'Сасин', 'Инженер', '12', 50000, 35),
('Иван', 'Иванов', 'Рабочий', '40', 30000, 59),
('Петр', 'Петров', 'Рабочий', '20', 25000, 40),
('Сидр', 'Сидоров', 'Рабочий', '10', 20000, 35),
('Антон', 'Антонов', 'Рабочий', '8', 19000, 28),
('Юрий', 'Юрков', 'Рабочий', '5', 15000, 25),
('Максим', 'Максимов', 'Рабочий', '2', 11000, 22),
('Юрий', 'Галкин', 'Рабочий', '3', 12000, 24),
('Людмила', 'Маркина', 'Уборщик', '10', 10000, 49);
SELECT * FROM staff ORDER BY age;
SELECT * FROM staff ORDER BY first_name;
SELECT first_name, last_name, age FROM staff ORDER BY first_name DESC;
SELECT first_name,  age FROM staff ORDER BY first_name DESC, age DESC;-- DESC сортирует по убыванию
SELECT DISTINCT first_name FROM staff;
SELECT * FROM staff LIMIT 2;
SELECT * FROM staff LIMIT 4, 3;
SELECT * FROM staff ORDER BY id DESC LIMIT 2, 3;
SELECT COUNT(*) FROM staff WHERE post = 'Рабочий';
SELECT SUM(salary) FROM staff WHERE post = 'Начальник';
SELECT AVG(age) FROM staff WHERE salary > 30000;
SELECT MAX(salary)  AS rich, MIN(salary)  AS poor  FROM staff;




