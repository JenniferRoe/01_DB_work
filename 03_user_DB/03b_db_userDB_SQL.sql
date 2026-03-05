\! cls

/* USER TAB. Version 2 */

/* Table users */
DROP TABLE IF EXISTS boo.users;

/*Create user password 'password';*/

/* Struktur */
CREATE TABLE IF NOT EXISTS boo.users (

    id INT PRIMARY KEY AUTO_INCREMENT,

    username VARCHAR(20) NOT NULL UNIQUE,
    family_name VARCHAR(20) NOT NULL,
    first_name VARCHAR(20) NOT NULL,

    password_hash VARCHAR(255) NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_login TIMESTAMP NULL,

    login_attempts INT DEFAULT 0,
    account_locked BOOLEAN DEFAULT FALSE

);

/*Extra Features:Speere! */


UPDATE boo.users
SET account_locked = TRUE
WHERE login_attempts >= 3;

/* Struktur */
DESCRIBE boo.users;

/* Daten */

INSERT INTO boo.users (username, family_name, first_name, password_hash)
VALUES ('johndoe123', 'Doe', 'John', SHA2('SecurePass123!',256));

INSERT INTO boo.users (username, family_name, first_name, password_hash)
VALUES ('emilybrown22', 'Brown', 'Emily', SHA2('MyUniquePass456$',256));

INSERT INTO boo.users (username, family_name, first_name, password_hash)
VALUES ('michaelsmith7', 'Smith', 'Michael', SHA2('UltraSafe789#',256));

/* Inhalte : Ergebnistabelle */
SELECT * FROM boo.users;
