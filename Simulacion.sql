---------------------------- 1.- INICIAR SIMULACION ----------------------------
---------------------------- 2.- GENERAR RESERVA ----------------------------
---------------------------- 3.- GENERAR FECHA ALEATORIA ----------------------------
CREATE OR REPLACE FUNCTION GENERAR_FECHA_ALEATORIA(fecha_base IN DATE, periodo in NUMBER) RETURN DATE
IS
    fecha_aleatoria DATE;
BEGIN
    select (fecha_base+DBMS_RANDOM.VALUE(1,periodo)) INTO fecha_aleatoria from dual;
    RETURN fecha_aleatoria;
END;
/       
---------------------------- 4.- GENERAR LUGAR ALEATORIO AEROPUERTO ----------------------------
CREATE OR REPLACE FUNCTION GENERAR_LUGAR_ALEATORIO_AEROPUERTO RETURN NUMBER
IS
    numero_aeropuertos NUMBER;
    id_lugar NUMBER;
BEGIN
    SELECT COUNT(*) INTO numero_aeropuertos FROM AEROPUERTO;
    SELECT AE.lugar_fk INTO id_lugar FROM AEROPUERTO AE WHERE AE.clave = ROUND(DBMS_RANDOM.VALUE(1,numero_aeropuertos));
    return id_lugar;
END;
/
---------------------------- 5.- GENERAR RESERVA VUELO ----------------------------
CREATE OR REPLACE PROCEDURE GENERAR_RESERVA_VUELO(fecha_inicio DATE, fecha_retorno DATE, lugar_salida NUMBER, lugar_destino NUMBER, id_factura_reserva NUMBER) 
IS
    modalidad NUMBER;
    id_vuelos_list DBMS_SQL.NUMBER_TABLE;
    id_clases_list DBMS_SQL.NUMBER_TABLE;
    id_reserva_usuarios_list DBMS_SQL.NUMBER_TABLE;
    cantidad_de_asientos NUMBER;
    index_ciclo_vuelos NUMBER;
    index_ciclo_reserva_vuelos_usuarios NUMBER;
    index_clase_aleatoria NUMBER;
    capacidad_de_clase NUMBER;
    index_asiento_numero NUMBER;
BEGIN
    SELECT RU.clave BULK COLLECT INTO id_reserva_usuarios_list
        FROM FACTURA_RESERVA FR, RESERVA_USUARIO RU
        WHERE FR.clave = id_factura_reserva AND FR.clave = RU.factura_reserva_fk;
    modalidad := ROUND(DBMS_RANDOM.VALUE(0,1));
    id_vuelos_list := GENERAR_VUELOS(fecha_inicio,fecha_retorno,modalidad,lugar_salida,lugar_destino);
    index_ciclo_vuelos :=1;
    WHILE index_ciclo_vuelos<=id_vuelos_list.COUNT LOOP
        SELECT MAC.clave BULK COLLECT INTO id_clases_list
            FROM VUELO VU, MODELO_AVION_AEROLINEA MAA, MODELO_AVION MA, MODELO_AVION_CLASE MAC
            WHERE VU.clave = id_vuelos_list(index_ciclo_vuelos) AND VU.modelo_avion_aerolinea_fk = MAA.clave AND MAA.modelo_avion_fk = MA.clave AND MAC.modelo_avion_fk = MA.clave;
        index_clase_aleatoria := ROUND(DBMS_RANDOM.VALUE(1,id_clases_list.COUNT));
        SELECT MAC.numero_asientos INTO capacidad_de_clase 
            FROM MODELO_AVION_CLASE MAC
            WHERE MAC.clave = id_clases_list(index_clase_aleatoria);
        index_asiento_numero := ROUND(DBMS_RANDOM.VALUE(1,capacidad_de_clase/2));
        index_ciclo_reserva_vuelos_usuarios := 1;
        WHILE index_ciclo_reserva_vuelos_usuarios<=id_reserva_usuarios_list.COUNT LOOP
            INSERT INTO RESERVA_USUARIO_VUELO (Asiento,Vuelo_fk,Reserva_usuario_fk,Modelo_avion_clase_fk) VALUES(index_asiento_numero,id_vuelos_list(index_ciclo_vuelos),id_reserva_usuarios_list(index_ciclo_reserva_vuelos_usuarios),id_clases_list(index_clase_aleatoria));
            index_asiento_numero := index_asiento_numero + 1;
            index_ciclo_reserva_vuelos_usuarios := index_ciclo_reserva_vuelos_usuarios +1;
        END LOOP;
        index_ciclo_vuelos := index_ciclo_vuelos + 1;
    END LOOP;
END;
/
---------------------------- 6.- GENERAR VUELOS ----------------------------
CREATE OR REPLACE FUNCTION crear_vuelo(fecha_inicio DATE, id_lugar_origen NUMBER, id_lugar_destino NUMBER) return number
IS
    vuelo_directo NUMBER;
    id_aerolinea NUMBER;
    numero_aerolineas NUMBER;
    numero_vuelos NUMBER;
    numero_aleatorio_vuelos NUMBER;
    id_vuelo_insertado NUMBER;
    id_aleatorio_vuelo NUMBER;
    id_modelo_avion NUMBER;
    id_modelo_avion_aerolinea NUMBER;
    id_aeropuerto_origen NUMBER;
    id_aeropuerto_destino NUMBER;
    distancia NUMBER;
    promedio_distancia NUMBER := 0;
    duracion NUMBER;
    promedio_duracion NUMBER := 0;
    precio NUMBER;
    promedio_precio NUMBER := 0;
    id_modelo_avion_list DBMS_SQL.NUMBER_TABLE;
