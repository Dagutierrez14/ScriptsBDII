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

select * from vuelo;
-----------------------------QUERY REPORTE 7---------------------------

SELECT '02/02/2017' || ' - ' || '08/02/2020' AS "Fecha", LO.nombre AS "Lugar de origen", LD.nombre AS "Lugar de destino", COUNT(FR.clave) AS "Cantidad de reservaciones"
    FROM VUELO V, AEROPUERTO AEO, AEROPUERTO AED, LUGAR LO, LUGAR LD, RESERVA_USUARIO_VUELO RUV, RESERVA_USUARIO RU, FACTURA_RESERVA FR
        WHERE AEO.clave = V.Aeropuerto_salida_fk AND AED.clave = V.Aeropuerto_llegada_fk AND AEO.lugar_fk = LO.clave AND
            AED.lugar_fk = LD.clave AND V.intinerario_estimado.fecha_inicio >= '02/02/2017' AND V.intinerario_estimado.fecha_inicio <= '02/08/2020' AND
                RUV.vuelo_fk = V.clave AND RUV.reserva_usuario_fk = RU.clave AND RU.factura_reserva_fk = FR.clave
                    GROUP BY LD.nombre, LO.nombre
                        ORDER BY COUNT(FR.clave) DESC
                        FETCH NEXT 10 ROWS ONLY;


SELECT A.datos_aerolinea.nombre, RU.clave, V.clave, V.intinerario_estimado.fecha_inicio, V.intinerario_estimado.fecha_fin, LO.nombre AS "Lugar de origen", LD.nombre AS "Lugar de destino"
    FROM VUELO V, AEROPUERTO AEO, AEROLINEA A, MODELO_AVION_AEROLINEA MAA, AEROPUERTO AED, LUGAR LO, LUGAR LD, RESERVA_USUARIO_VUELO RUV, RESERVA_USUARIO RU
    WHERE MAA.clave = V.modelo_avion_aerolinea_fk AND MAA.aerolinea_fk = A.clave AND AEO.clave = V.Aeropuerto_salida_fk AND AED.clave = V.Aeropuerto_llegada_fk AND AEO.lugar_fk = LO.clave AND
            AED.lugar_fk = LD.clave AND RUV.vuelo_fk = V.clave AND RUV.reserva_usuario_fk = RU.clave;

-----------------------------QUERY REPORTE 8---------------------------     
SELECT A.clave, A.datos_aerolinea.nombre AS "Logo de aerolinea", '02/02/2017' || ' - ' || '08/02/2020' AS "Fecha", LiO.nombre AS "Lugar de origen", LD.nombre AS "Lugar de destino", COUNT(FR.clave) AS "Cantidad de servicios"
    FROM VUELO V, AEROLINEA A, MODELO_AVION_AEROLINEA MAA, AEROPUERTO AEO, AEROPUERTO AED, LUGAR LiO, LUGAR LD, RESERVA_USUARIO_VUELO RUV, RESERVA_USUARIO RU,  FACTURA_RESERVA FR
        WHERE MAA.clave = V.modelo_avion_aerolinea_fk AND MAA.aerolinea_fk = A.clave AND AEO.clave = V.Aeropuerto_salida_fk AND AED.clave = V.Aeropuerto_llegada_fk AND AEO.lugar_fk = LiO.clave AND
            AED.lugar_fk = LD.clave AND V.intinerario_estimado.fecha_inicio >= '02/02/2017' AND V.intinerario_estimado.fecha_inicio <= '02/08/2020' AND
                RUV.vuelo_fk = V.clave AND RUV.reserva_usuario_fk = RU.clave AND RU.factura_reserva_fk = FR.clave
                    GROUP BY A.clave, A.datos_aerolinea.nombre, LD.nombre, LiO.nombre
                        ORDER BY COUNT(RU.clave) DESC
                        FETCH NEXT 10 ROWS ONLY;




SELECT AERO.logo AS "Logo de aerolinea", tabla."Fecha", tabla."Lugar de origen", tabla."Lugar de destino", tabla."Cantidad de servicios"
        FROM AEROLINEA AERO, (SELECT A.clave AS "clave", A.datos_aerolinea.nombre AS "Logo de aerolinea", '02/02/2017' || ' - ' || '08/02/2020' AS "Fecha", LO.nombre AS "Lugar de origen", LD.nombre AS "Lugar de destino", COUNT(FR.clave) AS "Cantidad de servicios"
    FROM VUELO V, AEROLINEA A, MODELO_AVION_AEROLINEA MAA, AEROPUERTO AEO, AEROPUERTO AED, LUGAR LO, LUGAR LD, RESERVA_USUARIO_VUELO RUV, RESERVA_USUARIO RU,  FACTURA_RESERVA FR
        WHERE MAA.clave = V.modelo_avion_aerolinea_fk AND MAA.aerolinea_fk = A.clave AND AEO.clave = V.Aeropuerto_salida_fk AND AED.clave = V.Aeropuerto_llegada_fk AND AEO.lugar_fk = LO.clave AND
            AED.lugar_fk = LD.clave AND V.intinerario_estimado.fecha_inicio >= '02/02/2017' AND V.intinerario_estimado.fecha_inicio <= '02/08/2020' AND LO.nombre = 'Milan' AND LD.nombre = 'Buenos Aires' AND
                RUV.vuelo_fk = V.clave AND RUV.reserva_usuario_fk = RU.clave AND RU.factura_reserva_fk = FR.clave
                    GROUP BY A.clave, A.datos_aerolinea.nombre, LD.nombre, LO.nombre
                        ORDER BY COUNT(RU.clave) DESC
                        FETCH NEXT 10 ROWS ONLY) tabla where AERO.clave = tabla."clave" ;
                        
