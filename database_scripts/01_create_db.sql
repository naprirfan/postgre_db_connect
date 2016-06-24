-- Create Database

DROP DATABASE IF EXISTS SomeDb;
CREATE DATABASE SomeDb;
DROP USER IF EXISTS myusername;
CREATE USER myusername;
ALTER USER myusername WITH PASSWORD 'veryCoolPassword12';
GRANT ALL PRIVILEGES on DATABASE SomeDb to myusername;