BEGIN
    --Seleccion de aerolinea aleatoria--
        SELECT COUNT(*) INTO  numero_aerolineas FROM AEROLINEA;
        id_aerolinea := ROUND(DBMS_RANDOM.VALUE(1,numero_aerolineas));
        
        --Seleccion de modelo avion aleatorio--
        SELECT MAA.modelo_avion_fk BULK COLLECT INTO id_modelo_avion_list FROM MODELO_AVION_AEROLINEA MAA WHERE MAA.aerolinea_fk = id_aerolinea;
        id_modelo_avion := id_modelo_avion_list(ROUND(DBMS_RANDOM.VALUE(1,id_modelo_avion_list.COUNT)));
        
        SELECT MAA.clave INTO id_modelo_avion_aerolinea FROM MODELO_AVION_AEROLINEA MAA WHERE MAA.aerolinea_fk = id_aerolinea AND MAA.modelo_avion_fk = id_modelo_avion;
        
        --Seleccion de aeropuertos de salida y llegada--
        SELECT AO.clave, AD.clave INTO id_aeropuerto_origen, id_aeropuerto_destino FROM AEROPUERTO AO, AEROPUERTO AD WHERE AO.lugar_fk = id_lugar_origen AND AD.lugar_fk = id_lugar_destino AND ROWNUM = 1;
        
        --Obtencion distancia--
        SELECT COUNT(*) INTO numero_vuelos FROM VUELO;
        numero_aleatorio_vuelos := ROUND(DBMS_RANDOM.VALUE(1,numero_vuelos));
        FOR I IN 1.. numero_aleatorio_vuelos
        LOOP
            id_aleatorio_vuelo := ROUND(DBMS_RANDOM.VALUE(1,numero_vuelos));
            SELECT  V.Intinerario_real.calcular_duracion_horas(V.Intinerario_estimado.fecha_inicio,V.Intinerario_estimado.fecha_fin) AS duracion, V.distancia_recorrida AS distancia, V.precio_base_vuelo.precio AS precio 
                INTO duracion, distancia, precio
                    FROM VUELO V
                        WHERE V.clave= id_aleatorio_vuelo;
            promedio_duracion := promedio_duracion + duracion;
            promedio_distancia := promedio_distancia + distancia;
            promedio_precio := promedio_precio + precio;
        END LOOP;
        promedio_duracion := round(promedio_duracion / numero_aleatorio_vuelos);
        promedio_distancia := promedio_distancia / numero_aleatorio_vuelos;
        promedio_precio := promedio_precio / numero_aleatorio_vuelos;
        INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
            VALUES (intinerario(fecha_inicio,fecha_inicio + (promedio_duracion/24)), intinerario(null, null), round(promedio_distancia), datosprecio(round(promedio_precio)), id_aeropuerto_origen, id_aeropuerto_destino, id_modelo_avion_aerolinea) 
                RETURNING (Clave) INTO id_vuelo_insertado;
                  
        RETURN id_vuelo_insertado;
      
END;
/
CREATE OR REPLACE FUNCTION generar_vuelos(fecha_inicio DATE, fecha_retorno DATE, modalidad NUMBER, id_lugar_origen NUMBER, id_lugar_destino NUMBER) RETURN DBMS_SQL.NUMBER_TABLE
IS
   
    id_lugar_intermedio NUMBER;
    id_vuelo_intermedio NUMBER;
    fecha_intermedio DATE;
    id_vuelos_insertados_list DBMS_SQL.NUMBER_TABLE;
    id_vuelos_lits_aux DBMS_SQL.NUMBER_TABLE;
    cantidad_vuelos NUMBER := 0;
    vuelo_directo NUMBER;

