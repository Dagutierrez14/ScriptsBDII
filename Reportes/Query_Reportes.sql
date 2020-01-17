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

/*SELECT AE.logo AS "Logo de Aerolinea", "albaass@gmail.com" AS "Correo de usuario", LO.Nombre || '-' || LD.nombre || '-' || V.Intinerario_estimado.fecha_inicio AS Vuelo, to_date('2018-01-28 00:00:00','yyyy-mm-dd HH24:MI:SS') AS "Fecha de Salida", to_date('2018-12-31 00:00:00','yyyy-mm-dd HH24:MI:SS') AS "Fecha de regreso", V.Intinerario_estimado.fecha_inicio || ' ' || LO.nombre || ' (' || AEO.codigo || ')' AS "Sale", 
V.Intinerario_estimado.fecha_fin || ' ' || LD.nombre || ' (' || AED.codigo || ')' AS "Llega",  V.Intinerario_real.calcular_duracion_horas(V.Intinerario_estimado.fecha_inicio,V.Intinerario_estimado.fecha_fin) AS "Duracion" 
FROM VUELO V, RESERVA_USUARIO_VUELO RUV, RESERVA_USUARIO REU, AEROPUERTO AEO,  AEROPUERTO AED, LUGAR LO, LUGAR LD, AEROLINEA A, USUARIO U, PAGO P, FACTURA_RESERVA FR
WHERE U.correo = "albaass@gmail.com" AND FR.usuario_fk = U.clave AND REU.factura_reserva_fk = FR.clave AND RUV.reserva_usuario_fk = REU.clave AND RUV.vuelo_fk = V.clave AND V.Aeropuerto_llegada_fk = AED.clave AND AED.lugar_fk = LD.clave 
AND V.Aeropuerto_salida_fk = AEO.clave AND AEO.lugar_fk = LO.clave AND P.factura_reserva_fk = FR.clave;*/

-----------------------------QUERY REPORTE 6---------------------------


-----------------------------QUERY REPORTE 7---------------------------

SELECT '02/02/2017' || ' - ' || '08/02/2020' AS "Fecha", LiO.nombre AS "Lugar de origen", LD.nombre AS "Lugar de destino", COUNT(RU.clave) AS "Cantidad de reservaciones"
    FROM VUELO V, AEROPUERTO AEO, AEROPUERTO AED, LUGAR LiO, LUGAR LD, RESERVA_USUARIO_VUELO RUV, RESERVA_USUARIO RU
        WHERE AEO.clave = V.Aeropuerto_salida_fk AND AED.clave = V.Aeropuerto_llegada_fk AND AEO.lugar_fk = LiO.clave AND
            AED.lugar_fk = LD.clave AND V.intinerario_estimado.fecha_inicio >= '02/02/2017' AND V.intinerario_estimado.fecha_fin <= '02/08/2020' AND
                RUV.vuelo_fk = V.clave AND RUV.reserva_usuario_fk = RU.clave
                    GROUP BY LD.nombre, LiO.nombre
                        ORDER BY COUNT(RU.clave) DESC
                        FETCH NEXT 10 ROWS ONLY;


SELECT A.datos_aerolinea.nombre, RU.clave, V.clave, V.intinerario_estimado.fecha_inicio, V.intinerario_estimado.fecha_fin, LO.nombre AS "Lugar de origen", LD.nombre AS "Lugar de destino"
    FROM VUELO V, AEROPUERTO AEO, AEROLINEA A, MODELO_AVION_AEROLINEA MAA, AEROPUERTO AED, LUGAR LO, LUGAR LD, RESERVA_USUARIO_VUELO RUV, RESERVA_USUARIO RU
    WHERE MAA.clave = V.modelo_avion_aerolinea_fk AND MAA.aerolinea_fk = A.clave AND AEO.clave = V.Aeropuerto_salida_fk AND AED.clave = V.Aeropuerto_llegada_fk AND AEO.lugar_fk = LO.clave AND
            AED.lugar_fk = LD.clave AND RUV.vuelo_fk = V.clave AND RUV.reserva_usuario_fk = RU.clave;

-----------------------------QUERY REPORTE 8---------------------------     
SELECT A.datos_aerolinea.nombre AS "Logo de aerolinea", '02/02/2017' || ' - ' || '08/02/2020' AS "Fecha", LiO.nombre AS "Lugar de origen", LD.nombre AS "Lugar de destino", COUNT(RU.clave) AS "Cantidad de servicios"
    FROM VUELO V, AEROLINEA A, MODELO_AVION_AEROLINEA MAA, AEROPUERTO AEO, AEROPUERTO AED, LUGAR LiO, LUGAR LD, RESERVA_USUARIO_VUELO RUV, RESERVA_USUARIO RU
        WHERE MAA.clave = V.modelo_avion_aerolinea_fk AND MAA.aerolinea_fk = A.clave AND AEO.clave = V.Aeropuerto_salida_fk AND AED.clave = V.Aeropuerto_llegada_fk AND AEO.lugar_fk = LiO.clave AND
            AED.lugar_fk = LD.clave AND V.intinerario_estimado.fecha_inicio >= '02/02/2017' AND V.intinerario_estimado.fecha_fin <= '02/08/2020' AND
                RUV.vuelo_fk = V.clave AND RUV.reserva_usuario_fk = RU.clave
                    GROUP BY A.datos_aerolinea.nombre, LD.nombre, LiO.nombre
                        ORDER BY COUNT(RU.clave) DESC
                        FETCH NEXT 10 ROWS ONLY;


SELECT AERO.logo AS "foto", (SELECT A.datos_aerolinea.nombre AS "Logo de aerolinea", '02/02/2017' || ' - ' || '08/02/2020' AS "Fecha", LiO.nombre AS "Lugar de origen", LD.nombre AS "Lugar de destino", COUNT(RU.clave) AS "Cantidad de servicios"
    FROM VUELO V, AEROLINEA A, MODELO_AVION_AEROLINEA MAA, AEROPUERTO AEO, AEROPUERTO AED, LUGAR LiO, LUGAR LD, RESERVA_USUARIO_VUELO RUV, RESERVA_USUARIO RU
        WHERE A.clave=AERO.clave AND MAA.clave = V.modelo_avion_aerolinea_fk AND MAA.aerolinea_fk = A.clave AND AEO.clave = V.Aeropuerto_salida_fk AND AED.clave = V.Aeropuerto_llegada_fk AND AEO.lugar_fk = LiO.clave AND
            AED.lugar_fk = LD.clave AND V.intinerario_estimado.fecha_inicio >= '02/02/2017' AND V.intinerario_estimado.fecha_fin <= '02/08/2020' AND
                RUV.vuelo_fk = V.clave AND RUV.reserva_usuario_fk = RU.clave
                    GROUP BY A.datos_aerolinea.nombre, LD.nombre, LiO.nombre
                        ORDER BY COUNT(RU.clave) DESC
                        FETCH NEXT 10 ROWS ONLY)
                        from AEROLINEA AERO  ;

-----------------------------QUERY REPORTE 9---------------------------            
SELECT H.foto AS "Foto del lugar", H.datos_hotel AS "Nombre del lugar"  