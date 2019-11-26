---------------------------- 1.- INICIAR SIMULACION ----------------------------
---------------------------- 2.- GENERAR RESERVA ----------------------------
---------------------------- 3.- GENERAR FECHA ALEATORIA ----------------------------
---------------------------- 4.- GENERAR LUGAR ALEATORIO AEROPUERTO ----------------------------
CREATE OR REPLACE FUNCTION lugar_aleatorio_aeropuerto return number
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
---------------------------- 6.- GENERAR VUELOS ----------------------------
---------------------------- 7.- FECHA ESTIMADA LLEGADA ----------------------------
---------------------------- 8.- FECHA PRIMER VUELO REGRESO ----------------------------
---------------------------- 9.- GENERAR RESERVA AUTOMOVIL ----------------------------
---------------------------- 10.- OFICINA RETORNO AUTOMOVIL ----------------------------
CREATE OR REPLACE FUNCTION oficina_retorno_automovil(id_oficina number) return number
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
