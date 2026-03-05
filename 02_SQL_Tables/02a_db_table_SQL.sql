/* ------  Strukturen ----- */

/* Kommentar 1 */
#  Kommentar 2
-- Kommentar 3

/* Datenbanken auf Server anzeigen */
SHOW DATABASES;

/* DB boo löschen, falls vorhanden*/
DROP

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
USE boo;

/* Tabelle anlegen */
CREATE TABLE IF NOT EXISTS test 
(
   
    name VARCHAR(50) ,
    age INT
);

/* Alle Tabellen in der DB anzeigen */
SHOW TABLES;

/* Struktur der Tabelle anzeigen */
DISCRIBE test;  

/* ----- Daten ------- */
    --INSTERT INTO test (name, age) VALUES ('Max', 30);
    --INSERT INTO test (name, age) VALUES ('Lisa', 25); 
    --INSERT INTO test VALUES ();  -- Fehlermeldung, da beide Spalten einen Wert benötigen    


/* ---- Inhalte der Tabelle anzeigen ---- */
    -- SELECT * FROM test;
