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