-----------------------------REPORTE 1---------------------------
SELECT AE.logo AS "Logo de Aerolínea",(SELECT '[' || LISTAGG(TA.datos_tipo_aerolinea.nombre,', ') WITHIN GROUP (ORDER BY TA.datos_tipo_aerolinea.nombre) || ']'AS "Tipo de aerolinea" 
                                        FROM  AEROLINEA AE, TIPO_AEROLINEA TA, AEROLINEA_TIPO_AEROLINEA ATA
                                            WHERE AE.clave = ATA.aerolinea_fk AND ATA.tipo_aerolinea_fk = TA.clave AND AE.clave = 4
                                                 GROUP BY AE.datos_aerolinea.nombre)AS "Tipo de aerolinea",
                                                 (SELECT LISTAGG('- ' || MA.datos_modelo_avion.nombre,chr(10)) WITHIN GROUP (ORDER BY MA.datos_modelo_avion.nombre) AS "Flota" 
                                        FROM  AEROLINEA AE, MODELO_AVION MA, MODELO_AVION_AEROLINEA MAA
                                            WHERE AE.clave = MAA.aerolinea_fk AND MAA.modelo_avion_fk = MA.clave AND AE.clave = 4
                                                 GROUP BY AE.datos_aerolinea.nombre) AS "Flota"
    FROM AEROLINEA AE where AE.clave = 4;


-----------------------------REPORTE 3---------------------------
SELECT AE.logo AS "Logo de Aerolínea", AV.nombre AS "Avión", AV.foto AS "Foto avión", MA.datos_modelo_avion.nombre AS "Modelo", MA.velocidad_maxima AS "Velocidad Máxima Mach", MA.alcance AS "Alcance", MA.altitud_maxima AS "Altitud máxima de vuelo",
MA.envergadura AS "Envergadura", MA.ancho_cabina AS "Ancho del interior de la cabina", MA.altura_cabina AS "Altura del interior de la cabina" 
    FROM AEROLINEA AE, AVION AV, MODELO_AVION MA
        WHERE AE.datos_aerolinea.nombre = 'Delta Airlines' AND AV.nombre = 'Airbus A330' AND  MA.datos_modelo_avion.nombre = 'Airbus A330-300';
-----------------------------REPORTE 4---------------------------
SELECT correo AS "Correo de usuario", foto AS "Foto", primer_nombre || ' ' || segundo_nombre AS "Nombre", primer_apellido || ' ' || segundo_apellido AS "Apellido", telefono AS "Número de telefono" FROM USUARIO;