SELECT AERO.logo AS "Logo de aerolinea", tabla."Fecha", tabla."Lugar de origen", tabla."Lugar de destino", tabla."Cantidad de servicios"
        FROM AEROLINEA AERO, (SELECT A.clave AS "clave", A.datos_aerolinea.nombre AS "Logo de aerolinea", '02/02/2017' || ' - ' || '08/02/2020' AS "Fecha", LO.nombre AS "Lugar de origen", LD.nombre AS "Lugar de destino", COUNT(FR.clave) AS "Cantidad de servicios"
    FROM VUELO V, AEROLINEA A, MODELO_AVION_AEROLINEA MAA, AEROPUERTO AEO, AEROPUERTO AED, LUGAR LO, LUGAR LD, RESERVA_USUARIO_VUELO RUV, RESERVA_USUARIO RU,  FACTURA_RESERVA FR
        WHERE MAA.clave = V.modelo_avion_aerolinea_fk AND MAA.aerolinea_fk = A.clave AND AEO.clave = V.Aeropuerto_salida_fk AND AED.clave = V.Aeropuerto_llegada_fk AND AEO.lugar_fk = LO.clave AND
            AED.lugar_fk = LD.clave AND V.intinerario_estimado.fecha_inicio >= '02/02/2017' AND V.intinerario_estimado.fecha_inicio <= '02/08/2020' AND
                RUV.vuelo_fk = V.clave AND RUV.reserva_usuario_fk = RU.clave AND RU.factura_reserva_fk = FR.clave
                    GROUP BY A.clave, A.datos_aerolinea.nombre, LD.nombre, LO.nombre
                        ORDER BY COUNT(RU.clave) DESC
                        FETCH NEXT 10 ROWS ONLY) tabla where AERO.clave = tabla."clave" ;
-----------------------------QUERY REPORTE 9---------------------------            
SELECT  H.clave "clave hotel", H.datos_hotel.nombre AS "Nombre del lugar", US.correo AS "Correo", RUSH.intinerario_reserva_habitacion.fecha_inicio AS "Fecha de entrada", RUSH.intinerario_reserva_habitacion.fecha_fin AS "Fecha de salida", 
COUNT(RUS.clave)|| ' hu�spedes' AS "Hu�spedes", H.datos_hotel.descripcion AS "Descripcion", LC.nombre || ', ' || LP.nombre AS "Direccion Exacta", puntuacion."Puntuacion" AS "Puntuacion", precio_total_pagado."Precio Total" AS "Precio total"
   FROM (SELECT HO.clave AS "clave_hotel", ROUND(AVG(RUH.puntuacion),1) || '/10' AS "Puntuacion"
            FROM RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH, HOTEL HO
                WHERE RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave group by HO.clave 
        ) puntuacion, 
        (SELECT TH.precio_dia_habitacion.precio_por_dia(TH.precio_dia_habitacion.precio, RUH.intinerario_reserva_habitacion.fecha_inicio,  RUH.intinerario_reserva_habitacion.fecha_fin) * COUNT(RU.clave) AS "Precio Total"
            FROM  RESERVA_USUARIO RU, RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH, HOTEL HO,  FACTURA_RESERVA FR, USUARIO U
                WHERE RUH.reserva_usuario_fk = RU.clave AND RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave AND RU.factura_reserva_fk = FR.clave AND FR.usuario_fk = U.clave AND U.correo = 'albaass@gmail.com' group by TH.precio_dia_habitacion.precio_por_dia(TH.precio_dia_habitacion.precio, RUH.intinerario_reserva_habitacion.fecha_inicio,  RUH.intinerario_reserva_habitacion.fecha_fin) 
        ) precio_total_pagado,
         HOTEL H, HABITACION HAB, TIPO_HABITACION THA, USUARIO US, RESERVA_USUARIO_HABITACION RUSH, RESERVA_USUARIO RUS, LUGAR LC, LUGAR LP, FACTURA_RESERVA FAR
            WHERE RUSH.reserva_usuario_fk = RUS.clave AND RUSH.habitacion_fk = HAB.clave AND HAB.tipo_habitacion_fk = THA.clave AND THA.hotel_fk = H.clave AND RUS.factura_reserva_fk = FAR.clave
                AND FAR.usuario_fk = US.clave AND LP.clave = LC.lugar_fk AND H.lugar_fk = LC.clave AND  puntuacion."clave_hotel" = H.clave AND US.correo = 'albaass@gmail.com'
                
                    GROUP BY US.correo, H.datos_hotel.nombre, RUSH.intinerario_reserva_habitacion.fecha_inicio,RUSH.intinerario_reserva_habitacion.fecha_fin,
                    H.datos_hotel.descripcion, LC.nombre, LP.nombre, puntuacion."Puntuacion", precio_total_pagado."Precio Total", H.clave;


SELECT HT.foto AS "Foto del lugar", tabla_hotel."Nombre del lugar" AS "Nombre del lugar", tabla_hotel."Correo" AS "Correo",tabla_hotel."Fecha de entrada" AS "Fecha de entrada",tabla_hotel."Fecha de salida" AS "Fecha de salida", 
tabla_hotel."Hu�spedes" AS "Hu�spedes", tabla_hotel."Descripcion" AS "Descripcion", tabla_hotel."Direccion Exacta" AS "Direccion Exacta", tabla_hotel."Puntuacion" AS "Puntuacion", tabla_hotel."Precio total"  AS "Precio total"
    FROM HOTEL HT, (SELECT H.clave "clave hotel", H.datos_hotel.nombre AS "Nombre del lugar", US.correo AS "Correo", RUSH.intinerario_reserva_habitacion.fecha_inicio AS "Fecha de entrada", RUSH.intinerario_reserva_habitacion.fecha_fin AS "Fecha de salida", 
COUNT(RUS.clave)|| ' hu�spedes' AS "Hu�spedes", H.datos_hotel.descripcion AS "Descripcion", LC.nombre || ', ' || LP.nombre AS "Direccion Exacta", puntuacion."Puntuacion" AS "Puntuacion", SUM(precio_total_pagado."Precio Total") AS "Precio total"
   FROM (SELECT HO.clave AS "clave_hotel", ROUND(AVG(RUH.puntuacion),1) || '/10' AS "Puntuacion"
            FROM RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH, HOTEL HO
                WHERE RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave group by HO.clave 
        ) puntuacion, 
        (SELECT HO.clave AS "clave_hotel", FR.clave AS "clave_factura_reserva", TH.precio_dia_habitacion.precio_por_dia(TH.precio_dia_habitacion.precio, RUH.intinerario_reserva_habitacion.fecha_inicio,  RUH.intinerario_reserva_habitacion.fecha_fin) * COUNT(TH.clave) AS "Precio Total"
            FROM  RESERVA_USUARIO RU, RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH, HOTEL HO,  FACTURA_RESERVA FR, USUARIO U
              WHERE RUH.reserva_usuario_fk = RU.clave AND RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave AND RU.factura_reserva_fk = FR.clave AND FR.usuario_fk = U.clave AND U.correo = 'luisrf@gmail.com' group by HO.clave, TH.clave, FR.clave,TH.precio_dia_habitacion.precio_por_dia(TH.precio_dia_habitacion.precio, RUH.intinerario_reserva_habitacion.fecha_inicio,  RUH.intinerario_reserva_habitacion.fecha_fin) 
        ) precio_total_pagado,
         HOTEL H, HABITACION HAB, TIPO_HABITACION THA, USUARIO US, RESERVA_USUARIO_HABITACION RUSH, RESERVA_USUARIO RUS, LUGAR LC, LUGAR LP, FACTURA_RESERVA FAR
            WHERE RUSH.reserva_usuario_fk = RUS.clave AND RUSH.habitacion_fk = HAB.clave AND HAB.tipo_habitacion_fk = THA.clave AND THA.hotel_fk = H.clave AND RUS.factura_reserva_fk = FAR.clave
                AND FAR.usuario_fk = US.clave AND LP.clave = LC.lugar_fk AND H.lugar_fk = LC.clave AND  puntuacion."clave_hotel" = H.clave AND precio_total_pagado."clave_hotel" = H.clave AND  precio_total_pagado."clave_factura_reserva" =FAR.clave AND US.correo = 'luisrf@gmail.com' 
                AND RUSH.intinerario_reserva_habitacion.fecha_inicio >= '02/02/2017' AND RUSH.intinerario_reserva_habitacion.fecha_inicio<= '09/08/2020'
                
                    GROUP BY precio_total_pagado."clave_hotel", precio_total_pagado."clave_factura_reserva", H.datos_hotel.nombre,US.correo,  RUSH.intinerario_reserva_habitacion.fecha_inicio,RUSH.intinerario_reserva_habitacion.fecha_fin,
                    H.datos_hotel.descripcion, LC.nombre, LP.nombre, puntuacion."Puntuacion", H.clave
) tabla_hotel
        WHERE HT.clave = tabla_hotel."clave hotel";




