-- PLANT TYPES
INSERT INTO PLANTS(plant_id, type_)
VALUES ('Kaktus', 'Sukulenty');
INSERT INTO PLANTS(plant_id, type_)
VALUES ('Aloes', 'Sukulenty');

INSERT INTO PLANTS(plant_id, type_)
VALUES ('Lilia', 'Liliowate');

INSERT INTO PLANTS(plant_id, type_)
VALUES ('Aster', 'Skalniak');

INSERT INTO PLANTS(plant_id, type_)
VALUES ('Bylica', 'Byliny');

-- PLANT SPECIES BASED ON PLANT TYPES
INSERT INTO SPECIES(species_id, plant_id, country)
VALUES ('Aster gawędka', 'Aster', 'Niemcy');
INSERT INTO SPECIES(species_id, plant_id, country)
VALUES ('Aster nowoangielski', 'Aster', 'Holandia');

INSERT INTO SPECIES(species_id, plant_id, country)
VALUES ('Kaktus pospolity', 'Kaktus', 'Australia');
INSERT INTO SPECIES(species_id, plant_id, country)
VALUES ('Kaktus nie-pospolity', 'Kaktus', 'Australia');

INSERT INTO SPECIES(species_id, plant_id, country)
VALUES ('Aloes pitny', 'Aloes', 'USA');
INSERT INTO SPECIES(species_id, plant_id, country)
VALUES ('Aloes pospolity', 'Aloes', 'USA');

INSERT INTO SPECIES(species_id, plant_id, country)
VALUES ('Lilia koralowa', 'Lilia', 'Austria');
INSERT INTO SPECIES(species_id, plant_id, country)
VALUES ('Lilia wodna', 'Lilia', 'Austria');

INSERT INTO SPECIES(species_id, plant_id, country)
VALUES ('Bylica logowa', 'Bylica', 'Podlasie');
INSERT INTO SPECIES(species_id, plant_id, country)
VALUES ('Bylica pylica', 'Bylica', 'Podlasie');

-- WORKERS
INSERT INTO WORKERS(NAME, SURNAME, AGE)
VALUES ('Marek', 'Kowalski', 42);
INSERT INTO WORKERS(NAME, SURNAME, AGE)
VALUES ('Adrian', 'Hycel', 31);
INSERT INTO WORKERS(NAME, SURNAME, AGE)
VALUES ('Monika', 'Żar', 28);
INSERT INTO WORKERS(NAME, SURNAME, AGE)
VALUES ('Aleksandra', 'Pat', 56);

INSERT INTO STATUS(WORKER_ID, IS_WORKING)
VALUES (1, 'T');
INSERT INTO STATUS(WORKER_ID, IS_WORKING)
VALUES (2, 'T');
INSERT INTO STATUS(WORKER_ID, IS_WORKING)
VALUES (3, 'T');
INSERT INTO STATUS(WORKER_ID, IS_WORKING)
VALUES (4, 'F');

--PALLETS MANAGED BY WORKERS
INSERT INTO PALLETS(WORKER_ID, SPECIES_ID, AMOUNT, START_DATE)
VALUES (1, 'Aster gawędka', 12, TO_DATE('2016/05/21', 'yyyy/mm/dd'));
INSERT INTO PALLETS(WORKER_ID, SPECIES_ID, AMOUNT, START_DATE)
VALUES (1, 'Aster nowoangielski', 32, TO_DATE('2016/05/21', 'yyyy/mm/dd'));

INSERT INTO PALLETS(WORKER_ID, SPECIES_ID, AMOUNT, START_DATE)
VALUES (2, 'Kaktus pospolity', 3, TO_DATE('2013/05/11', 'yyyy/mm/dd'));
INSERT INTO PALLETS(WORKER_ID, SPECIES_ID, AMOUNT, START_DATE)
VALUES (2, 'Kaktus nie-pospolity', 1, TO_DATE('2020/08/01', 'yyyy/mm/dd'));

