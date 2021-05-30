A-- tables para la creacion de bitacoras --

-- BitacoraAsignaciones
CREATE TABLE public."BitacoraAsignaciones"
(id_asignaciones integer, hora_comienzo time without time zone, id_guia integer, codigo character varying(30),
usuario character varying(15), accion character(1), "fechaRegistro" date) PARTITION BY RANGE ("fechaRegistro");
	
--	BitacoraContinente
CREATE TABLE public."BitacoraContinente"
(id_continente integer, nombre character varying(30), usuario character varying(15),accion character(1),
"fechaRegistro" date) PARTITION BY RANGE ("fechaRegistro");

-- BitacoraCorreo
CREATE TABLE public."BitacoraCorreo"
(id_correo integer, correo_personal character varying(30), correo_laboral character varying(30),
correo_secundario character varying(30), usuario character varying(15), accion character(1),
"fechaRegistro" date) PARTITION BY RANGE ("fechaRegistro");

-- BitacoraCuidador_especie
CREATE TABLE public."BitacoraCuidador_especie"
(id_cuido integer, fecha_de__inicio_cuido date, id_especie integer,id_cuidador integer, usuario character varying(15),
accion character(1), "fechaRegistro" date) PARTITION BY RANGE ("fechaRegistro");

-- BitacoraCuidadores
CREATE TABLE public."BitacoraCuidadores"
(id_cuidador integer, fecha_ingreso_alparque date, usuario character varying(15), accion character(1),
"fechaRegistro" date) PARTITION BY RANGE ("fechaRegistro");

-- BitacoraDescripcion_especie
CREATE TABLE public."BitacoraDescripcion_especie"
(id_descripcion integer, sexo character, fecha_nacimiento date, peso double precision,
usuario character varying(15), accion character(1), "fechaRegistro" date) PARTITION BY RANGE ("fechaRegistro");

-- BitacoraDireccion
CREATE TABLE public."BitacoraDireccion"
(id_direccion integer, pais character varying(30), provincia character varying(30),canton character varying(30),
distrito character varying(30),barrio character varying(30), usuario character varying(15),accion character(1),
"fechaRegistro" date) PARTITION BY RANGE ("fechaRegistro");

-- BitacoraDuracion_recorrido
CREATE TABLE public."BitacoraDuracion_recorrido"
(id_duracion_recorrido integer, hora integer, minutos integer, segundos integer, usuario character varying(15),
accion character(1),"fechaRegistro" date) PARTITION BY RANGE ("fechaRegistro");

-- BitacoraEmpleados
CREATE TABLE public."BitacoraEmpleados"
(id_empleado integer, primer_nombre character varying(30), segundo_nombre character varying(30),
primer_apellido character varying(30), segundo_apellido character varying(30), id_direccion integer, id_telefono integer,
id_correo integer,usuario character varying(15), accion character(1),"fechaRegistro" date) PARTITION BY RANGE ("fechaRegistro");

-- BitacoraEspecie
CREATE TABLE public."BitacoraEspecie"
(id_especies integer, nombre_comun character varying(30), nombre_cientifico character varying(30), id_descripcion integer,
id_zona integer, usuario character varying(15), accion character(1), "fechaRegistro" date) PARTITION BY RANGE ("fechaRegistro");

-- BitacoraEspecie_Habitat
CREATE TABLE public."BitacoraEspecie_Habitat"
("Especie_id_habitat" integer, "Habitat_id_habitat" integer, "id_Especie_Habitat" integer, usuario character varying(15),
accion character(1) COLLATE pg_catalog."default", "fechaRegistro" date) PARTITION BY RANGE ("fechaRegistro");

-- BitacoraGuia
CREATE TABLE public."BitacoraGuia"
(id_guia integer, id_empleado integer, fecha_deingreso_laboral date, usuario character varying(15), accion character(1),
"fechaRegistro" date) PARTITION BY RANGE ("fechaRegistro");

-- BitacoraHabitat
CREATE TABLE public."BitacoraHabitat"
(id_habitat integer, nombre character varying(30), id_tipo_habitat integer, id_continente integer, usuario character varying(15),
accion character(1), "fechaRegistro" date) PARTITION BY RANGE ("fechaRegistro");

-- BitacoraItinerarios
CREATE TABLE public."BitacoraItinerarios"
(codigo character varying(30), id_duracion_recorrido integer, longitud_recorrido double precision, numero_maximodevisitante_autorizados integer,
numero_dedistintasespecies_quevisita integer, usuario character varying(15), accion character(1), "fechaRegistro" date
) PARTITION BY RANGE ("fechaRegistro");

-- BitacoraLista_dezonas_visitadas
CREATE TABLE public."BitacoraLista_dezonas_visitadas"
(id_tours integer, codigo character varying(30), id_zona integer, usuario character varying(15), accion character(1),
"fechaRegistro" date) PARTITION BY RANGE ("fechaRegistro");

-- BitacoraTelefono
CREATE TABLE public."BitacoraTelefono"
(numero_celular_personal integer, numero_telefono_laboral integer, numero_telefono_secundario integer,usuario character varying(15),
accion character(1), "fechaRegistro" date) PARTITION BY RANGE ("fechaRegistro");

-- BitacoraTipo_habitat
CREATE TABLE public."BitacoraTipo_habitat"
(id_tipo_habitat integer, clima character varying(30), tipo_vegetacion character varying(30), usuario character varying(15), accion character(1),
"fechaRegistro" date) PARTITION BY RANGE ("fechaRegistro");

-- BitacoraZona
CREATE TABLE public."BitacoraZona"
(id_zona integer, nombre character varying(30), extension_territorial double precision, usuario character varying(15), accion character(1),
"fechaRegistro" date) PARTITION BY RANGE ("fechaRegistro");



-- Tablas para creacion de bitacoras por meses 

