---

# SQL Movie Database Project

## Overview

This project involves the creation of a movie database using SQL. The database stores information about movies, including titles, release years, durations, genres, production companies, and the people involved in making these movies (actors, directors, producers). The project demonstrates how to manage and query large amounts of data efficiently using SQL.

## Team Members
- Sameena Mujawar
- Laylaa Tariq
- Sai Srivatsa Thangallapelly

## Project Contents

### 1. Introduction
The goal of this project is to create a comprehensive movie database and demonstrate various SQL functionalities such as creating tables, inserting data, using triggers, views, and performing complex queries.

### 2. Database Structure
The database consists of the following tables:
- `Movie`: Stores information about movies.
- `Genre`: Stores information about genres.
- `Names`: Stores names of actors, directors, and producers.
- `Directory_Mapping`: Maps directors to movies.
- `Role_Mapping`: Maps actors to movies.
- `Rating`: Stores ratings of movies.

All the tables are interrelated using foreign keys to ensure data integrity and consistency.

### 3. ER Diagram
The ER Diagram provides a visual representation of the database structure, showcasing the relationships between the different tables.
<img width="999" alt="image" src="https://github.com/user-attachments/assets/752115e4-2dfb-4a46-a5af-84b83f466282">

### 4. SQL Queries
The project includes various SQL queries to interact with the database:
- **Views**: Virtual tables created by querying one or more tables.
- **Procedures**: Similar to functions but can perform multiple tasks and do not return values.
- **Functions**: Reusable code blocks that perform specific tasks.
- **Triggers**: Special types of stored procedures automatically executed in response to certain database events.
- **Query Statements**: Used to retrieve and manipulate data.

### 5. Conclusion
The project provides a framework for building a database of movies and associated information. It demonstrates the use of views to extract meaningful insights from the data, such as identifying the actor who has acted in the highest number of movies.

## File Descriptions

- **ER.sql**: Contains the SQL commands to create and manage the database structure.
- **FINAL SQL GROUP PROJECT FILE.sql**: The finalized SQL script used for the project.
- **SQL Movie Project.pdf**: PDF version of the presentation slides.


## How to Run the Project

### 1. Set up the Database
1. Install MySQL on your local machine.
2. Create a new database named `dbmovies`.
3. Use the script provided in `FINAL SQL GROUP PROJECT FILE.sql` to create and populate the necessary tables.

```sql
CREATE DATABASE dbmovies;
USE dbmovies;
```

### 2. Create the Tables
Execute the SQL commands in `ER.sql` to create the tables and set up the database structure.

```sql
CREATE TABLE Movie (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255),
    release_year INT,
    duration INT,
    production_company VARCHAR(255)
);

CREATE TABLE Genre (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(50)
);

CREATE TABLE Names (
    name_id INT PRIMARY KEY,
    name VARCHAR(255),
    role VARCHAR(50)
);

CREATE TABLE Directory_Mapping (
    dir_map_id INT PRIMARY KEY,
    movie_id INT,
    director_id INT,
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
    FOREIGN KEY (director_id) REFERENCES Names(name_id)
);

CREATE TABLE Role_Mapping (
    role_map_id INT PRIMARY KEY,
    movie_id INT,
    actor_id INT,
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
    FOREIGN KEY (actor_id) REFERENCES Names(name_id)
);

CREATE TABLE Rating (
    rating_id INT PRIMARY KEY,
    movie_id INT,
    rating FLOAT,
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id)
);
```

### 3. Insert Data
Insert data into the tables as demonstrated in the SQL script files.

```sql
INSERT INTO Movie (movie_id, title, release_year, duration, production_company) VALUES
(1, 'The Shawshank Redemption', 1994, 142, 'Castle Rock Entertainment'),
(2, 'The Godfather', 1972, 175, 'Paramount Pictures');

INSERT INTO Genre (genre_id, genre_name) VALUES
(1, 'Drama'),
(2, 'Crime');

INSERT INTO Names (name_id, name, role) VALUES
(1, 'Frank Darabont', 'Director'),
(2, 'Francis Ford Coppola', 'Director'),
(3, 'Tim Robbins', 'Actor'),
(4, 'Morgan Freeman', 'Actor'),
(5, 'Marlon Brando', 'Actor'),
(6, 'Al Pacino', 'Actor');

INSERT INTO Directory_Mapping (dir_map_id, movie_id, director_id) VALUES
(1, 1, 1),
(2, 2, 2);

INSERT INTO Role_Mapping (role_map_id, movie_id, actor_id) VALUES
(1, 1, 3),
(2, 1, 4),
(3, 2, 5),
(4, 2, 6);

INSERT INTO Rating (rating_id, movie_id, rating) VALUES
(1, 1, 9.3),
(2, 2, 9.2);
```

