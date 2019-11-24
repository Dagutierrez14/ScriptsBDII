CREATE OR REPLACE DIRECTORY FOTOS AS 'C:\Imagenes-Inserts';

----------------------------------------Lugar-Paises-------------------------------------------------------------------------------
/*1*/  INSERT INTO LUGAR (Nombre,Tipo) VALUES ('Venezuela','Pais'); 
/*2*/  INSERT INTO LUGAR (Nombre,Tipo) VALUES ('USA','Pais');
/*3*/  INSERT INTO LUGAR (Nombre,Tipo) VALUES ('Canada','Pais');
/*4*/  INSERT INTO LUGAR (Nombre,Tipo) VALUES ('Colombia','Pais');
/*5*/  INSERT INTO LUGAR (Nombre,Tipo) VALUES ('Argentina','Pais');
/*6*/  INSERT INTO LUGAR (Nombre,Tipo) VALUES ('Chile','Pais');
/*7*/  INSERT INTO LUGAR (Nombre,Tipo) VALUES ('España','Pais');
/*8*/  INSERT INTO LUGAR (Nombre,Tipo) VALUES ('Italia','Pais');
/*9*/  INSERT INTO LUGAR (Nombre,Tipo) VALUES ('Alemania','Pais');
/*10*/ INSERT INTO LUGAR (Nombre,Tipo) VALUES ('Brasil','Pais');
/*11*/ INSERT INTO LUGAR (Nombre,Tipo) VALUES ('Australia','Pais');
/*12*/ INSERT INTO LUGAR (Nombre,Tipo) VALUES ('Nueva Zelanda','Pais');
/*13*/ INSERT INTO LUGAR (Nombre,Tipo) VALUES ('Japon','Pais');
/*14*/ INSERT INTO LUGAR (Nombre,Tipo) VALUES ('Sudafrica','Pais');
/*15*/ INSERT INTO LUGAR (Nombre,Tipo) VALUES ('Inglaterra','Pais');
----------------------------------------Lugar-Ciudades-------------------------------------------------------------------------------
/*16*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Maiquetia','Ciudad',1);
/*17*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Valencia','Ciudad',1);
/*18*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('New York','Ciudad',2);
/*19*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Miami','Ciudad',2);
/*20*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Los Angeles','Ciudad',2);
/*21*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Vancouver','Ciudad',3);
/*22*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Calgary','Ciudad',3);
/*23*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Toronto','Ciudad',3);
/*24*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Bogota','Ciudad',4);
/*25*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Buenos Aires','Ciudad',5);
/*26*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Santiago','Ciudad',6);
/*27*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Madrid','Ciudad',7);
/*28*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Barcelona','Ciudad',7);
/*29*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Roma','Ciudad',8);
/*30*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Milan','Ciudad',8);
/*31*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Munich','Ciudad',9);
/*32*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Berlin','Ciudad',9);
/*33*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Sao Paulo','Ciudad',10);
/*34*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Rio de Janeiro','Ciudad',10);
/*35*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Sidney','Ciudad',11);
/*36*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Melbourne','Ciudad',11);
/*37*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Auckland','Ciudad',12);
/*38*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Tokio','Ciudad',13);
/*39*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Johannesburgo','Ciudad',14);
/*40*/INSERT INTO LUGAR (Nombre,Tipo,Lugar_fk) VALUES ('Londres','Ciudad',15);
------------------------------------------------------------ESTATUS---------------------------------------------------------------------
/*1*/INSERT INTO ESTATUS (Nombre) VALUES ('En proceso');
/*2*/INSERT INTO ESTATUS (Nombre) VALUES ('Abordando');
/*3*/INSERT INTO ESTATUS (Nombre) VALUES ('Retrasado');
/*4*/INSERT INTO ESTATUS (Nombre) VALUES ('Cancelado');
/*5*/INSERT INTO ESTATUS (Nombre) VALUES ('Reservado');
/*6*/INSERT INTO ESTATUS (Nombre) VALUES ('Disponible');
/*7*/INSERT INTO ESTATUS (Nombre) VALUES ('En Transito');
/*8*/INSERT INTO ESTATUS (Nombre) VALUES ('No Iniciado');
---------------------------------------------------------------USUARIO-----------------------------------------------------------------
/*1*/  INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('11.111.111','Luis','Reynaldo','Fuentes','Salazar',bfilename('FOTOS','/usuario/foto.jpg'),'M','luisrf@gmail.com','04245485689');
/*2*/  INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('22.222.222','Diego','Alfonso','Gutierrez','Duarte',bfilename('FOTOS','/usuario/foto.jpg'),'M','diegoag@gmail.com','04269785412');
/*3*/  INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('33.333.333','Gabriel','Alejandro','Terán','Guerrero',bfilename('FOTOS','/usuario/foto.jpg'),'M','gabrielgt@hotmail.com','04125687412');
/*4*/  INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('44.444.444','Alba','Sofia','Sanchez','Silvestre',bfilename('FOTOS','/usuario/foto.jpg'),'F','albaass@gmail.com','04248641253');
/*5*/  INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('55.555.555','Andrea','Valentina','Da Silva','Baudet',bfilename('FOTOS','/usuario/foto.jpg'),'F','andreaavd.com','041412456352');
/*6*/  INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('66.666.666','Maria','Gabriela','Lopez','Reyes',bfilename('FOTOS','/usuario/foto.jpg'),'F','gabymgl@gmail.com','04123061217');
/*7*/  INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('77.777.777','Alexander','Jose','Fernandez','Morales',bfilename('FOTOS','/usuario/foto.jpg'),'M','alexanderajf.com','04247856423');
/*8*/  INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('88.888.888','Rafael','Ricardo','Mendez','Nieves',bfilename('FOTOS','/usuario/foto.jpg'),'M','rafaelrrm@gmail.com','04245237914');
/*9*/  INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('99.999.999','Miguel','Antonio','Peña','Fraga',bfilename('FOTOS','/usuario/foto.jpg'),'M','miguelmap@gmail.com','04121689512');
/*10*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('12.121.212','Anthony','Gabriel','Rodriguez','Zambrano',bfilename('FOTOS','/usuario/foto.jpg'),'M','anthonyagr@gmail.com','04265134682');
/*11*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('13.131.313','Carolina','Del Valle','Patiño','Bittar',bfilename('FOTOS','/usuario/foto.jpg'),'F','carolinacdvp@gmail.com','04246145387');
/*12*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('14.141.414','Michelle','Andrea','Alleyne','Boniel',bfilename('FOTOS','/usuario/foto.jpg'),'F','michellemaa@gmail.com','04145149632');
/*13*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('15.151.515','Stefannie',NULL,'Cruz','Castelli',bfilename('FOTOS','/usuario/foto.jpg'),'F','stefaniescc@gmail.com','04245169847');
/*14*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('16.161.616','Diego','Alejandro','De Quintal','Nobrega',bfilename('FOTOS','/usuario/foto.jpg'),'M','diegodadq@gmail.com','04241587521');
/*15*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('33.572.870', 'Dosi', null, 'Klimentov', 'Ilyukhov', bfilename('FOTOS','/usuario/foto.jpg'), 'F', 'nilyukhov0@zimbio.com', '9895664480');
/*16*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('30.231.172', 'Ilsa', 'Olivette', 'Vakhrushin', null, bfilename('FOTOS','/usuario/foto.jpg'), 'F', 'odinisco1@ca.gov', '8965464851');
/*17*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('28.141.801', 'Thomasine', null, 'Athelstan', null, bfilename('FOTOS','/usuario/foto.jpg'), 'F', 'oarmsby2@netvibes.com', '8994313384');
/*18*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('84.313.502', 'Owen', 'Auberon', 'Coton', 'Bage', bfilename('FOTOS','/usuario/foto.jpg'), 'M', 'abage3@posterous.com', '3038222927');
/*19*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('75.730.931', 'Coretta', 'Marybelle', 'Astling', 'Le Noir', bfilename('FOTOS','/usuario/foto.jpg'), 'F', 'mlenoir4@wordpress.org', '8991798305');
/*20*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('39.555.047', 'Dionis', 'Danyette', 'Lorinez', null, bfilename('FOTOS','/usuario/foto.jpg'), 'F', 'dyurchenko5@youtu.be', '9517291311');
/*21*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('34.621.205', 'Brandy', 'Andras', 'Todman', 'Boyfield', bfilename('FOTOS','/usuario/foto.jpg'), 'M', 'aboyfield6@ehow.com', '1016152462');
/*22*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('73.503.493', 'Annecorinne', 'Blair', 'McCuffie', 'Andrioni', bfilename('FOTOS','/usuario/foto.jpg'), 'F', 'bandrioni7@vimeo.com', '6094758661');
/*23*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('30.112.173', 'Jefferey', null, 'Quinsee', 'Farnon', bfilename('FOTOS','/usuario/foto.jpg'), 'M', 'bfarnon8@java.com', '1658606125');
/*24*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('27.912.367', 'Montgomery', 'Laird', 'Berndsen', 'Andrichak', bfilename('FOTOS','/usuario/foto.jpg'), 'M', 'landrichak9@amazon.com', '5591958291');
/*25*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('30.841.180', 'Ilse', 'Sonia', 'Langley', 'Westlake', bfilename('FOTOS','/usuario/foto.jpg'), 'F', 'swestlakea@businesswire.com', '3772813004');
/*26*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('69.674.207', 'Jen', 'Charleen', 'Morcom', 'McHugh', bfilename('FOTOS','/usuario/foto.jpg'), 'F', 'cmchughb@netscape.com', '5664444959');
/*27*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('85.029.445', 'Marianne', 'Diane', 'Mathey', null, bfilename('FOTOS','/usuario/foto.jpg'), 'F', 'dgutc@4shared.com', '4517977303');
/*28*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('11.831.327', 'Nicko', null, 'Yuranovev', 'Pottell', bfilename('FOTOS','/usuario/foto.jpg'), 'M', 'cpottelld@studiopress.com', '2673029427');
/*29*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('61.344.180', 'Craggie', 'Adam', 'McVanamy', 'Sullens', bfilename('FOTOS','/usuario/foto.jpg'), 'M', 'asullense@ovh.net', '9074873824');
/*30*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('61.429.620', 'Kippar', 'Boothe', 'Staniland', null, bfilename('FOTOS','/usuario/foto.jpg'), 'M', 'benriquef@shareasale.com', '2129878751');
------------------------------------------------------AEROPUERTO-----------------------------------------------------------------------
/*1*/  INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Simon Bolivar','Aeropuerto Internacional'),'+582123031629','CCS',16);
/*2*/  INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Arturo Michelena','Aeropuerto Internacional'),'+582418346845','VLN',17);
/*3*/  INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('John F. Kennedy','Aeropuerto Internacional'),'+17182444444','JFK',18);
/*4*/  INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Guardia','Aeropuerto Internacional'),'+17185333400','LGA',18);
/*5*/  INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Miami','Aeropuerto Internacional'),'+13058767000','MIA',19);
/*6*/  INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Los Angeles','Aeropuerto Internacional'),'+18554635252','LAX',20);
/*7*/  INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Vancouver','Aeropuerto Internacional'),'+16042077077','YVR',21);
/*8*/  INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Calgary','Aeropuerto Internacional'),'+14037351200','YYC',22);
/*9*/  INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Toronto Pearson','Aeropuerto Internacional'),'+14162477678','YYZ',23);
/*10*/ INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('El Dorado','Aeropuerto Internacional'),'+5712662000','BOG',24);
/*11*/ INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Ezeiza','Aeropuerto Internacional'),'+541154806111','EZE',25);
/*12*/ INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Arturo Merino Benitez','Aeropuerto Internacional'),'+56226901796','SCL',26);
/*13*/ INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Barajas','Aeropuerto Internacional'),'+34913211000','MAD',27);
/*14*/ INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('El Prat','Aeropuerto Internacional'),'+34913211000','BLA',28);
/*15*/ INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Fiumicino','Aeropuerto Internacional'),'+390665951','FCO',29);
/*16*/ INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Malpensa','Aeropuerto Internacional'),'+3902232323','MXP',30);
/*17*/ INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Frank Josef Strauss','Aeropuerto Internacional'),'+498997500','MUC',31);
/*18*/ INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Tegel','Aeropuerto Internacional'),'+493060911150','TXL',32);
/*19*/ INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Guarulhos','Aeropuerto Internacional'),'+551124452945','GRU',33);
/*20*/ INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Galeão','Aeropuerto Internacional'),'+552130046050','GIG',34);
/*21*/ INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Kingsford Smith','Aeropuerto Internacional'),'+61296679111','SYD',35);
/*22*/ INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Tullamarine','Aeropuerto Internacional'),'+61392971600','MEL',36);
/*23*/ INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Auckland','Aeropuerto Internacional'),'+6492750789','AKL',37);
/*24*/ INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Narita','Aeropuerto Internacional'),'+81476348000','NRT',38);
/*25*/ INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Oliver Reginald Tambo','Aeropuerto Internacional'),'+27119216262','JNB',39);
/*26*/ INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Heatthrow','Aeropuerto Internacional'),'+448443351801','LHR',40);
/*27*/ INSERT INTO AEROPUERTO (Datos_aeropuerto,telefono,IATA,lugar_fk) VALUES (datosbasicos('Arturo Merino Benitez','Aeropuerto Internacional'),'+56226901796','SCL',26);
--------------------------------------------------------------Clase--------------------------------------------------------------------
/*1*/INSERT INTO CLASE (Datos_Clase,Ponderacion) VALUES (datosbasicos('Economy Extra','Clase economica estandar'),1);
/*2*/INSERT INTO CLASE (Datos_Clase,Ponderacion) VALUES (datosbasicos('Clase Ejecutiva','Clase de comodida regular'),1.2);
/*3*/INSERT INTO CLASE (Datos_Clase,Ponderacion) VALUES (datosbasicos('Clase Ejecutiva Dreams','Clase de comodida regular extendida'),1.3);
/*4*/INSERT INTO CLASE (Datos_Clase,Ponderacion) VALUES (datosbasicos('Cabina Principal','Clase de lujo'),1.4);
/*5*/INSERT INTO CLASE (Datos_Clase,Ponderacion) VALUES (datosbasicos('Primera Clase','Clase de lujo con todas las comodidades'),1.5);
/*6*/INSERT INTO CLASE (Datos_Clase,Ponderacion) VALUES (datosbasicos('Turista','Clase de turista'),0.9);
---------------------------------------------------------------Avion-------------------------------------------------------------------
/*1*/  INSERT INTO AVION (Nombre,Foto) VALUES ('Boeing 747', bfilename('FOTOS','/avion/boeing747.jpg'));
/*2*/  INSERT INTO AVION (Nombre,Foto) VALUES ('Boeing 777', bfilename('FOTOS','/avion/boeing777.jpg'));
/*3*/  INSERT INTO AVION (Nombre,Foto) VALUES ('Airbus A340', bfilename('FOTOS','/avion/airbusa340.jpg'));
/*4*/  INSERT INTO AVION (Nombre,Foto) VALUES ('Airbus A330', bfilename('FOTOS','/avion/airbusa330.jpg'));
/*5*/  INSERT INTO AVION (Nombre,Foto) VALUES ('Boeing MD-80', bfilename('FOTOS','/avion/boeingmd80.jpg'));
/*6*/  INSERT INTO AVION (Nombre,Foto) VALUES ('Embraer 190', bfilename('FOTOS','/avion/embraer190.jpg'));
/*7*/  INSERT INTO AVION (Nombre,Foto) VALUES ('Airbus A320', bfilename('FOTOS','/avion/airbusa320.jpg'));
/*8*/  INSERT INTO AVION (Nombre,Foto) VALUES ('Boeing 757', bfilename('FOTOS','/avion/boeing757.jpg'));
/*9*/  INSERT INTO AVION (Nombre,Foto) VALUES ('Boeing 787', bfilename('FOTOS','/avion/boeing787.jpg'));
/*10*/ INSERT INTO AVION (Nombre,Foto) VALUES ('Bombardier CRJ 1000', bfilename('FOTOS','/avion/bombardiercrj1000.jpg'));
/*11*/ INSERT INTO AVION (Nombre,Foto) VALUES ('Bombardier CRJ 700', bfilename('FOTOS','/avion/bombardiercrj700.jpg'));
/*12*/ INSERT INTO AVION (Nombre,Foto) VALUES ('ATR 72', bfilename('FOTOS','/avion/atr72.jpg'));
/*13*/ INSERT INTO AVION (Nombre,Foto) VALUES ('Airbus A380', bfilename('FOTOS','/avion/airbusa380.jpg'));
/*14*/ INSERT INTO AVION (Nombre,Foto) VALUES ('Boeing 717', bfilename('FOTOS','/avion/boeing717.jpg'));
/*15*/ INSERT INTO AVION (Nombre,Foto) VALUES ('Boeing 737', bfilename('FOTOS','/avion/boeing737.jpg'));
/*16*/ INSERT INTO AVION (Nombre,Foto) VALUES ('Boeing 767', bfilename('FOTOS','/avion/boeing767.jpg'));
/*17*/ INSERT INTO AVION (Nombre,Foto) VALUES ('Airbus A321', bfilename('FOTOS','/avion/airbusa321.jpg'));
/*18*/ INSERT INTO AVION (Nombre,Foto) VALUES ('Airbus A350', bfilename('FOTOS','/avion/airbusa350.jpg'));
-------------------------------------------------------Tipo Aerolinea-------------------------------------------------------------------
/*1*/INSERT INTO TIPO_AEROLINEA (Datos_tipo_aerolinea) VALUES (datosbasicos('Regional','Viajes Cortos/Medios'));
/*2*/INSERT INTO TIPO_AEROLINEA (Datos_tipo_aerolinea) VALUES (datosbasicos('De Red','Viajes Cortos/Medios/Largos'));
/*3*/INSERT INTO TIPO_AEROLINEA (Datos_tipo_aerolinea) VALUES (datosbasicos('Gran Escala','Viajes Largos en su mayoria'));
--------------------------------------------------------Aerolinea-----------------------------------------------------------------------
/*1*/  INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Aeropostal','Aeropostal es una linea aerea venezolana con sede en el Aeropuerto Internacional de Maiquetia Simon Bolivar.'),bfilename('FOTOS','/aerolinea/aeropostal.jpg'));
/*2*/  INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Laser Airlines','Es una aerolinea que opera vuelos de pasajeros y charters en Venezuela, El Caribe, Sudamerica y Estados Unidos.'),bfilename('FOTOS','/aerolinea/laserairlines.jpg'));
/*3*/  INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Fly Emirates','La aerolinea se encuentra entre las 10 principales compañias a nivel mundial en terminos de pasajeros-kilometro.'),bfilename('FOTOS','/aerolinea/flyemirates.jpg'));
/*4*/  INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('American Airlines','Es una aerolinea estadounidense con sede en Fort Worth, Texas. Opera vuelos nacionales e internacionales.'),bfilename('FOTOS','/aerolinea/americanairlines.jpg'));
/*5*/  INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Iberia','Es la aerolinea de bandera de España, fundada en 1927 con el nombre de Iberia.'),bfilename('FOTOS','/aerolinea/iberia.jpg'));
/*6*/  INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Lufthansa','Es una compañia aerea alemana con sede en Colonia, considerada desde 2009 como la aerolinea mas grande de Europa.'),bfilename('FOTOS','/aerolinea/lufthansa.jpg'));
/*7*/  INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Air Canada','Air Canada es la aerolinea nacional de Canada. Ofrece vuelos internacionales.'),bfilename('FOTOS','/aerolinea/aircanada.jpg'));
/*8*/  INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Avianca','Es la mayor aerolinea de Colombia. Fundada en 1919 con el nombre SCADTA, es la segunda aerolinea mas antigua del mundo.'),bfilename('FOTOS','/aerolinea/avianca.jpg'));
/*9*/  INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Latam','Con sede en Santiago (Chile), la aerolinea opera vuelos llegando a un total de 136 destinos en 24 paises.'),bfilename('FOTOS','/aerolinea/latam.png'));
/*10*/ INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Delta Airlines','Es una aerolinea comercial estadounidense cuya base esta situada en Atlanta, Georgia. Es miembro fundador de SkyTeam.'),bfilename('FOTOS','/aerolinea/deltaairlines.jpg'));
/*11*/ INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Qantas Airlines','Es la aerolinea de bandera de Australia. Es la aerolinea australiana mas antigua y grande.'),bfilename('FOTOS','/aerolinea/qantasairlines.jpg'));
/*12*/ INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('British Airways','Aerolinea de bandera del Reino Unido. Tiene su sede en Waterside (EN).'),bfilename('FOTOS','/aerolinea/britishairways.jpg'));
/*13*/ INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Aerolineas Argentinas','Es la linea aerea de bandera de la Repeblica Argentina, dedicada al transporte comercial de pasajeros y carga. '),bfilename('FOTOS','/aerolinea/aerolineasargentinas.jpg'));
/*14*/ INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Japan Airlines','Es una compañia aerea con base en Shinagawa, Tokio. Es tambien la aerolinea de bandera de Japon.'),bfilename('FOTOS','/aerolinea/japanairlines.jpg'));
/*15*/ INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Alitalia','Es la principal aerolinea de Italia creada en 2009 que compro los derechos de marca, derechos aeroportuarios y de rutas.'),bfilename('FOTOS','/aerolinea/alitalia.jpg'));
/*16*/ INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('JetBlue Airways','Es una aerolinea estadounidense de bajo costo perteneciente a la JetBlue Airways Corporation.'),bfilename('FOTOS','/aerolinea/jetblue.png'));
-----------------------------------------------------Aerolinea_Tipo_Aerolinea-----------------------------------------------------------------------------
/*1*/  INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (1,1);
/*2*/  INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (2,1);
/*3*/  INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (3,3);
/*4*/  INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (4,2);
/*5*/  INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (4,3);
/*6*/  INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (5,2);
/*7*/  INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (6,2);
/*8*/  INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (7,2);
/*9*/  INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (8,1);
/*10*/ INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (8,2);
/*11*/ INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (9,2);
/*12*/ INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (10,1);
/*13*/ INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (11,2);
/*14*/ INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (12,2);
/*15*/ INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (13,1);
/*16*/ INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (13,2);
/*17*/ INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (14,1);
/*18*/ INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (14,2);
/*19*/ INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (15,2);
/*20*/ INSERT INTO AEROLINEA_TIPO_AEROLINEA (Aerolinea_fk,tipo_aerolinea_fk) VALUES (16,1);
------------------------------------------------------MODELO_AVION---------------------------------------------------------------------------
/*1*/  INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Boeing MD-81', 'Avion pasajero de corto - mediano alcance'), '2,06 m', '3,11 m' , '32,8 m', '37.000 ft', '1.564 millas naúticas (2.897 km)', '0,76 (931 km/h)', 5);
/*2*/  INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk) 
VALUES (datosbasicos('Boeing MD-82', 'Avion pasajero de meidano - largo alcance'), '2,06 m', '3,11 m' , '32,8 m', '37.000 ft', '2.051 millas naúticas (3.798 km)', '0,76 (931 km/h)', 5);
/*3*/  INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Boeing MD-83', 'Avion pasajero de mediano - largo alcance'), '2,06 m', '3,11 m' , '32,8 m', '37.000 ft', '2.503 millas naúticas (4.635 km)', '0,76 (931 km/h)', 5);
/*4*/  INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Airbus A380-800', 'Airbus de mayor capacidad y peso máximo'), '3,14 m', '6,5 m', '79,75 m', '43.000 ft', '8.200 millas naúticas (15.200 km)', '0,89 (1.090,3 km/h)', 13);
/*5*/  INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Boeing 777-200LR', 'Capaz de relalizar vuelos de ultra largo alcance casi sin excepción.'), '2,54 m', '5,87 m', '64,8 m', '43.000 ft', '8.555 millas naúticas (15.843 km)', '0,89 (1.090,3 km/h)', 2);
/*6*/  INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Boeing 777-300ER', 'Es la segunda versión con mayor alcance de la línea B777'), '2,54 m', '5,87 m', '60,9 m', '43.000 ft', '7.370 millas naúticas (13.650 km)', '0,89 (1.090,3 km/h)', 2);
/*7*/  INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Airbus A320-200', 'Avión comercial bimotor de pasajeros de corto y medio alcance y de fuselaje estrecho.'), '2,14 m', '3,70 m', '35,8 m', '39.000 ft', '3.700 millas naúticas (6.850 km)', '0,82 (1004,5 km/h)', 7);
/*8*/  INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Airbus A330-300', 'Avión comercial de reacción, bimotor y de fuselaje ancho.'), '2,47 m', '5,64 m', '60,30 m', '41.000 ft', '6.350 millas naúticas (11.750 km)', '0,86 (1.053,5 km/h)', 4);
/*9*/  INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Boeing 757-200', 'Avión comercial de corto, medio y largo radio de acción, de fuselaje estrecho'), '2,56 m', '3,54 m', '41,07 m', '41.000 ft', '3.900 millas naúticas (7.222 km)', '0,86 (1.053,5 km/h)', 8);
/*10*/ INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Boeing 767-300ER', 'Avión comercial a reacción de fuselaje ancho.'), '2,98 m', '4,72 m', '47.57 m', '43.000 ft', '5.980 millas naúticas (11.070 km)', '0,86 (1.053,5 km/h)', 16);
/*11*/ INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Único', 'Rondando una capacidad de 100 plazas, compite con aviones pequeños de primera línea'), '2,1 m', '2,74 m', '28,72 m', '41.000 ft', '2.400 millas naúticas (4.445 km)', '0,82 (1004,5 km/h)', 6);
/*12*/ INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Airbus A320NEO', 'Aviones con un uso de motores de mayor potencia y más eficientes.'), '2,14 m', '3,70 m', '34,10 m', '39.000 ft',  '3.700 millas naúticas (6.850 km)', '0,82 (1004,5 km/h)', 7);
/*13*/ INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Airbus A340-600', 'Avión comercial de reacción, cuatrimotor, de largo alcance y fuselaje ancho.'), '3,01 m', '5,28 m', '63 m', '41.000 ft', '7.802 millas naúticas (14.450 km)', '0,86 (1.053,5 km/h)', 3);
/*14*/ INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Airbus A321-200','Avión civil de pasajeros de fuselaje estrecho.'), '2,14 m', '3,70 m', '34,1 m', '39.000 ft', '3.700 millas naúticas (6.850 km)', '0,82 (1004,5 km/h)', 17);
/*15*/ INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Airbus A350-900', 'Avión comercial a reacción de fuselaje ancho.'), '2,87 m', '5,61 m', '65 m', '43.000 ft', '8.100 millas naúticas (15.000 km)', '0,89 (1.090,3 km/h)', 18);
/*16*/ INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Airbus A330-200', 'Avión comercial de reacción, bimotor y de fuselaje ancho.'), '2,89 m', '5,64 m', '60 m', '41.000 ft', '7.250 millas naúticas (13.450 km)', '0,86 (1.053,5 km/h)', 4);
/*17*/ INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Boeing 747-400', 'Avión comercial de fuselaje ancho.'), '3,1 m', '6,5 m', '64 m', '45.000 ft', '7.225 millas naúticas (13.380 km)', '0,92 (1.127 km/h)', 1);
/*18*/ INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Boeing 787-8', 'Avión de pasajeros de tamaño medio y fuselaje ancho.'), '2,98 m', '5,49 m', '60 m', '43.000 ft', '7.355 millas naúticas (13.620 km)', '0,90 (1.102 km/h)', 9);
/*19*/ INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Boeing 787-9', 'Avión con fortalecimiento estructural, un fuselaje alargado, mayor capacidad de combustible.'), '2,88 m', '5,49 m', '60 m', '43.000 ft', '7.635 millas naúticas (14.140 km)', '0,90 (1.102 km/h)', 9);
/*20*/ INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Bombardier CRJ 700-ER','Es una versión ampliada de 70 asientos derivado del CRJ200.' ), '2,04 m', '2,55 m', '23,2 m', '41.000 ft', '1.378 millas naúticas (2.553 km)', '0,82 (1004,5 km/h)', 11);
/*21*/ INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Bombardier CRJ 100-ER', 'Avion con una ampliación en 5,92 metros del Challenger 600.'), '2,04 m', '2,55 m', '21,21 m', '41.000 ft', '1.305 millas naúticas (2.417 km)', '0,81 (992 km/h)', 10);
/*22*/ INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('ATR 72-201', 'Avión comercial propulsado por dos motores turbohélice para viajes de corta duración'), '2,01 m', '2,57 m', '22 m', '25.000 ft', '805 millas naúticas (1.491 km)', '0,42 (510 km/h)', 12);
/*23*/ INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Boeing 717-200', 'Avión más pequeño de Boeing Commercial Airplanes.'), '2,21 m', '3,34 m', '28,47 m', '39.000 ft', '2.552 millas naúticas (3.805 km)', '0,76 (931 km/h)', 14);
/*24*/ INSERT INTO MODELO_AVION (Datos_modelo_avion, Altura_cabina, Ancho_cabina, Envergadura, Altitud_maxima, Alcance, Velocidad_maxima, Avion_fk)
VALUES (datosbasicos('Boeing 737-800', 'Avión de pasajeros, bimotor, de reacción, de fuselaje estrecho.'), '2,03 m', '3,54 m', '39,5 m', '41.000 ft', '3.059 millas naúticas (5.665 km)', '0,82 (1004,5 km/h)', 15);
------------------------------------------------------MODELO_AVION_AEROLINEA---------------------------------------------------------------------------
----AEROPOSTAL----
/*1*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (8, 1.1, 1, 2);
----LASER----
/*2*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (5, 1, 2, 1);
/*3*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (7, 1.1, 2, 2);
/*4*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (2, 1.2, 2, 3);
----FLY EMIRATES----
/*5*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (113, 1.2, 3, 4);
/*6*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (10, 1.3, 3, 5);
/*7*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (135, 1.3, 3, 6);
----AMERICAN AIRLINES----
/*8*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (20, 1.3, 4, 6);
/*9*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (48, 1.3, 4, 7);
/*10*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (9, 1.4, 4, 8);
/*11*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (34, 1.1, 4, 9);
/*12*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (11, 1, 4, 10);
/*13*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (18, 1.5, 4, 11);
----IBERIA----
/*14*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (14, 1, 5, 7);
/*15*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (8, 1.2, 5, 8);
/*16*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (6, 1.2, 5, 12);
/*17*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (16, 1.5, 5, 13);
/*18*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (11, 1.3, 5, 14);
/*19*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (5, 1.4, 5, 15);
/*20*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (12, 1.4, 5, 16);
----LUFTHASAN----
/*21*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (76, 1.1, 6, 7);
/*22*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (19, 1.2, 6, 12);
/*23*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (43, 1.2, 6, 14);
/*24*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (13, 1.3, 6, 8);
/*25*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (17, 1.5, 6, 13);
/*26*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (15, 1.4, 6, 15);
/*27*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (14, 1.4, 6, 4);
/*28*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (13, 1.3, 6, 17);
----Air Canada----
/*29*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (35, 1.2, 7, 7);
/*30*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (15, 1.3, 7, 14);
/*31*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (11, 1.3, 7, 8);
/*32*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (5, 1.7, 7, 10);
/*33*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (6, 1.5, 7, 5);
/*34*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (19, 1.4, 7, 6);
/*35*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (8, 1.4, 7, 18);
/*36*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (29, 1.5, 7, 19);
/*37*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (13, 1.2, 7, 11);
----Avianca----
/*38*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (36, 1.2, 8, 7);
/*39*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (4, 1.3, 8, 12);
/*40*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (8, 1.4, 8, 14);
/*41*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (6, 1.2, 8, 16);
/*42*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (2, 1.6, 8, 8);
/*43*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (13, 1.7, 8, 18);
/*44*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (1, 1.8, 8, 19);
/*45*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (11, 1.9, 8, 22);
---Latam----
/*46*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (67, 1.3, 9, 7);
/*47*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (18, 1.2, 9, 14);
/*48*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (5, 1.1, 9, 12);
/*49*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (20, 1, 9, 10);
/*50*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (10, 1.5, 9, 18);
/*51*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (15, 1.7, 9, 19);
/*52*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (10, 1.2, 9, 6);
---Delta Airlines----
/*53*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (62, 1.2, 10, 7);
/*54*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (95, 1.3, 10, 14);
/*55*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (11, 1.4, 10, 16);
/*56*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (31, 1.4, 10, 8);
/*57*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (13, 1.1, 10, 15);
/*58*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (11, 1, 10,9);
/*59*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (56, 1, 10, 10);
/*60*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (10, 1.7, 10, 5);
/*61*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (91, 1.5, 10, 23);
/*62*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (15, 1.8, 10, 20);
/*63*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (69, 1.3, 10, 21);
/*64*/ INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (32, 1.6, 10, 22);
----Qantas Airlines----
/*65*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (18, 1.2, 11, 16);
/*66*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (10, 1.3, 11, 8);
/*67*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (12, 1.6, 11, 4);
/*68*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (6, 1.4, 11, 17);
/*69*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (9, 1.4, 11, 19);
----British Airways----
/*70*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (67, 1.1, 12, 7);
/*71*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (10, 1.2, 12, 12);
/*72*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (18, 1.2, 12, 14);
/*73*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (12, 1.6, 12, 4);
/*74*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (33, 1.4, 12, 17);
/*75*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (12, 1.7, 12, 6);
/*76*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (12, 1.5, 12, 18);
/*77*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (18, 1.4, 12, 19);
----Aerolineas Argentinas----
/*78*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (10, 1.2, 13, 16);
/*79*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (26, 1.4, 13, 11);
/*80*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (31, 1.5, 13, 24);
----Japan Airlines----
/*81*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (4, 1.1, 14, 15);
/*82*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (50, 1.2, 14, 24);
/*83*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (32, 1.3, 14, 10);
/*84*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (13, 1.4, 14, 6);
/*85*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (25, 1.5, 14, 18);
/*86*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (17, 1.6, 14, 19);
----Alitalia----
/*87*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (38, 1.2, 15, 7);
/*88*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (12, 1.5, 15, 16);
/*89*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (1, 1.3, 15, 6);
----JetBlue Airways----
/*90*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (40, 1.8, 16, 7);
/*91*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (34, 1.7, 16, 14);
/*92*/  INSERT INTO MODELO_AVION_AEROLINEA (Cantidad, Ponderacion, Aerolinea_fk, Modelo_avion_fk) VALUES (60, 1.5, 16, 11);
------------------------------------------------------MODELO_AVION_CLASE---------------------------------------------------------------------------
----BOEING MD 81----
/*1*/  INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (163, 1, 1);
----BOEING MD 82----
/*2*/  INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (165, 1, 2);
----BOEING MD 83----
/*3*/  INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (149, 2, 3);
----AIRBUS A380-800----
/*4*/  INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (14, 5, 4);
/*5*/  INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (76, 2, 4);
/*6*/  INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (399, 1, 4);
----BOEING 777-200LR----
/*7*/  INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (38, 2, 5);
/*8*/  INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (264, 1, 5);
----BOEING 777-300ER----
/*9*/  INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (8, 5, 6);
/*10*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (42, 2, 6);
/*11*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (304, 1, 6);
----Airbus A320-200----
/*12*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (12, 5, 7);
/*13*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (18, 1, 7);
/*14*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (120, 6, 7);
----Airbus A330-300----
/*15*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (28, 2, 8);
/*16*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (16, 1, 8);
/*17*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (247, 6, 8);
----Boeing 757-200----
/*18*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (12, 5, 9);
/*19*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (38, 1, 9);
/*20*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (138, 6, 9);
----Boeing 767-300ER----
/*21*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (28, 2, 10);
/*22*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (21, 1, 10);
/*23*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (160, 6, 10);
----Embraer 190----
/*24*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (11, 5, 11);
/*25*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (8, 1, 11);
/*26*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (80, 6, 11);
----Airbus A320NEO----
/*27*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (12, 4, 12);
/*28*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (16, 3, 12);
/*29*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (65, 2, 12);
/*30*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (93, 6, 12);
----Airbus A340-600----
/*31*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (36, 2, 13);
/*32*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (23, 1, 13);
/*33*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (300, 6, 13);
----Airbus A321-200----
/*34*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (35, 2, 14);
/*35*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (185, 6, 14);
----Airbus A350-900----
/*36*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (31, 2, 15);
/*37*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (24, 1, 15);
/*38*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (293, 6, 15);
----Airbus A330-200----
/*39*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (19, 2, 16);
/*40*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (269, 6, 16);
----Boeing 747-400----
/*41*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (67, 2, 17);
/*42*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (32, 1, 17);
/*43*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (272, 6, 17);
----Boeing 787-8----
/*44*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (20, 3,18);
/*45*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (21, 2,18);
/*46*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (210, 1,18);
----Boeing 787-9----
/*47*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (30, 3, 19);
/*48*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (21, 2, 19);
/*49*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (247, 1,19);
----Bombardier CRJ 700-ER----
/*50*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (15, 2, 20);
/*51*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (63, 1, 20);
-----Bombardier CRJ 100-ER----
/*52*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (10, 2, 21);
/*53*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (40, 1, 21);
----ATR 72-201----
/*54*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (12, 2, 22);
/*55*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (54, 1, 22);
---Boeing 717-200---
/*56*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (12, 5, 23);
/*57*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (20, 4, 23);
/*58*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (78, 6, 23);
----Boeing 737-800----
/*59*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (8, 4, 24);
/*60*/ INSERT INTO MODELO_AVION_CLASE (Numero_asientos, Clase_fk, Modelo_avion_fk) VALUES (162, 1, 24);
-----------------------------------------------------Rentadora----------------------------------------------------------------------------
/*1*/ INSERT INTO RENTADORA (Nombre,Logo) VALUES ('AutoRentas',bfilename('FOTOS','rentadora/autorentas.jpg'));
/*2*/ INSERT INTO RENTADORA (Nombre,Logo) VALUES ('CarRent',bfilename('FOTOS','rentadora/carrent.jpg'));
/*3*/ INSERT INTO RENTADORA (Nombre,Logo) VALUES ('CarFlash',bfilename('FOTOS','rentadora/carflash.jpg'));
/*4*/ INSERT INTO RENTADORA (Nombre,Logo) VALUES ('AutoRentas',bfilename('FOTOS','rentadora/autorentas.jpg'));
/*5*/ INSERT INTO RENTADORA (Nombre,Logo) VALUES ('Drive',bfilename('FOTOS','rentadora/drive.jpg'));
/*6*/ INSERT INTO RENTADORA (Nombre,Logo) VALUES ('Best Price',bfilename('FOTOS','rentadora/bestprice.jpg'));
/*7*/ INSERT INTO RENTADORA (Nombre,Logo) VALUES ('AutoCorp',bfilename('FOTOS','rentadora/autocorp.jpg'));
/*8*/ INSERT INTO RENTADORA (Nombre,Logo) VALUES ('Localiza',bfilename('FOTOS','rentadora/localiza.jpg'));
/*9*/ INSERT INTO RENTADORA (Nombre,Logo) VALUES ('America',bfilename('FOTOS','rentadora/america.jpg'));
/*10*/ INSERT INTO RENTADORA (Nombre,Logo) VALUES ('Flycar',bfilename('FOTOS','rentadora/flycar.jpg'));
/*11*/ INSERT INTO RENTADORA (Nombre,Logo) VALUES ('Solak',bfilename('FOTOS','rentadora/solak.jpg'));
/*12*/ INSERT INTO RENTADORA (Nombre,Logo) VALUES ('Buget',bfilename('FOTOS','rentadora/budget.jpg'));
/*13*/ INSERT INTO RENTADORA (Nombre,Logo) VALUES ('Avis',bfilename('FOTOS','rentadora/Avis.jpg'));
/*14*/ INSERT INTO RENTADORA (Nombre,Logo) VALUES ('National',bfilename('FOTOS','rentadora/national.jpg'));
/*15*/ INSERT INTO RENTADORA (Nombre,Logo) VALUES ('Enterprice',bfilename('FOTOS','rentadora/enterprice.jpg'));
-----------------------------------------------------Oficina---------------------------------------------------------------------------------
/*1*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Gravida Aliquam Tincidunt PC','+6505085591',1,24);
/*2*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Interdum Nunc','+8887232556',15,21);
/*3*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('A Neque Nullam Incorporated','+6624267008',10,29);
/*4*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Nullam Placerat Associates','+4100907828',10,37);
/*5*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Mi Ac Mattis Foundation','+7378286999',3,21);
/*6*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Venenatis Lacus Corporation','+5224319427',8,24);
/*7*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Turpis Egestas Inc.','+4706322996',6,32);
/*8*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Suspendisse Tristique LLP','+7340825844',7,39);
/*9*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Aenean Massa LLC','+1807596134',8,37);
/*10*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Laoreet Corp.','+6709691476',11,20);
/*11*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Consectetuer Ltd','+8973372280',2,32);
/*12*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Est Mauris Rhoncus PC','+3167130750',1,33);
/*13*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('A Enim LLP','+0032888624',4,29);
/*14*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Sodales At Company','+5002082666',9,23);
/*15*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Quis Tristique Ac LLP','+4117914823',9,19);
/*16*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Fermentum Convallis Consulting','+4469915142',7,16);
/*17*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Nullam Foundation','+7586571987',9,38);
/*18*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Sed Consequat Auctor Ltd','+8341687597',13,30);
/*19*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Senectus Consulting','+4582704698',1,40);
/*20*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Dignissim LLP','+4669937227',6,31);
/*21*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Elit Associates','+5625560667',15,20);
/*22*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Duis Mi Incorporated','+7436823658',2,17);
/*23*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Magna Cras Convallis','+8347427759',6,18);
/*24*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Nisi Nibh','+6288798254',14,38);
/*25*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Vel Foundation','+4074209840',5,21);
/*26*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Lobortis Limited','+3198969942',13,20);
/*27*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ut Foundation','+1048496794',7,30);
/*28*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Et Arcu LLC','+2859250775',11,30);
/*29*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Elit Elit Fermentum Institute','+2888719957',11,18);
/*30*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Faucibus Leo Institute','+1918045848',14,36);
/*31*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ligula LLC','+3674727160',3,35);
/*32*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Mus Donec Dignissim PC','+4997126182',1,19);
/*33*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Sed PC','+5754804103',10,32);
/*34*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Diam Pellentesque Inc.','+5820782575',14,36);
/*35*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Quisque Incorporated','+3666157366',10,22);
/*36*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Dui Semper Company','+1457382914',3,38);
/*37*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Aliquam Adipiscing Foundation','+3261227501',7,29);
/*38*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Interdum Corporation','+1945154539',6,27);
/*39*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Sagittis Duis Institute','+9380848453',9,38);
/*40*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Mus Donec Consulting','+8474267692',8,30);
/*41*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Nisi Limited','+5424380276',8,27);
/*42*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Cursus Associates','+3143863616',8,23);
/*43*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Natoque Penatibus Limited','+3661675233',4,19);
/*44*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('In LLP','+2850688882',7,39);
/*45*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Aliquet Magna Consulting','+5262798737',10,35);
/*46*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Cras Eu Corporation','+0030153149',11,21);
/*47*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ultricies Adipiscing Enim','+6182495628',4,37);
/*48*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Vitae Erat LLP','+6686809540',12,34);
/*49*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Malesuada Fringilla Corp.','+0999467974',12,28);
/*50*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Massa Associates','+3897183011',2,23);
/*51*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Nunc Nulla LLC','+4700076931',9,38);
/*52*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Lorem Eget Mollis PC','+2607751322',1,39);
/*53*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Non Leo Vivamus Institute','+0695408858',5,32);
/*54*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Mauris A Limited','+4585993106',4,35);
/*55*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Morbi Corp.','+9766781979',7,36);
/*56*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Commodo Tincidunt Nibh','+9008614658',11,28);
/*57*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Quam A Felis','+2516660106',5,16);
/*58*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ante Maecenas Mi Ltd','+1910956533',4,33);
/*59*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Consequat PC','+3738618460',10,29);
/*60*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ultrices Posuere Cubilia Inc.','+2761726913',15,29);
/*61*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Massa Vestibulum Institute','+3963833499',15,21);
/*62*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Tellus Foundation','+8142671724',2,19);
/*63*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ac Sem Ut Foundation','+4309463076',15,24);
/*64*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Sociis Natoque','+5962442639',8,32);
/*65*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Amet Ultricies Sem LLP','+0302799633',14,40);
/*66*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Sem Inc.','+4789201341',5,25);
/*67*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Fringilla Consulting','+4799542817',6,36);
/*68*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Primis In PC','+3207381130',15,20);
/*69*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Et Netus Consulting','+6056720573',3,27);
/*70*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Lorem Auctor Institute','+3054365999',14,24);
/*71*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Per Corporation','+2876191874',1,39);
/*72*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Lectus Associates','+4966454751',4,25);
/*73*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Luctus Curabitur Egestas','+0640989444',15,27);
/*74*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Diam Duis Corp.','+6683483144',7,24);
/*75*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ligula Donec Luctus Institute','+1332888977',6,34);
/*76*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ornare In Inc.','+7755783117',12,29);
/*77*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ipsum Inc.','+7172016987',2,16);
/*78*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Dui','+3353200590',1,35);
/*79*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ipsum','+7367006221',15,38);
/*80*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Aliquet Odio Etiam Inc.','+0842235608',9,35);
/*81*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Leo In Lobortis Institute','+8784214914',14,25);
/*82*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Dui Augue Eu Corp.','+0999796187',3,19);
/*83*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Morbi Metus Vivamus Ltd','+0523261049',2,29);
/*84*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Cursus Associates','+1481860280',4,33);
/*85*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Sed Leo Cras Company','+7950958887',6,22);
/*86*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Sit Company','+0101947635',5,39);
/*87*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Hendrerit Incorporated','+7022899799',9,19);
/*88*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ornare Facilisis Eget PC','+9333289852',3,25);
/*89*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Odio Nam Inc.','+6941095511',9,31);
/*90*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Tellus Institute','+0252039219',7,37);
/*91*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Erat Corp.','+9220892869',4,29);
/*92*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Auctor','+9392830330',3,26);
/*93*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Neque Corp.','+0067917617',4,24);
/*94*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Lacinia Foundation','+9507990452',6,27);
/*95*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ligula LLP','+2642198318',10,38);
/*96*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Velit Associates','+5683699679',12,22);
/*97*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Turpis Associates','+0614929541',7,25);
/*98*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ac PC','+4889728668',9,20);
/*99*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Nulla Consulting','+3650383573',11,26);
/*100*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Cursus Luctus Ipsum Limited','+9341959270',13,19);
----------------------------------------------------Marca------------------------------------------------------------------------------
/*1*/INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Chevrolet','Marca estadounidense perteneciente a General Motors'));
/*2*/INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Renault','Marca francesa que fabrica carros tanto de lujo como comerciales'));
/*3*/INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Volkswagen','Marca alemana especializada en carros comerciales'));
/*4*/INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Hyundai','El mayor fabricante surcoreano de automoviles'));
/*5*/INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Fiat','Historica marca italiana que comercializa autos desde 1899'));
/*6*/INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Mazda','Fabricante japones fundado en 1920'));
/*7*/INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Ford','Multinacional estadounidense especializada en metalmecanica'));
/*8*/INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Jeep','Marca estadounidense especializada en todoterrenos'));
/*9*/INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('BMW','Fabricante aleman de autos de lujos'));
/*10*/INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Nissan','Fabricante japones, entre las principales industrias en producción'));
/*11*/INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Honda','Fabricante japones de automiviles y componentes autimotrices'));
/*12*/INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Chrysler','Fabircante estadounidense de autos de lujo'));
/*13*/INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Toyota','Compañia multinacional de automoviles japonesa'));
/*14*/INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Mitsubishi','Consorcio de conpañias decentralizada japones'));
/*15*/INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Dodge','Marca estdounidense, comprada por Chrysler'));
---------------------------------------------------------Modelo_Auto----------------------------------------------------------------------
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Spark 2019','Carro pequeño, adaptable a muchas situaciones'),4,bfilename('FOTOS','modelo_auto/spark.jpg'),1);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Camaro 2019','Carro deportivo de muy buen desempeño'),4,bfilename('FOTOS','modelo_auto/camaro.jpg'),1);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Captur 2019','Carro pequeño de buenas prestaciones'),4,bfilename('FOTOS','modelo_auto/captur.jpg'),2);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Clio 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/clio.jpg'),2);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Arteon 2019','Carro ideal para ir por la ciudad'),4,bfilename('FOTOS','modelo_auto/arteon.jpg'),3);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('CC 2017','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/cc.jpg'),3);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Elantra 2019','Carro ideal para ir por la ciudad'),4,bfilename('FOTOS','modelo_auto/elantra.jpg'),4);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Genesis 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/genesis.jpg'),4);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('500X 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/500X.jpg'),5);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Punto 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/500X.jpg'),5);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('CX-3 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/cx-3.jpg'),6);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('MX-5 2019','Carro promedio de buen rendimiento'),2,bfilename('FOTOS','modelo_auto/mx-5.jpg'),6);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Fiesta SE 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/fiestase.jpg'),7);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Mustang GT 2019','Carro deportivo de muy buen rendimiento'),4,bfilename('FOTOS','modelo_auto/mustanggt.jpg'),7);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Grand Cherokee 2019','Camioneta todo terreno muy funcional'),4,bfilename('FOTOS','modelo_auto/grandcherokee.jpg'),8);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Compass','Camioneta todo terreno muy funcional'),4,bfilename('FOTOS','modelo_auto/compass.jpg'),8);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Serie 3 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/serie3.jpg'),9);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('I3 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/i3.jpg'),9);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Qashqai 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/qashqai.jpg'),10);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Leaf 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/leaf.jpg'),10);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Jazz 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/jazz.jpg'),11);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Civic 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/civic.jpg'),11);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Pacifica 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/pacifica.jpg'),12);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Hybrid 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/hybrid.jpg'),12);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Yaris 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/yaris.jpg'),13);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Prius 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/prius.jpg'),13);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Space Star 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/spacestar.jpg'),14);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('ASX 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/asx.jpg'),14);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Avenger 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/avenger.jpg'),15);
INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Viper 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/viper.jpg'),15);
-----------------------------------------------Modelo_Auto_Oficina---------------------------------------------
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(421),1,1);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (6,datosprecio(862),1,2);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (1,datosprecio(956),1,3);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(229),1,4);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(768),1,5);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (3,datosprecio(947),1,6);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (1,datosprecio(527),1,7);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(741),1,8);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(751),1,9);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (3,datosprecio(825),1,10);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (6,datosprecio(315),1,11);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(133),1,12);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(359),1,13);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (3,datosprecio(911),1,14);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (1,datosprecio(528),1,15);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(824),2,1);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (6,datosprecio(434),2,2);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(767),2,3);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(486),2,4);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(554),2,5);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (1,datosprecio(375),2,6);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (7,datosprecio(518),2,7);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(492),2,8);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(138),2,9);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(918),2,10);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(687),2,11);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(178),2,12);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(464),2,13);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(821),2,14);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(934),2,15);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(236),3,1);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (7,datosprecio(379),3,2);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(541),3,3);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(151),3,4);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (3,datosprecio(763),3,5);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (1,datosprecio(467),3,6);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(119),3,7);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(163),3,8);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(661),3,9);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(958),3,10);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(578),3,11);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(114),3,12);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(781),3,13);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(773),3,14);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (3,datosprecio(636),3,15);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(398),4,1);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(475),4,2);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(393),4,3);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(227),4,4);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (7,datosprecio(643),4,5);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(223),4,6);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(292),4,7);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(345),4,8);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (3,datosprecio(741),4,9);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(364),4,10);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (6,datosprecio(993),4,11);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(523),4,12);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(439),4,13);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(288),4,14);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(652),4,15);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(341),5,1);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(314),5,2);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(126),5,3);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (1,datosprecio(779),5,4);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(554),5,5);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(719),5,6);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(944),5,7);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(118),5,8);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (7,datosprecio(656),5,9);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (3,datosprecio(774),5,10);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(964),5,11);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(672),5,12);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(712),5,13);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(642),5,14);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(581),5,15);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(639),6,1);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(992),6,2);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (6,datosprecio(282),6,3);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(781),6,4);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (3,datosprecio(476),6,5);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(977),6,6);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(785),6,7);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (3,datosprecio(531),6,8);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (6,datosprecio(865),6,9);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(779),6,10);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(172),6,11);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (3,datosprecio(452),6,12);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(457),6,13);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(515),6,14);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (3,datosprecio(567),6,15);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (6,datosprecio(183),7,1);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (1,datosprecio(999),7,2);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(942),7,3);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(688),7,4);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(968),7,5);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(418),7,6);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(658),7,7);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(281),7,8);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(565),7,9);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(785),7,10);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(861),7,11);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(428),7,12);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(154),7,13);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(815),7,14);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (7,datosprecio(937),7,15);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(843),8,1);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(918),8,2);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(566),8,3);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (6,datosprecio(915),8,4);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(235),8,5);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(589),8,6);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (7,datosprecio(274),8,7);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(463),8,8);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (3,datosprecio(796),8,9);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(576),8,10);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(754),8,11);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(734),8,12);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(561),8,13);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (3,datosprecio(614),8,14);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(991),8,15);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (6,datosprecio(333),9,1);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(311),9,2);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (3,datosprecio(253),9,3);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(734),9,4);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (7,datosprecio(496),9,5);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(667),9,6);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(879),9,7);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(128),9,8);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(642),9,9);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(168),9,10);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(681),9,11);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(766),9,12);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(588),9,13);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(983),9,14);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(114),9,15);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(977),10,1);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (3,datosprecio(958),10,2);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (6,datosprecio(921),10,3);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(777),10,4);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (3,datosprecio(985),10,5);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(757),10,6);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(894),10,7);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(244),10,8);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(652),10,9);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(421),10,10);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (1,datosprecio(586),10,11);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(811),10,12);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(242),10,13);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(247),10,14);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(856),10,15);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(324),11,1);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(441),11,2);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(646),11,3);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (7,datosprecio(555),11,4);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (6,datosprecio(124),11,5);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(534),11,6);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(846),11,7);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (1,datosprecio(948),11,8);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(547),11,9);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (3,datosprecio(657),11,10);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(989),11,11);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(436),11,12);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (7,datosprecio(427),11,13);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (3,datosprecio(959),11,14);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(677),11,15);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(663),12,1);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (1,datosprecio(526),12,2);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(487),12,3);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(136),12,4);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(858),12,5);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (7,datosprecio(899),12,6);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(121),12,7);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(273),12,8);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(765),12,9);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(429),12,10);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (7,datosprecio(268),12,11);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(516),12,12);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(934),12,13);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(492),12,14);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (7,datosprecio(935),12,15);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(566),13,1);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(983),13,2);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (1,datosprecio(255),13,3);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (1,datosprecio(117),13,4);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(877),13,5);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(415),13,6);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(885),13,7);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(936),13,8);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(675),13,9);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(326),13,10);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (7,datosprecio(913),13,11);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(822),13,12);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(936),13,13);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(691),13,14);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(467),13,15);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (3,datosprecio(586),14,1);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (1,datosprecio(397),14,2);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (6,datosprecio(363),14,3);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(591),14,4);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(227),14,5);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(627),14,6);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(527),14,7);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (6,datosprecio(821),14,8);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(828),14,9);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(974),14,10);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (5,datosprecio(242),14,11);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (7,datosprecio(493),14,12);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (6,datosprecio(956),14,13);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(738),14,14);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(437),14,15);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(854),15,1);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(465),15,2);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (4,datosprecio(581),15,3);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(849),15,4);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (7,datosprecio(888),15,5);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (10,datosprecio(518),15,6);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(546),15,7);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(261),15,8);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (6,datosprecio(661),15,9);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(884),15,10);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (2,datosprecio(376),15,11);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (9,datosprecio(264),15,12);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (8,datosprecio(416),15,13);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (1,datosprecio(482),15,14);
INSERT INTO MODELO_AUTO_OFICINA (Cantidad,Precio_dia_auto,Oficina_fk,Modelo_auto_fk) VALUES (1,datosprecio(983),15,15);