INSERT INTO PALLETS(WORKER_ID, SPECIES_ID, AMOUNT, START_DATE)
VALUES (2, 'Aloes pitny', 12, TO_DATE('2021/01/15', 'yyyy/mm/dd'));
INSERT INTO PALLETS(WORKER_ID, SPECIES_ID, AMOUNT, START_DATE)
VALUES (2, 'Aloes pospolity', 52, TO_DATE('2016/05/09', 'yyyy/mm/dd'));

INSERT INTO PALLETS(WORKER_ID, SPECIES_ID, AMOUNT, START_DATE)
VALUES (3, 'Lilia koralowa', 3, TO_DATE('2017/09/17', 'yyyy/mm/dd'));
INSERT INTO PALLETS(WORKER_ID, SPECIES_ID, AMOUNT, START_DATE)
VALUES (3, 'Lilia wodna', 12, TO_DATE('2019/06/21', 'yyyy/mm/dd'));

INSERT INTO PALLETS(WORKER_ID, SPECIES_ID, AMOUNT, START_DATE)
VALUES (3, 'Bylica logowa', 32, TO_DATE('2020/10/18', 'yyyy/mm/dd'));
INSERT INTO PALLETS(WORKER_ID, SPECIES_ID, AMOUNT, START_DATE)
VALUES (3, 'Bylica pylica', 12, TO_DATE('2016/11/22', 'yyyy/mm/dd'));

--SET OF PROCEDURES FOR MAINTENANCE OF SPECIFIC PLANT SPECIES
INSERT INTO PROCEDURES(PROCEDURE_ID, DESCRIPTION)
VALUES ('Podlewanie', 'Należy podlać rośliny.');
INSERT INTO PROCEDURES(PROCEDURE_ID, DESCRIPTION)
VALUES ('Obcięcie', 'Należy obciąć liście.');
INSERT INTO PROCEDURES(PROCEDURE_ID, DESCRIPTION)
VALUES ('Przesiew', 'Należy przesiać roślinę do nowej ziemi.');
INSERT INTO PROCEDURES(PROCEDURE_ID, DESCRIPTION)
VALUES ('Nasłonecznienie', 'Należy wystawic roślinę na światło słoneczne.');
INSERT INTO PROCEDURES(PROCEDURE_ID, DESCRIPTION)
VALUES ('Nawożenie', 'Należy dosypać do doniczki specjalnego nawozu.');

--MAINTENANCE OF SPECIFIC PLANT SPECIES
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aster gawędka', 'Podlewanie', 10);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aster gawędka', 'Obcięcie', 2);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aster gawędka', 'Przesiew', 4);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aster gawędka', 'Nasłonecznienie', 1);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aster gawędka', 'Nawożenie', 5);

INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aster nowoangielski', 'Podlewanie', 11);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aster nowoangielski', 'Obcięcie', 4);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aster nowoangielski', 'Przesiew', 7);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aster nowoangielski', 'Nasłonecznienie', 2);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aster nowoangielski', 'Nawożenie', 8);

INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Kaktus pospolity', 'Podlewanie', 18);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Kaktus pospolity', 'Obcięcie', 1);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Kaktus pospolity', 'Przesiew', 5);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Kaktus pospolity', 'Nasłonecznienie', 3);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Kaktus pospolity', 'Nawożenie', 8);

INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Kaktus nie-pospolity', 'Podlewanie', 11);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Kaktus nie-pospolity', 'Obcięcie', 2);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Kaktus nie-pospolity', 'Przesiew', 1);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Kaktus nie-pospolity', 'Nasłonecznienie', 10);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Kaktus nie-pospolity', 'Nawożenie', 7);

INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aloes pitny', 'Podlewanie', 10);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aloes pitny', 'Obcięcie', 6);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aloes pitny', 'Przesiew', 8);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aloes pitny', 'Nasłonecznienie', 8);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aloes pitny', 'Nawożenie', 18);

INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aloes pospolity', 'Podlewanie', 12);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aloes pospolity', 'Obcięcie', 3);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aloes pospolity', 'Przesiew', 7);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aloes pospolity', 'Nasłonecznienie', 1);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Aloes pospolity', 'Nawożenie', 9);

INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Lilia koralowa', 'Podlewanie', 19);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Lilia koralowa', 'Obcięcie', 9);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Lilia koralowa', 'Przesiew', 22);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Lilia koralowa', 'Nasłonecznienie', 2);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Lilia koralowa', 'Nawożenie', 5);

INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Lilia wodna', 'Obcięcie', 7);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Lilia wodna', 'Przesiew', 3);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Lilia wodna', 'Nasłonecznienie', 8);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Lilia wodna', 'Nawożenie', 18);

INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Bylica logowa', 'Podlewanie', 10);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Bylica logowa', 'Obcięcie', 3);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Bylica logowa', 'Przesiew', 3);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Bylica logowa', 'Nasłonecznienie', 8);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Bylica logowa', 'Nawożenie', 18);

INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Bylica pylica', 'Podlewanie', 10);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Bylica pylica', 'Obcięcie', 2);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Bylica pylica', 'Przesiew', 4);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Bylica pylica', 'Nasłonecznienie', 4);
INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
VALUES ('Bylica pylica', 'Nawożenie', 5);

--SCHEDULES USED FOR SPECIES MANAGEMENT FOR WORKERS
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (1, 1);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (1, 2);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (1, 3);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (1, 4);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (1, 5);

INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (2, 6);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (2, 7);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (2, 8);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (2, 9);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (1, 10);

INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (3, 11);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (3, 12);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (3, 13);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (3, 14);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (3, 15);

INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (4, 16);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (4, 17);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (4, 18);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (4, 19);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (4, 20);

INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (5, 21);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (5, 22);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (5, 23);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (5, 24);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (5, 25);

INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (6, 26);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (6, 27);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (6, 28);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (6, 29);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (6, 30);

INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (7, 31);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (7, 32);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (7, 33);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (7, 34);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (7, 35);

INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (8, 36);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (8, 37);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (8, 38);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (8, 39);

INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (9, 40);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (9, 41);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (9, 42);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (9, 43);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (9, 44);

INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (10, 45);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (10, 46);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (10, 47);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (10, 48);
INSERT INTO SCHEDULE(PALLET_ID, MAINTENANCE_ID)
VALUES (10, 49);

--REALISATIONS MANAGED BY WORKERS
INSERT INTO REALISATION(SCHEDULE_ID, REALISATION_DATE)
VALUES (1, TO_DATE('2016/06/01', 'yyyy/mm/dd'));
INSERT INTO REALISATION(SCHEDULE_ID, REALISATION_DATE)
VALUES (2, TO_DATE('2016/06/01', 'yyyy/mm/dd'));
INSERT INTO REALISATION(SCHEDULE_ID, REALISATION_DATE)
VALUES (3, TO_DATE('2016/08/01', 'yyyy/mm/dd'));
INSERT INTO REALISATION(SCHEDULE_ID, REALISATION_DATE)
VALUES (4, TO_DATE('2016/08/01', 'yyyy/mm/dd'));
INSERT INTO REALISATION(SCHEDULE_ID, REALISATION_DATE)
VALUES (5, TO_DATE('2016/08/01', 'yyyy/mm/dd'));
INSERT INTO REALISATION(SCHEDULE_ID, REALISATION_DATE)
VALUES (6, TO_DATE('2011/02/28', 'yyyy/mm/dd'));
INSERT INTO REALISATION(SCHEDULE_ID, REALISATION_DATE)
VALUES (7, TO_DATE('2011/03/28', 'yyyy/mm/dd'));