BEGIN
    vuelo_directo := ROUND(DBMS_RANDOM.VALUE(0,1));
    IF vuelo_directo = 1 THEN
        cantidad_vuelos := cantidad_vuelos + 1;
        SELECT LEVEL BULK COLLECT INTO id_vuelos_insertados_list FROM DUAL CONNECT BY LEVEL <= cantidad_vuelos;
        id_vuelos_insertados_list(id_vuelos_insertados_list.COUNT) := crear_vuelo(fecha_inicio, id_lugar_origen, id_lugar_destino);
    ELSE
        cantidad_vuelos := cantidad_vuelos + 2;
        SELECT LEVEL BULK COLLECT INTO id_vuelos_insertados_list FROM DUAL CONNECT BY LEVEL <= cantidad_vuelos;
        
        id_lugar_intermedio := lugar_aleatorio_aeropuerto();
        id_vuelo_intermedio := crear_vuelo(fecha_inicio, id_lugar_origen, id_lugar_intermedio);
        
        id_vuelos_insertados_list(id_vuelos_insertados_list.COUNT-1) := id_vuelo_intermedio;
        
        SELECT V.Intinerario_estimado.fecha_fin + 3/24 INTO fecha_intermedio FROM VUELO V WHERE V.clave = id_vuelo_intermedio;
        id_vuelo_intermedio := crear_vuelo(fecha_intermedio, id_lugar_intermedio, id_lugar_destino);
        
        id_vuelos_insertados_list(id_vuelos_insertados_list.COUNT) := id_vuelo_intermedio;
    END IF;
    
    SELECT LEVEL BULK COLLECT INTO id_vuelos_lits_aux FROM DUAL CONNECT BY LEVEL <= cantidad_vuelos;
    FOR I IN id_vuelos_lits_aux.FIRST..id_vuelos_lits_aux.LAST
    LOOP
        id_vuelos_lits_aux(I):=id_vuelos_insertados_list(I);
    END LOOP;
        
    IF modalidad = 1 THEN
        vuelo_directo := ROUND(DBMS_RANDOM.VALUE(0,1));
        IF vuelo_directo = 1 THEN
            cantidad_vuelos := cantidad_vuelos + 1;
            SELECT LEVEL BULK COLLECT INTO id_vuelos_insertados_list FROM DUAL CONNECT BY LEVEL <= cantidad_vuelos;
            
            id_vuelos_insertados_list(id_vuelos_insertados_list.COUNT) := crear_vuelo(fecha_retorno, id_lugar_destino, id_lugar_origen);
            
            FOR I IN id_vuelos_lits_aux.FIRST..id_vuelos_lits_aux.LAST
            LOOP
                id_vuelos_insertados_list(I):=id_vuelos_lits_aux(I);
            END LOOP;
            
        ELSE
            cantidad_vuelos := cantidad_vuelos + 2;
            SELECT LEVEL BULK COLLECT INTO id_vuelos_insertados_list FROM DUAL CONNECT BY LEVEL <= cantidad_vuelos;
            
            id_lugar_intermedio := lugar_aleatorio_aeropuerto();
            id_vuelo_intermedio := crear_vuelo(fecha_retorno, id_lugar_destino, id_lugar_intermedio);
            
            id_vuelos_insertados_list(id_vuelos_insertados_list.COUNT-1) := id_vuelo_intermedio;
            
            SELECT V.Intinerario_estimado.fecha_fin + 3/24 INTO fecha_intermedio FROM VUELO V WHERE V.clave = id_vuelo_intermedio;
            id_vuelo_intermedio := crear_vuelo(fecha_intermedio, id_lugar_intermedio, id_lugar_origen);
            
            id_vuelos_insertados_list(id_vuelos_insertados_list.COUNT) := id_vuelo_intermedio;
            
            FOR I IN id_vuelos_lits_aux.FIRST..id_vuelos_lits_aux.LAST
            LOOP
                id_vuelos_insertados_list(I):=id_vuelos_lits_aux(I);
            END LOOP;
        END IF;
    END IF;
    return id_vuelos_insertados_list;
END;
/
---------------------------- 7.- FECHA ESTIMADA LLEGADA ----------------------------
---------------------------- 8.- FECHA PRIMER VUELO REGRESO ----------------------------
---------------------------- 9.- GENERAR RESERVA AUTOMOVIL ----------------------------
CREATE OR REPLACE PROCEDURE GENERAR_RESERVA_AUTOMOVIL(id_destino NUMBER, fecha_estimada_llegada DATE, fecha_vuelo_regreso DATE, id_factura_reserva NUMBER)
IS
    id_oficinas_locales_list DBMS_SQL.NUMBER_TABLE;
    id_carros_list DBMS_SQL.NUMBER_TABLE;
    id_reserva_usuarios_list DBMS_SQL.NUMBER_TABLE;
    index_oficina_aleatoria NUMBER;
    index_carro_aleatorio NUMBER;
    index_ciclo_reserva_carros_usuarios NUMBER;
    id_oficina_retorno NUMBER;
BEGIN
    SELECT OF.clave BULK COLLECT id_oficinas_locales_list
        FROM OFICINA OF
        SELECT OF.lugar_fk = id_destino;
    index_oficina_aleatoria := ROUND(DBMS_RANDOM.VALUE(1,id_oficinas_locales_list.COUNT));
    SELECT MAO.clave BULK COLLECT id_carros_list
        FROM OFICINA OF, MODELO_AUTO_OFICINA MAO
        WHERE OF.clave = id_oficinas_locales_list(index_oficina_aleatoria) AND OF.clave = MAO.oficina_fk;
    index_carro_aleatorio :=  ROUND(DBMS_RANDOM.VALUE(1,id_carros_list.COUNT));
    id_oficina_retorno := OFICINA_RETORNO_AUTOMOVIL(id_oficinas_locales_list(index_oficina_aleatoria));
    SELECT RU.clave BULK COLLECT INTO id_reserva_usuarios_list
        FROM FACTURA_RESERVA FR, RESERVA_USUARIO RU
        WHERE FR.clave = id_factura_reserva AND FR.clave = RU.factura_reserva_fk;
    index_ciclo_reserva_carros_usuarios := 1;
    WHILE index_ciclo_reserva_carros_usuarios<=id_reserva_usuarios_list.COUNT LOOP
        INSERT INTO RESERVA_USUARIO_AUTOMOVIL (Intinerario_reserva_automovil,Modelo_auto_oficina_fk,Oficina_fk,Reserva_usuario_fk) VALUES (intinerario(fecha_estimada_llegada,fecha_vuelo_regreso),id_carros_list(index_carro_aleatorio),id_oficina_retorno,id_reserva_usuarios_list(index_ciclo_reserva_carros_usuarios));
        index_ciclo_reserva_carros_usuarios := index_ciclo_reserva_carros_usuarios + 1;
    END LOOP;
