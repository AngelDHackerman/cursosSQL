CREATE TABLE viajero ( 
  id SERIAL PRIMARY KEY,
  nombre varchar(255),
  direccion_residencia varchar(255),
  fecha_nacimeinto DATE
);

SELECT version();

SHOW config_file;

ALTER TABLE viajero 
RENAME COLUMN fecha_registro TO fecha_nacimeinto;

ALTER TABLE viajero
ADD COLUMN direccion_residencia VARCHAR(255);

ALTER TABLE viajero 
RENAME COLUMN id_viajero TO id;

SELECT current_date;