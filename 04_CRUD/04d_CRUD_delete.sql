\! cls
/* D - DELETE */


-- SELECT * FROM boo.customers LIMIT 5;

# Einzelne Zeilen
-- DELETE FROM boo.customers WHERE id = 3; -- Filter
-- SELECT * FROM boo.customers LIMIT 5;

# Alle Zeilen
-- DELETE FROM boo.customers; -- ACHTUNG Daten sind weg!!
-- SELECT * FROM boo.customers;
-- DESCRIBE boo.customers; -- Tabelle ist noch da, aber leer

-- Optimiertes Löschen aller Zeilen
-- TRUNCATE TABLE boo.customers; -- Alle Zeilen löschen, aber Tabelle bleibt erhalten
-- SELECT * FROM boo.customers; -- Tabelle ist noch da, aber leer  


-- DROP TABLE boo.customers; -- Tabelle  und Daten sind weg
-- DELETE FROM boo.customers; -- Alle Zeilen löschen, aber Tabelle bleibt erhalten  