CREATE TABLE "BitacoraAsignaciones_enero2021" PARTITION OF      "BitacoraAsignaciones"       FOR VALUES FROM ('2021-01-01') TO ('2021-01-31');
CREATE TABLE "BitacoraAsignaciones_febrero2021" PARTITION OF    "BitacoraAsignaciones"       FOR VALUES FROM ('2021-02-01') TO ('2021-02-28');
CREATE TABLE "BitacoraAsignaciones_marzo2021" PARTITION OF      "BitacoraAsignaciones"       FOR VALUES FROM ('2021-03-01') TO ('2021-03-31');
CREATE TABLE "BitacoraAsignaciones_abril2021" PARTITION OF      "BitacoraAsignaciones"       FOR VALUES FROM ('2021-04-01') TO ('2021-04-30');
CREATE TABLE "BitacoraAsignaciones_mayo2021" PARTITION OF       "BitacoraAsignaciones"       FOR VALUES FROM ('2021-05-01') TO ('2021-05-31');
CREATE TABLE "BitacoraAsignaciones_junio2021" PARTITION OF      "BitacoraAsignaciones"       FOR VALUES FROM ('2021-06-01') TO ('2021-06-30');
CREATE TABLE "BitacoraAsignaciones_julio2021" PARTITION OF      "BitacoraAsignaciones"       FOR VALUES FROM ('2021-07-01') TO ('2021-07-31');
CREATE TABLE "BitacoraAsignaciones_agosto2021" PARTITION OF     "BitacoraAsignaciones"       FOR VALUES FROM ('2021-08-01') TO ('2021-08-31');
CREATE TABLE "BitacoraAsignaciones_septiembre2021" PARTITION OF "BitacoraAsignaciones"       FOR VALUES FROM ('2021-09-01') TO ('2021-09-30');
CREATE TABLE "BitacoraAsignaciones_octubre2021" PARTITION OF    "BitacoraAsignaciones"       FOR VALUES FROM ('2021-10-01') TO ('2021-10-31');
CREATE TABLE "BitacoraAsignaciones_noviembre2021" PARTITION OF  "BitacoraAsignaciones"       FOR VALUES FROM ('2021-11-01') TO ('2021-11-30');
CREATE TABLE "BitacoraAsignaciones_diciembre2021" PARTITION OF  "BitacoraAsignaciones"       FOR VALUES FROM ('2021-12-01') TO ('2021-12-31');


CREATE TABLE "BitacoraEspecie_enero2021" PARTITION OF      "BitacoraEspecie"       FOR VALUES FROM ('2021-01-01') TO ('2021-01-31');
CREATE TABLE "BitacoraEspecie_febrero2021" PARTITION OF    "BitacoraEspecie"       FOR VALUES FROM ('2021-02-01') TO ('2021-02-28');
CREATE TABLE "BitacoraEspecie_marzo2021" PARTITION OF      "BitacoraEspecie"       FOR VALUES FROM ('2021-03-01') TO ('2021-03-31');
CREATE TABLE "BitacoraEspecie_abril2021" PARTITION OF      "BitacoraEspecie"       FOR VALUES FROM ('2021-04-01') TO ('2021-04-30');
CREATE TABLE "BitacoraEspecie_mayo2021" PARTITION OF       "BitacoraEspecie"       FOR VALUES FROM ('2021-05-01') TO ('2021-05-31');
CREATE TABLE "BitacoraEspecie_junio2021" PARTITION OF      "BitacoraEspecie"       FOR VALUES FROM ('2021-06-01') TO ('2021-06-30');
CREATE TABLE "BitacoraEspecie_julio2021" PARTITION OF      "BitacoraEspecie"       FOR VALUES FROM ('2021-07-01') TO ('2021-07-31');
CREATE TABLE "BitacoraEspecie_agosto2021" PARTITION OF     "BitacoraEspecie"       FOR VALUES FROM ('2021-08-01') TO ('2021-08-31');
CREATE TABLE "BitacoraEspecie_septiembre2021" PARTITION OF "BitacoraEspecie"       FOR VALUES FROM ('2021-09-01') TO ('2021-09-30');
CREATE TABLE "BitacoraEspecie_octubre2021" PARTITION OF    "BitacoraEspecie"       FOR VALUES FROM ('2021-10-01') TO ('2021-10-31');
CREATE TABLE "BitacoraEspecie_noviembre2021" PARTITION OF  "BitacoraEspecie"       FOR VALUES FROM ('2021-11-01') TO ('2021-11-30');
CREATE TABLE "BitacoraEspecie_diciembre2021" PARTITION OF  "BitacoraEspecie"       FOR VALUES FROM ('2021-12-01') TO ('2021-12-31');


CREATE TABLE "BitacoraHabitat_enero2021" PARTITION OF      "BitacoraHabitat"       FOR VALUES FROM ('2021-01-01') TO ('2021-01-31');
CREATE TABLE "BitacoraHabitat_febrero2021" PARTITION OF    "BitacoraHabitat"       FOR VALUES FROM ('2021-02-01') TO ('2021-02-28');
CREATE TABLE "BitacoraHabitat_marzo2021" PARTITION OF      "BitacoraHabitat"       FOR VALUES FROM ('2021-03-01') TO ('2021-03-31');
CREATE TABLE "BitacoraHabitat_abril2021" PARTITION OF      "BitacoraHabitat"       FOR VALUES FROM ('2021-04-01') TO ('2021-04-30');
CREATE TABLE "BitacoraHabitat_mayo2021" PARTITION OF       "BitacoraHabitat"       FOR VALUES FROM ('2021-05-01') TO ('2021-05-31');
CREATE TABLE "BitacoraHabitat_junio2021" PARTITION OF      "BitacoraHabitat"       FOR VALUES FROM ('2021-06-01') TO ('2021-06-30');
CREATE TABLE "BitacoraHabitat_julio2021" PARTITION OF      "BitacoraHabitat"       FOR VALUES FROM ('2021-07-01') TO ('2021-07-31');
CREATE TABLE "BitacoraHabitat_agosto2021" PARTITION OF     "BitacoraHabitat"       FOR VALUES FROM ('2021-08-01') TO ('2021-08-31');
CREATE TABLE "BitacoraHabitat_septiembre2021" PARTITION OF "BitacoraHabitat"       FOR VALUES FROM ('2021-09-01') TO ('2021-09-30');
CREATE TABLE "BitacoraHabitat_octubre2021" PARTITION OF    "BitacoraHabitat"       FOR VALUES FROM ('2021-10-01') TO ('2021-10-31');
CREATE TABLE "BitacoraHabitat_noviembre2021" PARTITION OF  "BitacoraHabitat"       FOR VALUES FROM ('2021-11-01') TO ('2021-11-30');
CREATE TABLE "BitacoraHabitat_diciembre2021" PARTITION OF  "BitacoraHabitat"       FOR VALUES FROM ('2021-12-01') TO ('2021-12-31');