-------------------------------------------------------------------------------------------
SELECT HT.foto AS "Foto del lugar", tabla_hotel."Nombre del lugar" AS "Nombre del lugar", tabla_hotel."Correo" AS "Correo",tabla_hotel."Fecha de entrada" AS "Fecha de entrada",tabla_hotel."Fecha de salida" AS "Fecha de salida", 
tabla_hotel."Hu�spedes" AS "Hu�spedes", tabla_hotel."Descripcion" AS "Descripcion", tabla_hotel."Direccion Exacta" AS "Direccion Exacta", tabla_hotel."Puntuacion" AS "Puntuacion", tabla_hotel."Precio total"  AS "Precio total"
    FROM HOTEL HT, (SELECT H.clave "clave hotel", H.datos_hotel.nombre AS "Nombre del lugar", US.correo AS "Correo", RUSH.intinerario_reserva_habitacion.fecha_inicio AS "Fecha de entrada", RUSH.intinerario_reserva_habitacion.fecha_fin AS "Fecha de salida", 
COUNT(RUS.clave)|| ' hu�spedes' AS "Hu�spedes", H.datos_hotel.descripcion AS "Descripcion", LC.nombre || ', ' || LP.nombre AS "Direccion Exacta", puntuacion."Puntuacion" AS "Puntuacion", ROUND(precio_total_pagado."Precio Total", 2) || ' USD'AS "Precio total"
   FROM (SELECT HO.clave AS "clave_hotel", ROUND(AVG(RUH.puntuacion),1) || '/10' AS "Puntuacion"
            FROM RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH, HOTEL HO
                WHERE RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave group by HO.clave 
        ) puntuacion, 
        (select tabla."clave_hotel", tabla."clave_factura_reserva",SUM(tabla."Precio Total") AS "Precio Total"FROM (SELECT HO.clave AS "clave_hotel", FR.clave AS "clave_factura_reserva", TH.precio_dia_habitacion.precio_por_dia(TH.precio_dia_habitacion.precio, RUH.intinerario_reserva_habitacion.fecha_inicio,  RUH.intinerario_reserva_habitacion.fecha_fin) * COUNT(TH.clave) AS "Precio Total"
FROM  RESERVA_USUARIO RU, RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH, HOTEL HO,  FACTURA_RESERVA FR, USUARIO U
  WHERE RUH.reserva_usuario_fk = RU.clave AND RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave AND RU.factura_reserva_fk = FR.clave AND FR.usuario_fk = U.clave AND U.correo = 'anthonyagr@gmail.com' group by HO.clave, TH.clave, FR.clave,TH.precio_dia_habitacion.precio_por_dia(TH.precio_dia_habitacion.precio, RUH.intinerario_reserva_habitacion.fecha_inicio,  RUH.intinerario_reserva_habitacion.fecha_fin) 
) tabla group by tabla."clave_hotel", tabla."clave_factura_reserva"
 ) precio_total_pagado,
         HOTEL H, HABITACION HAB, TIPO_HABITACION THA, USUARIO US, RESERVA_USUARIO_HABITACION RUSH, RESERVA_USUARIO RUS, LUGAR LC, LUGAR LP, FACTURA_RESERVA FAR
            WHERE RUSH.reserva_usuario_fk = RUS.clave AND RUSH.habitacion_fk = HAB.clave AND HAB.tipo_habitacion_fk = THA.clave AND THA.hotel_fk = H.clave AND RUS.factura_reserva_fk = FAR.clave
                AND FAR.usuario_fk = US.clave AND LP.clave = LC.lugar_fk AND H.lugar_fk = LC.clave AND  puntuacion."clave_hotel" = H.clave AND precio_total_pagado."clave_hotel" = H.clave AND  precio_total_pagado."clave_factura_reserva" =FAR.clave AND US.correo = 'anthonyagr@gmail.com' 
                AND RUSH.intinerario_reserva_habitacion.fecha_inicio >= '02/02/2017' AND RUSH.intinerario_reserva_habitacion.fecha_inicio<= '09/08/2020'
                
                    GROUP BY precio_total_pagado."clave_hotel", precio_total_pagado."clave_factura_reserva", H.datos_hotel.nombre,US.correo,  RUSH.intinerario_reserva_habitacion.fecha_inicio,RUSH.intinerario_reserva_habitacion.fecha_fin,
                    H.datos_hotel.descripcion, LC.nombre, LP.nombre, puntuacion."Puntuacion",precio_total_pagado."Precio Total", H.clave
) tabla_hotel
        WHERE HT.clave = tabla_hotel."clave hotel";