END;
/
---------------------------- 10.- OFICINA RETORNO AUTOMOVIL ----------------------------
CREATE OR REPLACE FUNCTION OFICINA_RETORNO_AUTOMOVIL(id_oficina NUMBER) RETURN NUMBER
IS
    id_rentadora NUMBER;
    id_lugar_oficina NUMBER;
    index_oficina_aleatoria NUMBER;
    id_oficina_list DBMS_SQL.NUMBER_TABLE;
BEGIN
    SELECT O.rentadora_fk, O.lugar_fk INTO id_rentadora, id_lugar_oficina 
        FROM OFICINA O 
        WHERE O.clave = id_oficina;
    SELECT O.clave BULK COLLECT INTO id_oficina_list 
        FROM OFICINA O, RENTADORA R 
        WHERE R.clave = O.rentadora_fk AND O.lugar_fk = id_lugar_oficina AND R.clave = id_rentadora;
    index_oficina_aleatoria := ROUND(DBMS_RANDOM.VALUE(1,id_oficina_list.COUNT));
    return id_oficina_list((index_oficina_aleatoria));
END;
/
---------------------------- 11.- GENERAR RESERVA ALOJAMIENTO ----------------------------
CREATE OR REPLACE PROCEDURE GENERAR_RESERVA_ALOJAMIENTO(id_destino NUMBER, fecha_estimada_llegada DATE, fecha_vuelo_regreso DATE, id_factura_reserva NUMBER)
IS
    id_reserva_usuarios_list DBMS_SQL.NUMBER_TABLE;
    id_hoteles_locales_list DBMS_SQL.NUMBER_TABLE;
    id_tipo_habitacion_list DBMS_SQL.NUMBER_TABLE;
    id_habitacion_list DBMS_SQL.NUMBER_TABLE;
    index_hotel_aleatorio NUMBER;
    index_tipo_habitacion_aleatorio NUMBER;
    index_habitacion_aleatorio NUMBER;
    index_ciclo_reserva_habitacion_usuario NUMBER;
BEGIN
    SELECT RU.clave BULK COLLECT INTO id_reserva_usuarios_list
        FROM FACTURA_RESERVA FR, RESERVA_USUARIO RU
        WHERE FR.clave = id_factura_reserva AND FR.clave = RU.factura_reserva_fk;
    SELECT HO.clave BULK COLLECT id_hoteles_locales_list
        FROM HOTEL HO
        WHERE HO.lugar_fk = id_destino;
    index_hotel_aleatorio := ROUND(DBMS_RANDOM.VALUE(1,id_hoteles_locales_list.COUNT));
    IF id_reserva_usuarios_list.COUNT = 3 THEN
        SELECT TH.clave BULK COLLECT INTO id_tipo_habitacion_list
            FROM TIPO_HABITACION TH
            WHERE TH.hotel_fk = id_hoteles_locales_list(index_hotel_aleatorio) AND TH.capacidad = 4;
    ELSE
        SELECT TH.clave BULK COLLECT INTO id_tipo_habitacion_list
            FROM TIPO_HABITACION TH
            WHERE TH.hotel_fk = id_hoteles_locales_list(index_hotel_aleatorio) AND TH.capacidad = id_reserva_usuarios_list.COUNT;
    END IF;
    index_tipo_habitacion_aleatorio := ROUND(DBMS_RANDOM.VALUE(1,id_tipo_habitacion_list.COUNT));
    SELECT HA.clave BULK COLLECT INTO id_habitacion_list
        FROM HABITACION HA
        WHERE HA.tipo_habitacion_fk = id_tipo_habitacion_list(index_tipo_habitacion_aleatorio);
    index_habitacion_aleatorio := ROUND(DBMS_RANDOM.VALUE(1,id_habitacion_list.COUNT));
    index_ciclo_reserva_habitacion_usuario := 1;
    WHILE index_ciclo_reserva_habitacion_usuario<=id_reserva_usuarios_list.COUNT LOOP
        INSERT INTO RESERVA_USUARIO_HABITACION (Intinerario_reserva_habitacion,Puntuacion,Habitacion_fk,Reserva_usuario_fk) VALUES (intinerario(fecha_estimada_llegada,fecha_vuelo_regreso),ROUND(DBMS_RANDOM.VALUE(0,5)),id_habitacion_list(index_habitacion_aleatorio),id_reserva_usuarios_list(index_ciclo_reserva_habitacion_usuario));
        index_ciclo_reserva_habitacion_usuario := index_ciclo_reserva_habitacion_usuario + 1;
    END LOOP;
END;
/
---------------------------- 12.- GENERAR RESERVA SEGURO ----------------------------
CREATE OR REPLACE GENERAR_RESERVA_SEGURO (fecha_inicio DATE, fecha_fin DATE, id_factura_reserva NUMBER)
IS
    id_reserva_usuarios_list DBMS_SQL.NUMBER_TABLE;
    id_seguros_list DBMS_SQL.NUMBER_TABLE;
    index_seguro_aleatorio NUMBER;
    index_ciclo_reserva_seguro NUMBER;
