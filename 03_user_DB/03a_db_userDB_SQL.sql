\! cls
/* USER TAB. Version 1 */

/* Table users */
DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(20) NOT NULL UNIQUE,
  family_name VARCHAR(20) NOT NULL,
  first_name VARCHAR(20) NOT NULL
);  




/* Struktur */
DESCRIBE boo.users;


/* Daten */

INSERT INTO boo.users (username, family_name, first_name)
VALUES ('johndoe123', 'Doe', 'John');

INSERT INTO boo.users (username, family_name, first_name)
VALUES ('emilybrown22', 'Brown', 'Emily');

INSERT INTO boo.users (username, family_name, first_name)
VALUES ('michaelsmith7', 'Smith', 'Michael');

SELECT * FROM boo.users;

/* Inhalte : Ergebnistabelle */
SELECT * FROM boo.users;