CREATE TABLE "BitacoraTipo_habitat_enero2021" PARTITION OF      "BitacoraTipo_habitat"       FOR VALUES FROM ('2021-01-01') TO ('2021-01-31');
CREATE TABLE "BitacoraTipo_habitat_febrero2021" PARTITION OF    "BitacoraTipo_habitat"       FOR VALUES FROM ('2021-02-01') TO ('2021-02-28');
CREATE TABLE "BitacoraTipo_habitat_marzo2021" PARTITION OF      "BitacoraTipo_habitat"       FOR VALUES FROM ('2021-03-01') TO ('2021-03-31');
CREATE TABLE "BitacoraTipo_habitat_abril2021" PARTITION OF      "BitacoraTipo_habitat"       FOR VALUES FROM ('2021-04-01') TO ('2021-04-30');
CREATE TABLE "BitacoraTipo_habitat_mayo2021" PARTITION OF       "BitacoraTipo_habitat"       FOR VALUES FROM ('2021-05-01') TO ('2021-05-31');
CREATE TABLE "BitacoraTipo_habitat_junio2021" PARTITION OF      "BitacoraTipo_habitat"       FOR VALUES FROM ('2021-06-01') TO ('2021-06-30');
CREATE TABLE "BitacoraTipo_habitat_julio2021" PARTITION OF      "BitacoraTipo_habitat"       FOR VALUES FROM ('2021-07-01') TO ('2021-07-31');
CREATE TABLE "BitacoraTipo_habitat_agosto2021" PARTITION OF     "BitacoraTipo_habitat"       FOR VALUES FROM ('2021-08-01') TO ('2021-08-31');
CREATE TABLE "BitacoraTipo_habitat_septiembre2021" PARTITION OF "BitacoraTipo_habitat"       FOR VALUES FROM ('2021-09-01') TO ('2021-09-30');
CREATE TABLE "BitacoraTipo_habitat_octubre2021" PARTITION OF    "BitacoraTipo_habitat"       FOR VALUES FROM ('2021-10-01') TO ('2021-10-31');
CREATE TABLE "BitacoraTipo_habitat_noviembre2021" PARTITION OF  "BitacoraTipo_habitat"       FOR VALUES FROM ('2021-11-01') TO ('2021-11-30');
CREATE TABLE "BitacoraTipo_habitat_diciembre2021" PARTITION OF  "BitacoraTipo_habitat"       FOR VALUES FROM ('2021-12-01') TO ('2021-12-31');


CREATE TABLE "BitacoraContinente_enero2021" PARTITION OF      "BitacoraContinente"       FOR VALUES FROM ('2021-01-01') TO ('2021-01-31');
CREATE TABLE "BitacoraContinente_febrero2021" PARTITION OF    "BitacoraContinente"       FOR VALUES FROM ('2021-02-01') TO ('2021-02-28');
CREATE TABLE "BitacoraContinente_marzo2021" PARTITION OF      "BitacoraContinente"       FOR VALUES FROM ('2021-03-01') TO ('2021-03-31');
CREATE TABLE "BitacoraContinente_abril2021" PARTITION OF      "BitacoraContinente"       FOR VALUES FROM ('2021-04-01') TO ('2021-04-30');
CREATE TABLE "BitacoraContinente_mayo2021" PARTITION OF       "BitacoraContinente"       FOR VALUES FROM ('2021-05-01') TO ('2021-05-31');
CREATE TABLE "BitacoraContinente_junio2021" PARTITION OF      "BitacoraContinente"       FOR VALUES FROM ('2021-06-01') TO ('2021-06-30');
CREATE TABLE "BitacoraContinente_julio2021" PARTITION OF      "BitacoraContinente"       FOR VALUES FROM ('2021-07-01') TO ('2021-07-31');
CREATE TABLE "BitacoraContinente_agosto2021" PARTITION OF     "BitacoraContinente"       FOR VALUES FROM ('2021-08-01') TO ('2021-08-31');
CREATE TABLE "BitacoraContinente_septiembre2021" PARTITION OF "BitacoraContinente"       FOR VALUES FROM ('2021-09-01') TO ('2021-09-30');
CREATE TABLE "BitacoraContinente_octubre2021" PARTITION OF    "BitacoraContinente"       FOR VALUES FROM ('2021-10-01') TO ('2021-10-31');
CREATE TABLE "BitacoraContinente_noviembre2021" PARTITION OF  "BitacoraContinente"       FOR VALUES FROM ('2021-11-01') TO ('2021-11-30');
CREATE TABLE "BitacoraContinente_diciembre2021" PARTITION OF  "BitacoraContinente"       FOR VALUES FROM ('2021-12-01') TO ('2021-12-31');


