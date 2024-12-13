--  Étape 1 : Premiers pas sur papier !

-- CREATE TABLE edusign (
-- id INTEGER PRIMARY KEY,
-- prenom TEXT NOT NULL,
-- email TEXT NOT NULL,
-- creation DATETIME NOT NULL
-- );

-- INSERT INTO edusign (prenom, email, creation,users_ID)
-- SELECT 'Cleopatre', 'cleopatre@adatechschool.com','2024-05-08 09:30:00',1
-- UNION SELECT 'Jeanne', 'jeanne@adatechschool.com','2024-05-08 09:30:00',2
-- UNION SELECT 'Marie', 'marie@adatechschool.com','2024-05-08 09:30:00',3
-- UNION SELECT 'Rosa','rosa@adatechschool.com','2024-05-08 09:30:00',4
-- UNION SELECT 'Simone','simone@adatechschool.com','2024-05-08 09:30:00',5
-- UNION SELECT 'Frida', 'frida@adatechschool.com','2024-05-08 09:30:00',6;

-- DELETE FROM edusign
-- WHERE id = 9;




-- SELECT *
-- FROM edusign;



-- Étape 2 : Structurons la base de données

-- CREATE TABLE users (
-- id INTEGER PRIMARY KEY,
-- firstname TEXT NOT NULL,
-- lastname TEXT NOT NULL,
-- email TEXT NOT NULL
-- );


-- INSERT INTO users (firstname, lastname, email) VALUES ('Cleopatre', 'VII Théa Philopator', 'cleopatre@test.fr');
-- INSERT INTO users (firstname, lastname, email) VALUES ('Jeanne', 'D Arc', 'jeanne@test.fr');
-- INSERT INTO users (firstname, lastname, email) VALUES ('Marie', 'Curie', 'marie@test.fr');
-- INSERT INTO users (firstname, lastname, email) VALUES ('Rosa', 'Parks', 'rosa@test.fr');
-- INSERT INTO users (firstname, lastname, email) VALUES ('Simone', 'de Beauvoir', 'simone@test.fr');
-- INSERT INTO users (firstname, lastname, email) VALUES ('Frida', 'Kahlo', 'frida@test.fr');
-- INSERT INTO users (firstname, lastname, email) VALUES ('Simonce', 'Veil','simone@test.fr');

-- DELETE FROM users
-- WHERE id = 8;


-- Étape 3 : Requêtons

    -- Niveau facile

-- Sélectionner toutes les lignes de la table users
-- SELECT *
-- FROM users;

-- Sélectionner uniquement la ligne où le prénom est Ada dans la table users

-- SELECT *
-- FROM users
-- WHERE id = 1;

-- Sélectionner les lignes dont la première lettre du prénom est un B dans la table users

-- SELECT *
-- FROM users
-- WHERE firstname LIKE 'S%';

-- Compter le nombre de ligne qu’il y a dans la table users

-- SELECT COUNT(*)
-- FROM users;

-- Compter le nombre de ligne dont la première lettre du prénom est un B dans la table users

-- SELECT COUNT(*)
-- FROM users
-- WHERE firstname LIKE 'S%';

-- Afficher uniquement la colonne contenant le prénom de la table users

-- SELECT firstname
-- FROM users;


    -- Niveau moyen

-- Insérer une ligne dans la table edusign qui correspond à la user Ada avec comme date de signature le 2024-05-30 09:30:00

-- ALTER TABLE edusign
-- ADD lastname TEXT NOT NULL DEFAULT 'Inconnu';

-- DELETE FROM edusign
-- WHERE id = 9;

-- DELETE FROM edusign
-- WHERE id = 8;



-- Insérer une ligne dans la table edusign qui correspond à la user Bella avec comme date de signature le 2024-05-30 09:30:00

-- INSERT INTO edusign (prenom, email, creation) VALUES ('Jeanne', 'D Arc','jeanne@test.fr');

--  DELETE FROM edusign
-- WHERE id = 8;

-- INSERT INTO edusign (prenom, email, creation) VALUES ('Jeanne','jeanne@test.fr','2024-05-08 09:30:00');

-- UPDATE edusign
-- SET email = 'jeanne@adatechschool.com'
-- WHERE prenom = 'Jeanne';



-- Insérer toutes les lignes de la table users dans la table edusign avec pour date de signature le 2024-09-01 09:30:00


-- SELECT *
-- FROM users;

-- ALTER TABLE edusign
-- ADD COLUMN users_ID INTEGER;

-- ALTER TABLE edusign
-- ADD CONSTRAINT fk_users
-- FOREIGN KEY (users_ID)
-- REFERENCES users(id);



SELECT edusign.prenom, users.lastname, edusign.email, edusign.creation
FROM edusign
INNER JOIN users ON edusign.users_ID = users.id;


SELECT *
FROM edusign;






