/*------------------------TDA's------------------------------*/
/*------------------------DATOS BASICOS------------------------------*/
CREATE OR REPLACE TYPE DatosBasicos AS OBJECT
(
    Nombre VARCHAR2(50),
    Descripcion VARCHAR2(200),
    MEMBER PROCEDURE validar_datos(Nombre VARCHAR2, Descripcion VARCHAR2)
);
/
CREATE OR REPLACE TYPE BODY DatosBasicos IS
    MEMBER PROCEDURE validar_datos(Nombre VARCHAR2, Descripcion VARCHAR2) IS
    BEGIN
        IF(Nombre LIKE '/^\S$/') THEN
            IF (Descripcion NOT LIKE '/^\S$/') THEN
                RAISE_APPLICATION_ERROR(-20001, 'Valor inválido para descripción');
            END IF;
        ELSE
            RAISE_APPLICATION_ERROR(-20002, 'Valor inválido para nombre');
        END IF;
    END;
END;
/*------------------------INTINERARIO------------------------------*/
/*CREATE OR REPLACE FUNCTION calcular_duracion_HORAS_MINUTOS(Fecha_inicio DATE, Fecha_fin DATE) RETURN VARCHAR2 IS
    BEGIN
        RETURN TRUNC((Fecha_fin - Fecha_inicio)*24)||':'||TRUNC(MOD(((Fecha_fin - Fecha_inicio)*24*60),60));
    END;
/*/
/
CREATE OR REPLACE TYPE Intinerario AS OBJECT
(
    Fecha_inicio DATE,
    Fecha_fin DATE,
    MEMBER PROCEDURE validar_fechas(Fecha_inicio DATE, Fecha_fin DATE),
    MEMBER FUNCTION calcular_duracion_dias(Fecha_inicio DATE, Fecha_fin DATE) RETURN NUMBER,
    MEMBER FUNCTION calcular_duracion_horas(Fecha_inicio DATE, Fecha_fin DATE) RETURN NUMBER
);
/
CREATE OR REPLACE TYPE BODY Intinerario IS
    MEMBER PROCEDURE validar_fechas(Fecha_inicio DATE, Fecha_fin DATE) IS
    BEGIN
        IF(Fecha_inicio >= Fecha_fin) THEN
            RAISE_APPLICATION_ERROR(-20003, 'Fecha inicio es mayor a fecha fin');
        END IF;
    END;
    
    MEMBER FUNCTION calcular_duracion_dias(Fecha_inicio DATE, Fecha_fin DATE) RETURN NUMBER IS
    BEGIN
        RETURN  ROUND(Fecha_fin - Fecha_inicio);
    END;
    
    MEMBER FUNCTION calcular_duracion_horas(Fecha_inicio DATE, Fecha_fin DATE) RETURN NUMBER IS
    BEGIN
        RETURN  ROUND((Fecha_fin - Fecha_inicio)*24);
    END;
END;
/
/*------------------------PRECIO------------------------------*/
CREATE OR REPLACE TYPE DatosPrecio AS OBJECT
(
    Precio NUMBER,
    MEMBER PROCEDURE validar_precio(precio NUMBER),
    MEMBER FUNCTION aplicar_ponderacion(ponderacion NUMBER, precio NUMBER) RETURN NUMBER,
    MEMBER FUNCTION precio_por_dia( precio NUMBER, Fecha_inicio DATE, Fecha_fin DATE) RETURN NUMBER
);
/
CREATE OR REPLACE TYPE BODY DatosPrecio IS
    MEMBER PROCEDURE validar_precio(precio NUMBER) IS
    BEGIN
        IF(precio < 0) THEN
            RAISE_APPLICATION_ERROR(-20004, 'Precio Inv�lido');
        END IF;
    END;
    
    MEMBER FUNCTION aplicar_ponderacion(ponderacion NUMBER, precio NUMBER) RETURN NUMBER IS
    BEGIN
        IF((ponderacion <= 0) OR (ponderacion > 1)) THEN
            RAISE_APPLICATION_ERROR(-20005, 'Ponderaci�n Inv�lida');
        END IF;
        RETURN ponderacion * precio;
    END;
    
    MEMBER FUNCTION precio_por_dia(precio NUMBER, Fecha_inicio DATE, Fecha_fin DATE) RETURN NUMBER IS
    BEGIN
        RETURN precio* ROUND(Fecha_fin - Fecha_inicio);
    END;
