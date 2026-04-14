CREATE DATABASE edusync ;
USE edusync;
CREATE TABLE roles (
    id int AUTO_INCREMENT PRIMARY KEY ,
    lable TEXT
);
CREATE TABLE users(
    id int AUTO_INCREMENT PRIMARY KEY ,
    fierstname VARCHAR(20) ,
    lastname VARCHAR(20),
    email VARCHAR(20) UNIQUE ,
    password VARCHAR(20) ,
    role_id int,
    Foreign Key (role_id) REFERENCES roles(id)
);

CREATE TABLE classes(
    id int AUTO_INCREMENT PRIMARY KEY ,
    name VARCHAR(20) ,
    classroom_number int
);

CREATE TABLE courses(
    id int AUTO_INCREMENT PRIMARY KEY ,
    title VARCHAR(20) ,
    description TEXT,
    total_hours int ,
    ens_id int ,
    Foreign Key (ens_id) REFERENCES users(id)
);
CREATE TABLE students(
    id int AUTO_INCREMENT PRIMARY KEY ,
    dateofbirth date ,
    student_number int UNIQUE,
    user_id int,
    Foreign Key (user_id) REFERENCES users(id),
    class_id int,
    Foreign Key (class_id) REFERENCES classes(id)
   
);
CREATE TABLE enrollments(
    id int AUTO_INCREMENT PRIMARY KEY ,
    student_id int ,
    cours_id int,
    status VARCHAR(20) ,
    enrollement date
    
);