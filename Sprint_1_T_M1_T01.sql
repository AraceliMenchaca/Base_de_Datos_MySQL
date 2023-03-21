# Exercici_2 
USE movies;
SELECT person_name as Nombre, person_country as País, person_dob as Fecha_Nacimiento
FROM tb_person
WHERE person_dod IS NULL
ORDER BY person_dob ASC;

# Exercici_3
USE movies;
SELECT g.genre_name as Nombre_Género, COUNT(*) as Número_Películas
FROM tb_genre as g
JOIN tb_movie ON g.genre_id = tb_movie.movie_genre_id
GROUP BY g.genre_name
ORDER BY Número_Películas

# Exercici_4
USE movies;
SELECT p.person_name as Name, m.movie_title as Movie, COUNT(r.role_id) as Roles
FROM tb_person as p
JOIN tb_movie_person as mp ON p.person_id = mp.person_id
JOIN tb_movie as m ON m.movie_id = mp.movie_id
JOIN tb_role as r ON r.role_id = mp.role_id
GROUP BY p.person_name, m.movie_title
HAVING COUNT(r.role_id) >= 2
ORDER BY Roles ASC;

# Exercici_5
USE movies;
INSERT INTO tb_genre(genre_id, genre_name, created_by_user)
VALUES (69,'Documental', 'aracelim');

SELECT *
FROM tb_genre

# Exercici_6
USE movies;
DELETE FROM tb_movie_person
WHERE movie_id = 11;

DELETE FROM tb_movie
WHERE movie_id = 11;

SELECT *
FROM tb_movie

# Exercici_7
USE movies;
UPDATE tb_movie
SET movie_genre_id = 3
WHERE movie_id = 9;

SELECT *
FROM tb_movie