### 4. Create Views, Procedures, Functions, and Triggers
Here is a detailed explanation of the SQL commands used to create views, procedures, functions, and triggers for the SQL Movie Database Project:

### Views
Views in SQL are virtual tables that are created by querying one or more tables. They are used to simplify complex queries, enhance security by limiting access to specific data, and provide a layer of abstraction.

#### Example View
```sql
CREATE VIEW movieview AS
SELECT Names.name AS actor_name, COUNT(Role_Mapping.movie_id) AS movie_count
FROM Names
JOIN Role_Mapping ON Names.name_id = Role_Mapping.actor_id
WHERE Names.role = 'Actor'
GROUP BY Names.name;
```

#### Explanation
- **Purpose**: This view lists the names of actors along with the number of movies they have acted in.
- **Query**: 
  - `SELECT Names.name AS actor_name`: Selects the name of the actor.
  - `COUNT(Role_Mapping.movie_id) AS movie_count`: Counts the number of movies each actor has acted in.
  - `FROM Names JOIN Role_Mapping ON Names.name_id = Role_Mapping.actor_id`: Joins the `Names` and `Role_Mapping` tables on the `name_id` to get the actor's roles in movies.
  - `WHERE Names.role = 'Actor'`: Filters the results to include only actors.
  - `GROUP BY Names.name`: Groups the results by actor name to count the number of movies for each actor.

#### Sample Output
```sql
SELECT * FROM movieview;

+-------------+-------------+
| actor_name  | movie_count |
+-------------+-------------+
| Tim Robbins | 1           |
| Morgan Freeman | 1        |
| Marlon Brando | 1         |
| Al Pacino    | 1          |
+-------------+-------------+
```

### Procedures
Stored procedures are SQL code blocks that perform a series of actions. They can be called multiple times, accept parameters, and return results.

#### Example Procedure
```sql
CREATE PROCEDURE GetMoviesByActor(IN actor_name VARCHAR(255))
BEGIN
    SELECT Movie.title
    FROM Movie
    JOIN Role_Mapping ON Movie.movie_id = Role_Mapping.movie_id
    JOIN Names ON Role_Mapping.actor_id = Names.name_id
    WHERE Names.name = actor_name;
END;
```

#### Explanation
- **Purpose**: This procedure retrieves the list of movies in which a specified actor has acted.
- **Parameters**: 
  - `IN actor_name VARCHAR(255)`: An input parameter to specify the actor's name.
- **Query**: 
  - `SELECT Movie.title`: Selects the title of the movie.
  - `FROM Movie JOIN Role_Mapping ON Movie.movie_id = Role_Mapping.movie_id JOIN Names ON Role_Mapping.actor_id = Names.name_id`: Joins the `Movie`, `Role_Mapping`, and `Names` tables to link movies with actors.
  - `WHERE Names.name = actor_name`: Filters the results to include only movies with the specified actor.

### Functions
Functions in SQL are similar to procedures but are designed to return a single value. They can be used in SQL expressions.

#### Example Function
```sql
CREATE FUNCTION GetMovieRating(movie_id INT)
RETURNS FLOAT
BEGIN
    DECLARE rating FLOAT;
    SELECT Rating.rating INTO rating
    FROM Rating
    WHERE Rating.movie_id = movie_id;
    RETURN rating;
END;
```

#### Explanation
- **Purpose**: This function returns the rating of a specified movie.
- **Parameters**: 
  - `movie_id INT`: An input parameter to specify the movie ID.
- **Query**: 
  - `SELECT Rating.rating INTO rating FROM Rating WHERE Rating.movie_id = movie_id`: Retrieves the rating of the specified movie and stores it in the `rating` variable.
  - `RETURN rating`: Returns the rating value.

### Triggers
Triggers are special types of stored procedures that are automatically executed in response to certain events on a table, such as insertions, updates, or deletions.

#### Example Triggers
```sql
CREATE TRIGGER after_movie_insert
AFTER INSERT ON Movie
FOR EACH ROW
BEGIN
    INSERT INTO newmovie (movie_id, title, release_year, user, timestamp) VALUES (NEW.movie_id, NEW.title, NEW.release_year, USER(), NOW());
END;

CREATE TRIGGER after_movie_delete
AFTER DELETE ON Movie
FOR EACH ROW
BEGIN
    INSERT INTO oldmovie (movie_id, title, release_year, user, timestamp) VALUES (OLD.movie_id, OLD.title, OLD.release_year, USER(), NOW());
END;
```

#### Explanation
- **Trigger: after_movie_insert**
  - **Purpose**: This trigger inserts a record into the `newmovie` table every time a new movie is added to the `Movie` table.
  - **Event**: `AFTER INSERT ON Movie`: Triggered after a new record is inserted into the `Movie` table.
  - **Action**: 
    - `INSERT INTO newmovie (movie_id, title, release_year, user, timestamp) VALUES (NEW.movie_id, NEW.title, NEW.release_year, USER(), NOW())`: Inserts the new movie's details along with the current user and timestamp into the `newmovie` table.

