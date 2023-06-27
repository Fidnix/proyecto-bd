INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (17395759,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (17395899,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (18845464,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (18865409,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (18893570,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (26698473,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (26731386,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (27432789,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (27846289,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (27928972,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (27979132,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (40004477,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (40740438,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (42660980,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (42668248,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (43061678,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (43653151,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (44610438,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (46831584,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (47500512,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (47860246,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (48496854,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (48524778,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (50860246,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (60896854,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (70829025,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (72544603,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (72548625,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (73963157,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (73963158,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (75430673,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (75486321,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (75548261,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (75590069,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (75990697,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (75992944,'N');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (80474603,'N');
------CORREGIR  DEBEN SER VALORES DE NUMID MENOR A 9
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (16552804,'E');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (40498477,'E');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (68245687,'E');
INSERT INTO P_DOCUMENTO_IDENTIDAD VALUES (72544604,'E');


----------------------------------CORRECTO
INSERT INTO P_CENTRO_DE_COSTOS VALUES (415603,'Atenci�n al Paciente');
INSERT INTO P_CENTRO_DE_COSTOS VALUES (510869,'UCI');
INSERT INTO P_CENTRO_DE_COSTOS VALUES (538412,'Rehabilitaci�n');
INSERT INTO P_CENTRO_DE_COSTOS VALUES (690428,'Neurolog�a');
INSERT INTO P_CENTRO_DE_COSTOS VALUES (786091,'Quir�fano');
INSERT INTO P_CENTRO_DE_COSTOS VALUES (874512,'Emergencias');
INSERT INTO P_CENTRO_DE_COSTOS VALUES (945237,'Terapia Intensiva');
INSERT INTO P_CENTRO_DE_COSTOS VALUES (962158,'Servicio de Limpieza');
INSERT INTO P_CENTRO_DE_COSTOS VALUES (981736,'Farmacia');
INSERT INTO P_CENTRO_DE_COSTOS VALUES (368428,'Psiquiatr�a');
INSERT INTO P_CENTRO_DE_COSTOS VALUES (217983,'Oftalmolog�a');
INSERT INTO P_CENTRO_DE_COSTOS VALUES (469785,'Enfermer�a');
INSERT INTO P_CENTRO_DE_COSTOS VALUES (802546,'Traumatolog�a');


--CORRECTO
INSERT INTO P_CARGO VALUES ('2058',	'Medico Cirujano', 'Especialista en cirujias',	'2200',	'2400');
INSERT INTO P_CARGO VALUES ('2903',	'Rehabilitacion',	'Encargado de la rehabilitacion de los pacientes',	'1800',	'2000');
INSERT INTO P_CARGO VALUES ('3471',	'Limpieza',	'Personal de Limpieza',	'1100',	'1200');
INSERT INTO P_CARGO VALUES ('3826',	'Urgencias',	'Especialista en urgencias',	'2000',	'2100');
INSERT INTO P_CARGO VALUES ('3978',	'Psiquiatra',	'Especialista en psiquiatria',	'2500',	'2800');
INSERT INTO P_CARGO VALUES ('4197',	'Neurologo',	'Especialista en neurologia',	'2200',	'2400');
INSERT INTO P_CARGO VALUES ('5391',	'Call Center',	'Atenci�n al P�blico',	'1200',	'1400');
INSERT INTO P_CARGO VALUES ('5643',	'Oftalmologo',	'Especialista en oftalmologia',	'2200',	'2500');
INSERT INTO P_CARGO VALUES ('6548',	'Tecnico  Enfermero',	'Especialista en enfermeria',	'1800',	'2000');
INSERT INTO P_CARGO VALUES ('6824',	'Medico General',	'Filtro de los pacientes',	'2000',	'2200');
INSERT INTO P_CARGO VALUES ('8402',	'Farmaceutico',	'Especialista en medicamentos',	'1800',	'2000');
INSERT INTO P_CARGO VALUES ('9360',	'Traumatologo',	'Especialista en traumatologia',	'2400',	'2600');

--UNIDO CON LOS CODIGOS DE FIDEL Y LO CAMBIE CON LOS CODIGO DE PIERO--CORRECTO
insert into P_FONDO_DE_PENSIONES(id_fondo, nombre_fondo, monto) values (0, 'NULL', 0);
insert into P_FONDO_DE_PENSIONES(id_fondo, nombre_fondo, monto) values (503762, 'SNP', 500);
insert into P_FONDO_DE_PENSIONES(id_fondo, nombre_fondo, monto) values (176085, 'Profuturo', 650);
insert into P_FONDO_DE_PENSIONES(id_fondo, nombre_fondo, monto) values (409571, 'AFP Integra', 630);
insert into P_FONDO_DE_PENSIONES(id_fondo, nombre_fondo, monto) values (257418, 'Prima AFP', 540);
insert into P_FONDO_DE_PENSIONES(id_fondo, nombre_fondo, monto) values (310647, 'APF Habitat', 710);


--CORRECTO-FALTA FECHA -HASTA ACTUALIZAR
INSERT INTO P_ACTIVIDAD VALUES ('87941', 'juegos de mesa', 'juegos interactivos', TO_DATE('30/06/2023','DD/MM/YYYY'));
INSERT INTO P_ACTIVIDAD VALUES ('26307', 'actividades deportivas', 'futbol, basquet, voley',TO_DATE('09/07/2023','DD/MM/YYYY'));
INSERT INTO P_ACTIVIDAD VALUES ('40592', 'clases de yoga', 'estiramientos',TO_DATE('05/08/2023','DD/MM/YYYY'));
INSERT INTO P_ACTIVIDAD VALUES ('71856', 'meditacion', 'tecnicas de meditacion',TO_DATE('12/08/2023','DD/MM/YYYY'));
INSERT INTO P_ACTIVIDAD VALUES ('52431', 'club de lectura', 'reuniones para compartir los libros leidos',TO_DATE('09/09/2023','DD/MM/YYYY'));
INSERT INTO P_ACTIVIDAD VALUES ('93048', 'sesiones de musica', 'compartir gustos musicales e interpretaciones',TO_DATE('16/09/2023','DD/MM/YYYY'));
INSERT INTO P_ACTIVIDAD VALUES ('14762', 'voluntariado', 'actividades de apoyo',TO_DATE('25/09/2023','DD/MM/YYYY'));


--MODIFICADO RESPECTO A NUEVA VERSION
INSERT INTO P_EMPLEADO VALUES ('1567308942',	'Diego',	'Guzman',	'Mendoza',	'Av. San Martin 789',	'920536471',	'911334826',	'dguzman@yahoo.com',	'2058',	'415603',	'176085',	'V',	'18893570');

INSERT INTO P_EMPLEADO VALUES ('1739856204',	'Ana',	'Ramirez',	'Reyes',	'Av. Las Palmeras 789',	'972518346',	'999453322',	'aramirez@gmail.com',	'2903',	'510869',	'257418',	'V',	'72548625');
INSERT INTO P_EMPLEADO VALUES ('1785392064',	'Natalia',	'Molina',	'Guerra',	'Jr. Los Tulipanes 586',	'983571204',	'922334466',	'nmolina@yahoo.com',	'3471',	'538412',	'310647',	'V',	'43061678');

INSERT INTO P_EMPLEADO VALUES ('2058634197',	'Gabriel',	'Araya',	'Ramirez',	'Jr. Los Pinos 456',	'946732105',	'977786217',	'garaya@hotmail.com',	'3826',	'690428',	'409571',	'V',	'26731386');

INSERT INTO P_EMPLEADO VALUES ('2609314785',	'Laura',	'Flores',	'Calderon',	'Calle Los Planetas 156',	'927435610',	'911223344',	'lflores@gmail.com',	'3978',	'786091',	'503762',	'V',	'80474603');

INSERT INTO P_EMPLEADO VALUES ('2807195463',	'Juan',	'Martinez',	 'Mu�oz',	'Calle Los Olivos 383',	'974815623',	'944348128',	'jmartinez@gmail.com',	'4197',	'874512',	'176085',	'R',	'18865409');

INSERT INTO P_EMPLEADO VALUES ('2810934765',	'Salome',	'Ortiz',	'Bustamante',	'Av. San Tomas 247',	'973285164',	'947651322',	'sortiz@hotmail.com',	'5391',	'945237',	'257418',	'V',	'72544604');

INSERT INTO P_EMPLEADO VALUES ('2856102397',	'Isabella',	'Espinoza',	'Jim�nez',	'Av. Los Pinos 486',	'917540382',	'955862719',	'iespinoza@yahoo.com',	'5643',	'962158',	'310647',	'V',	'75990697');

INSERT INTO P_EMPLEADO VALUES ('2956038147',	'Vicente',	'Cardenas',	'Palma',	'Calle Los Ap�stoles 936',	'917564882',	'911334455',	'vcardenas@hotmail.com',	'6548',	'981736',	'409571',	'R',	'75486321');
INSERT INTO P_EMPLEADO VALUES ('2974035861',	'Gonzalo',	'Paredes',	'Pino',	'Av. Los Tulipanes 2723',	'983241760',	'978047334',	'gparedes@hotmail.com',	'6824',	'368428',	'503762',	'V',	'46831584');

INSERT INTO P_EMPLEADO VALUES ('3054986217',	'Valentin',	'Alarcon',	'Carvajal',	'Pasaje Los Rosales 311',	'975618430',	'933662111',	'valarcon@hotmail.com',	'8402',	'217983',	'176085',	'V',	'73963158');

INSERT INTO P_EMPLEADO VALUES ('3187456239',	'Piero',	'Romero',	'Ortega',	'Av. San Juan 787',	'975843216',	'998574904',	'promero@yahoo.com',	'9360',	'469785',	'257418',	'V',	'27432789');

INSERT INTO P_EMPLEADO VALUES ('3702158649',	'Lucia',	'Jara',	'Mart�nez',	'Jr. Neptuno 964',	'983592204',	'900253322',	'ljara@gmail.com',	'2058',	'802546',	'310647',	'R',	'40740438');

INSERT INTO P_EMPLEADO VALUES ('4025731896',	'Mathias',	'Gomez',	'Navarrete',	'Av. Los Girasoles 247',	'992837561',	'977675084',	'mgomez@gmail.com',	'2903',	'415603',	'409571',	'V',	'43653151');

INSERT INTO P_EMPLEADO VALUES ('4392175068',	'Sebastian',	'Silva',	'Torres',	'Calle Los Cedros 143',	'960548187',	'955553322',	'ssilva@outlook.com',	'3471',	'510869',	'503762',	'V',	'72544603');

INSERT INTO P_EMPLEADO VALUES ('4521063798',	'Victoria',	'Vera',	'Lagos',	'Calle Los Cerezos 831',	'976314582',	'944528459',	'vvera@hotmail.com',	'3826',	'538412',	'176085',	'V',	'16552804');

INSERT INTO P_EMPLEADO VALUES ('4908326571',	'Aldair',	'Valdes',	'Hernandez',	'Pasaje Los Rosales 624',	'989741235',	'938877111',	'avaldez@outlook.com',	'3978',	'690428',	'257418',	'V',	'42660980');

INSERT INTO P_EMPLEADO VALUES ('5243091876',	'Antonio',	'Olivares',	'Ramirez',	'Jr. Los Tulipanes 328',	'916273845',	'977053334',	'aolivares@gmail.com',	'4197',	'786091',	'310647',	'V',	'18845464');

INSERT INTO P_EMPLEADO VALUES ('5294683710',	'Mateo',	'Alvarez',	'Herrera',	'Calle Saturno 824',	'915637840',	'933600111',	'malvarez@yahoo.com',	'5391',	'874512',	'409571',	'V',	'50860246');

INSERT INTO P_EMPLEADO VALUES ('5372890416',	'Vanessa',	'Diaz',	'Guzman',	'Av. San Francisco 762',	'992345678',	'911348629',	'vdiaz@hotmail.com',	'5643',	'945237',	'503762',	'V',	'48496854');

INSERT INTO P_EMPLEADO VALUES ('5396210748',	'Sergio',	'Torres',	'Rodriguez',	'Jr. La Libertad 382',	'994861230',	'955786247',	'storres@outlook.com',	'6548',	'962158',	'176085',	'V',	'26698473');

INSERT INTO P_EMPLEADO VALUES ('5720398164',	'Camila',	'Contreras',	'Rivera',	'Jr. Lima 728',	'951746382',	'955758208',	'ccontreras@yahoo.com',	'6824',	'981736',	'257418',	'R',	'75590069');

INSERT INTO P_EMPLEADO VALUES ('6219304758',	'Gabriela',	'Hernandez',	'Maldonado',	'Av. Los Girasoles 1923',	'947263158',	'978096334',	'ghernandez@gmail.com',	'8402',	'368428',	'310647',	'V',	'48524778');

INSERT INTO P_EMPLEADO VALUES ('6248910357',	'Antonella',	'Navarro',	'Medina',	'Jr. Los Turistas 391',	'964218573',	'977685334',	'anavarro@gmail.com',	'9360',	'217983',	'409571',	'R',	'70829025');

INSERT INTO P_EMPLEADO VALUES ('6309257184',	'Mario',	'Lopez',	'Rojas',	'Jr. Mercurio 425',	'997362541',	'944528964',	'mlopez@gmail.com',	'2058',	'469785',	'503762',	'V',	'42668248');

INSERT INTO P_EMPLEADO VALUES ('6489573210',	'Matias',	'Aguilera',	'Fernandez',	'Jr. Los Girasoles 321',	'955612345',	'977663334',	'maguilera@yahoo.com',	'2903',	'802546',	'176085',	'V',	'73963157');

INSERT INTO P_EMPLEADO VALUES ('6523918740',	'Mariano',	'Herrera',	'Gomez',	'Av. Los Pinos 147',	'942863107',	'944551122',	'mherrera@gmail.com',	'3471',	'415603',	'257418',	'V',	'75548261');

INSERT INTO P_EMPLEADO VALUES ('6598742103',	'Violeta',	'Fernandez',	'Garcia',  	'Calle Los Pinos 1458',	'960745381',	'955661223',	'vfernan@gmail.com',	'3826',	'510869',	'310647',	'R',	'68245687');

INSERT INTO P_EMPLEADO VALUES ('7410823659',	'Carolina',	'Cortes',	'Vidal',	'Calle Los Robles 457',	'967521840',	'944558822',	'ccortes@gmail.com',	'3978',	'538412',	'409571',	'V',	'75992944');

INSERT INTO P_EMPLEADO VALUES ('7481906352',	'Leonardo',	'Leiva',	'Bustos',	'Calle Venuss 456',	'964127538',	'954785455',	'lleiva@yahoo.com',	'4197',	'690428',	'503762',	'R',	'27928972');

INSERT INTO P_EMPLEADO VALUES ('7963158752',	'Pedro',	'Perez',	'Saavedra',	'Av. Argentina 3356',	'987632541',	'918637825',	'p.perez@gmail.com',	'5391',	'786091',	'176085',	'V',	'27846289');

INSERT INTO P_EMPLEADO VALUES ('8156240397',	'David',	'Ruiz',	'Alvarado',	'Jr. Los Alamos 789',	'998365127',	'922348751',	'druiz@gmail.com',	'5643',	'874512',	'257418',	'V',	'17395899');

INSERT INTO P_EMPLEADO VALUES ('8204617539',	'Tomas',	'V�zquez',	'Lopez',	'Calle Los Alamos 456',	'997362541',	'935262114',	'tvazquez@hotmail.com',	'6548',	'945237',	'310647',	'V',	'47860246');

INSERT INTO P_EMPLEADO VALUES ('8396752014',	'Emilio',	'Escobar',	'Morales',	'Jr. Ayacucho 951',	'960532187',	'977667008',	'eescobar@gmail.com',	'6824',	'962158',	'409571',	'V',	'60896854');

INSERT INTO P_EMPLEADO VALUES ('8612945037',	'Sofia',	'Bravo',	'Castro',	'Jr. Hu�nuco 987',	'960732541',	'944551177',	'sbravo@hotmail.com',	'8402',	'981736', '503762',	'V',	'47500512');

INSERT INTO P_EMPLEADO VALUES ('9132574680',	'Santiago',	'Castro',	'Venegas',	'Av. Peru 384',	'926537810',	'959134455',	'scastro@yahoo.com',	'9360',	'368428',	'176085',	'V',	'27979132');

INSERT INTO P_EMPLEADO VALUES ('9132574680',	'Santiago',	'Castro',	'Venegas',	'Av. Peru 384',	'926537810',	'959134455',	'scastro@yahoo.com',	'9360',	'368428',	'176085',	'V',	'27979132');

INSERT INTO P_EMPLEADO VALUES ('9136852470',	'Daniel',	'Salazar',	'Godoy',	'Jr. Jupiter 889',	'939270541',	'977662211',	'dsalazar@hotmail.com',	'2058',	'217983',	'257418',	'V',	'40498477');

INSERT INTO P_EMPLEADO VALUES ('9162837450',	'Victor',	'Carrasco',	'Moreno',	'Jr. Tumbes 649',	'935270814',	'935270814',	'vcarrasco@hotmail.com',	'2903',	'469785',	'310647',	'V',	'17395759');
INSERT INTO P_EMPLEADO VALUES ('9346175820',	'Salvador',	'Morales',	'Salinas',	'Av. Las Palmeras 629',	'938475610',	'9112468132',	'smorales@gmail.com',	'3471',	'802546',	'409571',	'V',	'44610438');
INSERT INTO P_EMPLEADO VALUES ('9375208614',	'Valentina',	'Castillo',	'Silva',	'Calle Los Arces 529',	'926531487',	'950854730',	'vcastillo@yahoo.com',	'3826',	'538412',	'503762',	'V',	'40004477');
INSERT INTO P_EMPLEADO VALUES ('9475203681',	'Manuel',	'Vargas',	'Mora',	'Av. San Martin 987',	'962387541',	'999112223',	'mvargas@gmail.com',	'3978',	'690428',	'176085',	'V',	'75430673');


--correcto
INSERT INTO P_ENCARGADO_ACTIVIDADES VALUES ('9327', '1785392064', '87941');
INSERT INTO P_ENCARGADO_ACTIVIDADES VALUES ('5016', '2810934765', '26307');
INSERT INTO P_ENCARGADO_ACTIVIDADES VALUES ('7493', '3054986217', '40592');
INSERT INTO P_ENCARGADO_ACTIVIDADES VALUES ('6182', '4908326571', '71856');
INSERT INTO P_ENCARGADO_ACTIVIDADES VALUES ('2835', '6523918740', '52431');
INSERT INTO P_ENCARGADO_ACTIVIDADES VALUES ('4761', '7410823659', '93048');
INSERT INTO P_ENCARGADO_ACTIVIDADES VALUES ('8950', '8156240397', '14762');

--CORRECTO
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('2974035861', '14762');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('9132574680', '14762');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('9162837450', '14762');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('3187456239', '26307');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('4521063798', '26307');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('5372890416', '26307');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('6309257184', '40592');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('6489573210', '40592');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('4025731896', '40592');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('7963158752', '52431');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('1739856204', '52431');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('9475203681', '52431');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('1739856204', '71856');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('2058634197', '71856');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('8204617539', '71856');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('5720398164', '87941');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('6219304758', '87941');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('8396752014', '87941');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('6309257184', '93048');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('9136852470', '93048');
INSERT INTO P_EMPLEADOXACTIVIDAD VALUES ('9346175820', '93048');


--CORREGIDO
INSERT INTO P_HORARIO VALUES ('1', 'M', 'Lunes', '07:00:00', '15:00:00', '12:00:00', '12:30:00');
INSERT INTO P_HORARIO VALUES ('2', 'T', 'Lunes', '14:50:00', '22:00:00', '19:10:00', '19:40:00');
INSERT INTO P_HORARIO VALUES ('3', 'N', 'Lunes', '22:00:00', '06:50:00', '03:00:00', '03:30:00');
INSERT INTO P_HORARIO VALUES ('4', 'M', 'Martes', '07:00:00', '14:30:00', '12:00:00', '12:30:00');
INSERT INTO P_HORARIO VALUES ('5', 'T', 'Martes', '14:30:00', '21:30:00', '19:10:00', '19:40:00');
INSERT INTO P_HORARIO VALUES ('6', 'N', 'Martes', '21:30:00', '06:50:00', '03:00:00', '03:30:00');
INSERT INTO P_HORARIO VALUES ('7', 'M', 'Mi�rcoles', '07:00:00', '15:40:00', '12:00:00', '12:30:00');
INSERT INTO P_HORARIO VALUES ('8', 'T', 'Mi�rcoles', '15:20:00', '22:00:00', '19:10:00', '19:40:00');
INSERT INTO P_HORARIO VALUES ('9', 'N', 'Mi�rcoles', '22:00:00', '07:00:00', '03:00:00', '03:30:00');
INSERT INTO P_HORARIO VALUES ('10', 'M', 'Jueves', '07:00:00', '15:00:00', '12:00:00', '12:30:00');
INSERT INTO P_HORARIO VALUES ('11', 'T', 'Jueves', '14:50:00', '22:00:00', '19:10:00', '19:40:00');
INSERT INTO P_HORARIO VALUES ('12', 'N', 'Jueves', '22:00:00', '06:50:00', '03:00:00', '03:30:00');
INSERT INTO P_HORARIO VALUES ('13', 'M', 'Viernes', '07:00:00', '15:00:00', '12:00:00', '12:30:00');
INSERT INTO P_HORARIO VALUES ('14', 'T', 'Viernes', '14:50:00', '22:00:00', '19:10:00', '19:40:00');
INSERT INTO P_HORARIO VALUES ('15', 'N', 'Viernes', '22:00:00', '06:50:00', '03:00:00', '03:30:00');
INSERT INTO P_HORARIO VALUES ('16', 'M', 'S�bado', '07:00:00', '15:00:00', '12:00:00', '12:30:00');
INSERT INTO P_HORARIO VALUES ('17', 'T', 'S�bado', '14:50:00', '22:00:00', '19:10:00', '19:40:00');
INSERT INTO P_HORARIO VALUES ('18', 'N', 'S�bado', '22:00:00', '06:50:00', '03:00:00', '03:30:00');
INSERT INTO P_HORARIO VALUES ('19', 'M', 'Domingo', '07:00:00', '14:30:00', '12:00:00', '12:30:00');
INSERT INTO P_HORARIO VALUES ('20', 'T', 'Domingo', '14:30:00', '21:30:00', '19:10:00', '19:40:00');
INSERT INTO P_HORARIO VALUES ('21', 'N', 'Domingo', '21:30:00', '06:50:00', '03:00:00', '03:30:00');

--CORREGIDO
INSERT INTO P_EMPLEADOXHORARIO VALUES ('1567308942', '1');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('1739856204', '2');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('1785392064', '3');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('2058634197', '4');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('2609314785', '5');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('2807195463', '6');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('2810934765', '7');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('2856102397', '8');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('2956038147', '9');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('2974035861', '10');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('3054986217', '11');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('3187456239', '12');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('3702158649', '13');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('4025731896', '14');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('4392175068', '15');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('4521063798', '16');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('4908326571', '17');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('5243091876', '18');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('5294683710', '19');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('5372890416', '20');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('5396210748', '21');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('5720398164', '1');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('6219304758', '2');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('6248910357', '3');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('6309257184', '4');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('6489573210', '5');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('6523918740', '6');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('6598742103', '7');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('7410823659', '8');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('7481906352', '9');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('7963158752', '10');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('8156240397', '11');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('8204617539', '12');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('8396752014', '13');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('8612945037', '14');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('9132574680', '15');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('9136852470', '16');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('9162837450', '17');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('9346175820', '18');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('9375208614', '19');
INSERT INTO P_EMPLEADOXHORARIO VALUES ('9475203681', '20');


--FUNCIONA
INSERT INTO P_CONTRATO VALUES ('197485', '06/08/2018', 'V', '1567308942', '2058', 'I');
INSERT INTO P_CONTRATO VALUES ('257413', '19/08/2020', 'V', '1739856204', '2903', 'F');
INSERT INTO P_CONTRATO VALUES ('287691', '08/11/2020', 'V', '1785392064', '3471', 'I');
INSERT INTO P_CONTRATO VALUES ('329485', '30/04/2020', 'V', '2058634197', '3826', 'F');
INSERT INTO P_CONTRATO VALUES ('356489', '19/12/2019', 'V', '2609314785', '3978', 'I');
INSERT INTO P_CONTRATO VALUES ('364895', '30/09/2017', 'R', '2807195463', '4197', 'F');
INSERT INTO P_CONTRATO VALUES ('392846', '08/03/2017', 'V', '2810934765', '5391', 'F');
INSERT INTO P_CONTRATO VALUES ('401675', '20/07/2020', 'R', '2856102397', '5643', 'F');
INSERT INTO P_CONTRATO VALUES ('468531', '02/07/2021', 'V', '2956038147', '6548', 'I');
INSERT INTO P_CONTRATO VALUES ('482037', '06/07/2017', 'V', '2974035861', '6824', 'I');
INSERT INTO P_CONTRATO VALUES ('486709', '11/05/2019', 'V', '3054986217', '8402', 'F');
INSERT INTO P_CONTRATO VALUES ('492708', '09/01/2021', 'V', '3187456239', '9360', 'I');
INSERT INTO P_CONTRATO VALUES ('508972', '12/09/2019', 'V', '3702158649', '2058', 'F');
INSERT INTO P_CONTRATO VALUES ('523197', '28/09/2018', 'V', '4025731896', '2903', 'I');
INSERT INTO P_CONTRATO VALUES ('523697', '01/02/2018', 'V', '4392175068', '3471', 'I');
INSERT INTO P_CONTRATO VALUES ('538421', '28/10/2020', 'R', '4521063798', '3826', 'F');
INSERT INTO P_CONTRATO VALUES ('539248', '13/08/2019', 'V', '4908326571', '3978', 'I');
INSERT INTO P_CONTRATO VALUES ('563809', '22/08/2020', 'V', '5243091876', '4197', 'I');
INSERT INTO P_CONTRATO VALUES ('568174', '18/07/2019', 'R', '5294683710', '5391', 'F');
INSERT INTO P_CONTRATO VALUES ('594723', '10/05/2019', 'V', '5372890416', '5643', 'I');
INSERT INTO P_CONTRATO VALUES ('613597', '07/12/2017', 'V', '5396210748', '6548', 'F');
INSERT INTO P_CONTRATO VALUES ('618932', '07/03/2018', 'R', '5720398164', '6824', 'F');
INSERT INTO P_CONTRATO VALUES ('619843', '12/11/2019', 'V', '6219304758', '8402', 'I');
INSERT INTO P_CONTRATO VALUES ('630154', '25/05/2017', 'V', '6248910357', '9360', 'F');
INSERT INTO P_CONTRATO VALUES ('675314', '16/05/2018', 'V', '6309257184', '2058', 'F');
INSERT INTO P_CONTRATO VALUES ('705293', '23/05/2020', 'V', '6489573210', '2903', 'F');
INSERT INTO P_CONTRATO VALUES ('715326', '29/03/2018', 'V', '6523918740', '3471', 'I');
INSERT INTO P_CONTRATO VALUES ('734918', '20/10/2018', 'V', '6598742103', '3826', 'F');
INSERT INTO P_CONTRATO VALUES ('735029', '31/07/2018', 'V', '7410823659', '3978', 'I');
INSERT INTO P_CONTRATO VALUES ('746805', '14/01/2018', 'V', '7481906352', '4197', 'F');
INSERT INTO P_CONTRATO VALUES ('809437', '04/04/2018', 'V', '7963158752', '5391', 'I');
INSERT INTO P_CONTRATO VALUES ('809742', '15/04/2017', 'V', '8156240397', '5643', 'F');
INSERT INTO P_CONTRATO VALUES ('845371', '26/03/2019', 'V', '8204617539', '6548', 'I');
INSERT INTO P_CONTRATO VALUES ('846570', '14/05/2021', 'V', '8396752014', '6824', 'I');
INSERT INTO P_CONTRATO VALUES ('867410', '17/10/2020', 'R', '8612945037', '8402', 'F');
INSERT INTO P_CONTRATO VALUES ('920563', '01/10/2017', 'V', '9132574680', '9360', 'F');
INSERT INTO P_CONTRATO VALUES ('924806', '05/12/2017', 'V', '9136852470', '2058', 'I');
INSERT INTO P_CONTRATO VALUES ('925074', '24/06/2019', 'R', '9162837450', '2903', 'F');
INSERT INTO P_CONTRATO VALUES ('937845', '03/09/2018', 'V', '9346175820', '3471', 'I');
INSERT INTO P_CONTRATO VALUES ('971654', '21/06/2021', 'V', '9375208614', '3826', 'F');
INSERT INTO P_CONTRATO VALUES ('982416', '02/08/2017', 'V', '9475203681', '3978', 'I');

--FUNCIONA
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('197485', 'V');
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('287691', 'V');
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('356489', 'E');
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('468531', 'V');
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('482037', 'E');
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('492708', 'V');
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('523197', 'E');
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('523697', 'V');
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('539248', 'E');
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('563809', 'V');
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('594723', 'E');
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('619843', 'V');
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('715326', 'E');
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('735029', 'E');
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('809437', 'V');
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('845371', 'E');
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('846570', 'V');
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('924806', 'E');
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('937845', 'V');
INSERT INTO P_CONTRATO_PLAZO_INDETERMINADO VALUES ('982416', 'E');

--FUNCIONA
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('257413', '12/08/2023');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('329485', '26/09/2023');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('364895', '07/10/2022');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('392846', '08/11/2023');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('401675', '22/12/2022');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('486709', '03/02/2024');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('508972', '29/06/2022');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('538421', '19/03/2024');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('568174', '01/05/2024');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('613597', '14/06/2024');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('618932', '28/07/2022');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('630154', '09/09/2022');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('675314', '23/10/2024');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('705293', '06/12/2024');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('734918', '25/03/2022');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('746805', '20/01/2022');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('809742', '04/03/2024');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('867410', '17/04/2022');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('920563', '31/05/2024');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('925074', '12/07/2022');
INSERT INTO P_CONTRATO_PLAZO_FIJO VALUES ('971654', '25/08/2024');


--FUNCIONA -CORREGIDO
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM692', 'EMPO', 'A', 'Pre-Ocupacional', '29/01/2023','1567308942');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM358',	'EMOA',	'R',	'Peri�dico',	'25/05/2023','1739856204');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM640',	'EMOA',	'A',	'Peri�dico',	'06/09/2023','1785392064');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM392',	'EMOA',	'A',	'Peri�dico',	'23/11/2023','2058634197');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM769',	'EMOA',	'A',	'Peri�dico',	'04/04/2023','2609314785');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM421',	'EMOR',	'A',	'Retiro',	'15/10/2022','2807195463');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM418',	'EMPO',	'A',	'Pre-Ocupacional',	'17/04/2023','2810934765');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM285',	'EMOR',	'R',	'Retiro',	'24/08/2022','2856102397');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM931',	'EMOA',	'A',	'Peri�dico',	'31/10/2022','2956038147');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM982',	'EMOA',	'A',	'Peri�dico',	'21/12/2022','2974035861');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM546',	'EMOA',	'A',	'Peri�dico',	'03/01/2023','3054986217');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM206',	'EMPO',	'A',	'Pre-Ocupacional',	'23/06/2022','3187456239');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM936',	'EMPO',	'A',	'Pre-Ocupacional',	'09/09/2022','3702158649');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM968',	'EMOA',	'R',	'Peri�dico',	'20/06/2023','4025731896');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM159',	'EMOA',	'A',	'Peri�dico',	'16/07/2023','4392175068');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM476',	'EMOR',	'A',	'Retiro',	'11/08/2022','4521063798');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM784',	'EMOA',	'A',	'Peri�dico',	'19/09/2023','4908326571');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM526',	'EMOA',	'A',	'Peri�dico',	'27/08/2022','5243091876');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM259',	'EMOR',	'R',	'Retiro',	'28/10/2022','5294683710');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM567',	'EMOA',	'A',	'Peri�dico',	'22/03/2023','5372890416');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM987',	'EMOA',	'A',	'Peri�dico',	'06/07/2022','5396210748');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM197',	'EMOR',	'A',	'Retiro',	'22/09/2022','5720398164');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM384',	'EMOA',	'A',	'Peri�dico',	'03/07/2023','6219304758');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM179',	'EMPO',	'A',	'Pre-Ocupacional',	'16/01/2023','6248910357');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM607',	'EMOA',	'R',	'Peri�dico',	'14/08/2022','6309257184');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM425',	'EMOA',	'A',	'Peri�dico',	'25/11/2022','6489573210');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM523',	'EMPO',	'A',	'Pre-Ocupacional',	'07/06/2023','6523918740');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM245',	'EMPO',	'A',	'Pre-Ocupacional',	'25/07/2022','6598742103');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM738',	'EMOA',	'A',	'Peri�dico',	'02/10/2023','7410823659');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM496',	'EMPO',	'A',	'Pre-Ocupacional',	'11/02/2023','7481906352');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM314',	'EMOA',	'R',	'Peri�dico',	'29/07/2023','7963158752');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM674',	'EMOA',	'A',	'Peri�dico',	'19/07/2022','8156240397');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM853',	'EMOA',	'A',	'Peri�dico',	'06/12/2023','8204617539');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM670',	'EMOA',	'A',	'Retiro',	'12/05/2023','8396752014');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM843',	'EMOR',	'A',	'Peri�dico',	'10/11/2022','8612945037');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM812',	'EMOA',	'A',	'Pre-Ocupacional',	'12/11/2022','9132574680');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM860',	'EMPO',	'A',	'Retiro',	'08/12/2022','9136852470');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM105',	'EMOR',	'R',	'Pre-Ocupacional',	'30/04/2023','9162837450');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM516',	'EMPO',	'A',	'Pre-Ocupacional',	'05/10/2022','9346175820');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM679',	'EMPO',	'A',	'Pre-Ocupacional',	'31/03/2023','9375208614');
INSERT INTO P_EXAMEN_MEDICO VALUES ('EXM813',	'EMPO',	'A',	'Pre-Ocupacional',	'30/07/2022','9475203681');


--Corregido
INSERT INTO P_CAPACITACION VALUES ('BIO289', 'Bioseguridad', 'N', 'Ense�a los protocolos y medidas de seguridad para prevenir infecciones y manejar correctamente los desechos m�dicos de acuerdo con los est�ndares establecidos.', 'P', 'Requisito Indispensable', 'T', '16/06/2022', '16/09/2023');
INSERT INTO P_CAPACITACION VALUES ('CASS632', 'Calidad en los servicios de salud', 'N', 'Introduce conceptos y t�cnicas para mejorar la calidad de los servicios de salud, incluyendo la identificaci�n y resoluci�n de problemas, el an�lisis de datos y la implementaci�n de medidas de mejora continua.', 'P', 'Requisito Indispensable', 'T', '27/08/2021', '27/07/2023');
INSERT INTO P_CAPACITACION VALUES ('COEF378', 'Comunicaci�n efectiva', 'N', 'Desarrolla habilidades de comunicaci�n interpersonal, empat�a y atenci�n al paciente, centr�ndose en la importancia de brindar un servicio de calidad y un trato humanizado.', 'V', 'Requisito Indispensable', 'E', '15/05/2023', '15/08/2023');
INSERT INTO P_CAPACITACION VALUES ('ETCO543', '�tica y confidencialidad', 'N', 'Explora los principios �ticos y legales que rigen la atenci�n m�dica, haciendo hincapi� en la confidencialidad de la informaci�n del paciente y el cumplimiento de las normativas de privacidad.', 'V',  'Requisito Indispensable', 'T', '10/10/2022', '10/10/2023');
INSERT INTO P_CAPACITACION VALUES ('GEST451', 'Gesti�n del estr�s', 'F', 'Proporciona herramientas y estrategias para manejar el estr�s relacionado con el trabajo en un entorno hospitalario, promoviendo el autocuidado y la salud mental.', 'P', 'Mejora de habilidades blandas', 'E', '20/04/2023', '20/08/2023');
INSERT INTO P_CAPACITACION VALUES ('LITE897', 'Liderazgo y trabajo en equipo', 'F', 'Desarrolla habilidades de liderazgo, gesti�n de equipos y colaboraci�n efectiva, fomentando un ambiente de trabajo positivo y productivo.', 'V', 'Mejora de habilidades blandas', 'E', '24/05/2023', '24/09/2023');
INSERT INTO P_CAPACITACION VALUES ('PA104', 'Primeros auxilios', 'N', 'Proporciona conocimientos y habilidades para responder de manera adecuada en situaciones de emergencia m�dica y brindar atenci�n b�sica de primeros auxilios.', 'P', 'Requisito Indispensable', 'T', '6/01/2021', '30/06/2023');

--listo
INSERT INTO P_CAPACITACION_X_CARGO VALUES ('COEF378', '2058');
INSERT INTO P_CAPACITACION_X_CARGO VALUES ('COEF378', '2903');
INSERT INTO P_CAPACITACION_X_CARGO VALUES ('PA104', '3471');
INSERT INTO P_CAPACITACION_X_CARGO VALUES ('LITE897', '3826');
INSERT INTO P_CAPACITACION_X_CARGO VALUES ('GEST451', '3978');
INSERT INTO P_CAPACITACION_X_CARGO VALUES ('GEST451', '4197');
INSERT INTO P_CAPACITACION_X_CARGO VALUES ('BIO289', '5391');
INSERT INTO P_CAPACITACION_X_CARGO VALUES ('BIO289', '5643');
INSERT INTO P_CAPACITACION_X_CARGO VALUES ('BIO289', '6548');
INSERT INTO P_CAPACITACION_X_CARGO VALUES ('CASS632', '6824');
INSERT INTO P_CAPACITACION_X_CARGO VALUES ('CASS632', '8402');
INSERT INTO P_CAPACITACION_X_CARGO VALUES ('ETCO543', '9360');


--CORREGIR

INSERT INTO P_REGISTRO_NOMINA VALUES ('736985', 'Soles', '5248710396', 189, 0, 3, 0, '1567308942', '176085');
INSERT INTO P_REGISTRO_NOMINA VALUES ('518674', 'Soles', '5389047621', 176, 2, 0, 0, '1739856204', '257418');
INSERT INTO P_REGISTRO_NOMINA VALUES ('964823', 'Soles', '6932501847', 183, 1, 1, 0, '1785392064', '310647');
INSERT INTO P_REGISTRO_NOMINA VALUES ('275409', 'Soles', '8219450376', 166, 3, 2, 0, '2058634197', '409571');
INSERT INTO P_REGISTRO_NOMINA VALUES ('629835', 'Soles', '4716935208', 174, 2, 2, 0, '2609314785', '503762');
INSERT INTO P_REGISTRO_NOMINA VALUES ('413586', 'Soles', '5729438160', 92, 1, 0, 0, '2807195463', '176085');
INSERT INTO P_REGISTRO_NOMINA VALUES ('857601', 'Dolares', '6941270583', 183, 1, 1, 0, '2810934765', '257418');
INSERT INTO P_REGISTRO_NOMINA VALUES ('392648', 'Soles', '2847569031', 167, 3, 1, 0, '2856102397', '310647');
INSERT INTO P_REGISTRO_NOMINA VALUES ('564930', 'Soles', '2894510376', 192, 0, 0, 0, '2956038147', '409571');
INSERT INTO P_REGISTRO_NOMINA VALUES ('829671', 'Soles', '2875469310', 174, 2, 2, 0, '2974035861', '503762');
INSERT INTO P_REGISTRO_NOMINA VALUES ('147530', 'Soles', '5031978246', 181, 1, 3, 0, '3054986217', '176085');
INSERT INTO P_REGISTRO_NOMINA VALUES ('695483', 'Soles', '1579063248', 166, 3, 2, 0, '3187456239', '257418');
INSERT INTO P_REGISTRO_NOMINA VALUES ('328714', 'Soles', '3485120976', 88, 2, 0, 0, '3702158649', '310647');
INSERT INTO P_REGISTRO_NOMINA VALUES ('581409', 'Soles', '8921463075', 189, 0, 3, 0, '4025731896', '409571');
INSERT INTO P_REGISTRO_NOMINA VALUES ('926347', 'Soles', '9850123476', 183, 1, 1, 0, '4392175068', '503762');
INSERT INTO P_REGISTRO_NOMINA VALUES ('437609', 'Dolares', '1782965043', 166, 3, 2,0, '4521063798', '176085');
INSERT INTO P_REGISTRO_NOMINA VALUES ('658214', 'Soles', '9263140785', 86, 2, 3, 0, '4908326571', '257418');
INSERT INTO P_REGISTRO_NOMINA VALUES ('315497', 'Soles', '4368297150', 182, 1, 2, 0, '5243091876', '310647');
INSERT INTO P_REGISTRO_NOMINA VALUES ('792564', 'Soles', '4628351097', 175, 2, 1, 0, '5294683710', '409571');
INSERT INTO P_REGISTRO_NOMINA VALUES ('406925', 'Soles', '3540291768', 192, 0, 0, 0, '5372890416', '503762');
INSERT INTO P_REGISTRO_NOMINA VALUES ('275436', 'Soles', '3976210854', 165, 3, 3, 0, '5396210748', '176085');
INSERT INTO P_REGISTRO_NOMINA VALUES ('513972', 'Soles', '4307951268', 175, 2, 1, 0, '5720398164', '257418');
INSERT INTO P_REGISTRO_NOMINA VALUES ('849063', 'Soles', '6758291430', 95, 0, 2, 0, '6219304758', '310647');
INSERT INTO P_REGISTRO_NOMINA VALUES ('631407', 'Soles', '6204978135', 184, 1, 0, 0, '6248910357', '409571');
INSERT INTO P_REGISTRO_NOMINA VALUES ('295864', 'Soles', '8150762943', 167, 3, 1, 0, '6309257184', '503762');
INSERT INTO P_REGISTRO_NOMINA VALUES ('478619', 'Soles', '6904852173', 173, 2, 3, 0, '6489573210', '176085');
INSERT INTO P_REGISTRO_NOMINA VALUES ('763985', 'Soles', '8049123756', 190, 0, 2, 0, '6523918740', '257418');
INSERT INTO P_REGISTRO_NOMINA VALUES ('524397', 'Dolares', '7025369184', 184, 1, 0, 0, '6598742103', '310647');
INSERT INTO P_REGISTRO_NOMINA VALUES ('891306', 'Soles', '4075281693', 175, 2, 1, 0, '7410823659', '409571');
INSERT INTO P_REGISTRO_NOMINA VALUES ('436189', 'Soles', '6412035897', 190, 0, 2, 0, '7481906352', '503762');
INSERT INTO P_REGISTRO_NOMINA VALUES ('670429', 'Soles', '9876543210', 168, 3, 0, 0, '7963158752', '176085');
INSERT INTO P_REGISTRO_NOMINA VALUES ('926570', 'Soles', '2156709843', 90, 1, 3, 0, '8156240397', '257418');
INSERT INTO P_REGISTRO_NOMINA VALUES ('184396', 'Soles', '5087346921', 175, 2, 1, 0, '8204617539', '310647');
INSERT INTO P_REGISTRO_NOMINA VALUES ('572064', 'Soles', '1079235684', 190, 0, 2, 0, '8396752014', '409571');
INSERT INTO P_REGISTRO_NOMINA VALUES ('931457', 'Soles', '7639102458', 168, 3, 0, 0, '8612945037', '503762');
INSERT INTO P_REGISTRO_NOMINA VALUES ('368415', 'Soles', '7294681503', 181, 1, 3, 0, '9132574680', '176085');
INSERT INTO P_REGISTRO_NOMINA VALUES ('742159', 'Dolares', '1670934825', 175, 2, 1, 0, '9136852470', '257418');
INSERT INTO P_REGISTRO_NOMINA VALUES ('519843', 'Soles', '3197085642', 95, 0, 2, 0, '9162837450', '310647');
INSERT INTO P_REGISTRO_NOMINA VALUES ('897420', 'Soles', '9134280576', 168, 3, 0, 0, '9346175820', '409571');
INSERT INTO P_REGISTRO_NOMINA VALUES ('654318', 'Soles', '2609734185', 181, 1, 3, 0, '9375208614', '503762');
INSERT INTO P_REGISTRO_NOMINA VALUES ('312795', 'Soles', '9531670824', 174, 2, 2, 0, '9475203681', '176085');



--NO HACER 
INSERT INTO P_MARCACION VALUES ('1', '19/06/2023', '08:30:00', 'E','T', '1567308942');
INSERT INTO P_MARCACION VALUES ('2', '17/06/2023', '14:50:00', 'E', 'P', '1739856204');

