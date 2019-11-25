-----------------------------QUERY REPORTE 1---------------------------
/* SELECT AEX.logo AS "Logo de Aerolinea",(SELECT '[' || LISTAGG(TA.datos_tipo_aerolinea.nombre,', ') WITHIN GROUP (ORDER BY TA.datos_tipo_aerolinea.nombre) || ']'AS "Tipo de aerolinea" 
                                        FROM  AEROLINEA AE, TIPO_AEROLINEA TA, AEROLINEA_TIPO_AEROLINEA ATA
                                            WHERE AE.clave = ATA.aerolinea_fk AND ATA.tipo_aerolinea_fk = TA.clave AND AE.clave = AEX.clave
                                                 GROUP BY AE.datos_aerolinea.nombre)AS "Tipo de aerolinea",
                                                 (SELECT LISTAGG('- ' || MA.datos_modelo_avion.nombre,chr(10)) WITHIN GROUP (ORDER BY MA.datos_modelo_avion.nombre) AS "Flota" 
                                        FROM  AEROLINEA AE, MODELO_AVION MA, MODELO_AVION_AEROLINEA MAA
                                            WHERE AE.clave = MAA.aerolinea_fk AND MAA.modelo_avion_fk = MA.clave AND AE.clave = AEX.clave
                                                 GROUP BY AE.datos_aerolinea.nombre) AS "Flota"
    FROM AEROLINEA AEX; */

SELECT AEX.logo AS "Logo de Aerolinea",(SELECT '[' || LISTAGG(TA.datos_tipo_aerolinea.nombre,', ') WITHIN GROUP (ORDER BY TA.datos_tipo_aerolinea.nombre) || ']'AS "Tipo de aerolinea" 
                                        FROM  AEROLINEA AE, TIPO_AEROLINEA TA, AEROLINEA_TIPO_AEROLINEA ATA
                                            WHERE AE.clave = ATA.aerolinea_fk AND ATA.tipo_aerolinea_fk = TA.clave AND AE.clave = AEX.clave
                                                 GROUP BY AE.datos_aerolinea.nombre)AS "Tipo de aerolinea",
                                                 (SELECT DISTINCT RTRIM(REGEXP_REPLACE((LISTAGG('- ' || A.nombre,CHR(10)) WITHIN GROUP(ORDER BY A.nombre)OVER()), '([^'||CHR(10)||']*)('||CHR(10)||'\1)+('||CHR(10)||'|$)','\1\3'),CHR(10) ) AS "Flota"
                                        FROM  AEROLINEA AE, MODELO_AVION MA, MODELO_AVION_AEROLINEA MAA, AVION A
                                            WHERE AE.clave = MAA.aerolinea_fk AND MAA.modelo_avion_fk = MA.clave AND MA.avion_fk = A.clave AND AE.clave = AEX.clave) AS "Flota"
    FROM AEROLINEA AEX;

-----------------------------QUERY REPORTE 2---------------------------
SELECT  AE.Logo AS "logo de Aerolinea", AV.nombre AS "Avion", AV.foto AS "Foto avion", MAN.datos_modelo_avion.nombre AS "Modelo", 
    MAA.cantidad AS "Cantidad de Aviones", (SELECT DISTINCT RTRIM(REGEXP_REPLACE((LISTAGG('- ' || MAC.numero_asientos || ' en ' || CL.datos_clase.nombre,CHR(10)) WITHIN GROUP(ORDER BY MAC.numero_asientos)OVER()), '([^'||CHR(10)||']*)('||CHR(10)||'\1)+('||CHR(10)||'|$)','\1\3'),CHR(10))
                                                FROM MODELO_AVION MA, MODELO_AVION_CLASE MAC, CLASE CL
                                                WHERE MA.clave = MAC.modelo_avion_fk AND CL.clave = MAC.clase_fk AND MA.clave = MAN.clave) AS "Asientos por Clase"
    FROM AEROLINEA AE,MODELO_AVION_AEROLINEA MAA,MODELO_AVION MAN,AVION AV
    WHERE AE.clave = MAA.aerolinea_fk AND MAN.clave = MAA.modelo_avion_fk AND AV.clave = MAN.avion_fk AND AE.datos_aerolinea.nombre = 'Latam';
-----------------------------QUERY REPORTE 3---------------------------
SELECT AE.logo AS "Logo de Aerolinea", AV.nombre AS "Avion", AV.foto AS "Foto avion", MA.datos_modelo_avion.nombre AS "Modelo", MA.velocidad_maxima AS "Velocidad Maxima Mach", MA.alcance AS "Alcance", MA.altitud_maxima AS "Altitud maxima de vuelo",
    MA.envergadura AS "Envergadura", MA.ancho_cabina AS "Ancho del interior de la cabina", MA.altura_cabina AS "Altura del interior de la cabina" 
    FROM AEROLINEA AE,MODELO_AVION_AEROLINEA MAA,MODELO_AVION MA,AVION AV
    WHERE AE.clave = MAA.aerolinea_fk AND MA.clave = MAA.modelo_avion_fk AND AV.clave = MA.avion_fk AND AV.nombre = 'Airbus A330' AND  MA.datos_modelo_avion.nombre = 'Airbus A330-300';
-----------------------------QUERY REPORTE 4---------------------------
SELECT correo AS "Correo de usuario", foto AS "Foto", primer_nombre || ' ' || segundo_nombre AS "Nombre", primer_apellido || ' ' || segundo_apellido AS "Apellido", telefono AS "Numero de telefono" FROM USUARIO;

-----------------------------QUERY REPORTE 5---------------------------

-----------------------------QUERY REPORTE 6---------------------------