BEGIN
    SELECT RU.clave BULK COLLECT INTO id_reserva_usuarios_list
        FROM FACTURA_RESERVA FR, RESERVA_USUARIO RU
        WHERE FR.clave = id_factura_reserva AND FR.clave = RU.factura_reserva_fk;
    SELECT SE.clave BULK COLLECT INTO id_seguros_list
        FROM SEGURO SE;
    index_seguro_aleatorio := ROUND(DBMS_RANDOM.VALUE(1,id_seguros_list.COUNT));
    index_ciclo_reserva_seguro := 1;
    WHILE index_ciclo_reserva_seguro<=id_reserva_usuarios_list.COUNT LOOP
        UPDATE RESERVA_USUARIO RU
            SET RU.seguro_fk = id_seguros_list(index_seguro_aleatorio);
            WHERE RU.clave =  id_reserva_usuarios_list(index_ciclo_reserva_seguro);
        index_ciclo_reserva_seguro := index_ciclo_reserva_seguro + 1;
    END LOOP;
END;
/
---------------------------- 13.- PAGAR RESERVA ----------------------------
CREATE OR REPLACE PROCEDURE PAGAR_RESERVA(id_usuario NUMBER,id_factura_reserva NUMBER)
IS
    monto_reserva NUMBER;
BEGIN
    monto_reserva := CALCULAR_PRECIO_TOTAL(id_factura_reserva);
    PAGOS(id_usuario,monto_reserva,id_factura_reserva);
    abonado_cuenta_millas(id_usuario,id_factura_reserva);
END;
/
---------------------------- 14.- CALCULO PRECIO TOTAL ----------------------------
CREATE OR REPLACE FUNCTION CALCULAR_PRECIO_TOTAL(id_factura_reserva NUMBER) RETURN NUMBER
IS
    total_vuelos NUMBER;
    total_automovil NUMBER;
    total_alojamiento NUMBER;
    total_seguro NUMBER;
    total NUMBER;
BEGIN
    total_vuelos := PRECIO_TOTAL_VUELOS(id_factura_reserva);
    total_automovil := PRECIO_TOTAL_AUTOMOVIL(id_factura_reserva);
    total_alojamiento := PRECIO_TOTAL_ALOJAMIENTO(id_factura_reserva);
    total_seguro := PRECIO_TOTAL_SEGURO(id_factura_reserva);
    total := total_vuelos + total_automovil + total_alojamiento + total_seguro;
    RETURN total;
ENG;
---------------------------- 15.- PRECIO TOTAL VUELOS ----------------------------
CREATE OR REPLACE FUNCTION PRECIO_TOTALVUELOS (id_factura_reserva NUMBER) RETURN NUMBER
IS
    id_reserva_usuarios_list DBMS_SQL.NUMBER_TABLE;
    id_reserva_vuelo_list DBMS_SQL.NUMBER_TABLE;
    id_reserva_usuario NUMBER;
    index_ciclo_reserva_vuelos NUMBER;
    precio_base_vuelo NUMBER;
    ponderacion_modelo_avion NUMBER;
    ponderacion_clase NUMBER;
    total NUMBER;
BEGIN
    SELECT RU.clave BULK COLLECT INTO id_reserva_usuarios_list
        FROM FACTURA_RESERVA FR, RESERVA_USUARIO RU
        WHERE FR.clave = id_factura_reserva AND FR.clave = RU.factura_reserva_fk;
    id_reserva_usuario := id_reserva_usuarios_list(1);
    SELECT RUV.clave BULK COLLECT INTO id_reserva_vuelo_list
        FROM RESERVA_USUARIO_VUELO RUV
        WHERE RUV.reserva_usuario_fk = id_reserva_usuario;
    total := 0;
    index_ciclo_reserva_vuelos := 1;
    WHILE index_ciclo_reserva_vuelos<=id_reserva_usuarios_list.COUNT LOOP
        SELECT VU.precio_base_vuelo.precio INTO precio_base_vuelo 
            FROM VUELO VU, RESERVA_USUARIO_VUELO RUV
            WHERE VU.clave = RUV.vuelo_fk AND RUV.clave = id_reserva_vuelo_list(index_ciclo_reserva_vuelos);
        SELEC CL.ponderacion INTO ponderacion_clase
            FROM RESERVA_USUARIO_VUELO RUV, MODELO_AVION_CLASE MAC, CLASE CL
            WHERE RUV.modelo_avion_clase_fk = MAC.clave AND MAC.clase_fk = CL.clave AND RUV.clave = id_reserva_vuelo_list(index_ciclo_reserva_vuelos);
        SELECT MAA.ponderacion INTO ponderacion_modelo_avion
            FROM RESERVA_USUARIO_VUELO RUV, VUELO VU, MODELO_AVION_AEROLINEA MAA
            WHERE RUV.vuelo_fk = VU.clave AND VU.modelo_avion_aerolinea_fk = MAA.clave AND RUV.clave = id_reserva_vuelo_list(index_ciclo_reserva_vuelos);
        total := total + (precio_base_vuelo*ponderacion_clase*ponderacion_modelo_avion*id_reserva_usuarios_list.COUNT);
        index_ciclo_reserva_vuelos := index_ciclo_reserva_vuelos + 1;
    END LOOP;
    RETURN total;
