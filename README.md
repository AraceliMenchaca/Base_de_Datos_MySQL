 obtener el nombre del género y el número total de películas de ese género y ordenarlo en orden descendente según el número total de películas# Sprint1_T_M1_T01
Este repositorio contiene los ejercicios de la Tasca M1 T01 del curso de Ciencia de Datos - Barcelona Activa

# Ejercicio 1
1. A partir de los documentos adjuntos, crea una base da datos con MySQL

La base de datos se creo primero con el archivo "Estructura de la base de dades" que estableció las siguientes tablas: 

* tb_genre
* tb_movie
* tb_movie_person
* tb_person
* tb_role  

Es importante mencionar que las tablas creadas no contenian ninguna información por lo que se usó el archivo "Estructura de la base de dades" para así poder hacer las consultas necesarias.  

El resultado es el siguiente:  
![Base_Datos_Movies](https://user-images.githubusercontent.com/121647613/226583601-07888862-58ff-4c44-926f-c6803217182c.png)


2. Muestra las características principales del esquema creado y explica las diferentes tablas y variantes que hay.

La base de datos "Movies" cuenta con cinco tablas que tienen las siguientes características y relaciones:

La tabla tb_genre almacena los diferentes géneros de película(genre_name) con su identificador (genre_id), la fecha de creación (created_date) y de actualización (updated_date), así como el usuario(created_by_user).  El Primary Key de esta tabla es el campo 'genre_id' que conecta a la tabla tb_movie, siendo esta la unica conexión con las otras tablas.

La tabla tb_movie_person es la única tabla que contiene tres Primary Keys: movie_id, person_id y role_id las cuales conectan a las tablas tb_movie, tb_person y tb_role respectivamente.  Esta tabla además almacena información sobre premios(movie_award_ind) y fechas de creación (created_date) y actualización (updated_date).

La tabla role_id, cuya Primary Key es role_id, almacena información sobre los diferentes roles en una película (role_name).

La tabla tb_person contiene información de las personas que participaron en diferentes películas como lo son sus nombres (person_name), país de origen(person_country), fecha de nacimiento (person_dob) y de fallecimiento (person_dod) así como su identificador (person_id) que a la vez es la Primary Key.

Finalmente, la tabla tb_movie almacena el nombre de las películas(movie_title), su formato(movie_format) y fecha(movie_date), así como su género(movie_genre_id) que es un identificador relacionado con la tabla tb_genre sin ser un primary key.  El Primary Key de esta tabla es el identificador(movie_id).


# Ejercicio 2

* Haz de obtener el nombre del país y los datos de nacimiento de aquellas personas por las cuales no conste una fecha de fallecimiento además de ordenar los datos de la persona más vieja a la más joven.

La siguiente tabla fue creada utilizando las variables person_name, person_country, y person_dob.  Para obtener las especificaciones que se piden, se aplicó IS NULL a person_dod y ASC a person_dob como se muestra en la siguiente imagen.

![S1_E2](https://user-images.githubusercontent.com/121647613/226650550-3684f2f8-4f30-4890-a012-03f5ad83fc1b.jpg)


# Ejercicio 3

* Haz de obtener el nombre del género y el nombre total de películas de este genero y ordenarlo de forma descendente por el nombre total de películas.

Para obtener la siguiente tabla, se necesitó hacer la unión de dos tablas: tb_genre y tb_movie a través de genre_id, además de la funciones COUNT, GROUP BY y ORDER BY para que el código pudiera funcionar correctamente.


![Screenshot_20230321_220052_Slides](https://user-images.githubusercontent.com/121647613/226740135-f23f3425-e26c-413f-bd68-eb7998379798.jpg)


# Ejercicio 4

 * Haz de obtener el nombre del género y el número total de películas de ese género y ordenarlo en orden descendente según el número total de películas

En esta tabla se pudo comprobar la razón de las tres primary keys en tb_movie_person pues aquí se unieron las tres tablas de la siguiente manera. Primero tb_person y tb_movie_person a través person_id, después tb_movie con tb_movie_person a través de movie_id y finalmente tb_role con tb_movie_person a través de role_id. Además de usar las funciones COUNT, >=, ORDER BY, ASC y HAVING.

![Screenshot_20230321_220402_Slides](https://user-images.githubusercontent.com/121647613/226740736-a69a48f8-7ecf-4089-9212-823313bf4014.jpg)


# Ejercicio 5

 * Haz de crear un nuevo género llamado 'Documental' en el cual tenga como identificador el nombre 69.
 
 Esta tabla fue sencilla de crear pues aunque la columna de identificadores genre_id es el Primary Key en la tabla tb_genre, no tenía activado el campo de AI (Auto-Increment). Las funciones que se usaron fueron INSERT INTO y VALUES.
 
 ![Screenshot_20230321_222123_Slides](https://user-images.githubusercontent.com/121647613/226743849-45b8bdf9-a489-4303-a60e-c79d324def9e.jpg)


# Ejercicio 6

 * Elimina la película "La Gran Familia Española" de la base de datos.
 
 Para poder hacer este cambio, se tuvieron que usar las funciones DELETE FROM en las tablas tb_movie_person y tb_movie pues la variante movie_id que identifica a la película "La Gran Familia Española" se encontraba en ambas tablas con el número 11.
  
![Screenshot_20230321_222841_Slides](https://user-images.githubusercontent.com/121647613/226745461-fc68127a-7d92-4c34-a2af-52864c1b3895.jpg)


# Ejercicio 7

 * Cambia el género de la película "Ocho Apellidos catalanes" para que conste como comedia en vez de romántica.
 
 El cambio en esta tabla se hizo con la función UPDATE y SET sobre la tabla tb_movie como se muestra en las siguientes imágenes:
 
![DB_Movies](https://user-images.githubusercontent.com/121647613/226747634-c15e8b39-32c9-4e87-a85d-52bbc5f32fc6.png)

![S1_E7_b](https://user-images.githubusercontent.com/121647613/226747887-ae2344ee-722e-4830-9def-0d2c0e684b1f.jpg)



