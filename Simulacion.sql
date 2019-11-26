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
---------------------------- 10.- OFICINA RETORNO AUTOMOVIL ----------------------------
CREATE OR REPLACE FUNCTION OFICINA_RETORNO_AUTOMOVIL(id_oficina NUMBER) RETURN NUMBER
IS
    id_rentadora NUMBER;
    id_lugar_oficina NUMBER;
    index_oficina_aleatoria NUMBER;
    id_oficina_list DBMS_SQL.NUMBER_TABLE;
BEGIN
    SELECT O.rentadora_fk, O.lugar_fk INTO id_rentadora, id_lugar_oficina FROM OFICINA O WHERE O.clave = id_oficina;
    SELECT O.clave BULK COLLECT INTO id_oficina_list FROM OFICINA O, RENTADORA R WHERE R.clave = O.rentadora_fk AND O.lugar_fk = id_lugar_oficina AND R.clave = id_rentadora;
    index_oficina_aleatoria := ROUND(DBMS_RANDOM.VALUE(1,id_oficina_list.COUNT));
    return id_oficina_list((index_oficina_aleatoria));
END;
/
---------------------------- 11.- GENERAR RESERVA ALOJAMIENTO ----------------------------
---------------------------- 12.- GENERAR RESERVA SEGURO ----------------------------
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

