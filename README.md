# Movie Database Project

This project involves creating and managing a comprehensive movie database using SQL. The database stores detailed information about movies, genres, actors, directors, and ratings, allowing for efficient data management and insightful queries.

## Project Overview

In this project, we created a MySQL database to store and manage information about movies, genres, actors, directors, and ratings. The database includes several tables, views, functions, procedures, and triggers to ensure data integrity and enable complex queries.


### ER Diagram

The ER diagram provides a visual representation of the database structure, showcasing the relationships between different entities. 
<img width="986" alt="image" src="https://github.com/user-attachments/assets/fc250226-be8e-4e60-832f-21a1e966dc47">


### Database Structure

The database consists of six main tables:

1. **Movie**: Stores information about movies.
2. **Genre**: Stores genres of movies.
3. **Names**: Stores names of actors and directors.
4. **Director_Mapping**: Maps movies to their directors.
5. **Role_Mapping**: Maps actors to their roles in movies.
6. **Rating**: Stores ratings of movies.

### Queries

The project includes several types of SQL statements to interact with the database:

- **Views**: Virtual tables created by querying one or more tables.
- **Procedures**: Perform multiple tasks and do not return values.
- **Functions**: Reusable code blocks that perform specific tasks.
- **Triggers**: Automatically executed in response to certain database events.

### Sample Code and Output

#### Creating the Database

```sql
CREATE DATABASE dbmovies;
USE dbmovies;
```

#### Creating Tables

```sql
CREATE TABLE Movie (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100),
    release_year INT,
    duration INT,
    genre_id INT,
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);

CREATE TABLE Genre (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(50)
);

CREATE TABLE Names (
    name_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Director_Mapping (
    movie_id INT,
    director_id INT,
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
    FOREIGN KEY (director_id) REFERENCES Names(name_id)
);

CREATE TABLE Role_Mapping (
    movie_id INT,
    actor_id INT,
    role VARCHAR(50),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
    FOREIGN KEY (actor_id) REFERENCES Names(name_id)
);

CREATE TABLE Rating (
    movie_id INT,
    rating DECIMAL(3, 2),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id)
);
```

#### Inserting Data

```sql
INSERT INTO Genre (genre_id, genre_name) VALUES (1, 'Action'), (2, 'Comedy');

INSERT INTO Movie (movie_id, title, release_year, duration, genre_id) 
VALUES (1, 'Movie A', 2020, 120, 1), (2, 'Movie B', 2019, 90, 2);

INSERT INTO Names (name_id, name) VALUES (1, 'Actor A'), (2, 'Director B');

INSERT INTO Director_Mapping (movie_id, director_id) VALUES (1, 2);

INSERT INTO Role_Mapping (movie_id, actor_id, role) VALUES (1, 1, 'Hero');

INSERT INTO Rating (movie_id, rating) VALUES (1, 8.5);
```

#### Sample Queries and Outputs

```sql
-- List all movies with their genres
SELECT M.title, G.genre_name 
FROM Movie M 
JOIN Genre G ON M.genre_id = G.genre_id;

-- Output
+---------+-------------+
| title   | genre_name  |
+---------+-------------+
| Movie A | Action      |
| Movie B | Comedy      |
+---------+-------------+
```

```sql
-- Find the total number of movies by each actor
SELECT N.name, COUNT(RM.movie_id) AS total_movies
FROM Names N
JOIN Role_Mapping RM ON N.name_id = RM.actor_id
GROUP BY N.name;

-- Output
+--------+--------------+
| name   | total_movies |
+--------+--------------+
| Actor A| 1            |
+--------+--------------+
```

### Conclusion

This project demonstrates how to build a comprehensive movie database using SQL. It covers the creation of tables, insertion of data, and execution of complex queries, providing a framework for managing and analyzing movie-related data efficiently.

### Credits

- **Sameena Mujawar**: Developed and explained the views and query statements.
- **Laylaa Tariq**: Developed and explained the functions and triggers.
- **Sai Srivatsa Thangallapelly**: Developed and explained the database structure and sample queries.

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
