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
('1999-05-10', 3, 3, 1);


DELETE FROM students 

SELECT * FROM students;


INSERT INTO enrollments(student_id, cours_id, enrollement, status)
VALUES
(1, 1, '2026-04-10', 'Actif'),
(1, 2, '2026-04-11', 'Actif'),
(2, 1, '2026-04-12', 'Terminé');

/*Afficher tous les utilisateurs */
SELECT * FROM users ;
 /*Afficher le prénom, nom et email des utilisateurs avec son role */
SELECT * FROM users us
INNER JOIN roles rl ON us.role_id=rl.id

/*Afficher les étudiants avec les informations de leurs utilisateurs*/ 

SELECT st.dateofbirth,st.student_number,st.class_id,us.fierstname,us.lastname,us.email,st.user_id,us.id
FROM students st 
INNER JOIN users us ON st.user_id =us.id