# Sprint1_T_M1_T01
Este repositorio contiene los ejercicios de la Tasca M1 T01 del curso de Ciencia de Datos - Barcelona Activa

# Ejercicio 1
*A partir de los documentos adjuntos, crea una base da datos con MySQL*

La base de datos se creo primero con el archivo "Estructura de la base de dades" que estableció las siguientes tablas: 

* tb_genre
* tb_movie
* tb_movie_person
* tb_person
* tb_role  

Es importante mencionar que las tablas creadas no contenian ninguna información por lo que se usó el archivo "Estructura de la base de dades" para así poder hacer las consultas necesarias.  

El resultado es el siguiente:  
![Base_Datos_Movies](https://user-images.githubusercontent.com/121647613/226583601-07888862-58ff-4c44-926f-c6803217182c.png)


*Muestra las características principales del esquema creado y explica las diferentes tablas y variantes que hay.*

La base de datos "Movies" cuenta con cinco tablas que tienen las siguientes características y relaciones:

La tabla tb_genre almacena los diferentes géneros de película(genre_name) con su identificador (genre_id), la fecha de creación (created_date) y de actualización (updated_date), así como el usuario(created_by_user).  El Primary Key de esta tabla es el campo 'genre_id' que conecta a la tabla tb_movie, siendo esta la unica conexión con las otras tablas.

La tabla tb_movie_person es la única tabla que contiene tres Primary Keys: movie_id, person_id y role_id las cuales conectan a las tablas tb_movie, tb_person y tb_role respectivamente.  Esta tabla además almacena información sobre premios(movie_award_ind) y fechas de creación (created_date) y actualización (updated_date).

La tabla role_id, cuya Primary Key es role_id, almacena información sobre los diferentes roles en una película (role_name).

La tabla tb_person contiene información de las personas que participaron en diferentes películas como lo son sus nombres (person_name), país de origen(person_country), fecha de nacimiento (person_dob) y de fallecimiento (person_dod) así como su identificador (person_id) que a la vez es la Primary Key.

Finalmente, la tabla tb_movie almacena el nombre de las películas(movie_title), su formato(movie_format) y fecha(movie_date), así como su género(movie_genre_id) que es un identificador relacionado con la tabla tb_genre sin ser un primary key.  El Primary Key de esta tabla es el identificador(movie_id).

# Ejercicio 2

*Haz de obtener el nombre del país y los datos de nacimiento de aquellas personas por las cuales no conste una fecha de fallecimiento además de ordenar los datos de la persona más vieja a la más joven.*

