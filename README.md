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