SELECT  H.clave AS "clave hotel", H.datos_hotel.nombre AS "Nombre del lugar", US.correo AS "Correo", RUSH.intinerario_reserva_habitacion.fecha_inicio AS "Fecha de entrada", RUSH.intinerario_reserva_habitacion.fecha_fin AS "Fecha de salida", 
COUNT(RUS.clave)|| 'hu�spedes' AS "Hu�spedes", H.datos_hotel.descripcion AS "Descripcion", LC.nombre || ', ' || LP.nombre AS "Direccion Exacta", puntuacion."Puntuacion" AS "Puntuacion"
   FROM (SELECT HO.clave AS "clave", ROUND(AVG(RUH.puntuacion),1) || '/10' AS "Puntuacion"
    FROM RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH, HOTEL HO
        WHERE RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave group by HO.clave 
    ) puntuacion, HOTEL H,
    
         HABITACION HAB, TIPO_HABITACION THA, USUARIO US, RESERVA_USUARIO_HABITACION RUSH, RESERVA_USUARIO RUS, LUGAR LC, LUGAR LP, FACTURA_RESERVA FAR
            WHERE RUSH.reserva_usuario_fk = RUS.clave AND RUSH.habitacion_fk = HAB.clave AND HAB.tipo_habitacion_fk = THA.clave AND THA.hotel_fk = H.clave AND RUS.factura_reserva_fk = FAR.clave
                AND FAR.usuario_fk = US.clave  AND H.lugar_fk = LP.clave AND puntuacion."clave" = H.clave
                
                    GROUP BY US.correo, H.datos_hotel.nombre, RUSH.intinerario_reserva_habitacion.fecha_inicio,RUSH.intinerario_reserva_habitacion.fecha_fin,
                    H.datos_hotel.descripcion, LC.nombre, LP.nombre, puntuacion."Puntuacion", H.clave;













SELECT ROUND(AVG(RUH.puntuacion),1) || '/10' AS "Puntuacion"
    FROM RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH, HOTEL HO
        WHERE RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave AND HO.clave = 29;
        
SELECT HO.clave, ROUND(AVG(RUH.puntuacion),1) || '/10' AS "Puntuacion"
    FROM RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH, HOTEL HO
        WHERE RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave group by HO.clave ;
        
        
        
        
        
        
        
        
        
        

SELECT HO.datos_hotel.nombre AS"hotel", TH.clave, FR.clave, TH.precio_dia_habitacion.precio_por_dia(TH.precio_dia_habitacion.precio, RUH.intinerario_reserva_habitacion.fecha_inicio,  RUH.intinerario_reserva_habitacion.fecha_fin) * COUNT(TH.clave) AS "Precio Total"
FROM  RESERVA_USUARIO RU, RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH, HOTEL HO,  FACTURA_RESERVA FR, USUARIO U
  WHERE RUH.reserva_usuario_fk = RU.clave AND RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave AND RU.factura_reserva_fk = FR.clave AND FR.usuario_fk = U.clave AND U.correo = 'luisrf@gmail.com' group by HO.datos_hotel.nombre, TH.clave, FR.clave,TH.precio_dia_habitacion.precio_por_dia(TH.precio_dia_habitacion.precio, RUH.intinerario_reserva_habitacion.fecha_inicio,  RUH.intinerario_reserva_habitacion.fecha_fin) ;


SELECT HO.clave, HO.datos_hotel.nombre, UR.correo, U.correo AS "correo", TH.precio_dia_habitacion.precio,   RUH.intinerario_reserva_habitacion.fecha_fin -RUH.intinerario_reserva_habitacion.fecha_inicio, TH.clave,RU.clave AS "RU", FR.clave AS "FR", TH.precio_dia_habitacion.precio_por_dia(TH.precio_dia_habitacion.precio, RUH.intinerario_reserva_habitacion.fecha_inicio,  RUH.intinerario_reserva_habitacion.fecha_fin) AS "Precio Total"
FROM  RESERVA_USUARIO RU, RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH, HOTEL HO, FACTURA_RESERVA FR, USUARIO U,USUARIO UR
  WHERE RUH.reserva_usuario_fk = RU.clave AND RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave AND RU.factura_reserva_fk = FR.clave AND FR.usuario_fk = U.clave AND RU.usuario_fk = UR.clave ;








select tabla."clave_hotel", tabla."clave_factura_reserva",SUM(tabla."Precio Total")FROM (SELECT HO.clave AS "clave_hotel", FR.clave AS "clave_factura_reserva", TH.precio_dia_habitacion.precio_por_dia(TH.precio_dia_habitacion.precio, RUH.intinerario_reserva_habitacion.fecha_inicio,  RUH.intinerario_reserva_habitacion.fecha_fin) * COUNT(TH.clave) AS "Precio Total"
FROM  RESERVA_USUARIO RU, RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH, HOTEL HO,  FACTURA_RESERVA FR, USUARIO U
  WHERE RUH.reserva_usuario_fk = RU.clave AND RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave AND RU.factura_reserva_fk = FR.clave AND FR.usuario_fk = U.clave AND U.correo = 'luisrf@gmail.com' group by HO.clave, TH.clave, FR.clave,TH.precio_dia_habitacion.precio_por_dia(TH.precio_dia_habitacion.precio, RUH.intinerario_reserva_habitacion.fecha_inicio,  RUH.intinerario_reserva_habitacion.fecha_fin) 
) tabla group by tabla."clave_hotel", tabla."clave_factura_reserva";


-----------------------------QUERY REPORTE 10--------------------------- 




