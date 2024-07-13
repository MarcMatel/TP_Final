CREATE SCHEMA IF NOT EXISTS Peliculas;

USE Peliculas;

CREATE TABLE Movies (id_movie INT AUTO_INCREMENT PRIMARY KEY,
						nombre VARCHAR (255) NOT NULL,
						descripcion VARCHAR (255) NOT NULL,
                        genero VARCHAR (255) NOT NULL,
                        calificacion VARCHAR (255) NOT NULL,
                        año INT NOT NULL,
                        estrellas INT NOT NULL,
                        director_id INT,
                        FOREIGN KEY (director_id) REFERENCES Director (id_director)
                        );
CREATE TABLE Director (id_director INT AUTO_INCREMENT PRIMARY KEY,
						nombre VARCHAR (255) NOT NULL,
						apellido VARCHAR (255) NOT NULL,
                        edad INT NOT NULL,
                        nacionalidad VARCHAR (255) NOT NULL,
                        director_id INT
                       );                    
CREATE TABLE Usuarios (id_usuarios  INT AUTO_INCREMENT PRIMARY KEY,
						nombre VARCHAR (255) NOT NULL,
						apellido VARCHAR (255) NOT NULL,
                        email VARCHAR (255) NOT NULL UNIQUE,
                        contraseña VARCHAR (255) NOT NULL,
                        fecha_nac DATE NOT NULL,
                        pais VARCHAR (255) NOT NULL
                        );
                        
INSERT INTO Movies (nombre, descripcion, genero, calificacion, año, estrellas, director_id)
VALUES 
    ('Peli1', 'Carlos se vendió al barrio de Lanús', 'accion', 'excelente', 2024, 5, 1),
    ('Peli2', 'El barrio que lo vio crecer', 'comedia', 'buena', 2023, 4, 2),
    ('Peli3', 'Ya no vino nunca más por el bar de Fabián', 'drama', 'regular', 2022, 3, 3),
    ('Peli4', 'Y se olvidó de pelearse los domingos en la cancha', 'suspenso', 'excelente', 2021, 5, 4),
    ('Peli5', 'Por la noche, patrulla la ciudad', 'acción', 'buena', 2020, 4, 5),
    ('Peli6', 'Molestando y levantando a los demás', 'accion', 'excelente', 2024, 5, 1),
    ('Peli7', 'Ya no sos igual, ya no sos igual', 'comedia', 'buena', 2023, 4, 2),
    ('Peli8', 'Sos un vigilante de la Federal', 'drama', 'regular', 2022, 3, 3),
    ('Peli9', 'Sos buchón, sos buchón', 'suspenso', 'excelente', 2021, 5, 4),
    ('Peli10', 'Cervezas en la esquina del barrio varon', 'acción', 'buena', 2020, 4, 5),
    ('Peli11', 'Rutina sin malicia que guarda razón', 'accion', 'excelente', 2024, 5, 1),
    ('Peli12', 'Quien olvidó las horas de su juventud', 'comedia', 'buena', 2023, 4, 2),
    ('Peli13', 'Murmurando se queja ante esta actitud', 'drama', 'regular', 2022, 3, 3),
    ('Peli14', 'Allí esperan mis amigos en reunión', 'suspenso', 'excelente', 2021, 5, 4),
    ('Peli15', 'Mucho me alegra sentirme parte de vos', 'acción', 'buena', 2020, 4, 5);
    
INSERT INTO Director (nombre, apellido, edad, nacionalidad)
VALUES 
    ('Juan', 'Perez', 40, 'argentino'),
    ('Pedro', 'Gomez', 45, 'mexicano'),
    ('Ana', 'Hert', 50, 'española'),
    ('Luis', 'Dione', 55, 'colombiano'),
    ('María', 'Pico', 60, 'chilena'),
    ('Ray', 'Pores', 40, 'argentino'),
    ('Jose', 'Arter', 45, 'mexicano'),
    ('Ana', 'Belen', 50, 'española'),
    ('Luis', 'Paser', 55, 'colombiano'),
    ('Marcos', 'Pipo', 60, 'chilena'),
    ('Ger', 'Gomez', 40, 'argentino'),
    ('Pedro', 'Tres', 45, 'mexicano'),
    ('Analia', 'Borm', 50, 'española'),
    ('Lucas', 'Bios', 55, 'colombiano'),
    ('Martin', 'Picolini', 60, 'chilena');
    
INSERT INTO Usuarios (nombre, apellido, email, contraseña, fecha_nac, pais)
VALUES 
    ('Pedro', 'Rais', 'pedror@hotmail.com', '1234', '1990-02-23', 'argentina'),
    ('Juan', 'Perez', 'juanpp@hotmail.com', '5678', '1985-05-15', 'mexico'),
    ('Ana', 'Borges', 'anab@hotmail.com', 'abcd', '1980-10-10', 'españa'),
    ('Luis', 'DiGiano', 'luisd@hotmail.com', 'efgh', '1975-12-05', 'colombia'),
    ('María', 'Lopez', 'marial@hotmail.com', 'ijkl', '1970-08-20', 'chile'),
	('Pedro', 'Tera', 'pedrot@hotmail.com', '1234', '1990-02-23', 'argentina'),
    ('Felipe', 'Pisco', 'felipep@hotmail.com', '5678', '1985-05-15', 'mexico'),
    ('Ana', 'Martinez', 'anas@hotmail.com', 'abcd', '1980-10-10', 'españa'),
    ('Luis', 'Carmen', 'luiscc@hotmail.com', 'efgh', '1975-12-05', 'colombia'),
    ('Marcos', 'Jeres', 'marcosj@hotmail.com', 'ijkl', '1970-08-20', 'chile'),
	('Pablo', 'Pica', 'pablo@hotmail.com', '1234', '1990-02-23', 'argentina'),
    ('Juan', 'Gigon', 'juang@hotmail.com', '5678', '1985-05-15', 'mexico'),
    ('Pastor', 'Martinez', 'pastor@hotmail.com', 'abcd', '1980-10-10', 'españa'),
    ('Luis', 'Colman', 'luisc@hotmail.com', 'efgh', '1975-12-05', 'colombia'),
    ('María', 'Arse', 'mariaa@hotmail.com', 'ijkl', '1970-08-20', 'chile');
    
    
    
    

SELECT * FROM Movies WHERE genero = 'terror';