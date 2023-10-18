-- Display all cities found in the hbtn_0d_usa database.
-- List all entries from a specific column within a database.
SELECT cities.id, cities.name, states.name FROM cities LEFT JOIN states ON states.id = cities.state_id ORDER BY cities.id;