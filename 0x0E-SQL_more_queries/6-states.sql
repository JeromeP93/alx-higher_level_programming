-- Create the hbtn_0d_usa database and the states table within the hbtn_0d_usa database on your MySQL server.
-- Establish a new database.
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Switch to the hbtn_0d_usa database.
-- Set the current database to hbtn_0d_usa.
USE hbtn_0d_usa;

-- Create the states table.
-- Generate a new table.
CREATE TABLE IF NOT EXISTS states (id INT UNIQUE NOT NULL AUTO_INCREMENT, name VARCHAR(256) NOT NULL, PRIMARY KEY(id));