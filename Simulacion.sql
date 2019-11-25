---------------------------- 1.- INICIAR SIMULACION ----------------------------
---------------------------- 2.- GENERAR RESERVA ----------------------------
---------------------------- 3.- GENERAR FECHA ALEATORIA ----------------------------
CREATE OR REPLACE FUNCTION GENERAR_FECHA_ALEATORIA(fecha_base IN DATE, periodo in NUMBER)
    RETURN DATE
    IS
        fecha_aleatoria DATE;
    BEGIN
        select (fecha_base+dbms_random.value(1,periodo)) INTO fecha_aleatoria from dual;
        RETURN fecha_aleatoria;
    END;       
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