END;
/
/*------------------------TABLAS------------------------------*/
/*------------------------1 - LUGAR------------------------------*/
CREATE TABLE LUGAR
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Nombre VARCHAR2(50) NOT NULL,
    Tipo VARCHAR2(30) NOT NULL,
    Lugar_fk NUMBER,
    CONSTRAINT pk_lugar PRIMARY KEY (Clave),
    CONSTRAINT fk_lugar FOREIGN KEY (Lugar_fk)
        REFERENCES Lugar(Clave)
);
/*------------------------2 - ESTATUS------------------------------*/
CREATE TABLE ESTATUS
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Nombre VARCHAR2(30) NOT NULL,
    CONSTRAINT pk_estatus PRIMARY KEY (Clave)
);
/*------------------------3 - USUARIO------------------------------*/
CREATE TABLE USUARIO
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    CI VARCHAR2(10) UNIQUE NOT NULL,
    Primer_nombre VARCHAR2(30) NOT NULL,
    Segundo_nombre VARCHAR2(30),
    Primer_apellido VARCHAR2(30) NOT NULL,
    Segundo_apellido VARCHAR2(30),
    Foto BLOB NOT NULL,
    Genero VARCHAR2(1) NOT NULL,
    Correo VARCHAR2(50) UNIQUE NOT NULL,
    Telefono VARCHAR2(15) NOT NULL,
    CONSTRAINT pk_usuario PRIMARY KEY (Clave),
    CONSTRAINT check_genero check(Genero IN ('M','F','O'))
);
/*------------------------4 - AEROPUERTO------------------------------*/
CREATE TABLE AEROPUERTO
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Datos_aeropuerto DatosBasicos NOT NULL,
    Telefono VARCHAR2(15) NOT NULL,
    IATA VARCHAR2(15) NOT NULL,
    Lugar_fk NUMBER NOT NULL,
    CONSTRAINT pk_aeropuerto PRIMARY KEY (Clave),
    CONSTRAINT fk_aeropuerto_lugar FOREIGN KEY (Lugar_fk)
        REFERENCES Lugar(Clave)
);
/*------------------------5 - CLASE------------------------------*/
CREATE TABLE CLASE
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Datos_clase DatosBasicos NOT NULL,
    Ponderacion NUMBER NOT NULL,
    CONSTRAINT pk_clase PRIMARY KEY (Clave)
);
/*------------------------6 - AVION------------------------------*/
CREATE TABLE AVION
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Nombre VARCHAR2(30) NOT NULL,
    Foto BLOB NOT NULL,
    CONSTRAINT pk_avion PRIMARY KEY (Clave)
);
/*------------------------7 - AEROLINEA------------------------------*/
CREATE TABLE AEROLINEA
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Datos_aerolinea DatosBasicos NOT NULL,
    Logo BLOB NOT NULL,
    CONSTRAINT pk_aerolinea PRIMARY KEY (Clave)
);
/*------------------------8 - TIPO AEROLINEA------------------------------*/
CREATE TABLE TIPO_AEROLINEA
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Datos_tipo_aerolinea DatosBasicos NOT NULL,
    CONSTRAINT pk_tipo_aerolinea PRIMARY KEY (Clave)
);
/*------------------------9 - AEROLINEA TIPO AEROLINEA------------------------------*/
CREATE TABLE AEROLINEA_TIPO_AEROLINEA
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Aerolinea_fk NUMBER NOT NULL,
    Tipo_aerolinea_fk NUMBER NOT NULL,
    CONSTRAINT pk_aerolinea_tipo_aerolinea PRIMARY KEY (Clave),
    CONSTRAINT fk_aerolinea_aerolinea_tipo_aerolinea FOREIGN KEY (Aerolinea_fk)
        REFERENCES AEROLINEA(Clave),
    CONSTRAINT fk_tipo_aerolinea_aerolinea_tipo_aerolinea FOREIGN KEY (Tipo_aerolinea_fk)
        REFERENCES TIPO_AEROLINEA(Clave)
);
/*------------------------10 - MODELO AVION------------------------------*/
CREATE TABLE MODELO_AVION
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Datos_modelo_avion DatosBasicos NOT NULL,
    Altura_cabina VARCHAR2(30) NOT NULL,
    Ancho_cabina VARCHAR2(30) NOT NULL,
    Envergadura VARCHAR2(30) NOT NULL,
    Altitud_maxima VARCHAR2(30) NOT NULL,
    Alcance VARCHAR2(50) NOT NULL,
    Velocidad_maxima VARCHAR2(30) NOT NULL,
    Avion_fk NUMBER NOT NULL,
    CONSTRAINT pk_modelo_avion PRIMARY KEY (Clave),
    CONSTRAINT fk_avion_modelo_avion FOREIGN KEY (Avion_fk)
        REFERENCES AVION(Clave)
);
/*------------------------11 - MODELO AVION CLASE------------------------------*/
CREATE TABLE MODELO_AVION_CLASE
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Numero_asientos NUMBER NOT NULL,
    Clase_fk NUMBER NOT NULL,
    Modelo_avion_fk NUMBER NOT NULL,
    CONSTRAINT pk_modelo_avion_clase PRIMARY KEY (Clave),
    CONSTRAINT fk_clase_modelo_avion_clase FOREIGN KEY (Clase_fk)
        REFERENCES CLASE(Clave),
    CONSTRAINT fk_modelo_avion_modelo_avion_clase FOREIGN KEY (Modelo_avion_fk)
        REFERENCES MODELO_AVION(Clave)
);
/*------------------------12 - MODELO AVION AEROLINEA------------------------------*/
CREATE TABLE MODELO_AVION_AEROLINEA
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Cantidad NUMBER NOT NULL,
    Ponderacion NUMBER NOT NULL,
    Aerolinea_fk NUMBER NOT NULL,
    Modelo_avion_fk NUMBER NOT NULL,
    CONSTRAINT pk_modelo_avion_aerolinea PRIMARY KEY (Clave),
    CONSTRAINT fk_aerolinea_modelo_avion_aerolinea FOREIGN KEY (Aerolinea_fk)
        REFERENCES AEROLINEA(Clave),
    CONSTRAINT fk_modelo_avion_modelo_avion_aerolinea FOREIGN KEY (Modelo_avion_fk)
        REFERENCES MODELO_AVION(Clave)
);
/*------------------------13 - VUELO------------------------------*/
CREATE TABLE VUELO
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Intinerario_real Intinerario NOT NULL,
    Intinerario_estimado Intinerario NOT NULL,
    Distancia_recorrida NUMBER NOT NULL,
    Precio_base_vuelo DatosPrecio NOT NULL,
    Aeropuerto_salida_fk NUMBER NOT NULL,
    Aeropuerto_llegada_fk NUMBER NOT NULL,
    Modelo_avion_aerolinea_fk NUMBER NOT NULL,
    CONSTRAINT pk_vuelo PRIMARY KEY (Clave),
    CONSTRAINT fk_aeropuerto_salida_vuelo FOREIGN KEY (Aeropuerto_salida_fk)
        REFERENCES AEROPUERTO(Clave),
    CONSTRAINT fk_aeropuerto_llegada_vuelo FOREIGN KEY (Aeropuerto_llegada_fk)
        REFERENCES AEROPUERTO(Clave),
    CONSTRAINT fk_modelo_avion_aerolinea_vuelo FOREIGN KEY (Modelo_avion_aerolinea_fk)
        REFERENCES MODELO_AVION_AEROLINEA(Clave)
);
/*------------------------14 - ESTATUS VUELO------------------------------*/
CREATE TABLE ESTATUS_VUELO
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Fecha DATE NOT NULL,
    Vuelo_fk NUMBER NOT NULL,
    Estatus_fk NUMBER NOT NULL,
    CONSTRAINT pk_estatus_vuelo PRIMARY KEY (Clave),
    CONSTRAINT fk_vuelo_estatus_vuelo FOREIGN KEY (Vuelo_fk)
        REFERENCES VUELO(Clave),
    CONSTRAINT fk_estatus_estatus_vuelo FOREIGN KEY (Estatus_fk)
        REFERENCES ESTATUS(Clave)
);
/*------------------------15 - FACTURA RESERVA------------------------------*/
CREATE TABLE FACTURA_RESERVA
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Fecha DATE NOT NULL,
    Usuario_fk NUMBER NOT NULL,
    CONSTRAINT pk_factura_reserva PRIMARY KEY (Clave),
    CONSTRAINT fk_usuario_factura_reserva FOREIGN KEY (Usuario_fk)
        REFERENCES USUARIO(Clave)
);
/*------------------------16 - ESTATUS FACTURA RESERVA------------------------------*/
CREATE TABLE ESTATUS_FACTURA_RESERVA
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Fecha DATE NOT NULL,
    Factura_reserva_fk NUMBER NOT NULL,
    Estatus_fk NUMBER NOT NULL,
    CONSTRAINT pk_estatus_factura_reserva PRIMARY KEY (Clave),
    CONSTRAINT fk_factura_reserva_estatus_factura_reserva FOREIGN KEY (Factura_reserva_fk)
        REFERENCES FACTURA_RESERVA(Clave),
    CONSTRAINT fk_estatus_estatus_factura_reserva FOREIGN KEY (Estatus_fk)
        REFERENCES ESTATUS(Clave)
);
/*------------------------17 - CUENTA MILLA------------------------------*/
CREATE TABLE CUENTA_MILLA
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Cantidad NUMBER NOT NULL,
    Usuario_fk NUMBER NOT NULL,
    CONSTRAINT pk_cuenta_milla PRIMARY KEY (Clave),
    CONSTRAINT fk_usuario_cuenta_milla FOREIGN KEY (Usuario_fk)
        REFERENCES USUARIO(Clave)
);
/*------------------------18 - CUENTA MILLA VUELO------------------------------*/
CREATE TABLE CUENTA_MILLA_VUELO
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Monto NUMBER NOT NULL,
    Fecha DATE NOT NULL,
    Cuenta_milla_fk NUMBER NOT NULL,
    Vuelo_fk NUMBER NOT NULL,
    CONSTRAINT pk_cuenta_milla_vuelo PRIMARY KEY (Clave),
    CONSTRAINT fk_cuenta_milla_cuenta_milla_vuelo FOREIGN KEY (Cuenta_milla_fk)
        REFERENCES CUENTA_MILLA(Clave),
    CONSTRAINT fk_vuelo_cuenta_milla_vuelo FOREIGN KEY (Vuelo_fk)
        REFERENCES VUELO(Clave)
);
/*------------------------19 - TIPO PAGO TARJETA CREDITO------------------------------*/
CREATE TABLE TIPO_PAGO_TARJETA_CREDITO
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Divisa VARCHAR2(30) NOT NULL,
    Tipo VARCHAR2(30) NOT NULL,
    Numero_tarjeta VARCHAR2(30) NOT NULL,
    Usuario_fk NUMBER NOT NULL,
    CONSTRAINT pk_tipo_pago_tarjeta_credito PRIMARY KEY (Clave),
    CONSTRAINT fk_usuario_tipo_pago_tarjeta_credito FOREIGN KEY (Usuario_fk)
        REFERENCES USUARIO(Clave)
);
/*------------------------20 - TIPO PAGO TARJETA DEBITO------------------------------*/
CREATE TABLE TIPO_PAGO_TARJETA_DEBITO
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Divisa VARCHAR2(30) NOT NULL,
    Numero_tarjeta VARCHAR2(30) NOT NULL,
    Usuario_fk NUMBER NOT NULL,
    CONSTRAINT pk_tipo_pago_tarjeta_debito PRIMARY KEY (Clave),
    CONSTRAINT fk_usuario_tipo_pago_tarjeta_debito FOREIGN KEY (Usuario_fk)
        REFERENCES USUARIO(Clave)
);
/*------------------------21 - PAGO------------------------------*/
CREATE TABLE PAGO
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Precio_pago DatosPrecio NOT NULL,
    Fecha DATE NOT NULL,
    Tipo_pago_tarjeta_credito_fk NUMBER,
    Tipo_pago_tarjeta_debito_fk NUMBER,
    Cuenta_milla_fk NUMBER,
    Factura_reserva_fk NUMBER NOT NULL,
    CONSTRAINT pk_pago PRIMARY KEY (Clave),
    CONSTRAINT fk_tipo_pago_tarjeta_credito_pago FOREIGN KEY (Tipo_pago_tarjeta_credito_fk)
        REFERENCES TIPO_PAGO_TARJETA_CREDITO(Clave),
    CONSTRAINT fk_tipo_pago_tarjeta_debito_pago FOREIGN KEY (Tipo_pago_tarjeta_debito_fk)
        REFERENCES TIPO_PAGO_TARJETA_DEBITO(Clave),
    CONSTRAINT fk_cuenta_milla_pago FOREIGN KEY (Cuenta_milla_fk)
        REFERENCES CUENTA_MILLA(Clave),
    CONSTRAINT fk_factura_reserva_pago FOREIGN KEY (Factura_reserva_fk)
        REFERENCES FACTURA_RESERVA(Clave)
);
/*------------------------22 - SERVICIO------------------------------*/
CREATE TABLE SERVICIO
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Datos_servicio DatosBasicos NOT NULL,
    CONSTRAINT pk_servicio PRIMARY KEY (Clave)
);
/*------------------------23 - ASEGURADORA------------------------------*/
CREATE TABLE ASEGURADORA
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Datos_aseguradora DatosBasicos NOT NULL,
    Logo BLOB NOT NULL,
    CONSTRAINT pk_aseguradora PRIMARY KEY (Clave)
);
/*------------------------24 - SEGURO------------------------------*/
CREATE TABLE SEGURO
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Datos_seguro DatosBasicos NOT NULL,
    Aseguradora_fk NUMBER,
    CONSTRAINT pk_seguro PRIMARY KEY (Clave),
    CONSTRAINT fk_aseguradora_seguro FOREIGN KEY (Aseguradora_fk)
        REFERENCES ASEGURADORA(Clave)
);
/*------------------------25 - SERVICIO SEGURO------------------------------*/
CREATE TABLE SERVICIO_SEGURO
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Seguro_fk NUMBER NOT NULL,
    Servicio_fk NUMBER NOT NULL,
    Precio_servicio_seguro DatosPrecio NOT NULL,
    CONSTRAINT pk_servicio_seguro PRIMARY KEY (Clave),
    CONSTRAINT fk_seguro_servicio_seguro FOREIGN KEY (Seguro_fk)
        REFERENCES SEGURO(Clave),
    CONSTRAINT fk_servicio_servicio_seguro FOREIGN KEY (Servicio_fk)
        REFERENCES SERVICIO(Clave)
);
/*------------------------26 - RESERVA USUARIO------------------------------*/
CREATE TABLE RESERVA_USUARIO
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Seguro_fk NUMBER,
    Usuario_fk NUMBER NOT NULL,
    Factura_reserva_fk NUMBER NOT NULL,
    CONSTRAINT pk_reserva_usuario PRIMARY KEY (Clave),
    CONSTRAINT fk_seguro_reserva_usuario FOREIGN KEY (Seguro_fk)
        REFERENCES SEGURO(Clave),
    CONSTRAINT fk_usuario_reserva_usuario FOREIGN KEY (Usuario_fk)
        REFERENCES USUARIO(Clave),
    CONSTRAINT fk_factura_reserva_reserva_usuario FOREIGN KEY (Factura_reserva_fk)
        REFERENCES FACTURA_RESERVA(Clave)
);
/*------------------------27 - RESERVA USUARIO VUELO------------------------------*/
CREATE TABLE RESERVA_USUARIO_VUELO
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Asiento NUMBER NOT NULL,
    Vuelo_fk NUMBER NOT NULL,
    Reserva_usuario_fk NUMBER NOT NULL,
    Modelo_avion_clase_fk NUMBER NOT NULL,
    CONSTRAINT pk_reserva_usuario_vuelo PRIMARY KEY (Clave),
    CONSTRAINT fk_vuelo_reserva_usuario_vuelo FOREIGN KEY (Vuelo_fk)
        REFERENCES VUELO(Clave),
    CONSTRAINT fk_reserva_usuario_reserva_usuario_vuelo FOREIGN KEY (Reserva_usuario_fk)
        REFERENCES RESERVA_USUARIO(Clave),
    CONSTRAINT fk_modelo_avion_clase_reserva_usuario_vuelo FOREIGN KEY (Modelo_avion_clase_fk)
        REFERENCES MODELO_AVION_CLASE(Clave)
);
/*------------------------28 - HOTEL------------------------------*/
CREATE TABLE HOTEL
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Datos_hotel DatosBasicos NOT NULL,
    Foto BLOB NOT NULL,
    Telefono VARCHAR2(15) NOT NULL,
    Lugar_fk  NUMBER NOT NULL,
    CONSTRAINT pk_hotel PRIMARY KEY (Clave),
    CONSTRAINT fk_lugar_hotel FOREIGN KEY (Lugar_fk)
        REFERENCES LUGAR(Clave)
);
/*------------------------29 - TIPO HABITACION------------------------------*/
CREATE TABLE TIPO_HABITACION
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Datos_tipo_habitacion DatosBasicos NOT NULL,
    Precio_dia_habitacion DatosPrecio NOT NULL,
    Capacidad NUMBER NOT NULL,
    Hotel_fk  NUMBER NOT NULL,
    CONSTRAINT pk_tipo_habitacion PRIMARY KEY (Clave),
    CONSTRAINT fk_hotel_tipo_habitacion FOREIGN KEY (Hotel_fk)
        REFERENCES HOTEL(Clave)
);
/*------------------------30 - HABITACION------------------------------*/
CREATE TABLE HABITACION
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Numero VARCHAR2(5) NOT NULL,
    Tipo_habitacion_fk  NUMBER NOT NULL,
    CONSTRAINT pk_habitacion PRIMARY KEY (Clave),
    CONSTRAINT fk_tipo_habitacion_habitacion FOREIGN KEY (Tipo_habitacion_fk)
        REFERENCES TIPO_HABITACION(Clave)
);
/*------------------------31 - ESTATUS HABITACION------------------------------*/
CREATE TABLE ESTATUS_HABITACION
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Fecha DATE NOT NULL,
    Habitacion_fk  NUMBER NOT NULL,
    Estatus_fk  NUMBER NOT NULL,
    CONSTRAINT pk_estatus_habitacion PRIMARY KEY (Clave),
    CONSTRAINT fk_habitacion_estatus_habitacion FOREIGN KEY (Habitacion_fk)
        REFERENCES HABITACION(Clave),
    CONSTRAINT fk_estatus_estatus_habitacion FOREIGN KEY (Estatus_fk)
        REFERENCES ESTATUS(Clave)
);
/*------------------------32 - RESERVA USUARIO HABITACION------------------------------*/
CREATE TABLE RESERVA_USUARIO_HABITACION
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Intinerario_reserva_habitacion Intinerario NOT NULL,
    Puntuacion  NUMBER NOT NULL,
    Habitacion_fk  NUMBER NOT NULL,
    Reserva_usuario_fk  NUMBER NOT NULL,
    CONSTRAINT pk_reserva_usuario_habitacion PRIMARY KEY (Clave),
    CONSTRAINT fk_habitacion_reserva_usuario_habitacion FOREIGN KEY (Habitacion_fk)
        REFERENCES HABITACION(Clave),
    CONSTRAINT fk_reserva_usuario_reserva_usuario_habitacion FOREIGN KEY (Reserva_usuario_fk)
        REFERENCES RESERVA_USUARIO(Clave)
);
/*------------------------33 - RENTADORA------------------------------*/
CREATE TABLE RENTADORA
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Nombre VARCHAR2(30) NOT NULL,
    Logo BLOB NOT NULL,
    CONSTRAINT pk_rentadora PRIMARY KEY (Clave)
);
/*------------------------34 - OFICINA------------------------------*/
CREATE TABLE OFICINA
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Nombre VARCHAR2(30) NOT NULL,
    Telefono VARCHAR2(15) NOT NULL,
    Rentadora_fk NUMBER NOT NULL,
    Lugar_fk  NUMBER NOT NULL,
    CONSTRAINT pk_oficina PRIMARY KEY (Clave),
    CONSTRAINT fk_rentadora_oficina FOREIGN KEY (Rentadora_fk)
        REFERENCES RENTADORA(Clave),
    CONSTRAINT fk_lugar_oficina FOREIGN KEY (Lugar_fk)
        REFERENCES LUGAR(Clave)
);
/*------------------------35 - MARCA------------------------------*/
CREATE TABLE MARCA
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Datos_marca DatosBasicos NOT NULL,
    CONSTRAINT pk_marca PRIMARY KEY (Clave)
);
/*------------------------36 - MODELO AUTO------------------------------*/
CREATE TABLE MODELO_AUTO
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Datos_modelo_auto DatosBasicos NOT NULL,
    Capacidad NUMBER NOT NULL,
    Foto BLOB NOT NULL,
    Marca_fk  NUMBER NOT NULL,
    CONSTRAINT pk_modelo_auto PRIMARY KEY (Clave),
    CONSTRAINT fk_marca_modelo_auto FOREIGN KEY (Marca_fk)
        REFERENCES MARCA(Clave)
);
/*------------------------37 - MODELO AUTO OFICINA------------------------------*/
CREATE TABLE MODELO_AUTO_OFICINA
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Cantidad NUMBER NOT NULL,
    Precio_dia_auto  DatosPrecio NOT NULL,
    Oficina_fk  NUMBER NOT NULL,
    Modelo_auto_fk  NUMBER NOT NULL,
    CONSTRAINT pk_modelo_auto_oficina PRIMARY KEY (Clave),
    CONSTRAINT fk_oficina_modelo_auto_oficina FOREIGN KEY (Oficina_fk)
        REFERENCES OFICINA(Clave),
    CONSTRAINT fk_modelo_auto_modelo_auto_oficina FOREIGN KEY (Modelo_auto_fk)
        REFERENCES MODELO_AUTO(Clave)
);
/*------------------------38 - RESERVA USUARIO AUTOMOVIL------------------------------*/
CREATE TABLE RESERVA_USUARIO_AUTOMOVIL
(
    Clave NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
    Intinerario_reserva_automovil Intinerario NOT NULL,
    Modelo_auto_oficina_fk  NUMBER NOT NULL,
    Oficina_fk  NUMBER NOT NULL,
    Reserva_usuario_fk  NUMBER NOT NULL,
    CONSTRAINT pk_reserva_usuario_automovil PRIMARY KEY (Clave),
    CONSTRAINT fk_modelo_auto_oficina_reserva_usuario_automovil FOREIGN KEY (Modelo_auto_oficina_fk)
        REFERENCES MODELO_AUTO_OFICINA(Clave),
    CONSTRAINT fk_oficina_reserva_usuario_automovil FOREIGN KEY (Oficina_fk)
        REFERENCES OFICINA(Clave),
    CONSTRAINT fk_reserva_usuario_reserva_usuario_automovil FOREIGN KEY (Reserva_usuario_fk)
        REFERENCES RESERVA_USUARIO(Clave)
);

