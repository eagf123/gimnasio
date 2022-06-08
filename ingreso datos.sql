INSERT INTO public.gimnasio(
idgimnacio, nombregimnasio, direcciongimnasio, horariogimnasio)
VALUES (1, 'Olimpus', 'av 103 calle203 entre 204', '5 am a 11 pm');

INSERT INTO public.cliente(
idcliente, ceducliente, nombrecliente, apellido_, telefonocliente, direccioncliente)
VALUES   (1,'4423833586','Jakeem','Mccullough','0978335740','Puno'),
(2,'3236083603','Chancellor','Mcguire','0928634498','Torrevieja'),
(3,'7734826407','Inez','Mack','0926668007','Sabadell'),
(4,'8512886035','Patience','Foster','0906606830','Mariquina'),
(5,'8698371771','Joan','Holcomb','0953667679','Vigo'),
(6,'7977072207','Lionel','Lloyd','0945224844','San Ramón'),
(7,'6614843754','Meghan','Carey','0927172963','Cáceres'),
(8,'5653637465','Jasmine','Burke','0910412113','Trujillo'),
(9,'4659376638','Jackson','Bowman','0944742386','Catacaos'),
(10,'0135230814','Zena','Byrd','0947562142','Iquique'),
(11,'3267178826','Felicia','Ball','0983180988','Valdivia'),
(12,'5181616541','Judah','Stout','0981584373','Arequipa'),
(13,'4550551759','Kathleen','Carey','0913862442','Pichidegua'),
(14,'5644858225','Giacomo','Tate','0921898854','Cuernavaca'),
(15,'4510422315','Hector','Mcneil','0930645663','Tarma'),
(16,'1218333188','Nigel','Velasquez','0931908111','Culiacán'),
(17,'2564876687','Wyatt','Curtis','0958754653','Lambayeque'),
(18,'6463110632','Lani','Church','0935678874','Talara'),
(19,'7855486430','Ingrid','Logan','0942567761','Trujillo'),
(20,'6227152876','Benedict','Bauer','0977407315','Ollagüe');
INSERT INTO public.empleado(
idempleado, nombreempleado, apellidoempleado, 
telefonoempleado, direccionempleado, 
fechanacimientoempleado, fechadeingresoempleado, cargoempleado)
VALUES     (1,'Clinton','Chavez','0961865956','Navidad','03/30/2002','02/13/2020','guardia'),
(2,'Hadassah','Sanford','0925112374','Puerto Valle','11/13/1996','02/02/2020','recepcionista'),
(3,'Samson','Webb','0961542535','Fundación','02/14/1994','12/28/2018','secretaria'),
(4,'Jarrod','Stevens','0955342539','Arica','09/13/1991','12/13/2018','limpieza'),
(5,'Unity','Shaw','0946523657','Limón','09/15/1992','12/01/2019','secretaria'),
(6,'Darius','Guthrie','0954987405','Pichilemu','10/01/1998','11/04/2019','limpieza'),
(7,'Steven','Yang','0933373797','Calle Larga','12/27/1994','01/08/2021','guardia');
INSERT INTO public.entrenador(
identrenado, apellidoentrendor, nombredeentrenador, direccionentrenador, telefonoentrenador)
VALUES 
(1,'Clinton','Chavez','Pelarco','0961865956'),
(2,'Hadassah','Sanford','Tortel','0925112374'),
(3,'Samson','Webb','Ollagüe','0961542535'),
(4,'Jarrod','Stevens','Combarbalá','0955342539'),
(5,'Unity','Shaw','Alto del Carmen','0946523657'),
(6,'Darius','Guthrie','Pozo Almonte','0954987405'),
(7,'Elvis','Valentine','Valdivia','0983032507'),
(8,'Freya','William','Lago Verde','0928880147'),
(9,'Kevin','Sargent','Salamanca','0909817877'),
(10,'Kimberley','Peters','Arica','0996269856'),
(11,'Ashely','Snider','Cañete','0985535333'),
(12,'Isadora','Hyde','Timaukel','0906528993'),
(13,'Wendy','Neal','María Elena','0976159445'),
(14,'Barclay','Kelly','Pumanque','0967457875'),
(15,'Dexter','Kemp','Monte Patria','0913984668'),
(16,'Tamekah','Castro','Pencahue','0971826816'),
(17,'Willa','Huff','Chañaral','0967247372'),
(18,'Portia','Noble','Quinchao','0989494852'),
(19,'Solomon','Garner','Arica','0974378244'),
(20,'Dorian','Rivers','Puerto Octay','0914872264')
;
select * from entrenador
INSERT INTO public.membresia(
idmembresia, tipodemembresia)
VALUES (1, 'semana'),
(2, 'quincenal'),
(3, 'mensual'),
(4, 'anual');
select * from membresia
INSERT INTO public.area(
idarea, nombre_area)
VALUES (1 , 'cardio');
(2 , 'fitnes');
(3, 'musculacion');
(4, 'canchas');
(5, 'calentamiento');
(6, 'pisinas');
INSERT INTO public.horario(
idhorario, descripcion)
VALUES (1 , '5 - 7 am'),
(2 , '9 - 10 am'),
(3 , '11 - 12 am'),
(4 , '14 - 16 pm'),
(5 , '18 - 20 pm'),
(6 , '20 - 21 pm');
INSERT INTO public.inscripcion(
idcripcion, idcliente, idmembresia,
idhorario, idarea, identrenado,fecha_inscripcion)
VALUES   (1,1,2,5,4,8,'08/11/2011'),
(2,2,1,4,4,5,'02/24/2014'),
(3,3,3,5,5,12,'04/06/2015'),
(4,4,4,3,4,6,'02/20/2010'),
(5,5,1,4,2,9,'06/09/2016'),
(6,6,3,2,5,13,'01/22/2011'),
(7,7,1,5,4,15,'03/11/2020'),
(8,8,2,2,4,13,'02/25/2020'),
(9,9,3,5,4,19,'05/08/2021'),
(10,10,4,5,5,19,'01/22/2017'),
(11,11,4,5,1,11,'12/02/2012'),
(12,12,3,1,4,18,'10/31/2011'),
(13,13,1,2,3,3,'10/21/2014'),
(14,14,2,4,5,5,'09/25/2019'),
(15,15,4,3,4,18,'03/29/2020'),
(16,16,3,3,3,10,'08/05/2014'),
(17,17,2,2,4,12,'02/13/2012'),
(18,18,3,4,2,7,'04/29/2021'),
(19,19,2,3,3,18,'03/08/2015'),
(20,20,2,2,4,18,'10/07/2019');

INSERT INTO public.factura(
idfactura, idcliente, idempleado, idgimnacio, fechafactura, totalfactura)
VALUES    
(1,1,3,'1','08/10/2021','46.40'),
(2,2,5,'1','04/26/2022','45.72'),
(3,3,6,'1','11/16/2021','30.50'),
(4,4,6,'1','10/03/2021','66.57'),
(5,5,7,'1','05/07/2022','10.82'),
(6,6,7,'1','04/28/2022','57.83'),
(7,7,2,'1','09/09/2021','33.60'),
(8,8,2,'1','01/03/2022','51.44');