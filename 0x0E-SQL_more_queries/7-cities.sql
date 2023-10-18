-- reate the hbtn_0d_usa database and create the cities table within the hbtn_0d_usa database on your MySQL server.
-- Create a new database.
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Switch to the hbtn_0d_usa database.
-- Select the hbtn_0d_usa database for use.

USE hbtn_0d_usa;

-- Define and generate the cities table.
-- Create a new table.
CREATE TABLE IF NOT EXISTS cities (id INT UNIQUE AUTO_INCREMENT NOT NULL,
state_id INT NOT NULL,
name VARCHAR(256) NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(state_id) REFERENCES states(id));