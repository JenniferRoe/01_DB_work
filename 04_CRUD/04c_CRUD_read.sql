-- \! cls

-- SELECT * FROM boo.customers;

-- SELECT
--     name,
--     mail,
--     wohnort
-- FROM boo.customers;

-- # Begrenzen durch LIMIT
-- SELECT
--     telefon,
--     adresse,
--     name
-- FROM boo.customers
-- LIMIT 5;

-- SELECT
--     name,
--     mail,
--     wohnort
-- FROM boo.customers
-- LIMIT 2, 11;

-- # Sortieren , numerisch
-- SELECT
--     name AS Kundennamen,
--     age AS `Alter der Kunden`
-- FROM boo.customers
-- ORDER BY age DESC
-- LIMIT 7;

-- # Sortieren , alphanumerisch / kombi
-- SELECT
--     name AS Kundennamen,
--     age AS `Alter der Kunden`,
--     wohnort
-- FROM boo.customers
-- ORDER BY wohnort ASC, age DESC
-- LIMIT 4,8;

-- # Filtern mit WHERE
-- SELECT
--     name AS Kundennamen,
--     age AS `Wie jung sind Sie?`,
--     wohnort
-- FROM boo.customers
-- WHERE wohnort = 'Stuttgart'
-- ORDER BY age DESC
-- LIMIT 7;

-- SELECT
--     count((id))
-- FROM boo.customers;

