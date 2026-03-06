\! cls

/* USER TAB. Version 2 */

/* Table users */
DROP TABLE IF EXISTS boo.users;

/*Create user password 'password';*/

/* Struktur */
/*CREATE TABLE IF NOT EXISTS boo.users (

    id INT PRIMARY KEY AUTO_INCREMENT,

    username VARCHAR(20) NOT NULL UNIQUE,
    family_name VARCHAR(20) NOT NULL,
    first_name VARCHAR(20) NOT NULL,

    password_hash VARCHAR(255) NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_login TIMESTAMP NULL,

    login_attempts INT DEFAULT 0,
    account_locked BOOLEAN DEFAULT FALSE

); */
CREATE TABLE IF NOT EXISTS boo.users (

    id INT PRIMARY KEY AUTO_INCREMENT,

    username VARCHAR(20) NOT NULL UNIQUE,
    family_name VARCHAR(20) NOT NULL,
    first_name VARCHAR(20) NOT NULL,

    password VARCHAR(50) NOT NULL,

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

/*INSERT INTO boo.users (username, family_name, first_name, password_hash)
VALUES ('allybear0318', 'Clark', 'Alivia', SHA2('SecurePass123!',256));

INSERT INTO boo.users (username, family_name, first_name, password_hash)
VALUES ('jerryberry76', 'Taylor', 'Jeremiah', SHA2('MyPassword67',256));

INSERT INTO boo.users (username, family_name, first_name, password_hash)
VALUES ('jennipenny', 'Roesner', 'Jennifer', SHA2('YouneverknoW!',256));*/

INSERT INTO boo.users (username, family_name, first_name, password)
VALUES ('allybear0318', 'Clark', 'Alivia', 'SecurePass123!');

INSERT INTO boo.users (username, family_name, first_name, password)
VALUES ('jerryberry76', 'Taylor', 'Jeremiah', 'MyPassword67');

INSERT INTO boo.users (username, family_name, first_name, password)
VALUES ('jennipenny', 'Roesner', 'Jennifer', 'Youneverknow!');
/* Inhalte : Ergebnistabelle */
SELECT * FROM boo.users;