SELECT H.clave "clave hotel", H.datos_hotel.nombre AS "Nombre del lugar", LC.nombre || ', ' || LP.nombre AS "Direccion Exacta",RUSH.intinerario_reserva_habitacion.fecha_inicio AS "Fecha de inicio", RUSH.intinerario_reserva_habitacion.fecha_fin AS "Fecha de fin", COUNT(FAR.clave) AS "Cantidad de Reservas", puntuacion."Puntuacion" AS "Puntuacion"
    FROM (SELECT HO.clave AS "clave_hotel", ROUND(AVG(RUH.puntuacion),1) || '/10' AS "Puntuacion"
            FROM RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH, HOTEL HO
                WHERE RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave group by HO.clave 
         ) puntuacion,
        HOTEL H, HABITACION HAB, TIPO_HABITACION THA, USUARIO US, RESERVA_USUARIO_HABITACION RUSH, RESERVA_USUARIO RUS, LUGAR LC, LUGAR LP, FACTURA_RESERVA FAR
            WHERE RUSH.reserva_usuario_fk = RUS.clave AND RUSH.habitacion_fk = HAB.clave AND LP.clave = LC.lugar_fk AND H.lugar_fk = LC.clave AND HAB.tipo_habitacion_fk = THA.clave AND THA.hotel_fk = H.clave AND RUS.factura_reserva_fk = FAR.clave
                AND FAR.usuario_fk = US.clave AND  puntuacion."clave_hotel" = H.clave AND RUSH.intinerario_reserva_habitacion.fecha_inicio >= '02/02/2017' AND RUSH.intinerario_reserva_habitacion.fecha_inicio<= '09/08/2020'
         GROUP BY H.clave, H.datos_hotel.nombre, RUSH.intinerario_reserva_habitacion.fecha_inicio,  RUSH.intinerario_reserva_habitacion.fecha_fin, puntuacion."Puntuacion", LC.nombre, LP.nombre
            ORDER BY COUNT(FAR.clave) DESC;



SELECT H.clave "clave hotel", H.datos_hotel.nombre || ' - ' || LC.nombre || ', ' || LP.nombre AS "Nombre del lugar",RUSH.intinerario_reserva_habitacion.fecha_inicio AS "Fecha de inicio", RUSH.intinerario_reserva_habitacion.fecha_fin AS "Fecha de fin", COUNT(FAR.clave) AS "Cantidad de Reservas", puntuacion."Puntuacion" AS "Puntuacion"
    FROM (SELECT HO.clave AS "clave_hotel", ROUND(AVG(RUH.puntuacion),1) || '/10' AS "Puntuacion"
            FROM RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH, HOTEL HO
                WHERE RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave group by HO.clave 
         ) puntuacion,
        HOTEL H, HABITACION HAB, TIPO_HABITACION THA, USUARIO US, RESERVA_USUARIO_HABITACION RUSH, RESERVA_USUARIO RUS, LUGAR LC, LUGAR LP, FACTURA_RESERVA FAR
            WHERE RUSH.reserva_usuario_fk = RUS.clave AND RUSH.habitacion_fk = HAB.clave AND LP.clave = LC.lugar_fk AND H.lugar_fk = LC.clave AND HAB.tipo_habitacion_fk = THA.clave AND THA.hotel_fk = H.clave AND RUS.factura_reserva_fk = FAR.clave
                AND FAR.usuario_fk = US.clave AND  puntuacion."clave_hotel" = H.clave AND RUSH.intinerario_reserva_habitacion.fecha_inicio >= '02/02/2017' AND RUSH.intinerario_reserva_habitacion.fecha_inicio<= '09/08/2020' AND LC.nombre = 'Milan'
         GROUP BY H.clave, H.datos_hotel.nombre, RUSH.intinerario_reserva_habitacion.fecha_inicio,  RUSH.intinerario_reserva_habitacion.fecha_fin, puntuacion."Puntuacion", LC.nombre, LP.nombre
            ORDER BY COUNT(FAR.clave) DESC;
            
-------------------------------------------
SELECT HT.foto AS "Foto del lugar", tabla_hotel."Nombre del lugar" AS "Nombre del lugar", '02/02/2017' AS "Fecha de inicio", '09/08/2020' AS "Fecha de fin", tabla_hotel."Cantidad de Reservas" AS "Cantidad de Reservas", tabla_hotel."Puntuacion" AS "Puntuacion"
    FROM (SELECT H.clave "clave hotel", H.datos_hotel.nombre || ' - ' || LC.nombre || ', ' || LP.nombre AS "Nombre del lugar",RUSH.intinerario_reserva_habitacion.fecha_inicio AS "Fecha de inicio", RUSH.intinerario_reserva_habitacion.fecha_fin AS "Fecha de fin", COUNT(FAR.clave) AS "Cantidad de Reservas", puntuacion."Puntuacion" AS "Puntuacion"
            FROM (SELECT HO.clave AS "clave_hotel", ROUND(AVG(RUH.puntuacion),1) || '/10' AS "Puntuacion"
                    FROM RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH, HOTEL HO
                        WHERE RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave group by HO.clave 
                 ) puntuacion,
                HOTEL H, HABITACION HAB, TIPO_HABITACION THA, USUARIO US, RESERVA_USUARIO_HABITACION RUSH, RESERVA_USUARIO RUS, LUGAR LC, LUGAR LP, FACTURA_RESERVA FAR
                    WHERE RUSH.reserva_usuario_fk = RUS.clave AND RUSH.habitacion_fk = HAB.clave AND LP.clave = LC.lugar_fk AND H.lugar_fk = LC.clave AND HAB.tipo_habitacion_fk = THA.clave AND THA.hotel_fk = H.clave AND RUS.factura_reserva_fk = FAR.clave
                        AND FAR.usuario_fk = US.clave AND  puntuacion."clave_hotel" = H.clave AND RUSH.intinerario_reserva_habitacion.fecha_inicio >= '02/02/2017' AND RUSH.intinerario_reserva_habitacion.fecha_inicio<= '09/08/2020' AND LC.nombre = 'New York'
                 GROUP BY H.clave, H.datos_hotel.nombre, RUSH.intinerario_reserva_habitacion.fecha_inicio,  RUSH.intinerario_reserva_habitacion.fecha_fin, puntuacion."Puntuacion", LC.nombre, LP.nombre
                    ORDER BY COUNT(FAR.clave) DESC
         ) tabla_hotel, HOTEL HT
         WHERE HT.clave = tabla_hotel."clave hotel";




-----------------------------QUERY REPORTE 11--------------------------- 


