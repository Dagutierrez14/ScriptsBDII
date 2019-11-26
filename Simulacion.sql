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