CREATE TABLE "BitacoraEspecie_Habitat_enero2021" PARTITION OF      "BitacoraEspecie_Habitat"       FOR VALUES FROM ('2021-01-01') TO ('2021-01-31');
CREATE TABLE "BitacoraEspecie_Habitat_febrero2021" PARTITION OF    "BitacoraEspecie_Habitat"       FOR VALUES FROM ('2021-02-01') TO ('2021-02-28');
CREATE TABLE "BitacoraEspecie_Habitat_marzo2021" PARTITION OF      "BitacoraEspecie_Habitat"       FOR VALUES FROM ('2021-03-01') TO ('2021-03-31');
CREATE TABLE "BitacoraEspecie_Habitat_abril2021" PARTITION OF      "BitacoraEspecie_Habitat"       FOR VALUES FROM ('2021-04-01') TO ('2021-04-30');
CREATE TABLE "BitacoraEspecie_Habitat_mayo2021" PARTITION OF       "BitacoraEspecie_Habitat"       FOR VALUES FROM ('2021-05-01') TO ('2021-05-31');
CREATE TABLE "BitacoraEspecie_Habitat_junio2021" PARTITION OF      "BitacoraEspecie_Habitat"       FOR VALUES FROM ('2021-06-01') TO ('2021-06-30');
CREATE TABLE "BitacoraEspecie_Habitat_julio2021" PARTITION OF      "BitacoraEspecie_Habitat"       FOR VALUES FROM ('2021-07-01') TO ('2021-07-31');
CREATE TABLE "BitacoraEspecie_Habitat_agosto2021" PARTITION OF     "BitacoraEspecie_Habitat"       FOR VALUES FROM ('2021-08-01') TO ('2021-08-31');
CREATE TABLE "BitacoraEspecie_Habitat_septiembre2021" PARTITION OF "BitacoraEspecie_Habitat"       FOR VALUES FROM ('2021-09-01') TO ('2021-09-30');
CREATE TABLE "BitacoraEspecie_Habitat_octubre2021" PARTITION OF    "BitacoraEspecie_Habitat"       FOR VALUES FROM ('2021-10-01') TO ('2021-10-31');
CREATE TABLE "BitacoraEspecie_Habitat_noviembre2021" PARTITION OF  "BitacoraEspecie_Habitat"       FOR VALUES FROM ('2021-11-01') TO ('2021-11-30');
CREATE TABLE "BitacoraEspecie_Habitat_diciembre2021" PARTITION OF  "BitacoraEspecie_Habitat"       FOR VALUES FROM ('2021-12-01') TO ('2021-12-31');


CREATE TABLE "BitacoraDescripcion_especie_enero2021" PARTITION OF      "BitacoraDescripcion_especie"       FOR VALUES FROM ('2021-01-01') TO ('2021-01-31');
CREATE TABLE "BitacoraDescripcion_especie_febrero2021" PARTITION OF    "BitacoraDescripcion_especie"       FOR VALUES FROM ('2021-02-01') TO ('2021-02-28');
CREATE TABLE "BitacoraDescripcion_especie_marzo2021" PARTITION OF      "BitacoraDescripcion_especie"       FOR VALUES FROM ('2021-03-01') TO ('2021-03-31');
CREATE TABLE "BitacoraDescripcion_especie_abril2021" PARTITION OF      "BitacoraDescripcion_especie"       FOR VALUES FROM ('2021-04-01') TO ('2021-04-30');
CREATE TABLE "BitacoraDescripcion_especie_mayo2021" PARTITION OF       "BitacoraDescripcion_especie"       FOR VALUES FROM ('2021-05-01') TO ('2021-05-31');
CREATE TABLE "BitacoraDescripcion_especie_junio2021" PARTITION OF      "BitacoraDescripcion_especie"       FOR VALUES FROM ('2021-06-01') TO ('2021-06-30');
CREATE TABLE "BitacoraDescripcion_especie_julio2021" PARTITION OF      "BitacoraDescripcion_especie"       FOR VALUES FROM ('2021-07-01') TO ('2021-07-31');
CREATE TABLE "BitacoraDescripcion_especie_agosto2021" PARTITION OF     "BitacoraDescripcion_especie"       FOR VALUES FROM ('2021-08-01') TO ('2021-08-31');
CREATE TABLE "BitacoraDescripcion_especie_septiembre2021" PARTITION OF "BitacoraDescripcion_especie"       FOR VALUES FROM ('2021-09-01') TO ('2021-09-30');
CREATE TABLE "BitacoraDescripcion_especie_octubre2021" PARTITION OF    "BitacoraDescripcion_especie"       FOR VALUES FROM ('2021-10-01') TO ('2021-10-31');
CREATE TABLE "BitacoraDescripcion_especie_noviembre2021" PARTITION OF  "BitacoraDescripcion_especie"       FOR VALUES FROM ('2021-11-01') TO ('2021-11-30');
CREATE TABLE "BitacoraDescripcion_especie_diciembre2021" PARTITION OF  "BitacoraDescripcion_especie"       FOR VALUES FROM ('2021-12-01') TO ('2021-12-31');


CREATE TABLE "BitacoraZona_enero2021" PARTITION OF      "BitacoraZona"       FOR VALUES FROM ('2021-01-01') TO ('2021-01-31');
CREATE TABLE "BitacoraZona_febrero2021" PARTITION OF    "BitacoraZona"       FOR VALUES FROM ('2021-02-01') TO ('2021-02-28');
CREATE TABLE "BitacoraZona_marzo2021" PARTITION OF      "BitacoraZona"       FOR VALUES FROM ('2021-03-01') TO ('2021-03-31');
CREATE TABLE "BitacoraZona_abril2021" PARTITION OF      "BitacoraZona"       FOR VALUES FROM ('2021-04-01') TO ('2021-04-30');
CREATE TABLE "BitacoraZona_mayo2021" PARTITION OF       "BitacoraZona"       FOR VALUES FROM ('2021-05-01') TO ('2021-05-31');
CREATE TABLE "BitacoraZona_junio2021" PARTITION OF      "BitacoraZona"       FOR VALUES FROM ('2021-06-01') TO ('2021-06-30');
CREATE TABLE "BitacoraZona_julio2021" PARTITION OF      "BitacoraZona"       FOR VALUES FROM ('2021-07-01') TO ('2021-07-31');
CREATE TABLE "BitacoraZona_agosto2021" PARTITION OF     "BitacoraZona"       FOR VALUES FROM ('2021-08-01') TO ('2021-08-31');
CREATE TABLE "BitacoraZona_septiembre2021" PARTITION OF "BitacoraZona"       FOR VALUES FROM ('2021-09-01') TO ('2021-09-30');
CREATE TABLE "BitacoraZona_octubre2021" PARTITION OF    "BitacoraZona"       FOR VALUES FROM ('2021-10-01') TO ('2021-10-31');
CREATE TABLE "BitacoraZona_noviembre2021" PARTITION OF  "BitacoraZona"       FOR VALUES FROM ('2021-11-01') TO ('2021-11-30');
CREATE TABLE "BitacoraZona_diciembre2021" PARTITION OF  "BitacoraZona"       FOR VALUES FROM ('2021-12-01') TO ('2021-12-31');