SELECT MA.foto AS "Foto del automovil", MA.datos_modelo_auto.nombre || ', ' || M.datos_marca.nombre AS "Marca-Modelo Automovil", R.logo AS "Proveedor de servicio de alquiler", U.correo AS "Correo de usuario", 
LR.nombre AS "Direcci�n de recogida", LD.nombre AS "Direcci�n de devoluci�n", RUA.intinerario_reserva_automovil.fecha_inicio AS "Fecha y hora de inicio",
RUA.intinerario_reserva_automovil.fecha_fin AS "Fecha y hora de fin", ROUND(MAO.precio_dia_auto.precio, 2) || ' USD/dia' AS "Precio por dia", 
ROUND(MAO.precio_dia_auto.precio_por_dia(MAO.precio_dia_auto.precio, RUA.intinerario_reserva_automovil.fecha_inicio, RUA.intinerario_reserva_automovil.fecha_fin)) || ' USD' AS "Precio total"
    FROM MARCA M, MODELO_AUTO MA, RENTADORA R, MODELO_AUTO_OFICINA MAO, RESERVA_USUARIO_AUTOMOVIL RUA, OFICINA OFR, OFICINA OFD, LUGAR LR, LUGAR LD, RESERVA_USUARIO RU, USUARIO U, FACTURA_RESERVA FR
        WHERE U.clave = RU.usuario_fk AND FR.clave = RU.factura_reserva_fk AND U.clave = FR.usuario_fk AND RU.clave = RUA.reserva_usuario_fk AND MAO.clave = RUA.modelo_auto_oficina_fk AND MA.clave = MAO.modelo_auto_fk AND M.clave = MA.marca_fk
        AND OFR.clave = MAO.oficina_fk AND OFD.clave = RUA.oficina_fk AND LR.clave = OFR.lugar_fk AND LD.clave = OFD.lugar_fk AND U.correo = 'luisrf@gmail.com' AND 
        RUA.intinerario_reserva_automovil.fecha_inicio>= '02/02/2017' AND RUA.intinerario_reserva_automovil.fecha_inicio <= '09/08/2020';


-----------------------------QUERY REPORTE 12--------------------------- 


SELECT V.intinerario_estimado.fecha_inicio, LOC.nombre || ' (' || AEO.iata || '), ' || LOP.nombre AS "Origen", LDC.nombre || ' (' || AED.iata || '), ' || LDP.nombre AS "Destino", A.datos_aerolinea


SELECT E.*, EV.*
    FROM ESTATUS_VUELO EV, ESTATUS E, VUELO V
        WHERE V.clave = EV.vuelo_fk AND E.clave = EV.estatus_fk AND V.clave = 4
        order by EV.fecha DESC
        FETCH NEXT 1 ROWS ONLY;
-----------------------------QUERY REPORTE 13--------------------------- 


SELECT ASE.logo, tabla_aseguradora."Fecha (desde - hasta)" AS "Fecha (desde - hasta)", tabla_aseguradora."Lugar de origen" AS "Lugar de origen", tabla_aseguradora."Lugar de destino" AS "Lugar de destino", tabla_aseguradora."Cantidad de servicios contratados" AS "Cantidad de servicios contratados"
    FROM (SELECT A.clave AS "clave_aseguradora", '02/02/2017' || ' - ' || '09/08/2020' AS "Fecha (desde - hasta)", LO.nombre AS "Lugar de origen", LD.nombre AS "Lugar de destino", COUNT(RU.clave) AS "Cantidad de servicios contratados"
            FROM RESERVA_USUARIO RU, FACTURA_RESERVA FR, SEGURO S, ASEGURADORA A, RESERVA_USUARIO_VUELO RUV, VUELO V, AEROPUERTO AEO, AEROPUERTO AED, LUGAR LO, LUGAR LD
                WHERE A.clave = S.aseguradora_fk AND S.clave = RU.seguro_fk AND RU.clave = RUV.reserva_usuario_fk AND v.clave = RUV.vuelo_fk AND AEO.clave = V.aeropuerto_salida_fk AND AED.clave = V.aeropuerto_llegada_fk
                AND LO.clave = AEO.lugar_fk AND LD.clave = AED.lugar_fk AND FR.clave = RU.factura_reserva_fk AND V.intinerario_real.fecha_inicio >= '02/02/2017' AND V.intinerario_real.fecha_fin <= '09/08/2020'
                    GROUP BY A.clave, LO.nombre, LD.nombre
                        ORDER BY COUNT(RU.clave)DESC 
                        
         ) tabla_aseguradora, ASEGURADORA ASE
    WHERE ASE.clave = tabla_aseguradora."clave_aseguradora" FETCH NEXT 1 ROWS ONLY;









---------------------------------------------------REPORTES ENTREGA 2-----------------------------------------------------------------


-----------------------------QUERY REPORTE 7---------------------------

SELECT '02/02/2017' || ' - ' || '08/01/2019' AS "Fecha", LO.nombre AS "Lugar de origen", LD.nombre AS "Lugar de destino", COUNT(FR.clave) AS "Cantidad de reservaciones"
    FROM VUELO V, AEROPUERTO AEO, AEROPUERTO AED, LUGAR LO, LUGAR LD, RESERVA_USUARIO_VUELO RUV, RESERVA_USUARIO RU, FACTURA_RESERVA FR
        WHERE AEO.clave = V.Aeropuerto_salida_fk AND AED.clave = V.Aeropuerto_llegada_fk AND AEO.lugar_fk = LO.clave AND
            AED.lugar_fk = LD.clave AND V.intinerario_estimado.fecha_inicio >= to_date('02/02/2017','dd/mm/yyyy') AND V.intinerario_estimado.fecha_inicio <= to_date('08/01/2019','dd/mm/yyyy') AND
                RUV.vuelo_fk = V.clave AND RUV.reserva_usuario_fk = RU.clave AND RU.factura_reserva_fk = FR.clave
                    GROUP BY LD.nombre, LO.nombre
                        ORDER BY COUNT(FR.clave) DESC
                        FETCH NEXT 10 ROWS ONLY;
                        
-----------------------------QUERY REPORTE 8---------------------------                        

