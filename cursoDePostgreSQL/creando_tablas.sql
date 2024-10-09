CREATE TABLE viajero ( 
  id_viajero SERIAL PRIMARY KEY,
  nombre varchar(255),
  fecha_registro DATE
);

SELECT version();

SHOW config_file;