CREATE TABLE "BitacoraItinerarios_enero2021" PARTITION OF      "BitacoraItinerarios"       FOR VALUES FROM ('2021-01-01') TO ('2021-01-31');
CREATE TABLE "BitacoraItinerarios_febrero2021" PARTITION OF    "BitacoraItinerarios"       FOR VALUES FROM ('2021-02-01') TO ('2021-02-28');
CREATE TABLE "BitacoraItinerarios_marzo2021" PARTITION OF      "BitacoraItinerarios"       FOR VALUES FROM ('2021-03-01') TO ('2021-03-31');
CREATE TABLE "BitacoraItinerarios_abril2021" PARTITION OF      "BitacoraItinerarios"       FOR VALUES FROM ('2021-04-01') TO ('2021-04-30');
CREATE TABLE "BitacoraItinerarios_mayo2021" PARTITION OF       "BitacoraItinerarios"       FOR VALUES FROM ('2021-05-01') TO ('2021-05-31');
CREATE TABLE "BitacoraItinerarios_junio2021" PARTITION OF      "BitacoraItinerarios"       FOR VALUES FROM ('2021-06-01') TO ('2021-06-30');
CREATE TABLE "BitacoraItinerarios_julio2021" PARTITION OF      "BitacoraItinerarios"       FOR VALUES FROM ('2021-07-01') TO ('2021-07-31');
CREATE TABLE "BitacoraItinerarios_agosto2021" PARTITION OF     "BitacoraItinerarios"       FOR VALUES FROM ('2021-08-01') TO ('2021-08-31');
CREATE TABLE "BitacoraItinerarios_septiembre2021" PARTITION OF "BitacoraItinerarios"       FOR VALUES FROM ('2021-09-01') TO ('2021-09-30');
CREATE TABLE "BitacoraItinerarios_octubre2021" PARTITION OF    "BitacoraItinerarios"       FOR VALUES FROM ('2021-10-01') TO ('2021-10-31');
CREATE TABLE "BitacoraItinerarios_noviembre2021" PARTITION OF  "BitacoraItinerarios"       FOR VALUES FROM ('2021-11-01') TO ('2021-11-30');
CREATE TABLE "BitacoraItinerarios_diciembre2021" PARTITION OF  "BitacoraItinerarios"       FOR VALUES FROM ('2021-12-01') TO ('2021-12-31');


CREATE TABLE "BitacoraDuracion_recorrido_enero2021" PARTITION OF      "BitacoraDuracion_recorrido"       FOR VALUES FROM ('2021-01-01') TO ('2021-01-31');
CREATE TABLE "BitacoraDuracion_recorrido_febrero2021" PARTITION OF    "BitacoraDuracion_recorrido"       FOR VALUES FROM ('2021-02-01') TO ('2021-02-28');
CREATE TABLE "BitacoraDuracion_recorrido_marzo2021" PARTITION OF      "BitacoraDuracion_recorrido"       FOR VALUES FROM ('2021-03-01') TO ('2021-03-31');
CREATE TABLE "BitacoraDuracion_recorrido_abril2021" PARTITION OF      "BitacoraDuracion_recorrido"       FOR VALUES FROM ('2021-04-01') TO ('2021-04-30');
CREATE TABLE "BitacoraDuracion_recorrido_mayo2021" PARTITION OF       "BitacoraDuracion_recorrido"       FOR VALUES FROM ('2021-05-01') TO ('2021-05-31');
CREATE TABLE "BitacoraDuracion_recorrido_junio2021" PARTITION OF      "BitacoraDuracion_recorrido"       FOR VALUES FROM ('2021-06-01') TO ('2021-06-30');
CREATE TABLE "BitacoraDuracion_recorrido_julio2021" PARTITION OF      "BitacoraDuracion_recorrido"       FOR VALUES FROM ('2021-07-01') TO ('2021-07-31');
CREATE TABLE "BitacoraDuracion_recorrido_agosto2021" PARTITION OF     "BitacoraDuracion_recorrido"       FOR VALUES FROM ('2021-08-01') TO ('2021-08-31');
CREATE TABLE "BitacoraDuracion_recorrido_septiembre2021" PARTITION OF "BitacoraDuracion_recorrido"       FOR VALUES FROM ('2021-09-01') TO ('2021-09-30');
CREATE TABLE "BitacoraDuracion_recorrido_octubre2021" PARTITION OF    "BitacoraDuracion_recorrido"       FOR VALUES FROM ('2021-10-01') TO ('2021-10-31');
CREATE TABLE "BitacoraDuracion_recorrido_noviembre2021" PARTITION OF  "BitacoraDuracion_recorrido"       FOR VALUES FROM ('2021-11-01') TO ('2021-11-30');
CREATE TABLE "BitacoraDuracion_recorrido_diciembre2021" PARTITION OF  "BitacoraDuracion_recorrido"       FOR VALUES FROM ('2021-12-01') TO ('2021-12-31');


