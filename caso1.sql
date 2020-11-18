CREATE DATABASE caso1;

\c caso1

CREATE TABLE departamento(
    id_dpto SERIAL,
    nombre_dpto VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_dpto)
);

CREATE TABLE trabajador(
    rut_trabajador VARCHAR(12),
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    id_dpto_trabajador INT,
    PRIMARY KEY (rut_trabajador),
    FOREIGN KEY (id_dpto_trabajador) REFERENCES departamento (id_dpto)
);

CREATE TABLE liquidaciones(
    rut_liquidacion VARCHAR(12),
    link_drive VARCHAR(300) NOT NULL,
    FOREIGN KEY (rut_liquidacion) REFERENCES trabajador (rut_trabajador)
);