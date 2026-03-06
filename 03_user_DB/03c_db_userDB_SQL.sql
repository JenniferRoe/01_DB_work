\! cls
/* USER TAB. Version 3 */

/* Table users */
DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(20) NOT NULL UNIQUE,
    
    /* userPwd: Das Passwort wird als Hash-Wert gespeichert, um die Sicherheit zu erhöhen.
         Es wird empfohlen, eine starke Hash-Funktion wie SHA-256 oder bcrypt zu verwenden, um die Passwörter zu verschlüsseln. */

    userPwd VARCHAR(64) NOT NULL,
    familyName VARCHAR(20) NOT NULL,
    firstName VARCHAR(20) NOT NULL
);

/* Struktur */
DESCRIBE boo.users;

/* Daten */
/* Einfügen von Datensätzen mit Passwortverschlüsselung */
/* SHA2() Funktion für die Passwortverschlüsselung mit 256 Bit */
/* SHA1() Funktion für die Passwortverschlüsselung mit 160 Bit */

INSERT INTO boo.users (userName, familyName, firstName, userPwd) 
VALUES ('johndoe123', 'Doe', 'John',SHA2('1234',256));

INSERT INTO boo.users (userName, familyName, firstName, userPwd) 
VALUES ('emilybrown22', 'Brown', 'Emily',SHA1('7xU#'));

INSERT INTO boo.users (userName, familyName, firstName, userPwd) 
VALUES ('michaelsmith7', 'Smith', 'Michael', SHA1('user1234'));



/* Inhalte : Ergebnistabelle */
SELECT * FROM boo.users;