SELECT AERO.logo AS "Logo de aerolinea", tabla."Fecha", tabla."Lugar de origen", tabla."Lugar de destino", tabla."Cantidad de servicios"
        FROM AEROLINEA AERO, (SELECT A.clave AS "clave", A.datos_aerolinea.nombre AS "Logo de aerolinea", '02/02/2017' || ' - ' || '08/02/2020' AS "Fecha", LO.nombre AS "Lugar de origen", LD.nombre AS "Lugar de destino", COUNT(FR.clave) AS "Cantidad de servicios"
    FROM VUELO V, AEROLINEA A, MODELO_AVION_AEROLINEA MAA, AEROPUERTO AEO, AEROPUERTO AED, LUGAR LO, LUGAR LD, RESERVA_USUARIO_VUELO RUV, RESERVA_USUARIO RU,  FACTURA_RESERVA FR
        WHERE MAA.clave = V.modelo_avion_aerolinea_fk AND MAA.aerolinea_fk = A.clave AND AEO.clave = V.Aeropuerto_salida_fk AND AED.clave = V.Aeropuerto_llegada_fk AND AEO.lugar_fk = LO.clave AND
            AED.lugar_fk = LD.clave AND V.intinerario_estimado.fecha_inicio >= to_date('02/02/2017','dd/mm/yyyy') AND V.intinerario_estimado.fecha_inicio <= to_date('09/08/2020','dd/mm/yyyy') AND LO.nombre = 'Milan' AND LD.nombre = 'Buenos Aires' AND
                RUV.vuelo_fk = V.clave AND RUV.reserva_usuario_fk = RU.clave AND RU.factura_reserva_fk = FR.clave
                    GROUP BY A.clave, A.datos_aerolinea.nombre, LD.nombre, LO.nombre
                        ORDER BY COUNT(RU.clave) DESC
                        FETCH NEXT 10 ROWS ONLY) tabla where AERO.clave = tabla."clave" ;
                        
-----------------------------QUERY REPORTE 9---------------------------
SELECT HT.foto AS "Foto del lugar", tabla_hotel."Nombre del lugar" AS "Nombre del lugar", tabla_hotel."Correo" AS "Correo",tabla_hotel."Fecha de entrada" AS "Fecha de entrada",tabla_hotel."Fecha de salida" AS "Fecha de salida", 
tabla_hotel."Huespedes" AS "Huespedes", tabla_hotel."Descripcion" AS "Descripcion", tabla_hotel."Direccion Exacta" AS "Direccion Exacta", tabla_hotel."Puntuacion" AS "Puntuacion", tabla_hotel."Precio total"  AS "Precio total"
    FROM HOTEL HT, (SELECT H.clave "clave hotel", H.datos_hotel.nombre AS "Nombre del lugar", US.correo AS "Correo", RUSH.intinerario_reserva_habitacion.fecha_inicio AS "Fecha de entrada", RUSH.intinerario_reserva_habitacion.fecha_fin AS "Fecha de salida", 
COUNT(RUS.clave)|| ' huespedes' AS "Huespedes", H.datos_hotel.descripcion AS "Descripcion", LC.nombre || ', ' || LP.nombre AS "Direccion Exacta", puntuacion."Puntuacion" AS "Puntuacion", ROUND(precio_total_pagado."Precio Total", 2) || ' USD'AS "Precio total"
   FROM (SELECT HO.clave AS "clave_hotel", ROUND(AVG(RUH.puntuacion),1) || '/10' AS "Puntuacion"
            FROM RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH, HOTEL HO
                WHERE RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave group by HO.clave 
        ) puntuacion, 
        (select tabla."clave_hotel", tabla."clave_factura_reserva",SUM(tabla."Precio Total") AS "Precio Total"FROM (SELECT HO.clave AS "clave_hotel", FR.clave AS "clave_factura_reserva", TH.precio_dia_habitacion.precio_por_dia(TH.precio_dia_habitacion.precio, RUH.intinerario_reserva_habitacion.fecha_inicio,  RUH.intinerario_reserva_habitacion.fecha_fin) * COUNT(TH.clave) AS "Precio Total"
FROM  RESERVA_USUARIO RU, RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH, HOTEL HO,  FACTURA_RESERVA FR, USUARIO U
  WHERE RUH.reserva_usuario_fk = RU.clave AND RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave AND RU.factura_reserva_fk = FR.clave AND FR.usuario_fk = U.clave AND U.correo = 'anthonyagr@gmail.com' group by HO.clave, TH.clave, FR.clave,TH.precio_dia_habitacion.precio_por_dia(TH.precio_dia_habitacion.precio, RUH.intinerario_reserva_habitacion.fecha_inicio,  RUH.intinerario_reserva_habitacion.fecha_fin) 
) tabla group by tabla."clave_hotel", tabla."clave_factura_reserva"
 ) precio_total_pagado,
         HOTEL H, HABITACION HAB, TIPO_HABITACION THA, USUARIO US, RESERVA_USUARIO_HABITACION RUSH, RESERVA_USUARIO RUS, LUGAR LC, LUGAR LP, FACTURA_RESERVA FAR
            WHERE RUSH.reserva_usuario_fk = RUS.clave AND RUSH.habitacion_fk = HAB.clave AND HAB.tipo_habitacion_fk = THA.clave AND THA.hotel_fk = H.clave AND RUS.factura_reserva_fk = FAR.clave
                AND FAR.usuario_fk = US.clave AND LP.clave = LC.lugar_fk AND H.lugar_fk = LC.clave AND  puntuacion."clave_hotel" = H.clave AND precio_total_pagado."clave_hotel" = H.clave AND  precio_total_pagado."clave_factura_reserva" =FAR.clave AND US.correo = 'anthonyagr@gmail.com' 
                AND RUSH.intinerario_reserva_habitacion.fecha_inicio >= to_date('02/02/2017','dd/mm/yyyy') AND RUSH.intinerario_reserva_habitacion.fecha_inicio<= to_date('09/08/2020','dd/mm/yyyy')
                
                    GROUP BY precio_total_pagado."clave_hotel", precio_total_pagado."clave_factura_reserva", H.datos_hotel.nombre,US.correo,  RUSH.intinerario_reserva_habitacion.fecha_inicio,RUSH.intinerario_reserva_habitacion.fecha_fin,
                    H.datos_hotel.descripcion, LC.nombre, LP.nombre, puntuacion."Puntuacion",precio_total_pagado."Precio Total", H.clave
) tabla_hotel
        WHERE HT.clave = tabla_hotel."clave hotel";