END;
/
---------------------------- 16.- PRECIO TOTAL AUTOMOVIL ----------------------------
CREATE OR REPLACE FUNCTION PRECIO_TOTAL_AUTOMOVIL(id_factura_reserva NUMBER) RETURN NUMBER
IS
    id_reserva_usuarios_list DBMS_SQL.NUMBER_TABLE;
    id_reserva_usuario NUMBER;
    id_reserva_automovil NUMBER;
    fecha_inicio DATE,
    fecha_fin DATE,
    dias NUMBER;
    precio_diario NUMBER;
    total NUMBER;
BEGIN
    SELECT RU.clave BULK COLLECT INTO id_reserva_usuarios_list
            FROM FACTURA_RESERVA FR, RESERVA_USUARIO RU
            WHERE FR.clave = id_factura_reserva AND FR.clave = RU.factura_reserva_fk;
    id_reserva_usuario := id_reserva_usuarios_list(1);
    SELECT RUA.clave INTO id_reserva_automovil
        FROM RESERVA_USUARIO_AUTOMOVIL RUA
        WHERE RUA.reserva_usuario_fk = id_reserva_usuario;
    SELECT  MAO.precio_dia_auto.precio INTO precio_diario
        FROM RESERVA_USUARIO_AUTOMOVIL RUA, MODELO_AUTO_OFICINA MAO
        RUA.modelo_auto_oficina_fk = MAO.clave AND RUA.clave = id_reserva_automovil;
    SELECT RUA.intinerario_reserva_automovil.fecha_inicio,RUA.intinerario_reserva_automovil.fecha_fin INTO fecha_inicio,fecha_fin
        FROM RESERVA_USUARIO_AUTOMOVIL RUA
        WHERE RUA.clave = id_reserva_automovil;
    SELECT ROUND(fecha_fin-fecha_inicio) INTO dias 
        FROM DUAL;
    total := (precio_diario*dias);
    RETURN total;
END;
/
---------------------------- 17.- PRECIO TOTAL ALOJAMIENTO ----------------------------
CREATE OR REPLACE FUNCTION PRECIO_TOTAL_ALOJAMIENTO(id_factura_reserva NUMBER) RETURN NUMBER
IS
    id_reserva_usuarios_list DBMS_SQL.NUMBER_TABLE;
    id_reserva_usuario NUMBER;
    id_reserva_hotel NUMBER;
    fecha_inicio DATE;
    fecha_fin DATE;
    dias NUMBER;
    precio_dia NUMBER;
    total NUMBER;
BEGIN
    SELECT RU.clave BULK COLLECT INTO id_reserva_usuarios_list
            FROM FACTURA_RESERVA FR, RESERVA_USUARIO RU
            WHERE FR.clave = id_factura_reserva AND FR.clave = RU.factura_reserva_fk;
    id_reserva_usuario := id_reserva_usuarios_list(1);
    SELECT RUH.clave INTO id_reserva_hotel
        FROM RESERVA_USUARIO_HABITACION RUH
        WHERE RUH.reserva_usuario_fk = id_reserva_usuario;
    SELECT TH.precio_dia_habitacion.precio INTO precio_dia
        FROM RESERVA_USUARIO_HABITACION RUH, HABITACION HA, TIPO_HABITACION TH
        WHERE RUH.habitacion_fk = HA.clave AND HA.tipo_habitacion_fk = TH.clave AND RUH.clave = id_reserva_hotel;
    SELECT RUH.intinerario_reserva_habitacion.fecha_inicio,RUH.intinerario_reserva_habitacion.fecha_fin INTO fecha_inicio, fecha_fin
        FROM RESERVA_USUARIO_HABITACION RUH
        WHERE RUH.clave = id_reserva_hotel;
    SELECT ROUND(fecha_fin-fecha_inicio) INTO dias 
        FROM DUAL;
    total := (precio_dia*dias);
    RETURN total;
END
/
---------------------------- 18.- PRECIO TOTAL SEGURO ----------------------------
CREATE OR REPLACE FUNCTION PRECIO_TOTAL_SEGURO(id_factura_reserva NUMBER) RETURN NUMBER
IS
    id_reserva_usuarios_list DBMS_SQL.NUMBER_TABLE;
    id_reserva_usuario NUMBER;
    precio_seguro NUMBER;
    total NUMBER;
BEGIN
    SELECT RU.clave BULK COLLECT INTO id_reserva_usuarios_list
            FROM FACTURA_RESERVA FR, RESERVA_USUARIO RU
            WHERE FR.clave = id_factura_reserva AND FR.clave = RU.factura_reserva_fk;
    id_reserva_usuario := id_reserva_usuarios_list(1);
    SELECT SUM(SS.precio_servicio_seguro.precio) INTO precio_seguro
        FROM RESERVA_USUARIO RU, SEGURO SE, SERVICIO_SEGURO SS
        WHERE RU.seguro_fk = SE.clave AND SS.seguro_fk = SE.clave AND RU.clave = id_reserva_usuario;
    total := precio_seguro*id_reserva_usuarios_list.COUNT;
    RETURN total;