/*---------------------------------------------------Triggers---------------------------------------------------------------------*/
-----Estatus Vuelo - Primer estatus(disponible)-----
CREATE OR REPLACE TRIGGER PRIMER_ESTATUS_VUELO
AFTER INSERT ON VUELO
FOR EACH ROW
BEGIN
    INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2017-12-01 00:00:00','yyyy-mm-dd HH24:MI:SS'), 6, :new.clave);
END;
/
-----Estatus Vuelo - Estatus(aterrizo, en transito)-----
CREATE OR REPLACE TRIGGER CAMBIO_ESTATUS_VUELO
AFTER UPDATE ON VUELO
FOR EACH ROW
BEGIN
    IF (:old.intinerario_real.fecha_inicio IS null AND :new.intinerario_real.fecha_inicio IS NOT null) THEN
        INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (:new.intinerario_real.fecha_inicio, 7, :new.clave);
    END IF;
    IF (:old.intinerario_real.fecha_fin IS null AND :new.intinerario_real.fecha_fin IS NOT null) THEN
        INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (:new.intinerario_real.fecha_fin, 9, :new.clave);
    END IF;
END;
/
---------------------------------------------Triggers de Creacion----------------------------------------------
---------Aumentar Cuenta_milla
CREATE OR REPLACE TRIGGER AUMENTAR_CUENTA_MILLA
AFTER INSERT ON CUENTA_MILLA_VUELO 
FOR EACH ROW
    BEGIN
        UPDATE CUENTA_MILLA SET cantidad = cantidad + :new.monto
        WHERE clave = :new.cuenta_milla_fk;
    END;
