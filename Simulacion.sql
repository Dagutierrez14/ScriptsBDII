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
---------------------------- 14.- CALCULO PRECIO TOTAL ----------------------------
---------------------------- 15.- PRECIO TOTAL VUELOS ----------------------------
---------------------------- 16.- PRECIO TOTAL AUTOMOVIL ----------------------------
---------------------------- 17.- PRECIO TOTAL ALOJAMIENTO ----------------------------
---------------------------- 18.- PRECIO TOTAL SEGURO ----------------------------
---------------------------- 19.- PAGOS ----------------------------
---------------------------- 20.- PAGO MILLAS ----------------------------
---------------------------- 21.- PAGO TIPO PAGO ----------------------------
---------------------------- 22.- ABONANDO CUENTA MILLAS ----------------------------
---------------------------- 23.- CANCELAR RESERVAS ----------------------------

