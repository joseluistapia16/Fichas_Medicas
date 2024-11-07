create database fichas_medicas_personal;
-- Tabla Roles
CREATE TABLE Roles (
    id_rol INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    id_usuario INT,
    estado CHAR(1) DEFAULT 'A'
);
-- Tabla Usuario
CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    correo VARCHAR(100),
    id_rol INT,
    id_usuario_registro INT,
    estado CHAR(1) DEFAULT 'A',
    FOREIGN KEY (id_rol) REFERENCES Roles(id_rol)
);

ALTER TABLE roles add FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario);

-- Tabla Grupo_Sanguineo
CREATE TABLE Grupo_Sanguineo (
    id_grupo_sanguineo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    id_usuario INT,
    estado CHAR(1) DEFAULT 'A',
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

-- Tabla Estado_Civil
CREATE TABLE Estado_Civil (
    id_estado_civil INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    id_usuario INT,
    estado CHAR(1) DEFAULT 'A',
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

-- Tabla Area
CREATE TABLE Area (
    id_area INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    id_usuario INT,
    estado CHAR(1) DEFAULT 'A',
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

-- Tabla Persona
CREATE TABLE Persona (
    cedula VARCHAR(20) PRIMARY KEY,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE,
    n_hijos INT,
    direccion VARCHAR(255),
    id_mail INT,
    telefono VARCHAR(20),
    id_grupo_sanguineo INT,
    id_estado_civil INT,
    id_area INT,
    id_usuario INT,
    estado CHAR(1) DEFAULT 'A',
    FOREIGN KEY (id_mail) REFERENCES Correo(id_correo),
    FOREIGN KEY (id_grupo_sanguineo) REFERENCES Grupo_Sanguineo(id_grupo_sanguineo),
    FOREIGN KEY (id_estado_civil) REFERENCES Estado_Civil(id_estado_civil),
    FOREIGN KEY (id_area) REFERENCES Area(id_area),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

-- Tabla Correo
CREATE TABLE Correo (
    id_correo INT PRIMARY KEY AUTO_INCREMENT,
    correo VARCHAR(100) NOT NULL,
    id_persona VARCHAR(20),
    id_usuario INT,
    estado CHAR(1) DEFAULT 'A',
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);


-- Tabla Ficha_Medica
CREATE TABLE Ficha_Medica (
    id_ficha_medica INT PRIMARY KEY AUTO_INCREMENT,
    fecha_registro DATE,
    id_persona VARCHAR(20),
    antecedentes_patologicos_personales TEXT,
    antecedentes_patologicos_familiares TEXT,
    habito TEXT,
    estado_actual TEXT,
    examen_fisico TEXT,
    examen_complementario TEXT,
    firma VARCHAR(100),
    foto text,
    id_usuario INT,
    estado CHAR(1) DEFAULT 'A',
    FOREIGN KEY (id_persona) REFERENCES Persona(cedula),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

-- Tabla Parte_Diario
CREATE TABLE Parte_Diario (
    id_parte_diario INT PRIMARY KEY AUTO_INCREMENT,
    fecha_registro DATE,
    hora_entrada TIME,
    id_persona VARCHAR(20),
    diagnostico TEXT,
    tratamiento TEXT,
    obervacion TEXT,
    permisos TEXT,
    hora_salida TIME,
    id_usuario INT,
    estado CHAR(1) DEFAULT 'A',
    FOREIGN KEY (id_persona) REFERENCES Persona(cedula),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

alter table correo add FOREIGN KEY (id_persona) REFERENCES Persona(cedula);