- **Trigger: after_movie_delete**
  - **Purpose**: This trigger inserts a record into the `oldmovie` table every time a movie is deleted from the `Movie` table.
  - **Event**: `AFTER DELETE ON Movie`: Triggered after a record is deleted from the `Movie` table.
  - **Action**: 
    - `INSERT INTO oldmovie (movie_id, title, release_year, user, timestamp) VALUES (OLD.movie_id, OLD.title, OLD.release_year, USER(), NOW())`: Inserts the deleted movie's details along with the current user and timestamp into the `oldmovie` table.

### Execution of Commands

To create the views, procedures, functions, and triggers, you can execute the following SQL commands in your MySQL environment:

```sql
-- Create View
CREATE VIEW movieview AS
SELECT Names.name AS actor_name, COUNT(Role_Mapping.movie_id) AS movie_count
FROM Names
JOIN Role_Mapping ON Names.name_id = Role_Mapping.actor_id
WHERE Names.role = 'Actor'
GROUP BY Names.name;

-- Create Procedure
CREATE PROCEDURE GetMoviesByActor(IN actor_name VARCHAR(255))
BEGIN
    SELECT Movie.title
    FROM Movie
    JOIN Role_Mapping ON Movie.movie_id = Role_Mapping.movie_id
    JOIN Names ON Role_Mapping.actor_id = Names.name_id
    WHERE Names.name = actor_name;
END;

-- Create Function
CREATE FUNCTION GetMovieRating(movie_id INT)
RETURNS FLOAT
BEGIN
    DECLARE rating FLOAT;
    SELECT Rating.rating INTO rating
    FROM Rating
    WHERE Rating.movie_id = movie_id;
    RETURN rating;
END;

-- Create Triggers
CREATE TRIGGER after_movie_insert
AFTER INSERT ON Movie
FOR EACH ROW
BEGIN
    INSERT INTO newmovie (movie_id, title, release_year, user, timestamp) VALUES (NEW.movie_id, NEW.title, NEW.release_year, USER(), NOW());
END;

CREATE TRIGGER after_movie_delete
AFTER DELETE ON Movie
FOR EACH ROW
BEGIN
    INSERT INTO oldmovie (movie_id, title, release_year, user, timestamp) VALUES (OLD.movie_id, OLD.title, OLD.release_year, USER(), NOW());
END;
```

#### Views
```sql
CREATE VIEW movieview AS
SELECT Names.name AS actor_name, COUNT(Role_Mapping.movie_id) AS movie_count
FROM Names
JOIN Role_Mapping ON Names.name_id = Role_Mapping.actor_id
WHERE Names.role = 'Actor'
GROUP BY Names.name;
```

#### Sample Output
```sql
SELECT * FROM movieview;

+-------------+-------------+
| actor_name  | movie_count |
+-------------+-------------+
| Tim Robbins | 1           |
| Morgan Freeman | 1        |
| Marlon Brando | 1         |
| Al Pacino    | 1          |
+-------------+-------------+
```

#### Triggers
```sql
CREATE TRIGGER after_movie_insert
AFTER INSERT ON Movie
FOR EACH ROW
BEGIN
    INSERT INTO newmovie (movie_id, title, release_year, user, timestamp) VALUES (NEW.movie_id, NEW.title, NEW.release_year, USER(), NOW());
END;

CREATE TRIGGER after_movie_delete
AFTER DELETE ON Movie
FOR EACH ROW
BEGIN
    INSERT INTO oldmovie (movie_id, title, release_year, user, timestamp) VALUES (OLD.movie_id, OLD.title, OLD.release_year, USER(), NOW());
END;
```

### 5. Run Queries
Use the provided queries to interact with the database and extract information.

```sql
SELECT * FROM Movie;

+----------+--------------------------+-------------+----------+---------------------------+
| movie_id | title                    | release_year| duration | production_company        |
+----------+--------------------------+-------------+----------+---------------------------+
| 1        | The Shawshank Redemption | 1994        | 142      | Castle Rock Entertainment |
| 2        | The Godfather            | 1972        | 175      | Paramount Pictures        |
+----------+--------------------------+-------------+----------+---------------------------+
```

## Conclusion
This project demonstrates the creation of a movie database using SQL, showcasing various SQL functionalities to manage and query data efficiently. The provided scripts and queries offer a comprehensive framework for building and interacting with a movie database.

## Contact Information
For any questions or further assistance, please contact:
- Sameena Mujawar
- Laylaa Tariq
- Sai Srivatsa Thangallapelly

---

Feel free to modify this README file to better suit your needs or to add any additional information specific to your project.
