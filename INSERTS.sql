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
/*9*/INSERT INTO ESTATUS (Nombre) VALUES ('Aterrizo');
---------------------------------------------------------------USUARIO-----------------------------------------------------------------
/*1*/  INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('11.111.111','Luis','Reynaldo','Fuentes','Salazar',bfilename('FOTOS','/usuario/usuario1.jpg'),'M','luisrf@gmail.com','04245485689');
/*2*/  INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('22.222.222','Diego','Alfonso','Gutierrez','Duarte',bfilename('FOTOS','/usuario/usuario2.jpg'),'M','diegoag@gmail.com','04269785412');
/*3*/  INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('33.333.333','Gabriel','Alejandro','Terán','Guerrero',bfilename('FOTOS','/usuario/usuario3.jpg'),'M','gabrielgt@hotmail.com','04125687412');
/*4*/  INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('44.444.444','Alba','Sofia','Sanchez','Silvestre',bfilename('FOTOS','/usuario/usuario4.jpg'),'F','albaass@gmail.com','04248641253');
/*5*/  INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('55.555.555','Andrea','Valentina','Da Silva','Baudet',bfilename('FOTOS','/usuario/usuario5.jpg'),'F','andreaavd.com','041412456352');
/*6*/  INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('66.666.666','Maria','Gabriela','Lopez','Reyes',bfilename('FOTOS','/usuario/usuario6.jpg'),'F','gabymgl@gmail.com','04123061217');
/*7*/  INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('77.777.777','Alexander','Jose','Fernandez','Morales',bfilename('FOTOS','/usuario/usuario7.jpg'),'M','alexanderajf.com','04247856423');
/*8*/  INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('88.888.888','Rafael','Ricardo','Mendez','Nieves',bfilename('FOTOS','/usuario/usuario8.jpg'),'M','rafaelrrm@gmail.com','04245237914');
/*9*/  INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('99.999.999','Miguel','Antonio','Peña','Fraga',bfilename('FOTOS','/usuario/usuario9.jpg'),'M','miguelmap@gmail.com','04121689512');
/*10*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('12.121.212','Anthony','Gabriel','Rodriguez','Zambrano',bfilename('FOTOS','/usuario/usuario10.jpg'),'M','anthonyagr@gmail.com','04265134682');
/*11*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('13.131.313','Carolina','Del Valle','Patiño','Bittar',bfilename('FOTOS','/usuario/usuario11.jpg'),'F','carolinacdvp@gmail.com','04246145387');
/*12*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('14.141.414','Michelle','Andrea','Alleyne','Boniel',bfilename('FOTOS','/usuario/usuario12.jpg'),'F','michellemaa@gmail.com','04145149632');
/*13*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('15.151.515','Stefannie',NULL,'Cruz','Castelli',bfilename('FOTOS','/usuario/usuario13.jpg'),'F','stefaniescc@gmail.com','04245169847');
/*14*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('16.161.616','Diego','Alejandro','De Quintal','Nobrega',bfilename('FOTOS','/usuario/usuario14.jpg'),'M','diegodadq@gmail.com','04241587521');
/*15*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('33.572.870', 'Dosi', null, 'Klimentov', 'Ilyukhov', bfilename('FOTOS','/usuario/usuario15.jpg'), 'F', 'nilyukhov0@zimbio.com', '9895664480');
/*16*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('30.231.172', 'Ilsa', 'Olivette', 'Vakhrushin', null, bfilename('FOTOS','/usuario/usuario16.jpg'), 'F', 'odinisco1@ca.gov', '8965464851');
/*17*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('28.141.801', 'Thomasine', null, 'Athelstan', null, bfilename('FOTOS','/usuario/usuario17.jpg'), 'F', 'oarmsby2@netvibes.com', '8994313384');
/*18*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('84.313.502', 'Owen', 'Auberon', 'Coton', 'Bage', bfilename('FOTOS','/usuario/usuario18.jpg'), 'M', 'abage3@posterous.com', '3038222927');
/*19*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('75.730.931', 'Coretta', 'Marybelle', 'Astling', 'Le Noir', bfilename('FOTOS','/usuario/usuario19.jpg'), 'F', 'mlenoir4@wordpress.org', '8991798305');
/*20*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('39.555.047', 'Dionis', 'Danyette', 'Lorinez', null, bfilename('FOTOS','/usuario/usuario20.jpg'), 'F', 'dyurchenko5@youtu.be', '9517291311');
/*21*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('34.621.205', 'Brandy', 'Andras', 'Todman', 'Boyfield', bfilename('FOTOS','/usuario/usuario21.jpg'),'M', 'aboyfield6@ehow.com', '1016152462');
/*22*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('73.503.493', 'Annecorinne', 'Blair', 'McCuffie', 'Andrioni', bfilename('FOTOS','/usuario/usuario22.jpg'), 'F', 'bandrioni7@vimeo.com', '6094758661');
/*23*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('30.112.173', 'Jefferey', null, 'Quinsee', 'Farnon', bfilename('FOTOS','/usuario/usuario23.jpg'), 'M', 'bfarnon8@java.com', '1658606125');
/*24*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('27.912.367', 'Montgomery', 'Laird', 'Berndsen', 'Andrichak', bfilename('FOTOS','/usuario/usuario24.jpg'), 'M', 'landrichak9@amazon.com', '5591958291');
/*25*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('30.841.180', 'Ilse', 'Sonia', 'Langley', 'Westlake', bfilename('FOTOS','/usuario/usuario25.jpg'), 'F', 'swestlakea@businesswire.com', '3772813004');
/*26*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('69.674.207', 'Jen', 'Charleen', 'Morcom', 'McHugh', bfilename('FOTOS','/usuario/usuario26.jpg'), 'F', 'cmchughb@netscape.com', '5664444959');
/*27*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('85.029.445', 'Marianne', 'Diane', 'Mathey', null, bfilename('FOTOS','/usuario/usuario27.jpg'), 'F', 'dgutc@4shared.com', '4517977303');
/*28*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('11.831.327', 'Nicko', null, 'Yuranovev', 'Pottell', bfilename('FOTOS','/usuario/usuario28.jpg'), 'M', 'cpottelld@studiopress.com', '2673029427');
/*29*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('61.344.180', 'Craggie', 'Adam', 'McVanamy', 'Sullens', bfilename('FOTOS','/usuario/usuario29.jpg'), 'M', 'asullense@ovh.net', '9074873824');
/*30*/ INSERT INTO USUARIO (CI, Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Foto, Genero, Correo, Telefono) VALUES ('61.429.620', 'Kippar', 'Boothe', 'Staniland', null, bfilename('FOTOS','/usuario/usuario30.jpg'), 'M', 'benriquef@shareasale.com', '2129878751');
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
/*10*/ INSERT INTO AVION (Nombre,Foto) VALUES ('Bombardier CRJ 100', bfilename('FOTOS','/avion/bombardiercrj100.jpg'));
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
/*1*/  INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Aeropostal','Aeropostal es una l�nea a�rea venezolana con sede en el Aeropuerto Internacional de Maiquet�a Sim�n Bol�var.'),bfilename('FOTOS','/aerolinea/aeropostal.jpg'));
/*2*/  INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Laser Airlines','Es una aerol�nea que opera vuelos de pasajeros y ch�rters en Venezuela, El Caribe, Sudam�rica y Estados Unidos.'),bfilename('FOTOS','/aerolinea/laserairlines.jpg'));
/*3*/  INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Fly Emirates','La aerol�nea se encuentra entre las 10 principales compa��as a nivel mundial en t�rminos de pasajeros-kil�metro.'),bfilename('FOTOS','/aerolinea/flyemirates.jpg'));
/*4*/  INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('American Airlines','Es una aerol�nea estadounidense con sede en Fort Worth, Texas. Opera vuelos nacionales e internacionales.'),bfilename('FOTOS','/aerolinea/americanairlines.jpg'));
/*5*/  INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Iberia','Es la aerol�nea de bandera de Espa�a, fundada en 1927 con el nombre de Iberia.'),bfilename('FOTOS','/aerolinea/iberia.jpg'));
/*6*/  INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Lufthansa','Es una compa��a a�rea alemana con sede en Colonia, considerada desde 2009 como la aerol�nea m�s grande de Europa.'),bfilename('FOTOS','/aerolinea/lufthansa.jpg'));
/*7*/  INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Air Canada','Air Canada es la aerol�nea nacional de Canad�. Ofrece vuelos internacionales.'),bfilename('FOTOS','/aerolinea/aircanada.jpg'));
/*8*/  INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Avianca','Es la mayor aerol�nea de Colombia. Fundada en 1919 con el nombre SCADTA, es la segunda aerol�nea m�s antigua del mundo.'),bfilename('FOTOS','/aerolinea/avianca.jpg'));
/*9*/  INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Latam','Con sede en Santiago (Chile), la aerol�nea opera vuelos llegando a un total de 136 destinos en 24 pa�ses.'),bfilename('FOTOS','/aerolinea/latam.png'));
/*10*/ INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Delta Airlines','Es una aerol�nea comercial estadounidense cuya base est� situada en Atlanta, Georgia. Es miembro fundador de SkyTeam.'),bfilename('FOTOS','/aerolinea/deltaairlines.jpg'));
/*11*/ INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Qantas Airlines','Es la aerol�nea de bandera de Australia. Es la aerol�nea australiana m�s antigua y grande.'),bfilename('FOTOS','/aerolinea/qantasairlines.jpg'));
/*12*/ INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('British Airways','Aerol�nea de bandera del Reino Unido. Tiene su sede en Waterside (EN).'),bfilename('FOTOS','/aerolinea/britishairways.jpg'));
/*13*/ INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Aerolineas Argentinas','Es la l�nea a�rea de bandera de la Rep�blica Argentina, dedicada al transporte comercial de pasajeros y carga. '),bfilename('FOTOS','/aerolinea/aerolineasargentinas.jpg'));
/*14*/ INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Japan Airlines','Es una compa��a a�rea con base en Shinagawa, Tokio. Es tambi�n la aerol�nea de bandera de Jap�n.'),bfilename('FOTOS','/aerolinea/japanairlines.jpg'));
/*15*/ INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('Alitalia','Es la principal aerol�nea de Italia creada en 2009 que compr� los derechos de marca, derechos aeroportuarios y de rutas.'),bfilename('FOTOS','/aerolinea/alitalia.jpg'));
/*16*/ INSERT INTO AEROLINEA (Datos_aerolinea,Logo) VALUES (datosbasicos('JetBlue Airways','Es una aerol�nea estadounidense de bajo costo perteneciente a la JetBlue Airways Corporation.'),bfilename('FOTOS','/aerolinea/jetblue.png'));
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
/*1*/  INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Gravida Aliquam Tincidunt PC','+6505085591',1,24);
/*2*/  INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Interdum Nunc','+8887232556',15,21);
/*3*/  INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('A Neque Nullam Incorporated','+6624267008',10,29);
/*4*/  INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Nullam Placerat Associates','+4100907828',10,37);
/*5*/  INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Mi Ac Mattis Foundation','+7378286999',3,21);
/*6*/  INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Venenatis Lacus Corporation','+5224319427',8,24);
/*7*/  INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Turpis Egestas Inc.','+4706322996',6,32);
/*8*/  INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Suspendisse Tristique LLP','+7340825844',7,39);
/*9*/  INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Aenean Massa LLC','+1807596134',8,37);
/*10*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Laoreet Corp.','+6709691476',11,20);
/*11*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Consectetuer Ltd','+8973372280',2,32);
/*12*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Est Mauris Rhoncus PC','+3167130750',1,33);
/*13*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('A Enim LLP','+0032888624',4,29);
/*14*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Sodales At Company','+5002082666',9,23);
/*15*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Quis Tristique Ac LLP','+4117914823',9,19);
/*16*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Fermentum Convallis Consulting','+4469915142',7,16);
/*17*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Nullam Foundation','+7586571987',9,38);
/*18*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Sed Consequat Auctor Ltd','+8341687597',13,30);
/*19*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Senectus Consulting','+4582704698',1,40);
/*20*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Dignissim LLP','+4669937227',6,31);
/*21*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Elit Associates','+5625560667',15,20);
/*22*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Duis Mi Incorporated','+7436823658',2,17);
/*23*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Magna Cras Convallis','+8347427759',6,18);
/*24*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Nisi Nibh','+6288798254',14,38);
/*25*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Vel Foundation','+4074209840',5,21);
/*26*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Lobortis Limited','+3198969942',13,20);
/*27*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ut Foundation','+1048496794',7,30);
/*28*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Et Arcu LLC','+2859250775',11,30);
/*29*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Elit Elit Fermentum Institute','+2888719957',11,18);
/*30*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Faucibus Leo Institute','+1918045848',14,36);
/*31*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ligula LLC','+3674727160',3,35);
/*32*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Mus Donec Dignissim PC','+4997126182',1,19);
/*33*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Sed PC','+5754804103',10,32);
/*34*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Diam Pellentesque Inc.','+5820782575',14,36);
/*35*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Quisque Incorporated','+3666157366',10,22);
/*36*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Dui Semper Company','+1457382914',3,38);
/*37*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Aliquam Adipiscing Foundation','+3261227501',7,29);
/*38*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Interdum Corporation','+1945154539',6,27);
/*39*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Sagittis Duis Institute','+9380848453',9,38);
/*40*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Mus Donec Consulting','+8474267692',8,30);
/*41*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Nisi Limited','+5424380276',8,27);
/*42*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Cursus Associates','+3143863616',8,23);
/*43*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Natoque Penatibus Limited','+3661675233',4,19);
/*44*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('In LLP','+2850688882',7,39);
/*45*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Aliquet Magna Consulting','+5262798737',10,35);
/*46*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Cras Eu Corporation','+0030153149',11,21);
/*47*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ultricies Adipiscing Enim','+6182495628',4,37);
/*48*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Vitae Erat LLP','+6686809540',12,34);
/*49*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Malesuada Fringilla Corp.','+0999467974',12,28);
/*50*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Massa Associates','+3897183011',2,23);
/*51*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Nunc Nulla LLC','+4700076931',9,38);
/*52*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Lorem Eget Mollis PC','+2607751322',1,39);
/*53*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Non Leo Vivamus Institute','+0695408858',5,32);
/*54*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Mauris A Limited','+4585993106',4,35);
/*55*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Morbi Corp.','+9766781979',7,36);
/*56*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Commodo Tincidunt Nibh','+9008614658',11,28);
/*57*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Quam A Felis','+2516660106',5,16);
/*58*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ante Maecenas Mi Ltd','+1910956533',4,33);
/*59*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Consequat PC','+3738618460',10,29);
/*60*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ultrices Posuere Cubilia Inc.','+2761726913',15,29);
/*61*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Massa Vestibulum Institute','+3963833499',15,21);
/*62*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Tellus Foundation','+8142671724',2,19);
/*63*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ac Sem Ut Foundation','+4309463076',15,24);
/*64*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Sociis Natoque','+5962442639',8,32);
/*65*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Amet Ultricies Sem LLP','+0302799633',14,40);
/*66*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Sem Inc.','+4789201341',5,25);
/*67*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Fringilla Consulting','+4799542817',6,36);
/*68*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Primis In PC','+3207381130',15,20);
/*69*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Et Netus Consulting','+6056720573',3,27);
/*70*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Lorem Auctor Institute','+3054365999',14,24);
/*71*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Per Corporation','+2876191874',1,39);
/*72*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Lectus Associates','+4966454751',4,25);
/*73*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Luctus Curabitur Egestas','+0640989444',15,27);
/*74*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Diam Duis Corp.','+6683483144',7,24);
/*75*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ligula Donec Luctus Institute','+1332888977',6,34);
/*76*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ornare In Inc.','+7755783117',12,29);
/*77*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ipsum Inc.','+7172016987',2,16);
/*78*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Dui','+3353200590',1,35);
/*79*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ipsum','+7367006221',15,38);
/*80*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Aliquet Odio Etiam Inc.','+0842235608',9,35);
/*81*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Leo In Lobortis Institute','+8784214914',14,25);
/*82*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Dui Augue Eu Corp.','+0999796187',3,19);
/*83*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Morbi Metus Vivamus Ltd','+0523261049',2,29);
/*84*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Cursus Associates','+1481860280',4,33);
/*85*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Sed Leo Cras Company','+7950958887',6,22);
/*86*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Sit Company','+0101947635',5,39);
/*87*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Hendrerit Incorporated','+7022899799',9,19);
/*88*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ornare Facilisis Eget PC','+9333289852',3,25);
/*89*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Odio Nam Inc.','+6941095511',9,31);
/*90*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Tellus Institute','+0252039219',7,37);
/*91*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Erat Corp.','+9220892869',4,29);
/*92*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Auctor','+9392830330',3,26);
/*93*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Neque Corp.','+0067917617',4,24);
/*94*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Lacinia Foundation','+9507990452',6,27);
/*95*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ligula LLP','+2642198318',10,38);
/*96*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Velit Associates','+5683699679',12,22);
/*97*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Turpis Associates','+0614929541',7,25);
/*98*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Ac PC','+4889728668',9,20);
/*99*/ INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Nulla Consulting','+3650383573',11,26);
/*100*/INSERT INTO OFICINA (Nombre,Telefono,Rentadora_fk,Lugar_fk) VALUES ('Cursus Luctus Ipsum Limited','+9341959270',13,19);
----------------------------------------------------Marca------------------------------------------------------------------------------
/*1*/  INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Chevrolet','Marca estadounidense perteneciente a General Motors'));
/*2*/  INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Renault','Marca francesa que fabrica carros tanto de lujo como comerciales'));
/*3*/  INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Volkswagen','Marca alemana especializada en carros comerciales'));
/*4*/  INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Hyundai','El mayor fabricante surcoreano de automoviles'));
/*5*/  INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Fiat','Historica marca italiana que comercializa autos desde 1899'));
/*6*/  INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Mazda','Fabricante japones fundado en 1920'));
/*7*/  INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Ford','Multinacional estadounidense especializada en metalmecanica'));
/*8*/  INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Jeep','Marca estadounidense especializada en todoterrenos'));
/*9*/  INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('BMW','Fabricante aleman de autos de lujos'));
/*10*/ INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Nissan','Fabricante japones, entre las principales industrias en producción'));
/*11*/ INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Honda','Fabricante japones de automiviles y componentes autimotrices'));
/*12*/ INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Chrysler','Fabircante estadounidense de autos de lujo'));
/*13*/ INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Toyota','Compañia multinacional de automoviles japonesa'));
/*14*/ INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Mitsubishi','Consorcio de conpañias decentralizada japones'));
/*15*/ INSERT INTO MARCA (Datos_marca) VALUES (datosbasicos('Dodge','Marca estdounidense, comprada por Chrysler'));
---------------------------------------------------------Modelo_Auto----------------------------------------------------------------------
/*1*/ INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Spark 2019','Carro pequeño, adaptable a muchas situaciones'),4,bfilename('FOTOS','modelo_auto/spark.jpg'),1);
/*2*/ INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Camaro 2019','Carro deportivo de muy buen desempeño'),4,bfilename('FOTOS','modelo_auto/camaro.jpg'),1);
/*3*/ INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Captur 2019','Carro pequeño de buenas prestaciones'),4,bfilename('FOTOS','modelo_auto/captur.jpg'),2);
/*4*/ INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Clio 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/clio.jpg'),2);
/*5*/ INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Arteon 2019','Carro ideal para ir por la ciudad'),4,bfilename('FOTOS','modelo_auto/arteon.jpg'),3);
/*6*/ INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('CC 2017','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/cc.jpg'),3);
/*7*/ INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Elantra 2019','Carro ideal para ir por la ciudad'),4,bfilename('FOTOS','modelo_auto/elantra.jpg'),4);
/*8*/ INSERT INTO MODELO_AUTO (Datos_modelo_auto,capacidad,Foto,Marca_fk) 
VALUES (datosbasicos('Genesis 2019','Carro promedio de buen rendimiento'),4,bfilename('FOTOS','modelo_auto/genesis.jpg'),4);
---------------------------------------------------------Aseguradora----------------------------------------------------------------------
/*1*/  INSERT INTO ASEGURADORA (Datos_aseguradora, Logo) VALUES (datosbasicos('Columbus Direct', 'Ofrece políticas flexibles de un solo viaje que cubren destinos tanto europeos como mundiales.'), bfilename('FOTOS','aseguradora/columbusdirect.png'));
/*2*/  INSERT INTO ASEGURADORA (Datos_aseguradora, Logo) VALUES (datosbasicos('Direct Line', 'Compañía de seguros de distintos tipos, entre ellos seguros de viajes completos'), bfilename('FOTOS','aseguradora/directline.jpg'));
/*3*/  INSERT INTO ASEGURADORA (Datos_aseguradora, Logo) VALUES (datosbasicos('Churchill', 'Ofrece seguros de viaje que se puede adaptar para satisfacer todas as necesidades del cliente.'), bfilename('FOTOS','aseguradora/churchill.jpg'));
/*4*/  INSERT INTO ASEGURADORA (Datos_aseguradora, Logo) VALUES (datosbasicos('Post Office','Ofrece diferentes tipos de cobertura para lo que haya planeado, considerando todas las condiciones médicas.'), bfilename('FOTOS','aseguradora/postoffice.png'));
/*5*/  INSERT INTO ASEGURADORA (Datos_aseguradora, Logo) VALUES (datosbasicos('Holiday Rescue','Compañia centrada en atencion medica y valores familiares.'), bfilename('FOTOS','aseguradora/holidayrescue.png'));
/*6*/  INSERT INTO ASEGURADORA (Datos_aseguradora, Logo) VALUES (datosbasicos('Tick travel Insurance','Ofrece seguros y planes simples y completos.'), bfilename('FOTOS','aseguradora/ticktravelinsurance.png'));
/*7*/  INSERT INTO ASEGURADORA (Datos_aseguradora, Logo) VALUES (datosbasicos('Travel Guard','Se compromete a proporcionar productos y servicios que superen las expectativas.'), bfilename('FOTOS','aseguradora/travelguard.png'));
/*8*/  INSERT INTO ASEGURADORA (Datos_aseguradora, Logo) VALUES (datosbasicos('Travelex','Compañía de seguros con precios accesibles'), bfilename('FOTOS','aseguradora/travelex.png'));
/*9*/  INSERT INTO ASEGURADORA (Datos_aseguradora, Logo) VALUES (datosbasicos('IMGlobal','Compañia de seguros internacional con variados servicios.'), bfilename('FOTOS','aseguradora/img.png'));
/*10*/ INSERT INTO ASEGURADORA (Datos_aseguradora, Logo) VALUES (datosbasicos('Pacific Cross','Aporta más de 65 años de experiencia a la industria de seguros de salud y viajes en Asia.'), bfilename('FOTOS','aseguradora/pacificcross.png'));
/*11*/ INSERT INTO ASEGURADORA (Datos_aseguradora, Logo) VALUES (datosbasicos('Avanti','Ofrece multiples seguros, principalmente médicos'), bfilename('FOTOS','aseguradora/avanti.png'));
/*12*/ INSERT INTO ASEGURADORA (Datos_aseguradora, Logo) VALUES (datosbasicos('All Clear','Famosos por cubrir varias afecciones médicas, desde artritis, epilepsia, y asma, hasta afecciones cardíacas, diabetes y cáncer.'), bfilename('FOTOS','aseguradora/allclear.png'));
/*13*/ INSERT INTO ASEGURADORA (Datos_aseguradora, Logo) VALUES (datosbasicos('1cover','Aseguradora que te hará ahorrar tiempo y dinero'), bfilename('FOTOS','aseguradora/1cover.png'));
/*14*/ INSERT INTO ASEGURADORA (Datos_aseguradora, Logo) VALUES (datosbasicos('Get Going','Su especialidad son servicios de seguro médico'), bfilename('FOTOS','aseguradora/getgoing.png'));
/*15*/ INSERT INTO ASEGURADORA (Datos_aseguradora, Logo) VALUES (datosbasicos('Arch Insurance','Ofrece seguraos de viajes completos y especializados'), bfilename('FOTOS','aseguradora/archinsurance.jpg'));
---------------------------------------------------------Servicios----------------------------------------------------------------------
/*1*/  INSERT INTO SERVICIO (Datos_servicio) VALUES (datosbasicos('Servicio de atención medica primaria', 'Cubre gastos derivados de tratamiento medico de emergencia'));
/*2*/  INSERT INTO SERVICIO (Datos_servicio) VALUES (datosbasicos('Servicio contra desastre natural', 'Cubre los gastos por terremostos, tsunamis, erupciiones, etc.'));
/*3*/  INSERT INTO SERVICIO (Datos_servicio) VALUES (datosbasicos('Servicio de equipaje perdido', 'Cubre gastos originados por equipaje perdido o robado en cualquier estapa de su viaje.'));
/*4*/  INSERT INTO SERVICIO (Datos_servicio) VALUES (datosbasicos('Servicio de perdida de documentos', 'Cubre la perdidas de docuemntos importantes como pasaportes, CI, seguro social, etc.'));
/*5*/  INSERT INTO SERVICIO (Datos_servicio) VALUES (datosbasicos('Servicio de cancelación de viaje', 'Devolución de parte del dinero invertido en el viaje cancelado por causas como enfermedad.'));
/*6*/  INSERT INTO SERVICIO (Datos_servicio) VALUES (datosbasicos('Servicio de hospitalizacion', 'Cubre todos los gastos medico que requieran hospitalizacion de los viajeros'));
/*7*/  INSERT INTO SERVICIO (Datos_servicio) VALUES (datosbasicos('Servicio de familiares menores de edad', 'Cubre cualquier aspecto medico para hijos, sobrinos, nietos, netre otros, que sean menores de edad.'));
/*8*/  INSERT INTO SERVICIO (Datos_servicio) VALUES (datosbasicos('Servicio de mascotas', 'Cubre cualquier situacion medica o de extravio para las mascotas del viajero'));
/*9*/  INSERT INTO SERVICIO (Datos_servicio) VALUES (datosbasicos('Servicio de accidente personal', 'Cubre gastos de accidentes de automoviles o culaquier otro en el que se vea involucrado el viajero'));
/*10*/ INSERT INTO SERVICIO (Datos_servicio) VALUES (datosbasicos('Servicio de gastos legales', 'Cubre gastos por abogados, docuemntos legales, etc.'));
/*11*/ INSERT INTO SERVICIO (Datos_servicio) VALUES (datosbasicos('Servicio de contingencia contra terrorismo', 'Cubre todos los gastos generados por situaciones de terrorismo en el destino del viajero.'));
/*12*/ INSERT INTO SERVICIO (Datos_servicio) VALUES (datosbasicos('Servicio de dispositivos electronicos', 'Cubre perdida o averia de equipos electronicos'));
/*13*/ INSERT INTO SERVICIO (Datos_servicio) VALUES (datosbasicos('Servicio de deportes', 'Cubre heridas, perdidas de objetos, etc. Al relizar alguna actividad deportiva'));
/*14*/ INSERT INTO SERVICIO (Datos_servicio) VALUES (datosbasicos('Servicio de golf', 'Cubre perdidas de equipos de golf y heridas.'));
/*15*/ INSERT INTO SERVICIO (Datos_servicio) VALUES (datosbasicos('Servicio de condiciones medicas existentes', 'Cubre lo necesario en cuanto equipos y asistencia para condiciones como asma, diabetes, etc.'));
---------------------------------------------------------Seguro----------------------------------------------------------------------
----Columbus Direct----
/*1*/  INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos( 'Seguro medico completo','Contempla todas las necesidades medicas'), 1);
/*2*/  INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos( 'Seguro vacacional', 'Involucra todo lo que un viaje vacacional necesita'), 1);
/*3*/  INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos( 'Seguro deportivo', 'Todo tipo de servicios médicos y deportivos'), 1);