END
/
---------------------------- 19.- PAGOS ----------------------------
CREATE OR REPLACE PROCEDURE PAGOS(id_persona NUMBER, monto_reserva NUMBER, id_factura_reserva NUMBER)
IS
    modalidad NUMBER;
BEGIN
    modalidad := ROUND(DBMS_RANDOM.VALUE(0,1));
    IF modalidad=0 THEN
        pago_millas(id_persona,monto_reserva,id_factura_reserva);
    ELSE
        pago_tipo_pago(id_persona,monto_reserva,id_factura_reserva);
    END_IF
END;
/
---------------------------- 20.- PAGO MILLAS ----------------------------
CREATE OR REPLACE FUNCTION pago_millas(id_persona NUMBER, monto_reserva NUMBER, id_factura_reserva NUMBER) return number
IS
    cantidad_millas NUMBER;
    fecha_factura_reserva DATE;
    id_cuenta_milla NUMBER;
    id_pago NUMBER;
BEGIN
    SELECT CM.cantidad, CM.clave INTO cantidad_millas, id_cuenta_milla FROM CUENTA_MILLA CM WHERE CM.usuario_fk = id_persona;
    IF cantidad_millas >= monto_reserva THEN
        SELECT FR.fecha INTO fecha_factura_reserva FROM FACTURA_RESERVA FR WHERE FR.clave = id_factura_reserva;
        INSERT INTO PAGO(Precio_pago, Fecha, Cuenta_milla_fk, Tipo_pago_tarjeta_credito_fk, Tipo_pago_tarjeta_debito_fk, Factura_reserva_fk)
            VALUES (DatosPrecio(monto_reserva), fecha_factura_reserva, id_cuenta_milla, null, null, id_factura_reserva)
                RETURNING (Clave) INTO id_pago;
        RETURN id_pago;
    ELSE
        RETURN NULL;
    END IF;
END;
/
---------------------------- 21.- PAGO TIPO PAGO ----------------------------
CREATE OR REPLACE FUNCTION pago_tipo_pago(id_persona NUMBER, monto_reserva NUMBER, id_factura_reserva NUMBER) return DBMS_SQL.NUMBER_TABLE
IS
    aleatorio_tarjeta_credito NUMBER;
    aleatorio_tarjeta_debito NUMBER;
    tarjetas_credito_usuario DBMS_SQL.NUMBER_TABLE;
    index_tarjetas_credito NUMBER;
    tarjetas_debito_usuario DBMS_SQL.NUMBER_TABLE;
    index_tarjetas_debito NUMBER;
    fecha_factura_reserva DATE;
    id_tarjeta_credito NUMBER;
    id_tarjeta_debito NUMBER;
    monto_compartido NUMBER;
    monto NUMBER;
    ponderacion_aleatoria NUMBER;
    id_pago NUMBER;
    id_pagos DBMS_SQL.NUMBER_TABLE;
