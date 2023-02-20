-- Confirm all tables are there -> under tablename --

SELECT * FROM pg_catalog.pg_tables
WHERE schemaname != 'pg_catalog' AND 
    schemaname != 'information_schema';

-- Confirm data is in each table --

SELECT * FROM campaign;

SELECT * FROM contacts;

SELECT * FROM category;

SELECT * FROM subcategory;