-----------------------------REPORTE 1---------------------------
SELECT AEX.logo AS "Logo de Aerol�nea",(SELECT '[' || LISTAGG(TA.datos_tipo_aerolinea.nombre,', ') WITHIN GROUP (ORDER BY TA.datos_tipo_aerolinea.nombre) || ']'AS "Tipo de aerolinea" 
                                        FROM  AEROLINEA AE, TIPO_AEROLINEA TA, AEROLINEA_TIPO_AEROLINEA ATA
                                            WHERE AE.clave = ATA.aerolinea_fk AND ATA.tipo_aerolinea_fk = TA.clave AND AE.clave = AEX.clave
                                                 GROUP BY AE.datos_aerolinea.nombre)AS "Tipo de aerolinea",
                                                 (SELECT DISTINCT RTRIM(REGEXP_REPLACE((LISTAGG('- ' || A.nombre,CHR(10)) WITHIN GROUP(ORDER BY A.nombre)OVER()), '([^'||CHR(10)||']*)('||CHR(10)||'\1)+('||CHR(10)||'|$)','\1\3'),CHR(10) ) AS "Flota"
                                        FROM  AEROLINEA AE, MODELO_AVION MA, MODELO_AVION_AEROLINEA MAA, AVION A
                                            WHERE AE.clave = MAA.aerolinea_fk AND MAA.modelo_avion_fk = MA.clave AND MA.avion_fk = A.clave AND AE.clave = AEX.clave
                                                 ) AS "Flota"
    FROM AEROLINEA AEX ;

-----------------------------REPORTE 3---------------------------
SELECT AE.logo AS "Logo de Aerol�nea", AV.nombre AS "Avi�n", AV.foto AS "Foto avi�n", MA.datos_modelo_avion.nombre AS "Modelo", MA.velocidad_maxima AS "Velocidad M�xima Mach", MA.alcance AS "Alcance", MA.altitud_maxima AS "Altitud m�xima de vuelo",
MA.envergadura AS "Envergadura", MA.ancho_cabina AS "Ancho del interior de la cabina", MA.altura_cabina AS "Altura del interior de la cabina" 
    FROM AEROLINEA AE, AVION AV, MODELO_AVION MA
        WHERE AE.datos_aerolinea.nombre = 'Delta Airlines' AND AV.nombre = 'Airbus A330' AND  MA.datos_modelo_avion.nombre = 'Airbus A330-300';
-----------------------------REPORTE 4---------------------------
SELECT correo AS "Correo de usuario", foto AS "Foto", primer_nombre || ' ' || segundo_nombre AS "Nombre", primer_apellido || ' ' || segundo_apellido AS "Apellido", telefono AS "N�mero de telefono" FROM USUARIO;