CREATE TABLE "BitacoraLista_dezonas_visitadas_enero2021" PARTITION OF      "BitacoraLista_dezonas_visitadas"       FOR VALUES FROM ('2021-01-01') TO ('2021-01-31');
CREATE TABLE "BitacoraLista_dezonas_visitadas_febrero2021" PARTITION OF    "BitacoraLista_dezonas_visitadas"       FOR VALUES FROM ('2021-02-01') TO ('2021-02-28');
CREATE TABLE "BitacoraLista_dezonas_visitadas_marzo2021" PARTITION OF      "BitacoraLista_dezonas_visitadas"       FOR VALUES FROM ('2021-03-01') TO ('2021-03-31');
CREATE TABLE "BitacoraLista_dezonas_visitadas_abril2021" PARTITION OF      "BitacoraLista_dezonas_visitadas"       FOR VALUES FROM ('2021-04-01') TO ('2021-04-30');
CREATE TABLE "BitacoraLista_dezonas_visitadas_mayo2021" PARTITION OF       "BitacoraLista_dezonas_visitadas"       FOR VALUES FROM ('2021-05-01') TO ('2021-05-31');
CREATE TABLE "BitacoraLista_dezonas_visitadas_junio2021" PARTITION OF      "BitacoraLista_dezonas_visitadas"       FOR VALUES FROM ('2021-06-01') TO ('2021-06-30');
CREATE TABLE "BitacoraLista_dezonas_visitadas_julio2021" PARTITION OF      "BitacoraLista_dezonas_visitadas"       FOR VALUES FROM ('2021-07-01') TO ('2021-07-31');
CREATE TABLE "BitacoraLista_dezonas_visitadas_agosto2021" PARTITION OF     "BitacoraLista_dezonas_visitadas"       FOR VALUES FROM ('2021-08-01') TO ('2021-08-31');
CREATE TABLE "BitacoraLista_dezonas_visitadas_octubre2021" PARTITION OF    "BitacoraLista_dezonas_visitadas"       FOR VALUES FROM ('2021-10-01') TO ('2021-10-31');
CREATE TABLE "BitacoraLista_dezonas_visitadas_noviembre2021" PARTITION OF  "BitacoraLista_dezonas_visitadas"       FOR VALUES FROM ('2021-11-01') TO ('2021-11-30');
CREATE TABLE "BitacoraLista_dezonas_visitadas_diciembre2021" PARTITION OF  "BitacoraLista_dezonas_visitadas"       FOR VALUES FROM ('2021-12-01') TO ('2021-12-31');


CREATE TABLE "BitacoraEmpleados_enero2021" PARTITION OF      "BitacoraEmpleados"       FOR VALUES FROM ('2021-01-01') TO ('2021-01-31');
CREATE TABLE "BitacoraEmpleados_febrero2021" PARTITION OF    "BitacoraEmpleados"       FOR VALUES FROM ('2021-02-01') TO ('2021-02-28');
CREATE TABLE "BitacoraEmpleados_marzo2021" PARTITION OF      "BitacoraEmpleados"       FOR VALUES FROM ('2021-03-01') TO ('2021-03-31');
CREATE TABLE "BitacoraEmpleados_abril2021" PARTITION OF      "BitacoraEmpleados"       FOR VALUES FROM ('2021-04-01') TO ('2021-04-30');
CREATE TABLE "BitacoraEmpleados_mayo2021" PARTITION OF       "BitacoraEmpleados"       FOR VALUES FROM ('2021-05-01') TO ('2021-05-31');
CREATE TABLE "BitacoraEmpleados_junio2021" PARTITION OF      "BitacoraEmpleados"       FOR VALUES FROM ('2021-06-01') TO ('2021-06-30');
CREATE TABLE "BitacoraEmpleados_julio2021" PARTITION OF      "BitacoraEmpleados"       FOR VALUES FROM ('2021-07-01') TO ('2021-07-31');
CREATE TABLE "BitacoraEmpleados_agosto2021" PARTITION OF     "BitacoraEmpleados"       FOR VALUES FROM ('2021-08-01') TO ('2021-08-31');
CREATE TABLE "BitacoraEmpleados_septiembre2021" PARTITION OF "BitacoraEmpleados"       FOR VALUES FROM ('2021-09-01') TO ('2021-09-30');
CREATE TABLE "BitacoraEmpleados_octubre2021" PARTITION OF    "BitacoraEmpleados"       FOR VALUES FROM ('2021-10-01') TO ('2021-10-31');
CREATE TABLE "BitacoraEmpleados_noviembre2021" PARTITION OF  "BitacoraEmpleados"       FOR VALUES FROM ('2021-11-01') TO ('2021-11-30');
CREATE TABLE "BitacoraEmpleados_diciembre2021" PARTITION OF  "BitacoraEmpleados"       FOR VALUES FROM ('2021-12-01') TO ('2021-12-31');


CREATE TABLE "BitacoraDireccion_enero2021" PARTITION OF      "BitacoraDireccion"       FOR VALUES FROM ('2021-01-01') TO ('2021-01-31');
CREATE TABLE "BitacoraDireccion_febrero2021" PARTITION OF    "BitacoraDireccion"       FOR VALUES FROM ('2021-02-01') TO ('2021-02-28');
CREATE TABLE "BitacoraDireccion_marzo2021" PARTITION OF      "BitacoraDireccion"       FOR VALUES FROM ('2021-03-01') TO ('2021-03-31');
CREATE TABLE "BitacoraDireccion_abril2021" PARTITION OF      "BitacoraDireccion"       FOR VALUES FROM ('2021-04-01') TO ('2021-04-30');
CREATE TABLE "BitacoraDireccion_mayo2021" PARTITION OF       "BitacoraDireccion"       FOR VALUES FROM ('2021-05-01') TO ('2021-05-31');
CREATE TABLE "BitacoraDireccion_junio2021" PARTITION OF      "BitacoraDireccion"       FOR VALUES FROM ('2021-06-01') TO ('2021-06-30');
CREATE TABLE "BitacoraDireccion_julio2021" PARTITION OF      "BitacoraDireccion"       FOR VALUES FROM ('2021-07-01') TO ('2021-07-31');
CREATE TABLE "BitacoraDireccion_agosto2021" PARTITION OF     "BitacoraDireccion"       FOR VALUES FROM ('2021-08-01') TO ('2021-08-31');
CREATE TABLE "BitacoraDireccion_septiembre2021" PARTITION OF "BitacoraDireccion"       FOR VALUES FROM ('2021-09-01') TO ('2021-09-30');
CREATE TABLE "BitacoraDireccion_octubre2021" PARTITION OF    "BitacoraDireccion"       FOR VALUES FROM ('2021-10-01') TO ('2021-10-31');
CREATE TABLE "BitacoraDireccion_noviembre2021" PARTITION OF  "BitacoraDireccion"       FOR VALUES FROM ('2021-11-01') TO ('2021-11-30');
CREATE TABLE "BitacoraDireccion_diciembre2021" PARTITION OF  "BitacoraDireccion"       FOR VALUES FROM ('2021-12-01') TO ('2021-12-31');


