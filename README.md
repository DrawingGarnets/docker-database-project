Byte Bistro Recipe Database
IS 202 – Deliverable 3 | Group 1
Byte Bistro stores recipes, ingredients, and cooking instructions. Our goal is to help restaurant owners and employees keep recipe information organized.
GitHub Repository: https://github.com/DrawingGarnets/docker-database-project
Project Files
docker-compose.yml – Sets up the PostgreSQL database using Docker.
init-db/CREATE_TABLES.sql – Contains the SQL commands for creating the database tables.
init-db/DATA.sql – Contains sample recipes and other data.
README.md – Explains how to start, stop, and connect to the database.

.
The SQL files define six tables: users, categories, recipes, ingredients, recipe_ingredients, and recipe_steps.
How to Start the Database
Open Docker Desktop.
Open a terminal in the project folder.
Run the following command:
docker compose up -d
Check that the container is running:
docker compose ps
How to Connect
Our Docker Compose file uses PostgreSQL 15.
Database Information:
Database Name: projectdb
Username: student
Password: student123
Container Name: my_project_db
To connect to PostgreSQL, run:
docker compose exec db psql -U student -d projectdb

How to Check the Tables
After connecting to PostgreSQL, run:
\dt
This command lists the tables in the database.
To view example data, run

SELECT * FROM recipes;
SELECT * FROM ingredients;:
These queries will display records once the database tables and sample data have been created successfully.
How to Stop the Database
To stop the Docker container, run:
docker compose down