----Direct Line----
/*4*/  INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos( 'Seguro catastofre','Cubre todo los eventos grandes e inesperados.'), 2);
/*5*/  INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos( 'Seguro variado','Incluye servicios variados'), 2);
/*6*/  INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos( 'Seguro full trip','Incluye servicios variados'), 2);

----Churchill----
/*7*/  INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos( 'Seguro Full','Contempla alto rango de servicios'), 3);
/*8*/  INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos( 'Seguro viajero economico','Servicios basicos y baratos'), 3);
/*9*/  INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos( 'Seguro viajero plus','3 servicios basicos mas 2 plus'), 3);

----Post Office----
/*10*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro legal','Cubre asuntos legales'), 4);
/*11*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro medico','Cubre sevicios medicos completos'), 4);

----Holiday Rescue----
/*12*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro de perdidas','Contempla servicios de perdida de cualquier cosa'), 5);
/*13*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro de golf','Cubre solo el servicio de golf'), 5);

----Tick travel Insurance----
/*14*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro completo + desastre','Incluye vsriados servicios mas el servicio de desastre'), 6);
/*15*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro desastre y deportes','Incluye servicios de desastre natural y ejercicios'), 6);

----Travel Guard----
/*16*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro cobertura full','Incluye diversos servicios.'), 7);
/*17*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro economico','Incluye servicios esenciales y baratos.'), 7);

----Travelex----
/*18*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro premiun','Incluye muchos servicios costosos.'), 8);
/*19*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro plata','Incluye servicios relativamente baratos.'), 8);

----IMGlobal----
/*20*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro familiar','Incluye servicios medicos y familiares'), 9);
/*21*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro  deportivo','Cubre accidentes por deportes.'), 9);

----Pacific Cross----
/*22*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro vacacional','Cubre todo lo posible en cuantos a viajes vacacionales.'), 10);
/*23*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro sitiuacion extrema','Cubre desastre, hopitalizaciones y terrorismo.'), 10);

----Avanti----
/*24*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro de lujo','Seguro con muchas comodidades y servicios.'), 11);
/*25*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro de perdidas','Contempla servicios de perdida de cualquier cosa'), 11);

----All Clear----
/*26*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro accidentes','Cubre accidentes y aspectos legales'), 12);
/*27*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro estandar','Cubre 5 servicios cualesquiera.'), 12);

----1cover----
/*28*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro normal','Cubre 5 servicios no extraordinarios'), 13);
/*29*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro variado','Cubre diversos seguros de varias áreas.'), 13);

----Get Going----
/*30*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro legal','Cubre asuntos legales'), 14);
/*31*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro estandar','Inclye servicios basicos'), 14);

----Arch Insurance----
/*32*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro medico','Inlcuye sevicios medicos completos.'), 15);
/*33*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro viajero','Cubre todo lo relacionado a sevicios centrados en el viajero.'), 15);
/*34*/ INSERT INTO SEGURO (Datos_seguro, Aseguradora_fk) VALUES (datosbasicos('Seguro plus','Cubre diversos servicios.'), 15);
---------------------------------------------------------Serivico_Seguro----------------------------------------------------------------------
----Columbus Direct----
--1--
/*1*/  INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(100), 1, 1);
/*2*/  INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(300), 6, 1);
/*3*/  INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(150), 15, 1);
--2--
/*4*/  INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(50), 7, 2);
/*5*/  INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(75), 1, 2);
/*6*/  INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(100), 13, 2);
/*7*/  INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(130), 3, 2);
/*8*/  INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(245), 4, 2);
--3--
/*9*/  INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(90), 13, 3);
/*10*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(200), 14, 3);
/*11*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(450), 1, 3);

----Direct Line----
--1--
/*12*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(320), 2, 4);
/*13*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(400), 11, 4);
/*14*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(300), 6, 4);
/*15*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(150), 1, 4);
--2--
/*16*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(150), 11, 5);
/*17*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(350), 5, 5);
/*18*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(135), 13, 5);
/*19*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(285), 7, 5);
/*20*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(300), 3, 5);
--3--
/*21*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(500), 8, 6);
/*22*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(495), 11, 6);
/*23*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(430), 13, 6);
/*24*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(135), 3, 6);
/*25*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(70), 7, 6);

----Churchill----
--1--
/*26*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) values (datosprecio(345), 9, 7);
/*27*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) values (datosprecio(230), 10, 7);
/*28*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) values (datosprecio(75), 13, 7);
/*29*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) values (datosprecio(30), 14, 7);
/*30*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) values (datosprecio(250), 1, 7);
/*31*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) values (datosprecio(255), 6, 7);
/*32*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) values (datosprecio(65), 2, 7);
/*33*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) values (datosprecio(490), 8, 7);
--2--
/*34*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(25), 3, 8);
/*35*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(140), 1, 8);
/*36*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(115), 4, 8);
--3--
/*37*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(25), 3, 9);
/*38*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(140), 1, 9);
/*39*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(115), 4, 9);
/*40*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(200), 6, 9);
/*41*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(300), 2, 9);
----Post Office----
--1--
/*42*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(300), 10, 10);
--2--
/*43*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(100), 1, 11);
/*44*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(300), 6, 11);
/*45*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(150), 15, 11);
----Holiday Rescue----
--1--
/*46*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(220), 3, 12);
/*47*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(175), 4, 12);
/*48*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(205), 12, 12);
/*49*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(100), 10, 12);
--2--
/*50*/INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(100), 14, 13); 
----Tick travel Insurance----
--1--
/*51*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) values (datosprecio(455), 2, 14);
/*52*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(420), 9, 14);
/*53*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(65), 3, 14);
/*54*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(240), 1, 14);
/*55*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(384), 12, 14);
/*56*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(455), 6, 14);
/*57*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(160), 10, 14);
/*58*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(125), 15, 14);
--2--
/*59*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(125), 14, 15);
/*60*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(200), 13, 15);
/*61*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(185), 2, 15);
----Travel Guard----
--1--
/*62*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(305), 14, 16);
/*63*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(240), 6, 16);
/*64*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(230), 1, 16);
/*65*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(140), 11, 16);
/*66*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(255), 4, 16);
/*67*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(225), 15, 16);
/*68*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(160), 5, 16);
/*69*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(285), 7, 16);
--2--
/*70*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(100), 1, 17);
/*71*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(200), 3, 17);
/*72*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(125), 4, 17);
----Travelex----
--1--
/*73*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(233), 6, 18);
/*74*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(100), 10, 18);
/*75*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(445), 9, 18);
/*76*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(435), 7, 18);
/*77*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(130), 8, 18);
/*78*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(225), 13, 18);
/*79*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(135), 11, 18);
/*80*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(440), 15, 18);
--2--
/*81*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(390), 6, 19);
/*82*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(35), 4, 19);
/*83*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(150), 7, 19);
/*84*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(470), 8, 19);
----IMGlobal----
--1--
/*85*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(175), 1, 20);
/*86*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(470), 7, 20);
/*87*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(300), 6, 20);
--2--
/*88*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(500), 8, 21);
/*89*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(495), 11, 21);
/*90*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(430), 13, 21);
/*91*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(135), 3, 21);
/*92*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(70), 7, 21);
----Pacific Cross----
--1--
/*93*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(420), 8, 22);
/*94*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(335), 2, 22);
/*95*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(385), 3, 22);
/*96*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(145), 6, 22);
/*97*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(265), 11, 22);
/*98*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(440), 1, 22);
/*99*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(390), 10, 22);
--2--
/*100*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(400), 2, 23);
/*101*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(400), 11, 23);
/*102*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(225), 1, 23);
----Avanti----
--1--
/*103*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(483), 3, 24);
/*104*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(305), 15, 24);
/*105*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(442), 11, 24);
/*106*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(150), 12, 24);
/*107*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(403), 13, 24);
/*108*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(304), 6, 24);
/*109*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(149), 4, 24);
/*110*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(392), 14, 24);
/*111*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(332), 1, 24);
--2--
/*112*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(110), 3, 25);
/*113*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(130), 4, 25);
/*114*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(300), 12, 25);
/*115*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(200), 10, 25);
----All Clear----
--1--
/*116*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(430), 9, 26);
/*117*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(115), 10, 26);
/*118*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(200), 1, 26);
--2--
/*119*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(405), 2, 27);
/*120*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(155), 13, 27);
/*121*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(435), 8, 27);
/*122*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(455), 3, 27);
/*123*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(230), 8, 27);
----1cover----
--1--
/*124*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(205), 10, 28);
/*125*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(255), 5, 28);
/*126*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(170), 12, 28);
/*127*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(475), 1, 28);
/*128*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(190), 11, 28);
--2-- 
/*129*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(150), 4, 29);
/*130*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(440), 10, 29);
/*131*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(145), 1, 29);
/*132*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(430), 2, 29);
----Get Going----
--1--
/*133*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(300), 10, 30);
--2--
/*134*/INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(472), 6, 31);
/*135*/INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(500), 5, 31);
/*136*/INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(346), 1, 31);
----Arch Insurance----
--1--
/*137*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(160), 1, 32);
/*138*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(245), 6, 32);
/*139*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(500), 15, 32);
--2--
/*140*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(395), 13, 33);
/*141*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(410), 14, 33);
/*142*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(415), 6, 33);
/*143*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(405), 11, 33);
/*144*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(275), 4, 33);
--3--
/*145*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(380), 11, 34);
/*146*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(425), 7, 34);
/*147*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(500), 9, 34);
/*148*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(395), 13, 34);
/*149*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(300), 5, 34);
/*150*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(240), 1, 34);
/*151*/ INSERT INTO SERVICIO_SEGURO (Precio_servicio_seguro, servicio_fk, seguro_fk) VALUES (datosprecio(165), 10, 34);
---------------------------------------------------------Vuelo----------------------------------------------------------------------
/*1x*/  INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2019-02-09 00:45:00','yyyy-mm-dd HH24:MI:SS'), to_date('2019-02-09 07:45:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2019-02-09 00:45:00','yyyy-mm-dd HH24:MI:SS'), to_date('2019-02-09 07:45:00','yyyy-mm-dd HH24:MI:SS')), 5106, datosprecio(320), 11, 16, 11);
/*2x*/  INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2019-03-09 04:00:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2019-03-09 11:00:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2019-03-09 04:00:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2019-03-09 11:00:00','yyyy-mm-dd HH24:MI:SS')), 5106, datosprecio(400), 16, 11, 60 );
/*3*/  INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2019-02-22 06:15:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2019-02-22 23:50:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2019-02-22 06:15:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2019-02-22 23:50:00','yyyy-mm-dd HH24:MI:SS')), 11656, datosprecio(265), 26, 27, 24);
/*4+x*/  INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2019-07-10 03:00:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2019-07-10 17:20:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2019-07-10 04:00:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2019-07-10 18:20:00','yyyy-mm-dd HH24:MI:SS')), 7940, datosprecio(350), 16, 8, 48);
/*5x*/  INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2019-07-28 06:00:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2019-07-28 20:20:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2019-07-28 06:00:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2019-07-28 20:20:00','yyyy-mm-dd HH24:MI:SS')), 7940, datosprecio(350), 16, 8, 48);
/*6*/  INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2019-05-24 01:30:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2019-05-24 14:00:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2019-05-24 01:30:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2019-05-24 14:00:00','yyyy-mm-dd HH24:MI:SS')), 8342, datosprecio(410), 17, 7, 13);
/*7+*/  INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2018-10-12 18:30:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2018-10-12 21:00:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2018-10-12 19:30:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2018-10-12 22:00:00','yyyy-mm-dd HH24:MI:SS')), 1331, datosprecio(200), 13, 15, 36);
/*8*/  INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2018-01-29 06:00:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2018-01-29 09:40:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2018-01-29 06:00:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2018-01-29 09:40:00','yyyy-mm-dd HH24:MI:SS')), 2435, datosprecio(495),  5, 10, 16);
/*9*/  INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2019-06-11 03:20:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2019-06-11 06:20:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2019-06-11 03:20:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2019-06-11 06:20:00','yyyy-mm-dd HH24:MI:SS')), 2161, datosprecio(375), 23, 21, 61);
/*10+*/  INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2019-04-16 12:00:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2019-04-16 21:30:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2019-04-16 12:30:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2019-04-16 22:00:00','yyyy-mm-dd HH24:MI:SS')), 8755, datosprecio(150), 6, 24, 65);
/*11x*/ INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2019-05-12 02:50:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2019-05-12 04:50:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2019-05-12 02:50:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2019-05-12 04:50:00','yyyy-mm-dd HH24:MI:SS')), 915, datosprecio(260), 2, 10, 3);
/*12x*/ INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2019-06-13 12:30:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2019-06-13 14:30:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2019-06-13 12:30:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2019-06-13 14:30:00','yyyy-mm-dd HH24:MI:SS')), 915, datosprecio(260), 10, 2, 3);
/*13*/ INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2018-06-28 09:00:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2018-06-28 23:50:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2018-06-28 09:00:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2018-06-28 23:50:00','yyyy-mm-dd HH24:MI:SS')), 10003, datosprecio(395), 18, 20, 20);
/*14*/ INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2018-07-04 10:30:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2018-07-04 21:50:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2018-07-04 10:30:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2018-07-04 21:50:00','yyyy-mm-dd HH24:MI:SS')), 9655, datosprecio(410), 23, 27, 36);
/*15*/ INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2018-08-18 12:15:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2018-08-19 00:35:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2018-08-18 12:15:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2018-08-19 00:35:00','yyyy-mm-dd HH24:MI:SS')), 9436, datosprecio(270), 15, 19, 76 );
/*16*/ INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2018-10-31 04:00:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2018-10-31 23:00:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2018-10-31 04:00:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2018-10-31 23:00:00','yyyy-mm-dd HH24:MI:SS')), 13205, datosprecio(145), 22, 7, 37);
/*17x*/ INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2018-11-20 10:25:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2018-11-20 11:50:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2018-11-20 10:25:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2018-11-20 11:50:00','yyyy-mm-dd HH24:MI:SS')), 572, datosprecio(195), 9, 4, 40);
/*18x*/ INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2018-12-10 04:25:00','yyyy-mm-dd HH24:MI:SS'),  to_date('2018-12-10 05:50:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2018-12-10 04:25:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2018-12-10 05:50:00','yyyy-mm-dd HH24:MI:SS')), 572, datosprecio(195), 4, 9, 40);
/*19*/ INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2018-07-14 10:25:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2018-07-14 23:10:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2018-07-14 10:25:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2018-07-14 23:10:00','yyyy-mm-dd HH24:MI:SS')), 8222, datosprecio(195), 16, 25, 40);
/*20*/ INSERT INTO VUELO (Intinerario_estimado, Intinerario_real, Distancia_recorrida, Precio_base_vuelo, Aeropuerto_salida_fk, Aeropuerto_llegada_fk, Modelo_avion_aerolinea_fk) 
VALUES (intinerario(to_date('2019-06-24 04:00:00','yyyy-mm-dd HH24:MI:SS'),  to_date('2019-06-24 15:50:00','yyyy-mm-dd HH24:MI:SS')), intinerario(to_date('2019-06-24 04:00:00','yyyy-mm-dd HH24:MI:SS'), to_date( '2019-06-24 15:50:00','yyyy-mm-dd HH24:MI:SS')), 9460, datosprecio(195), 26, 19, 40);
---------------------------------------------------------Estatus Vuelo----------------------------------------------------------------------
----No iniciado - (1 dia antes)----
/*1*/  INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-02-08 00:45:00','yyyy-mm-dd HH24:MI:SS'), 8, 1);
/*2*/  INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-03-08 04:00:00','yyyy-mm-dd HH24:MI:SS'), 8, 2);
/*3*/  INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-02-21 06:15:00','yyyy-mm-dd HH24:MI:SS'), 8, 3);
/*4*/  INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-07-09 03:00:00','yyyy-mm-dd HH24:MI:SS'), 8, 4);
/*5*/  INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-07-27 06:00:00','yyyy-mm-dd HH24:MI:SS'), 8, 5);
/*6*/  INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-05-23 01:30:00','yyyy-mm-dd HH24:MI:SS'), 8, 6);
/*7*/  INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-10-11 18:30:00','yyyy-mm-dd HH24:MI:SS'), 8, 7);
/*8*/  INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-01-28 06:00:00','yyyy-mm-dd HH24:MI:SS'), 8, 8);
/*9*/  INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-06-10 03:20:00','yyyy-mm-dd HH24:MI:SS'), 8, 9);
/*10*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-04-15 12:00:00','yyyy-mm-dd HH24:MI:SS'), 8, 10);
/*11*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-05-11 02:50:00','yyyy-mm-dd HH24:MI:SS'), 8, 11);
/*12*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-06-12 12:30:00','yyyy-mm-dd HH24:MI:SS'), 8, 12);
/*13*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-06-27 09:00:00','yyyy-mm-dd HH24:MI:SS'), 8, 13);
/*14*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-07-03 10:30:00','yyyy-mm-dd HH24:MI:SS'), 8, 14);
/*15*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-08-17 12:15:00','yyyy-mm-dd HH24:MI:SS'), 8, 15);
/*16*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-10-30 04:00:00','yyyy-mm-dd HH24:MI:SS'), 8, 16);
/*17*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-11-19 10:25:00','yyyy-mm-dd HH24:MI:SS'), 8, 17);
/*18*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-12-09 04:25:00','yyyy-mm-dd HH24:MI:SS'), 8, 18);
/*19*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-07-13 10:25:00','yyyy-mm-dd HH24:MI:SS'), 8, 19);
/*20*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-06-23 04:00:00','yyyy-mm-dd HH24:MI:SS'), 8, 20);

----Retrasado- (2 horas antes)----
/*21*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-07-10 02:00:00','yyyy-mm-dd HH24:MI:SS'), 3, 4);
/*22*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-10-12 17:30:00','yyyy-mm-dd HH24:MI:SS'), 3, 7);
/*23*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-04-16 11:00:00','yyyy-mm-dd HH24:MI:SS'), 3, 10);

----Abordando - (1 hora antes)----
/*24*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-02-09 00:00:00','yyyy-mm-dd HH24:MI:SS'), 2, 1);
/*25*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-03-09 03:00:00','yyyy-mm-dd HH24:MI:SS'), 2, 2);
/*26*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-02-22 05:15:00','yyyy-mm-dd HH24:MI:SS'), 2, 3);
/*27*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-07-10 03:00:00','yyyy-mm-dd HH24:MI:SS'), 2, 4);
/*28*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-07-28 05:00:00','yyyy-mm-dd HH24:MI:SS'), 2, 5);
/*29*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-05-24 00:30:00','yyyy-mm-dd HH24:MI:SS'), 2, 6);
/*30*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-10-12 18:30:00','yyyy-mm-dd HH24:MI:SS'), 2, 7);
/*31*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-01-29 05:00:00','yyyy-mm-dd HH24:MI:SS'), 2, 8);
/*32*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-06-11 02:20:00','yyyy-mm-dd HH24:MI:SS'), 2, 9);
/*33*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-04-16 12:00:00','yyyy-mm-dd HH24:MI:SS'), 2, 10);
/*34*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-05-12 01:50:00','yyyy-mm-dd HH24:MI:SS'), 2, 11);
/*35*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-06-13 11:30:00','yyyy-mm-dd HH24:MI:SS'), 2, 12);
/*36*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-06-28 08:00:00','yyyy-mm-dd HH24:MI:SS'), 2, 13);
/*37*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-07-04 09:30:00','yyyy-mm-dd HH24:MI:SS'), 2, 14);
/*38*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-08-18 11:15:00','yyyy-mm-dd HH24:MI:SS'), 2, 15);
/*39*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-10-31 03:00:00','yyyy-mm-dd HH24:MI:SS'), 2, 16);
/*40*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-11-20 09:25:00','yyyy-mm-dd HH24:MI:SS'), 2, 17);
/*41*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-12-10 03:25:00','yyyy-mm-dd HH24:MI:SS'), 2, 18);
/*42*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-07-14 09:25:00','yyyy-mm-dd HH24:MI:SS'), 2, 19);
/*43*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-06-24 03:00:00','yyyy-mm-dd HH24:MI:SS'), 2, 20);

----En tránsito (fecha inicio real deja de ser null)----
/*44*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-02-09 00:45:00','yyyy-mm-dd HH24:MI:SS'), 7, 1);
/*45*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-03-09 04:00:00','yyyy-mm-dd HH24:MI:SS'), 7, 2);
/*46*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-02-22 06:15:00','yyyy-mm-dd HH24:MI:SS'), 7, 3);
/*47*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-07-10 04:00:00','yyyy-mm-dd HH24:MI:SS'), 7, 4);
/*48*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-07-28 06:00:00','yyyy-mm-dd HH24:MI:SS'), 7, 5);
/*49*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-05-24 01:30:00','yyyy-mm-dd HH24:MI:SS'), 7, 6);
/*50*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-10-12 19:30:00','yyyy-mm-dd HH24:MI:SS'), 7, 7);
/*51*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-01-29 06:00:00','yyyy-mm-dd HH24:MI:SS'), 7, 8);
/*52*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-06-11 03:20:00','yyyy-mm-dd HH24:MI:SS'), 7, 9);
/*53*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-04-16 12:30:00','yyyy-mm-dd HH24:MI:SS'), 7, 10);
/*54*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-05-12 02:50:00','yyyy-mm-dd HH24:MI:SS'), 7, 11);
/*55*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-06-13 12:30:00','yyyy-mm-dd HH24:MI:SS'), 7, 12);
/*56*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-06-28 09:00:00','yyyy-mm-dd HH24:MI:SS'), 7, 13);
/*57*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-07-04 10:30:00','yyyy-mm-dd HH24:MI:SS'), 7, 14);
/*58*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-08-18 12:15:00','yyyy-mm-dd HH24:MI:SS'), 7, 15);
/*59*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-10-31 04:00:00','yyyy-mm-dd HH24:MI:SS'), 7, 16);
/*60*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-11-20 10:25:00','yyyy-mm-dd HH24:MI:SS'), 7, 17);
/*61*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-12-10 04:25:00','yyyy-mm-dd HH24:MI:SS'), 7, 18);
/*62*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2018-07-14 10:25:00','yyyy-mm-dd HH24:MI:SS'), 7, 19);
/*63*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date('2019-06-24 04:00:00','yyyy-mm-dd HH24:MI:SS'), 7, 20);

----Aterrizo (fecha fin real deja de ser null)----
/*64*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2019-02-09 07:45:00','yyyy-mm-dd HH24:MI:SS'), 9, 1);
/*65*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2019-03-09 11:00:00','yyyy-mm-dd HH24:MI:SS'), 9, 2);
/*66*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2019-02-22 23:50:00','yyyy-mm-dd HH24:MI:SS'), 9, 3);
/*67*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2019-07-10 18:20:00','yyyy-mm-dd HH24:MI:SS'), 9, 4);
/*68*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2019-07-28 20:20:00','yyyy-mm-dd HH24:MI:SS'), 9, 5);
/*69*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2019-05-24 14:00:00','yyyy-mm-dd HH24:MI:SS'), 9, 6);
/*70*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2018-10-12 22:00:00','yyyy-mm-dd HH24:MI:SS'), 9, 7);
/*71*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2018-01-29 09:40:00','yyyy-mm-dd HH24:MI:SS'), 9, 8);
/*72*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2019-06-11 06:20:00','yyyy-mm-dd HH24:MI:SS'), 9, 9);
/*73*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2019-04-16 22:00:00','yyyy-mm-dd HH24:MI:SS'), 9, 10);
/*74*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2019-05-12 04:50:00','yyyy-mm-dd HH24:MI:SS'), 9, 11);
/*75*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2019-06-13 14:30:00','yyyy-mm-dd HH24:MI:SS'), 9, 12);
/*76*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2018-06-28 23:50:00','yyyy-mm-dd HH24:MI:SS'), 9, 13);
/*77*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2018-07-04 21:50:00','yyyy-mm-dd HH24:MI:SS'), 9, 14);
/*78*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2018-08-19 00:35:00','yyyy-mm-dd HH24:MI:SS'), 9, 15);
/*79*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2018-10-31 23:00:00','yyyy-mm-dd HH24:MI:SS'), 9, 16);
/*80*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2018-11-20 11:50:00','yyyy-mm-dd HH24:MI:SS'), 9, 17);
/*81*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2018-12-10 05:50:00','yyyy-mm-dd HH24:MI:SS'), 9, 18);
/*82*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2018-07-14 23:10:00','yyyy-mm-dd HH24:MI:SS'), 9, 19);
/*83*/ INSERT INTO ESTATUS_VUELO (Fecha, Estatus_fk, Vuelo_fk) VALUES (to_date( '2019-06-24 15:50:00','yyyy-mm-dd HH24:MI:SS'), 9, 20);