CREATE TABLE "BitacoraTelefono_enero2021" PARTITION OF      "BitacoraTelefono"       FOR VALUES FROM ('2021-01-01') TO ('2021-01-31');
CREATE TABLE "BitacoraTelefono_febrero2021" PARTITION OF    "BitacoraTelefono"       FOR VALUES FROM ('2021-02-01') TO ('2021-02-28');
CREATE TABLE "BitacoraTelefono_marzo2021" PARTITION OF      "BitacoraTelefono"       FOR VALUES FROM ('2021-03-01') TO ('2021-03-31');
CREATE TABLE "BitacoraTelefono_abril2021" PARTITION OF      "BitacoraTelefono"       FOR VALUES FROM ('2021-04-01') TO ('2021-04-30');
CREATE TABLE "BitacoraTelefono_mayo2021" PARTITION OF       "BitacoraTelefono"       FOR VALUES FROM ('2021-05-01') TO ('2021-05-31');
CREATE TABLE "BitacoraTelefono_junio2021" PARTITION OF      "BitacoraTelefono"       FOR VALUES FROM ('2021-06-01') TO ('2021-06-30');
CREATE TABLE "BitacoraTelefono_julio2021" PARTITION OF      "BitacoraTelefono"       FOR VALUES FROM ('2021-07-01') TO ('2021-07-31');
CREATE TABLE "BitacoraTelefono_agosto2021" PARTITION OF     "BitacoraTelefono"       FOR VALUES FROM ('2021-08-01') TO ('2021-08-31');
CREATE TABLE "BitacoraTelefono_septiembre2021" PARTITION OF "BitacoraTelefono"       FOR VALUES FROM ('2021-09-01') TO ('2021-09-30');
CREATE TABLE "BitacoraTelefono_octubre2021" PARTITION OF    "BitacoraTelefono"       FOR VALUES FROM ('2021-10-01') TO ('2021-10-31');
CREATE TABLE "BitacoraTelefono_noviembre2021" PARTITION OF  "BitacoraTelefono"       FOR VALUES FROM ('2021-11-01') TO ('2021-11-30');
CREATE TABLE "BitacoraTelefono_diciembre2021" PARTITION OF  "BitacoraTelefono"       FOR VALUES FROM ('2021-12-01') TO ('2021-12-31');


CREATE TABLE "BitacoraCorreo_enero2021" PARTITION OF      "BitacoraCorreo"       FOR VALUES FROM ('2021-01-01') TO ('2021-01-31');
CREATE TABLE "BitacoraCorreo_febrero2021" PARTITION OF    "BitacoraCorreo"       FOR VALUES FROM ('2021-02-01') TO ('2021-02-28');
CREATE TABLE "BitacoraCorreo_marzo2021" PARTITION OF      "BitacoraCorreo"       FOR VALUES FROM ('2021-03-01') TO ('2021-03-31');
CREATE TABLE "BitacoraCorreo_abril2021" PARTITION OF      "BitacoraCorreo"       FOR VALUES FROM ('2021-04-01') TO ('2021-04-30');
CREATE TABLE "BitacoraCorreo_mayo2021" PARTITION OF       "BitacoraCorreo"       FOR VALUES FROM ('2021-05-01') TO ('2021-05-31');
CREATE TABLE "BitacoraCorreo_junio2021" PARTITION OF      "BitacoraCorreo"       FOR VALUES FROM ('2021-06-01') TO ('2021-06-30');
CREATE TABLE "BitacoraCorreo_julio2021" PARTITION OF      "BitacoraCorreo"       FOR VALUES FROM ('2021-07-01') TO ('2021-07-31');
CREATE TABLE "BitacoraCorreo_agosto2021" PARTITION OF     "BitacoraCorreo"       FOR VALUES FROM ('2021-08-01') TO ('2021-08-31');
CREATE TABLE "BitacoraCorreo_septiembre2021" PARTITION OF "BitacoraCorreo"       FOR VALUES FROM ('2021-09-01') TO ('2021-09-30');
CREATE TABLE "BitacoraCorreo_octubre2021" PARTITION OF    "BitacoraCorreo"       FOR VALUES FROM ('2021-10-01') TO ('2021-10-31');
CREATE TABLE "BitacoraCorreo_noviembre2021" PARTITION OF  "BitacoraCorreo"       FOR VALUES FROM ('2021-11-01') TO ('2021-11-30');
CREATE TABLE "BitacoraCorreo_diciembre2021" PARTITION OF  "BitacoraCorreo"       FOR VALUES FROM ('2021-12-01') TO ('2021-12-31');