BEGIN
    aleatorio_tarjeta_credito := ROUND(DBMS_RANDOM.VALUE(0,1));
    aleatorio_tarjeta_debito := ROUND(DBMS_RANDOM.VALUE(0,1));
    
    SELECT FR.fecha INTO fecha_factura_reserva FROM FACTURA_RESERVA FR WHERE FR.clave = id_factura_reserva;
    
    SELECT TC.clave BULK COLLECT INTO tarjetas_credito_usuario FROM TIPO_PAGO_TARJETA_CREDITO TC WHERE TC.usuario_fk = id_persona;
    SELECT TD.clave BULK COLLECT INTO tarjetas_debito_usuario FROM TIPO_PAGO_TARJETA_DEBITO TD WHERE TD.usuario_fk = id_persona;
    
    SELECT LEVEL BULK COLLECT INTO id_pagos FROM DUAL CONNECT BY LEVEL <= 1;
    
    IF (tarjetas_debito_usuario.COUNT = 0) THEN
        index_tarjetas_credito := ROUND(DBMS_RANDOM.VALUE(1,tarjetas_credito_usuario.COUNT));
        id_tarjeta_credito := tarjetas_credito_usuario(index_tarjetas_credito);
        
        INSERT INTO PAGO(Precio_pago, Fecha, Cuenta_milla_fk, Tipo_pago_tarjeta_credito_fk, Tipo_pago_tarjeta_debito_fk, Factura_reserva_fk)
            VALUES (DatosPrecio(monto_reserva), fecha_factura_reserva, null, id_tarjeta_credito, null, id_factura_reserva)
                RETURNING (Clave) INTO id_pago;
                
        id_pagos(1) := id_pago;
        RETURN id_pagos;
    ELSIF (tarjetas_credito_usuario.COUNT = 0)  THEN
        index_tarjetas_debito := ROUND(DBMS_RANDOM.VALUE(1,tarjetas_debito_usuario.COUNT));
        id_tarjeta_debito := tarjetas_debito_usuario(index_tarjetas_debito);
        
        INSERT INTO PAGO(Precio_pago, Fecha, Cuenta_milla_fk, Tipo_pago_tarjeta_credito_fk, Tipo_pago_tarjeta_debito_fk, Factura_reserva_fk)
            VALUES (DatosPrecio(monto_reserva), fecha_factura_reserva, null, null, id_tarjeta_debito, id_factura_reserva)
                RETURNING (Clave) INTO id_pago;
         id_pagos(1) := id_pago;
        RETURN id_pagos;
    ELSIF (aleatorio_tarjeta_debito = 0 AND aleatorio_tarjeta_credito = 1) THEN
        index_tarjetas_credito := ROUND(DBMS_RANDOM.VALUE(1,tarjetas_credito_usuario.COUNT));
        id_tarjeta_credito := tarjetas_credito_usuario(index_tarjetas_credito);
        
        INSERT INTO PAGO(Precio_pago, Fecha, Cuenta_milla_fk, Tipo_pago_tarjeta_credito_fk, Tipo_pago_tarjeta_debito_fk, Factura_reserva_fk)
            VALUES (DatosPrecio(monto_reserva), fecha_factura_reserva, null, id_tarjeta_credito, null, id_factura_reserva)
                RETURNING (Clave) INTO id_pago;
         id_pagos(1) := id_pago;
        RETURN id_pagos;
    ELSIF (aleatorio_tarjeta_debito = 1 AND aleatorio_tarjeta_credito = 0) THEN
        index_tarjetas_debito := ROUND(DBMS_RANDOM.VALUE(1,tarjetas_debito_usuario.COUNT));
        id_tarjeta_debito := tarjetas_debito_usuario(index_tarjetas_debito);
        
        INSERT INTO PAGO(Precio_pago, Fecha, Cuenta_milla_fk, Tipo_pago_tarjeta_credito_fk, Tipo_pago_tarjeta_debito_fk, Factura_reserva_fk)
            VALUES (DatosPrecio(monto_reserva), fecha_factura_reserva, null, null, id_tarjeta_debito, id_factura_reserva)
                RETURNING (Clave) INTO id_pago;
         id_pagos(1) := id_pago;
        RETURN id_pagos;
    ELSIF (aleatorio_tarjeta_credito = aleatorio_tarjeta_debito) THEN
        SELECT LEVEL BULK COLLECT INTO id_pagos FROM DUAL CONNECT BY LEVEL <= 2;
        ponderacion_aleatoria := DBMS_RANDOM.VALUE(0,1);
        monto_compartido := round(monto_reserva * ponderacion_aleatoria);
        monto := round(monto_reserva * (1 - ponderacion_aleatoria));
        
        index_tarjetas_credito := ROUND(DBMS_RANDOM.VALUE(1,tarjetas_credito_usuario.COUNT));
        id_tarjeta_credito := tarjetas_credito_usuario(index_tarjetas_credito);
        
        INSERT INTO PAGO(Precio_pago, Fecha, Cuenta_milla_fk, Tipo_pago_tarjeta_credito_fk, Tipo_pago_tarjeta_debito_fk, Factura_reserva_fk)
            VALUES (DatosPrecio(monto), fecha_factura_reserva, null, id_tarjeta_credito, null, id_factura_reserva)
                RETURNING (Clave) INTO id_pago;
                
        id_pagos(1) := id_pago;
        
        
        index_tarjetas_debito := ROUND(DBMS_RANDOM.VALUE(1,tarjetas_debito_usuario.COUNT));
        id_tarjeta_debito := tarjetas_debito_usuario(index_tarjetas_debito);
        
        INSERT INTO PAGO(Precio_pago, Fecha, Cuenta_milla_fk, Tipo_pago_tarjeta_credito_fk, Tipo_pago_tarjeta_debito_fk, Factura_reserva_fk)
            VALUES (DatosPrecio(monto_compartido), fecha_factura_reserva, null, null, id_tarjeta_debito, id_factura_reserva)
                RETURNING (Clave) INTO id_pago;
        id_pagos(2) := id_pago;
        
        
        RETURN id_pagos;
    END IF;
END;
/
---------------------------- 22.- ABONANDO CUENTA MILLAS ----------------------------
CREATE OR REPLACE FUNCTION abonado_cuenta_millas(id_persona NUMBER, id_factura_reserva NUMBER) return number
IS
    cantidad_millas NUMBER;
    fecha_factura_reserva DATE;
    id_cuenta_milla NUMBER;
    id_pago NUMBER;
BEGIN
    SELECT CM.cantidad, CM.clave INTO cantidad_millas, id_cuenta_milla FROM CUENTA_MILLA CM WHERE CM.usuario_fk = id_persona;
    IF cantidad_millas >= monto_reserva THEN
        SELECT FR.fecha INTO fecha_factura_reserva FROM FACTURA_RESERVA FR WHERE FR.clave = id_factura_reserva;
        INSERT INTO PAGO(Precio_pago, Fecha, Cuenta_milla_fk, Tipo_pago_tarjeta_credito_fk, Tipo_pago_tarjeta_debito_fk, Factura_reserva_fk)
            VALUES (DatosPrecio(monto_reserva), fecha_factura_reserva, id_cuenta_milla, null, null, id_factura_reserva)
                RETURNING (Clave) INTO id_pago;
        UPDATE CUENTA_MILLA SET cantidad = cantidad - monto_reserva WHERE clave = id_cuenta_milla;
        RETURN id_pago;
    ELSE
        RETURN NULL;
    END IF;
END;
/
---------------------------- 23.- CANCELAR RESERVAS ----------------------------

