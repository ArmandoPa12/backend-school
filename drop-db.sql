drop table permiso_rol;
drop table permiso;
drop table rol;
drop table users;

-- +++++++++++++++++++++++++++++++++++++++++++
CREATE TABLE funcion (
    id SERIAL PRIMARY KEY,
    descripcion TEXT,
    nombre VARCHAR
);
CREATE TABLE formacion (
    id SERIAL PRIMARY KEY,
    descripcion TEXT,
    nombre VARCHAR
);
CREATE TABLE financiamiento (
    id SERIAL PRIMARY KEY,
    descripcion TEXT,
    nombre VARCHAR
);
CREATE TABLE idioma (
    id SERIAL PRIMARY KEY,
    descripcion TEXT,
    nombre VARCHAR
);
CREATE TABLE rol (
    id SERIAL PRIMARY KEY,
    descripcion TEXT,
    nombre VARCHAR
);
CREATE TABLE privilegio (
    id SERIAL PRIMARY KEY,
    descripcion TEXT,
    nombre VARCHAR
);
CREATE TABLE rol_privilegio (
    id_rol INT REFERENCES rol(id),
    id_privilegio INT REFERENCES privilegio(id),
    PRIMARY KEY (id_rol, id_privilegio)
);


CREATE TABLE colegio (
    area INT,
    canton INT,
    ci_director INT,
    ciudad INT,
    codigo INT,
    codigo_distrito INT,
    departamento VARCHAR,
    descripcion TEXT,
    direccion VARCHAR,
    distrito INT,
    estado ENUM('Abierta', 'Cerrada', 'Vacaciones de Fin de año', 'Vacaciones de invierno'),
    id_director INT,
    nombre VARCHAR,
    provincia INT,
    seccion_municipal INT,
    turno INT,
    zona INT,
    PRIMARY KEY (codigo)
);
CREATE TABLE personal (
    
    id_financiamiento INT NOT NULL,
    id_funcion INT NOT NULL,
    id_formacion INT NOT NULL,

    apellido_materno VARCHAR NOT NULL,
    apellido_paterno VARCHAR NOT NULL,
    braile BOOLEAN FALSE,
    carnet INT PRIMARY KEY NOT NULL,
    complemento VARCHAR,
    correo VARCHAR NOT NULL,
    denominativo VARCHAR NOT NULL,
    direccion_domiciliaria VARCHAR NOT NULL,
    extranjero BOOLEAN FALSE,
    fecha_nacimiento DATE NOT NULL,
    genero ENUM('Masculino', 'Femenino')NOT NULL,    
    nombres VARCHAR NOT NULL,
    normalista BOOLEAN FALSE,
    nro_celular INT NOT NULL,
    nro_item INT NOT NULL,
    rda INT NOT NULL
);
CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    id_rol INT NOT NULL,
    id_persona INT NOT NULL,
    username VARCHAR,
    password VARCHAR
);







CREATE TABLE persona_idioma (
    id_persona INT REFERENCES personal(id),
    id_idioma INT REFERENCES idioma(id),
    estado_escribe ENUM('Muy Bien', 'Bien', 'Mal', 'No') NOT NULL,
    estado_habla ENUM('Muy Bien', 'Bien', 'Mal', 'No') NOT NULL,
    estado_lee ENUM('Muy Bien', 'Bien', 'Mal', 'No') NOT NULL,
    PRIMARY KEY (id_persona, id_idioma)
);





CREATE TABLE nivel_curso (
    id_nivel INT REFERENCES nivel(id),
    id_curso INT REFERENCES curso(id),
    PRIMARY KEY (id_nivel, id_curso)
);

CREATE TABLE colegio (
    area INT,
    canton INT,
    ci_director INT,
    ciudad INT,
    codigo INT,
    codigo_distrito INT,
    departamento VARCHAR,
    descripcion TEXT,
    direccion VARCHAR,
    distrito INT,
    estado ENUM('Abierta', 'Cerrada', 'Vacaciones de Fin de año', 'Vacaciones de invierno'),
    id_director INT,
    nombre VARCHAR,
    provincia INT,
    seccion_municipal INT,
    turno INT,
    zona INT,
    PRIMARY KEY (codigo)
);

CREATE TABLE nivel (
    id SERIAL PRIMARY KEY,
    detalle TEXT,
    nombre VARCHAR
);  

CREATE TABLE area (
    id SERIAL PRIMARY KEY,
    detalle TEXT,
    nombre VARCHAR
);

CREATE TABLE area_nivel (
    id SERIAL PRIMARY KEY,
    id_area INT REFERENCES area(id),
    id_nivel INT REFERENCES nivel(id)
);

CREATE TABLE curso (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR
);

CREATE TABLE paralelo (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR
);

CREATE TABLE curso_paralelo (
    id_curso INT REFERENCES curso(id),
    id_paralelo INT REFERENCES paralelo(id),
    PRIMARY KEY (id_curso, id_paralelo)
);

CREATE TABLE espacio (
    id SERIAL PRIMARY KEY,
    descripcion TEXT,
    id_edificio INT,
    nombre VARCHAR,
    ubicacion INT
);

CREATE TABLE edificio (
    id SERIAL PRIMARY KEY,
    descripcion TEXT,
    nombre VARCHAR
);

CREATE TABLE aula (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR
);

CREATE TABLE aula_edificio (
    id_aula INT REFERENCES aula(id),
    id_edificio INT REFERENCES edificio(id),
    PRIMARY KEY (id_aula, id_edificio)
);
DROP TABLE IF EXISTS area_nivel;
DROP TABLE IF EXISTS area;
DROP TABLE IF EXISTS nivel_curso;
DROP TABLE IF EXISTS nivel;
DROP TABLE IF EXISTS aula_edificio;
DROP TABLE IF EXISTS aula;
DROP TABLE IF EXISTS espacio;
DROP TABLE IF EXISTS edificio;
DROP TABLE IF EXISTS curso_paralelo;
DROP TABLE IF EXISTS paralelo;
DROP TABLE IF EXISTS curso;
DROP TABLE IF EXISTS persona_idioma;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS personal;
DROP TABLE IF EXISTS colegio;


DROP TABLE IF EXISTS rol_privilegio;
DROP TABLE IF EXISTS privilegio;

DROP TABLE IF EXISTS rol;
DROP TABLE IF EXISTS idioma;
DROP TABLE IF EXISTS financiamiento;
DROP TABLE IF EXISTS formacion;
DROP TABLE IF EXISTS funcion;


DROP TYPE IF EXISTS estado_enum;
DROP TYPE IF EXISTS genero_enum;
DROP TYPE IF EXISTS estado_enum_b;