CREATE TABLE "BitacoraGuia_enero2021" PARTITION OF      "BitacoraGuia"       FOR VALUES FROM ('2021-01-01') TO ('2021-01-31');
CREATE TABLE "BitacoraGuia_febrero2021" PARTITION OF    "BitacoraGuia"       FOR VALUES FROM ('2021-02-01') TO ('2021-02-28');
CREATE TABLE "BitacoraGuia_marzo2021" PARTITION OF      "BitacoraGuia"       FOR VALUES FROM ('2021-03-01') TO ('2021-03-31');
CREATE TABLE "BitacoraGuia_abril2021" PARTITION OF      "BitacoraGuia"       FOR VALUES FROM ('2021-04-01') TO ('2021-04-30');
CREATE TABLE "BitacoraGuia_mayo2021" PARTITION OF       "BitacoraGuia"       FOR VALUES FROM ('2021-05-01') TO ('2021-05-31');
CREATE TABLE "BitacoraGuia_junio2021" PARTITION OF      "BitacoraGuia"       FOR VALUES FROM ('2021-06-01') TO ('2021-06-30');
CREATE TABLE "BitacoraGuia_julio2021" PARTITION OF      "BitacoraGuia"       FOR VALUES FROM ('2021-07-01') TO ('2021-07-31');
CREATE TABLE "BitacoraGuia_agosto2021" PARTITION OF     "BitacoraGuia"       FOR VALUES FROM ('2021-08-01') TO ('2021-08-31');
CREATE TABLE "BitacoraGuia_septiembre2021" PARTITION OF "BitacoraGuia"       FOR VALUES FROM ('2021-09-01') TO ('2021-09-30');
CREATE TABLE "BitacoraGuia_octubre2021" PARTITION OF    "BitacoraGuia"       FOR VALUES FROM ('2021-10-01') TO ('2021-10-31');
CREATE TABLE "BitacoraGuia_noviembre2021" PARTITION OF  "BitacoraGuia"       FOR VALUES FROM ('2021-11-01') TO ('2021-11-30');
CREATE TABLE "BitacoraGuia_diciembre2021" PARTITION OF  "BitacoraGuia"       FOR VALUES FROM ('2021-12-01') TO ('2021-12-31');


CREATE TABLE "BitacoraCuidadores_enero2021" PARTITION OF      "BitacoraCuidadores"       FOR VALUES FROM ('2021-01-01') TO ('2021-01-31');
CREATE TABLE "BitacoraCuidadores_febrero2021" PARTITION OF    "BitacoraCuidadores"       FOR VALUES FROM ('2021-02-01') TO ('2021-02-28');
CREATE TABLE "BitacoraCuidadores_marzo2021" PARTITION OF      "BitacoraCuidadores"       FOR VALUES FROM ('2021-03-01') TO ('2021-03-31');
CREATE TABLE "BitacoraCuidadores_abril2021" PARTITION OF      "BitacoraCuidadores"       FOR VALUES FROM ('2021-04-01') TO ('2021-04-30');
CREATE TABLE "BitacoraCuidadores_mayo2021" PARTITION OF       "BitacoraCuidadores"       FOR VALUES FROM ('2021-05-01') TO ('2021-05-31');
CREATE TABLE "BitacoraCuidadores_junio2021" PARTITION OF      "BitacoraCuidadores"       FOR VALUES FROM ('2021-06-01') TO ('2021-06-30');
CREATE TABLE "BitacoraCuidadores_julio2021" PARTITION OF      "BitacoraCuidadores"       FOR VALUES FROM ('2021-07-01') TO ('2021-07-31');
CREATE TABLE "BitacoraCuidadores_agosto2021" PARTITION OF     "BitacoraCuidadores"       FOR VALUES FROM ('2021-08-01') TO ('2021-08-31');
CREATE TABLE "BitacoraCuidadores_septiembre2021" PARTITION OF "BitacoraCuidadores"       FOR VALUES FROM ('2021-09-01') TO ('2021-09-30');
CREATE TABLE "BitacoraCuidadores_octubre2021" PARTITION OF    "BitacoraCuidadores"       FOR VALUES FROM ('2021-10-01') TO ('2021-10-31');
CREATE TABLE "BitacoraCuidadores_noviembre2021" PARTITION OF  "BitacoraCuidadores"       FOR VALUES FROM ('2021-11-01') TO ('2021-11-30');
CREATE TABLE "BitacoraCuidadores_diciembre2021" PARTITION OF  "BitacoraCuidadores"       FOR VALUES FROM ('2021-12-01') TO ('2021-12-31');


CREATE TABLE "BitacoraCuidador_especie_enero2021" PARTITION OF      "BitacoraCuidador_especie"       FOR VALUES FROM ('2021-01-01') TO ('2021-01-31');
CREATE TABLE "BitacoraCuidador_especie_febrero2021" PARTITION OF    "BitacoraCuidador_especie"       FOR VALUES FROM ('2021-02-01') TO ('2021-02-28');
CREATE TABLE "BitacoraCuidador_especie_marzo2021" PARTITION OF      "BitacoraCuidador_especie"       FOR VALUES FROM ('2021-03-01') TO ('2021-03-31');
CREATE TABLE "BitacoraCuidador_especie_abril2021" PARTITION OF      "BitacoraCuidador_especie"       FOR VALUES FROM ('2021-04-01') TO ('2021-04-30');
CREATE TABLE "BitacoraCuidador_especie_mayo2021" PARTITION OF       "BitacoraCuidador_especie"       FOR VALUES FROM ('2021-05-01') TO ('2021-05-31');
CREATE TABLE "BitacoraCuidador_especie_junio2021" PARTITION OF      "BitacoraCuidador_especie"       FOR VALUES FROM ('2021-06-01') TO ('2021-06-30');
CREATE TABLE "BitacoraCuidador_especie_julio2021" PARTITION OF      "BitacoraCuidador_especie"       FOR VALUES FROM ('2021-07-01') TO ('2021-07-31');
CREATE TABLE "BitacoraCuidador_especie_agosto2021" PARTITION OF     "BitacoraCuidador_especie"       FOR VALUES FROM ('2021-08-01') TO ('2021-08-31');
CREATE TABLE "BitacoraCuidador_especie_septiembre2021" PARTITION OF "BitacoraCuidador_especie"       FOR VALUES FROM ('2021-09-01') TO ('2021-09-30');
CREATE TABLE "BitacoraCuidador_especie_octubre2021" PARTITION OF    "BitacoraCuidador_especie"       FOR VALUES FROM ('2021-10-01') TO ('2021-10-31');
CREATE TABLE "BitacoraCuidador_especie_noviembre2021" PARTITION OF  "BitacoraCuidador_especie"       FOR VALUES FROM ('2021-11-01') TO ('2021-11-30');
CREATE TABLE "BitacoraCuidador_especie_diciembre2021" PARTITION OF  "BitacoraCuidador_especie"       FOR VALUES FROM ('2021-12-01') TO ('2021-12-31');