-----------------------------QUERY REPORTE 10--------------------------- 
SELECT HT.foto AS "Foto del lugar", tabla_hotel."Nombre del lugar" AS "Nombre del lugar", '02/02/2017' AS "Fecha de inicio", '09/08/2020' AS "Fecha de fin", tabla_hotel."Cantidad de Reservas" AS "Cantidad de Reservas", tabla_hotel."Puntuacion" AS "Puntuacion"
    FROM (SELECT H.clave "clave hotel", H.datos_hotel.nombre || ' - ' || LC.nombre || ', ' || LP.nombre AS "Nombre del lugar",RUSH.intinerario_reserva_habitacion.fecha_inicio AS "Fecha de inicio", RUSH.intinerario_reserva_habitacion.fecha_fin AS "Fecha de fin", COUNT(FAR.clave) AS "Cantidad de Reservas", puntuacion."Puntuacion" AS "Puntuacion"
            FROM (SELECT HO.clave AS "clave_hotel", ROUND(AVG(RUH.puntuacion),1) || '/10' AS "Puntuacion"
                    FROM RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH, HOTEL HO
                        WHERE RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave group by HO.clave 
                 ) puntuacion,
                HOTEL H, HABITACION HAB, TIPO_HABITACION THA, USUARIO US, RESERVA_USUARIO_HABITACION RUSH, RESERVA_USUARIO RUS, LUGAR LC, LUGAR LP, FACTURA_RESERVA FAR
                    WHERE RUSH.reserva_usuario_fk = RUS.clave AND RUSH.habitacion_fk = HAB.clave AND LP.clave = LC.lugar_fk AND H.lugar_fk = LC.clave AND HAB.tipo_habitacion_fk = THA.clave AND THA.hotel_fk = H.clave AND RUS.factura_reserva_fk = FAR.clave
                        AND FAR.usuario_fk = US.clave AND  puntuacion."clave_hotel" = H.clave AND RUSH.intinerario_reserva_habitacion.fecha_inicio >= to_date('02/02/2017','dd/mm/yyyy') AND RUSH.intinerario_reserva_habitacion.fecha_inicio<= to_date('09/08/2020','dd/mm/yyyy') AND LC.nombre = 'New York'
                 GROUP BY H.clave, H.datos_hotel.nombre, RUSH.intinerario_reserva_habitacion.fecha_inicio,  RUSH.intinerario_reserva_habitacion.fecha_fin, puntuacion."Puntuacion", LC.nombre, LP.nombre
                    ORDER BY COUNT(FAR.clave) DESC
         ) tabla_hotel, HOTEL HT
         WHERE HT.clave = tabla_hotel."clave hotel";
-----------------------------QUERY REPORTE 11--------------------------- 


SELECT MA.foto AS "Foto del automovil", MA.datos_modelo_auto.nombre || ', ' || M.datos_marca.nombre AS "Marca-Modelo Automovil", R.logo AS "Proveedor de servicio de alquiler", U.correo AS "Correo de usuario", 
LR.nombre AS "Direccion de recogida", LD.nombre AS "Direccion de devolucion", RUA.intinerario_reserva_automovil.fecha_inicio AS "Fecha y hora de inicio",
RUA.intinerario_reserva_automovil.fecha_fin AS "Fecha y hora de fin", ROUND(MAO.precio_dia_auto.precio, 2) || ' USD/dia' AS "Precio por dia", 
ROUND(MAO.precio_dia_auto.precio_por_dia(MAO.precio_dia_auto.precio, RUA.intinerario_reserva_automovil.fecha_inicio, RUA.intinerario_reserva_automovil.fecha_fin)) || ' USD' AS "Precio total"
    FROM MARCA M, MODELO_AUTO MA, RENTADORA R, MODELO_AUTO_OFICINA MAO, RESERVA_USUARIO_AUTOMOVIL RUA, OFICINA OFR, OFICINA OFD, LUGAR LR, LUGAR LD, RESERVA_USUARIO RU, USUARIO U, FACTURA_RESERVA FR
        WHERE U.clave = RU.usuario_fk AND FR.clave = RU.factura_reserva_fk AND U.clave = FR.usuario_fk AND RU.clave = RUA.reserva_usuario_fk AND MAO.clave = RUA.modelo_auto_oficina_fk AND MA.clave = MAO.modelo_auto_fk AND M.clave = MA.marca_fk
        AND OFR.clave = MAO.oficina_fk AND OFD.clave = RUA.oficina_fk AND LR.clave = OFR.lugar_fk AND LD.clave = OFD.lugar_fk AND U.correo = 'luisrf@gmail.com' AND 
        RUA.intinerario_reserva_automovil.fecha_inicio>= to_date('02/02/2017','dd/mm/yyyy') AND RUA.intinerario_reserva_automovil.fecha_inicio <= to_date('09/08/2020','dd/mm/yyyy');

-----------------------------QUERY REPORTE 13--------------------------- 

SELECT ASE.logo AS "Logo", tabla_aseguradora."Fecha (desde - hasta)" AS "Fecha (desde - hasta)", tabla_aseguradora."Lugar de origen" AS "Lugar de origen", tabla_aseguradora."Lugar de destino" AS "Lugar de destino", tabla_aseguradora."Cantidad de servicios contratados" AS "Cantidad de servicios contratados"
    FROM (SELECT A.clave AS "clave_aseguradora", '02/02/2017' || ' - ' || '09/08/2020' AS "Fecha (desde - hasta)", LO.nombre AS "Lugar de origen", LD.nombre AS "Lugar de destino", COUNT(RU.clave) AS "Cantidad de servicios contratados"
            FROM RESERVA_USUARIO RU, FACTURA_RESERVA FR, SEGURO S, ASEGURADORA A, RESERVA_USUARIO_VUELO RUV, VUELO V, AEROPUERTO AEO, AEROPUERTO AED, LUGAR LO, LUGAR LD
                WHERE A.clave = S.aseguradora_fk AND S.clave = RU.seguro_fk AND RU.clave = RUV.reserva_usuario_fk AND v.clave = RUV.vuelo_fk AND AEO.clave = V.aeropuerto_salida_fk AND AED.clave = V.aeropuerto_llegada_fk
                AND LO.clave = AEO.lugar_fk AND LD.clave = AED.lugar_fk AND FR.clave = RU.factura_reserva_fk AND V.intinerario_real.fecha_inicio >= to_date('02/02/2017','dd/mm/yyyy') AND V.intinerario_real.fecha_fin <= to_date('09/08/2020','dd/mm/yyyy')
                    GROUP BY A.clave, LO.nombre, LD.nombre
                        ORDER BY COUNT(RU.clave)DESC 
                        
         ) tabla_aseguradora, ASEGURADORA ASE
    WHERE ASE.clave = tabla_aseguradora."clave_aseguradora" FETCH NEXT 5 ROWS ONLY;



