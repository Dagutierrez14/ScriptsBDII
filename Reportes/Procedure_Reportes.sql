



-----------------------------PROCEDURE REPORTE 1---------------------------
CREATE OR REPLACE PROCEDURE REPORTE1(c OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN c FOR
    SELECT AEX.logo AS "Logo de Aerolinea",(SELECT '[' || LISTAGG(TA.datos_tipo_aerolinea.nombre,', ') WITHIN GROUP (ORDER BY TA.datos_tipo_aerolinea.nombre) || ']'AS "Tipo de aerolinea" 
                                        FROM  AEROLINEA AE, TIPO_AEROLINEA TA, AEROLINEA_TIPO_AEROLINEA ATA
                                            WHERE AE.clave = ATA.aerolinea_fk AND ATA.tipo_aerolinea_fk = TA.clave AND AE.clave = AEX.clave
                                                 GROUP BY AE.datos_aerolinea.nombre)AS "Tipo de aerolinea",
                                                 (SELECT DISTINCT RTRIM(REGEXP_REPLACE((LISTAGG('- ' || A.nombre,CHR(10)) WITHIN GROUP(ORDER BY A.nombre)OVER()), '([^'||CHR(10)||']*)('||CHR(10)||'\1)+('||CHR(10)||'|$)','\1\3'),CHR(10) ) AS "Flota"
                                        FROM  AEROLINEA AE, MODELO_AVION MA, MODELO_AVION_AEROLINEA MAA, AVION A
                                            WHERE AE.clave = MAA.aerolinea_fk AND MAA.modelo_avion_fk = MA.clave AND MA.avion_fk = A.clave AND AE.clave = AEX.clave) AS "Flota"
        FROM AEROLINEA AEX;
END;
-----------------------------PROCEDURE REPORTE 2---------------------------
CREATE OR REPLACE PROCEDURE REPORTE2(NOMBRE_AEROLINEA IN VARCHAR2,c OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN c FOR
    SELECT  AE.Logo AS "logo de Aerolinea", AV.nombre AS "Avion", AV.foto AS "Foto avion", MAN.datos_modelo_avion.nombre AS "Modelo", 
        MAA.cantidad AS "Cantidad de Aviones", (SELECT DISTINCT RTRIM(REGEXP_REPLACE((LISTAGG('- ' || MAC.numero_asientos || ' en ' || CL.datos_clase.nombre,CHR(10)) WITHIN GROUP(ORDER BY MAC.numero_asientos)OVER()), '([^'||CHR(10)||']*)('||CHR(10)||'\1)+('||CHR(10)||'|$)','\1\3'),CHR(10))
                                                    FROM MODELO_AVION MA, MODELO_AVION_CLASE MAC, CLASE CL
                                                    WHERE MA.clave = MAC.modelo_avion_fk AND CL.clave = MAC.clase_fk AND MA.clave = MAN.clave) AS "Asientos por Clase"
        FROM AEROLINEA AE,MODELO_AVION_AEROLINEA MAA,MODELO_AVION MAN,AVION AV
        WHERE AE.clave = MAA.aerolinea_fk AND MAN.clave = MAA.modelo_avion_fk AND AV.clave = MAN.avion_fk AND AE.datos_aerolinea.nombre = NOMBRE_AEROLINEA;
END;
-----------------------------PROCEDURE REPORTE 3---------------------------
CREATE OR REPLACE PROCEDURE REPORTE3(NOMBRE_AVION IN VARCHAR2, MODELO_AVION IN VARCHAR2,c OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN c FOR
        SELECT AE.logo AS "Logo de Aerolinea", AV.nombre AS "Avion", AV.foto AS "Foto avion", MA.datos_modelo_avion.nombre AS "Modelo", MA.velocidad_maxima AS "Velocidad Maxima Mach", MA.alcance AS "Alcance", MA.altitud_maxima AS "Altitud maxima de vuelo",
            MA.envergadura AS "Envergadura", MA.ancho_cabina AS "Ancho del interior de la cabina", MA.altura_cabina AS "Altura del interior de la cabina" 
            FROM AEROLINEA AE,MODELO_AVION_AEROLINEA MAA,MODELO_AVION MA,AVION AV
            WHERE AE.clave = MAA.aerolinea_fk AND MA.clave = MAA.modelo_avion_fk AND AV.clave = MA.avion_fk AND AV.nombre = NOMBRE_AVION AND  MA.datos_modelo_avion.nombre = MODELO_AVION;
END;
-----------------------------PROCEDURE REPORTE 4---------------------------
CREATE OR REPLACE PROCEDURE REPORTE4(c OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN c FOR
    SELECT correo AS "Correo de usuario", foto AS "Foto", primer_nombre || ' ' || segundo_nombre AS "Nombre", primer_apellido || ' ' || segundo_apellido AS "Apellido", telefono AS "Numero de telefono" FROM USUARIO;
END;

-----------------------------PROCEDURE REPORTE 7----------------------------
CREATE OR REPLACE PROCEDURE REPORTE7(FECHA_INICIO IN VARCHAR2, FECHA_FIN IN VARCHAR2, c OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN c FOR
    SELECT FECHA_INICIO || ' - ' || FECHA_FIN  AS "Fecha", LO.nombre AS "Lugar de origen", LD.nombre AS "Lugar de destino", COUNT(FR.clave) AS "Cantidad de reservaciones"
    FROM VUELO V, AEROPUERTO AEO, AEROPUERTO AED, LUGAR LO, LUGAR LD, RESERVA_USUARIO_VUELO RUV, RESERVA_USUARIO RU, FACTURA_RESERVA FR
        WHERE AEO.clave = V.Aeropuerto_salida_fk AND AED.clave = V.Aeropuerto_llegada_fk AND AEO.lugar_fk = LO.clave AND
            AED.lugar_fk = LD.clave AND V.intinerario_estimado.fecha_inicio >= to_date(FECHA_INICIO,'dd/mm/yyyy') AND V.intinerario_estimado.fecha_inicio <= to_date(FECHA_FIN,'dd/mm/yyyy')  AND
                RUV.vuelo_fk = V.clave AND RUV.reserva_usuario_fk = RU.clave AND RU.factura_reserva_fk = FR.clave
                    GROUP BY LD.nombre, LO.nombre
                        ORDER BY COUNT(FR.clave) DESC
                        FETCH NEXT 10 ROWS ONLY;
END;

-----------------------------PROCEDURE REPORTE 8----------------------------
CREATE OR REPLACE PROCEDURE REPORTE8(FECHA_INICIO IN VARCHAR2, FECHA_FIN IN VARCHAR2, ORIGEN IN VARCHAR2, DESTINO IN VARCHAR2, c OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN c FOR
    SELECT AERO.logo AS "Logo de aerolinea", tabla."Fecha", tabla."Lugar de origen", tabla."Lugar de destino", tabla."Cantidad de servicios"
        FROM AEROLINEA AERO, (SELECT A.clave AS "clave", A.datos_aerolinea.nombre AS "Logo de aerolinea", FECHA_INICIO || ' - ' || FECHA_FIN AS "Fecha", LO.nombre AS "Lugar de origen", LD.nombre AS "Lugar de destino", COUNT(FR.clave) AS "Cantidad de servicios"
    FROM VUELO V, AEROLINEA A, MODELO_AVION_AEROLINEA MAA, AEROPUERTO AEO, AEROPUERTO AED, LUGAR LO, LUGAR LD, RESERVA_USUARIO_VUELO RUV, RESERVA_USUARIO RU,  FACTURA_RESERVA FR
        WHERE MAA.clave = V.modelo_avion_aerolinea_fk AND MAA.aerolinea_fk = A.clave AND AEO.clave = V.Aeropuerto_salida_fk AND AED.clave = V.Aeropuerto_llegada_fk AND AEO.lugar_fk = LO.clave AND
            AED.lugar_fk = LD.clave AND V.intinerario_estimado.fecha_inicio >= to_date(FECHA_INICIO,'dd/mm/yyyy') AND V.intinerario_estimado.fecha_inicio <= to_date(FECHA_FIN,'dd/mm/yyyy') AND LO.nombre = ORIGEN AND LD.nombre = DESTINO AND
                RUV.vuelo_fk = V.clave AND RUV.reserva_usuario_fk = RU.clave AND RU.factura_reserva_fk = FR.clave
                    GROUP BY A.clave, A.datos_aerolinea.nombre, LD.nombre, LO.nombre
                        ORDER BY COUNT(RU.clave) DESC
                        FETCH NEXT 10 ROWS ONLY) tabla where AERO.clave = tabla."clave" ;
END;
-----------------------------PROCEDURE REPORTE 9----------------------------
CREATE OR REPLACE PROCEDURE REPORTE9(FECHA_INICIO IN VARCHAR2, FECHA_FIN IN VARCHAR2, CORREOU IN VARCHAR2, c OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN c FOR
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
            WHERE RUH.reserva_usuario_fk = RU.clave AND RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave AND RU.factura_reserva_fk = FR.clave AND FR.usuario_fk = U.clave AND U.correo = CORREOU group by HO.clave, TH.clave, FR.clave,TH.precio_dia_habitacion.precio_por_dia(TH.precio_dia_habitacion.precio, RUH.intinerario_reserva_habitacion.fecha_inicio,  RUH.intinerario_reserva_habitacion.fecha_fin) 
                ) tabla group by tabla."clave_hotel", tabla."clave_factura_reserva"
                    ) precio_total_pagado,
         HOTEL H, HABITACION HAB, TIPO_HABITACION THA, USUARIO US, RESERVA_USUARIO_HABITACION RUSH, RESERVA_USUARIO RUS, LUGAR LC, LUGAR LP, FACTURA_RESERVA FAR
            WHERE RUSH.reserva_usuario_fk = RUS.clave AND RUSH.habitacion_fk = HAB.clave AND HAB.tipo_habitacion_fk = THA.clave AND THA.hotel_fk = H.clave AND RUS.factura_reserva_fk = FAR.clave
                AND FAR.usuario_fk = US.clave AND LP.clave = LC.lugar_fk AND H.lugar_fk = LC.clave AND  puntuacion."clave_hotel" = H.clave AND precio_total_pagado."clave_hotel" = H.clave AND  precio_total_pagado."clave_factura_reserva" =FAR.clave AND US.correo = CORREOU
                AND RUSH.intinerario_reserva_habitacion.fecha_inicio >= to_date(FECHA_INICIO,'dd/mm/yyyy') AND RUSH.intinerario_reserva_habitacion.fecha_inicio<= to_date(FECHA_FIN,'dd/mm/yyyy')                
                    GROUP BY precio_total_pagado."clave_hotel", precio_total_pagado."clave_factura_reserva", H.datos_hotel.nombre,US.correo,  RUSH.intinerario_reserva_habitacion.fecha_inicio,RUSH.intinerario_reserva_habitacion.fecha_fin,
                    H.datos_hotel.descripcion, LC.nombre, LP.nombre, puntuacion."Puntuacion",precio_total_pagado."Precio Total", H.clave
        ) tabla_hotel
            WHERE HT.clave = tabla_hotel."clave hotel";
END;
-----------------------------PROCEDURE REPORTE 10---------------------------
CREATE OR REPLACE PROCEDURE REPORTE10(FECHA_INICIO IN VARCHAR2, FECHA_FIN IN VARCHAR2, LUGAR IN VARCHAR2, c OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN c FOR
   SELECT HT.foto AS "Foto del lugar", tabla_hotel."Nombre del lugar" AS "Nombre del lugar", FECHA_INICIO AS "Fecha de inicio", FECHA_FIN AS "Fecha de fin", tabla_hotel."Cantidad de Reservas" AS "Cantidad de Reservas", tabla_hotel."Puntuacion" AS "Puntuacion"
    FROM (SELECT H.clave "clave hotel", H.datos_hotel.nombre || ' - ' || LC.nombre || ', ' || LP.nombre AS "Nombre del lugar",RUSH.intinerario_reserva_habitacion.fecha_inicio AS "Fecha de inicio", RUSH.intinerario_reserva_habitacion.fecha_fin AS "Fecha de fin", COUNT(FAR.clave) AS "Cantidad de Reservas", puntuacion."Puntuacion" AS "Puntuacion"
            FROM (SELECT HO.clave AS "clave_hotel", ROUND(AVG(RUH.puntuacion),1) || '/10' AS "Puntuacion"
                    FROM RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH, HOTEL HO
                        WHERE RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND TH.hotel_fk = HO.clave group by HO.clave 
                 ) puntuacion,
                HOTEL H, HABITACION HAB, TIPO_HABITACION THA, USUARIO US, RESERVA_USUARIO_HABITACION RUSH, RESERVA_USUARIO RUS, LUGAR LC, LUGAR LP, FACTURA_RESERVA FAR
                    WHERE RUSH.reserva_usuario_fk = RUS.clave AND RUSH.habitacion_fk = HAB.clave AND LP.clave = LC.lugar_fk AND H.lugar_fk = LC.clave AND HAB.tipo_habitacion_fk = THA.clave AND THA.hotel_fk = H.clave AND RUS.factura_reserva_fk = FAR.clave
                        AND FAR.usuario_fk = US.clave AND  puntuacion."clave_hotel" = H.clave AND RUSH.intinerario_reserva_habitacion.fecha_inicio >= to_date(FECHA_INICIO,'dd/mm/yyyy') AND RUSH.intinerario_reserva_habitacion.fecha_inicio<= to_date(FECHA_FIN,'dd/mm/yyyy')  AND LC.nombre = LUGAR
                 GROUP BY H.clave, H.datos_hotel.nombre, RUSH.intinerario_reserva_habitacion.fecha_inicio,  RUSH.intinerario_reserva_habitacion.fecha_fin, puntuacion."Puntuacion", LC.nombre, LP.nombre
                    ORDER BY COUNT(FAR.clave) DESC
         ) tabla_hotel, HOTEL HT
         WHERE HT.clave = tabla_hotel."clave hotel";

END;
-----------------------------PROCEDURE REPORTE 11---------------------------
CREATE OR REPLACE PROCEDURE REPORTE11(FECHA_INICIO IN VARCHAR2, FECHA_FIN IN VARCHAR2, CORREOU IN VARCHAR2, c OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN c FOR
    SELECT MA.foto AS "Foto del automovil", MA.datos_modelo_auto.nombre || ', ' || M.datos_marca.nombre AS "Marca-Modelo Automovil", R.logo AS "Proveedor de servicio de alquiler", U.correo AS "Correo de usuario", 
    LR.nombre AS "Direccion de recogida", LD.nombre AS "Direccion de devolucion", RUA.intinerario_reserva_automovil.fecha_inicio AS "Fecha y hora de inicio",
    RUA.intinerario_reserva_automovil.fecha_fin AS "Fecha y hora de fin", ROUND(MAO.precio_dia_auto.precio, 2) || ' USD/dia' AS "Precio por dia", 
    ROUND(MAO.precio_dia_auto.precio_por_dia(MAO.precio_dia_auto.precio, RUA.intinerario_reserva_automovil.fecha_inicio, RUA.intinerario_reserva_automovil.fecha_fin)) || ' USD' AS "Precio total"
        FROM MARCA M, MODELO_AUTO MA, RENTADORA R, MODELO_AUTO_OFICINA MAO, RESERVA_USUARIO_AUTOMOVIL RUA, OFICINA OFR, OFICINA OFD, LUGAR LR, LUGAR LD, RESERVA_USUARIO RU, USUARIO U, FACTURA_RESERVA FR
            WHERE U.clave = RU.usuario_fk AND FR.clave = RU.factura_reserva_fk AND U.clave = FR.usuario_fk AND RU.clave = RUA.reserva_usuario_fk AND MAO.clave = RUA.modelo_auto_oficina_fk AND MA.clave = MAO.modelo_auto_fk AND M.clave = MA.marca_fk
            AND OFR.clave = MAO.oficina_fk AND OFD.clave = RUA.oficina_fk AND LR.clave = OFR.lugar_fk AND LD.clave = OFD.lugar_fk AND U.correo = CORREOU AND 
            RUA.intinerario_reserva_automovil.fecha_inicio >= to_date(FECHA_INICIO,'dd/mm/yyyy') AND RUA.intinerario_reserva_automovil.fecha_inicio <= to_date(FECHA_FIN,'dd/mm/yyyy');

END;
-----------------------------PROCEDURE REPORTE 12---------------------------
CREATE OR REPLACE PROCEDURE REPORTE12(FECHA_VUELO IN VARCHAR2, c OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN c FOR
    SELECT tabla_vuelos."Fecha y hora de vuelo" AS "Fecha y hora de vuelo", tabla_vuelos."Origen" AS "Origen", tabla_vuelos."Destino" AS "Destino", AE.logo AS "Logo de Aerolinea", tabla_vuelos."Estado" AS "Estado", tabla_vuelos."Hora estimada de llegada" AS "Hora estimada de llegada" 
     FROM (SELECT DISTINCT VU.intinerario_estimado.fecha_inicio AS "Fecha y hora de vuelo", LOC.nombre || ' (' || AEO.iata || '), ' || LOP.nombre AS "Origen", LDC.nombre || ' (' || AED.iata || '), ' || LDP.nombre AS "Destino", A.clave AS "clave_aerolinea", 
            (SELECT E.nombre AS "nombre_estatus"
                FROM ESTATUS_VUELO EV, ESTATUS E, VUELO V
                    WHERE V.clave = EV.vuelo_fk AND E.clave = EV.estatus_fk AND V.clave = VU.clave
                    GROUP BY V.clave, E.nombre, EV.fecha
                    ORDER BY EV.fecha DESC
                                 FETCH NEXT 1 ROWS ONLY
                     ) AS "Estado", CASE WHEN VU.intinerario_real.fecha_fin IS NOT NULL THEN to_char(VU.intinerario_real.fecha_fin)ELSE 'Por calcular' END AS  "Hora estimada de llegada"
                FROM  VUELO VU, AEROPUERTO AEO, AEROPUERTO AED, LUGAR LOC, LUGAR LOP, LUGAR LDC, LUGAR LDP, ESTATUS_VUELO EV, ESTATUS E, MODELO_AVION_AEROLINEA MAA, AEROLINEA A
                    WHERE AEO.clave = VU.aeropuerto_salida_fk AND AED.clave = VU.aeropuerto_llegada_fk AND AED.lugar_fk = LDC.clave AND LDC.lugar_fk = LDP.clave AND  AEO.lugar_fk = LOC.clave AND LOC.lugar_fk = LOP.clave
                    AND VU.clave = EV.vuelo_fk AND E.clave = EV.estatus_fk AND A.clave = MAA.aerolinea_fk AND MAA.clave = VU.modelo_avion_aerolinea_fk AND VU.intinerario_estimado.fecha_inicio >= to_date(FECHA_VUELO,'dd/mm/yyyy') AND VU.intinerario_estimado.fecha_inicio < to_date(FECHA_VUELO,'dd/mm/yyyy')+1
                    ORDER BY VU.intinerario_estimado.fecha_inicio 
            ) tabla_vuelos, AEROLINEA AE
        WHERE tabla_vuelos."clave_aerolinea" = AE.clave;
END;
-----------------------------PROCEDURE REPORTE 13---------------------------
CREATE OR REPLACE PROCEDURE REPORTE13(FECHA_INICIO IN VARCHAR2, FECHA_FIN IN VARCHAR2, c OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN c FOR
    SELECT ASE.logo AS "Logo", tabla_aseguradora."Fecha (desde - hasta)" AS "Fecha (desde - hasta)", tabla_aseguradora."Lugar de origen" AS "Lugar de origen", tabla_aseguradora."Lugar de destino" AS "Lugar de destino", tabla_aseguradora."Cantidad de servicios contratados" AS "Cantidad de servicios contratados"
    FROM (SELECT A.clave AS "clave_aseguradora", FECHA_INICIO || ' - ' || FECHA_FIN AS "Fecha (desde - hasta)", LO.nombre AS "Lugar de origen", LD.nombre AS "Lugar de destino", COUNT(RU.clave) AS "Cantidad de servicios contratados"
            FROM RESERVA_USUARIO RU, FACTURA_RESERVA FR, SEGURO S, ASEGURADORA A, RESERVA_USUARIO_VUELO RUV, VUELO V, AEROPUERTO AEO, AEROPUERTO AED, LUGAR LO, LUGAR LD
                WHERE A.clave = S.aseguradora_fk AND S.clave = RU.seguro_fk AND RU.clave = RUV.reserva_usuario_fk AND v.clave = RUV.vuelo_fk AND AEO.clave = V.aeropuerto_salida_fk AND AED.clave = V.aeropuerto_llegada_fk
                AND LO.clave = AEO.lugar_fk AND LD.clave = AED.lugar_fk AND FR.clave = RU.factura_reserva_fk AND V.intinerario_real.fecha_inicio >= to_date(FECHA_INICIO,'dd/mm/yyyy') AND V.intinerario_real.fecha_fin <= to_date(FECHA_FIN,'dd/mm/yyyy')
                    GROUP BY A.clave, LO.nombre, LD.nombre
                        ORDER BY COUNT(RU.clave)DESC 
                        
         ) tabla_aseguradora, ASEGURADORA ASE
    WHERE ASE.clave = tabla_aseguradora."clave_aseguradora" FETCH NEXT 5 ROWS ONLY;
END;