/
---------Disminuir Cuenta_Milla
CREATE OR REPLACE TRIGGER DISMINUIR_CUENTA_MILLA
AFTER INSERT ON PAGO 
FOR EACH ROW
DECLARE monto NUMBER;
    BEGIN
        monto := :new.precio_pago.precio;
        UPDATE CUENTA_MILLA SET cantidad = cantidad - monto
        WHERE clave = :new.cuenta_milla_fk;
    END;
/
-----Cuenta Milla - Usuario - crear cuenta milla-----
CREATE OR REPLACE TRIGGER CREAR_CUENTA_MILLA
AFTER INSERT ON USUARIO
FOR EACH ROW
    BEGIN
       INSERT INTO CUENTA_MILLA (cantidad,usuario_fk) VALUES (200,:new.clave); 
    END;
/
-----Estatus Habitacion - Estatus(disponible)-----
CREATE OR REPLACE TRIGGER CREAR_ESTATUS_HABITACION
AFTER INSERT ON HABITACION
FOR EACH ROW
    BEGIN
        INSERT INTO ESTATUS_HABITACION (fecha,habitacion_fk,estatus_fk) VALUES (to_date('2017-12-01 00:00:00','yyyy-mm-dd HH24:MI:SS'),:new.clave,6);
    END;
/





















































































