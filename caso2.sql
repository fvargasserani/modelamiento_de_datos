CREATE DATABASE caso2;

\c caso2;

CREATE TABLE curso(
    id_curso SERIAL,
    nombre_asignatura VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_curso)
);

CREATE TABLE alumno(
    rut_alumno VARCHAR(12),
    nombre VARCHAR(100) NOT NULL,
    id_curso_alumno INT,
    PRIMARY KEY (rut_alumno),
    FOREIGN KEY (id_curso_alumno) REFERENCES curso (id_curso)
);

CREATE TABLE pruebas(
    rut_prueba VARCHAR(12),
    puntaje SMALLINT NOT NULL,
    id_prueba SERIAL,
    PRIMARY KEY (id_prueba),
    FOREIGN KEY (rut_prueba) REFERENCES alumno (rut_alumno)
);

CREATE TABLE departamento(
    id_dpto SERIAL,
    nombre_dpto VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_dpto)
);

CREATE TABLE profesor(
    nombre VARCHAR(100) NOT NULL,
    id_dpto_profesor INT,
    id_prueba_correccion INT,
    FOREIGN KEY (id_dpto_profesor) REFERENCES departamento (id_dpto),
    FOREIGN KEY (id_prueba_correccion) REFERENCES pruebas (id_prueba)
);