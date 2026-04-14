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
