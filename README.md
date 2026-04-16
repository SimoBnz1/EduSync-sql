# EduSync-sql   
#  EduSync - Système de gestion scolaire

##  Présentation du projet

EduSync est une plateforme de gestion scolaire permettant de centraliser et organiser les données d’un établissement de formation.

Le système remplace les méthodes manuelles (Excel et papier) par une base de données relationnelle structurée, sécurisée et normalisée.

---

## Objectif

Concevoir une base de données relationnelle normalisée permettant de gérer :

- Les utilisateurs et leurs rôles
- Les étudiants et leurs classes
- Les cours et les enseignants
- Les inscriptions aux cours


## Structure de la base de données

La base de données est composée des tables suivantes :

### 1. roles
Contient les types d’utilisateurs (Admin, Prof, Student).

### 2. users
Contient les informations des utilisateurs (nom, prénom, email, mot de passe).

Chaque utilisateur possède un seul rôle.


### 3. classes
Contient les classes de formation (ex: Développeur Web 2026).

Une classe peut contenir plusieurs étudiants.

### 4. courses
Contient les cours disponibles.

Chaque cours est assigné à un professeur (user avec rôle Prof).


### 5. students
Contient les informations spécifiques aux étudiants.

Chaque étudiant :
- est lié à un utilisateur (relation 1:1)
- appartient à une classe (relation 1:N)

### 6. enrollments
Table de liaison entre students et courses.

Elle gère la relation plusieurs-à-plusieurs (N:N).

Chaque inscription contient :
- student_id
- course_id
- date d’inscription
- statut (Actif / Terminé)

## Relations entre les tables

- roles → users (1 and only 1:1 or N)
- users → students (1 and only 1:1 or N)
- classes → students (1:N)
- users (professeurs) → courses (1 and only 1:1 or N)
- students ↔ courses (N:N via enrollments)

## Contraintes importantes

- email est UNIQUE dans users
- student_number est UNIQUE dans students
- relation 1:1 entre users et students
- clé composite UNIQUE(student_id, course_id) dans enrollments
- intégrité référentielle assurée par les FOREIGN KEY

## Jeux de données (seed)

Le fichier seed.sql contient des données de test permettant de remplir toutes les tables et de vérifier les relations entre elles.

## Technologies utilisées

- MySQL
- SQL (DDL & DML) -> (DDL=Data Definition Language),(DML=Data Manipulation Language)
- Modélisation ERD (Lucidchart)


## Méthodologie

Le projet a été réalisé en suivant une approche :

- Analyse des user stories
- Modélisation ERD
- Création de la base de données
- Implémentation des tables et relations
- Insertion des données de test
- Tests et validation
