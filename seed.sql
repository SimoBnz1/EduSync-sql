INSERT INTO roles(lable)
VALUES('admin'),('prof'),('student');

INSERT INTO users(fierstname,lastname,email,password,role_id)
VALUES('mohamed','bnz','medbnz@gmail.com','bnzbnz',1),
('ali','asmarani','ali@gmail.com','aliali',2),
('anass','elali','anass@gmail.com','anass',3);

INSERT INTO classes(name,classroom_number)
VALUES('Développeur Web 2026',20),
('Data Science 2026',16),
('Réseau 2026',14);

INSERT INTO courses(title, description, total_hours, ens_id)
VALUES
('HTML/CSS', 'Introduction au web', 40, 2),
('JavaScript', 'Programmation JS', 60, 2),
('Base de données', 'SQL et modélisation', 50, 2);

INSERT INTO students(dateofbirth, student_number, user_id, class_id)
VALUES
('2002-05-10', 'STU001', 3, 1);