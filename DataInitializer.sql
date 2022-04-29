-- PLANT TYPES
BEGIN
    INSERT_PLANT('Kaktus', 'Sukulenty');
    INSERT_PLANT('Aloes', 'Sukulenty');
    INSERT_PLANT('Lilia', 'Liliowate');
    INSERT_PLANT('Aster', 'Skalniak');
    INSERT_PLANT('Bylica', 'Byliny');
END;

-- PLANT SPECIES BASED ON PLANT TYPES
BEGIN
    INSERT_SPECIES('Aster gawędka', 'Aster', 'Niemcy');
    INSERT_SPECIES('Aster nowoangielski', 'Aster', 'Holandia');
    INSERT_SPECIES('Kaktus pospolity', 'Kaktus', 'Australia');
    INSERT_SPECIES('Kaktus nie-pospolity', 'Kaktus', 'Australia');
    INSERT_SPECIES('Aloes pitny', 'Aloes', 'USA');
    INSERT_SPECIES('Aloes pospolity', 'Aloes', 'USA');
    INSERT_SPECIES('Lilia koralowa', 'Lilia', 'Austria');
    INSERT_SPECIES('Lilia wodna', 'Lilia', 'Austria');
    INSERT_SPECIES('Bylica logowa', 'Bylica', 'Podlasie');
    INSERT_SPECIES('Bylica pylica', 'Bylica', 'Podlasie');
END;

-- WORKERS
BEGIN
    INSERT_WORKER('Marek', 'Kowalski', 42, 'T');
    INSERT_WORKER('Adrian', 'Hycel', 31, 'T');
    INSERT_WORKER('Monika', 'Żar', 28, 'T');
    INSERT_WORKER('Aleksandra', 'Pat', 56, 'F');
END;

--PALLETS MANAGED BY WORKERS
BEGIN
    INSERT_PALLET(1, 'Aster gawędka', 12, TO_DATE('2016/05/21', 'yyyy/mm/dd'));
    INSERT_PALLET(1, 'Aster nowoangielski', 32, TO_DATE('2016/05/21', 'yyyy/mm/dd'));
    INSERT_PALLET(2, 'Kaktus pospolity', 3, TO_DATE('2013/05/11', 'yyyy/mm/dd'));
    INSERT_PALLET(2, 'Kaktus nie-pospolity', 1, TO_DATE('2020/08/01', 'yyyy/mm/dd'));
    INSERT_PALLET(2, 'Aloes pitny', 12, TO_DATE('2021/01/15', 'yyyy/mm/dd'));
    INSERT_PALLET(2, 'Aloes pospolity', 52, TO_DATE('2016/05/09', 'yyyy/mm/dd'));
    INSERT_PALLET(3, 'Lilia koralowa', 3, TO_DATE('2017/09/17', 'yyyy/mm/dd'));
    INSERT_PALLET(3, 'Lilia wodna', 12, TO_DATE('2019/06/21', 'yyyy/mm/dd'));
    INSERT_PALLET(3, 'Bylica logowa', 32, TO_DATE('2020/10/18', 'yyyy/mm/dd'));
END;

--SET OF PROCEDURES FOR MAINTENANCE OF SPECIFIC PLANT SPECIES
BEGIN
    INSERT_PROCEDURE('Podlewanie', 'Należy podlać rośliny.');
    INSERT_PROCEDURE('Obcięcie', 'Należy obciąć liście.');
    INSERT_PROCEDURE('Przesiew', 'Należy przesiać roślinę do nowej ziemi.');
    INSERT_PROCEDURE('Nasłonecznienie', 'Należy wystawic roślinę na światło słoneczne.');
    INSERT_PROCEDURE('Nawożenie', 'Należy dosypać do doniczki specjalnego nawozu.');
END;

--MAINTENANCE OF SPECIFIC PLANT SPECIES
BEGIN
    INSERT_MAINTENANCE('Aster gawędka', 'Podlewanie', 10);
    INSERT_MAINTENANCE('Aster gawędka', 'Obcięcie', 2);
    INSERT_MAINTENANCE('Aster gawędka', 'Przesiew', 4);
    INSERT_MAINTENANCE('Aster gawędka', 'Nasłonecznienie', 1);
    INSERT_MAINTENANCE('Aster gawędka', 'Nawożenie', 5);
    INSERT_MAINTENANCE('Aster nowoangielski', 'Podlewanie', 11);
    INSERT_MAINTENANCE('Aster nowoangielski', 'Obcięcie', 4);
    INSERT_MAINTENANCE('Aster nowoangielski', 'Przesiew', 7);
    INSERT_MAINTENANCE('Aster nowoangielski', 'Nasłonecznienie', 2);
    INSERT_MAINTENANCE('Aster nowoangielski', 'Nawożenie', 8);
    INSERT_MAINTENANCE('Kaktus pospolity', 'Podlewanie', 18);
    INSERT_MAINTENANCE('Kaktus pospolity', 'Obcięcie', 1);
    INSERT_MAINTENANCE('Kaktus pospolity', 'Przesiew', 5);
    INSERT_MAINTENANCE('Kaktus pospolity', 'Nasłonecznienie', 3);
    INSERT_MAINTENANCE('Kaktus pospolity', 'Nawożenie', 8);
    INSERT_MAINTENANCE('Kaktus nie-pospolity', 'Podlewanie', 11);
    INSERT_MAINTENANCE('Kaktus nie-pospolity', 'Obcięcie', 2);
    INSERT_MAINTENANCE('Kaktus nie-pospolity', 'Przesiew', 1);
    INSERT_MAINTENANCE('Kaktus nie-pospolity', 'Nasłonecznienie', 10);
    INSERT_MAINTENANCE('Kaktus nie-pospolity', 'Nawożenie', 7);
    INSERT_MAINTENANCE('Aloes pitny', 'Podlewanie', 10);
    INSERT_MAINTENANCE('Aloes pitny', 'Obcięcie', 6);
    INSERT_MAINTENANCE('Aloes pitny', 'Przesiew', 8);
    INSERT_MAINTENANCE('Aloes pitny', 'Nasłonecznienie', 8);
    INSERT_MAINTENANCE('Aloes pitny', 'Nawożenie', 18);
    INSERT_MAINTENANCE('Aloes pospolity', 'Podlewanie', 12);
    INSERT_MAINTENANCE('Aloes pospolity', 'Obcięcie', 3);
    INSERT_MAINTENANCE('Aloes pospolity', 'Przesiew', 7);
    INSERT_MAINTENANCE('Aloes pospolity', 'Nasłonecznienie', 1);
    INSERT_MAINTENANCE('Aloes pospolity', 'Nawożenie', 9);
    INSERT_MAINTENANCE('Lilia koralowa', 'Podlewanie', 19);
    INSERT_MAINTENANCE('Lilia koralowa', 'Obcięcie', 9);
    INSERT_MAINTENANCE('Lilia koralowa', 'Przesiew', 22);
    INSERT_MAINTENANCE('Lilia koralowa', 'Nasłonecznienie', 2);
    INSERT_MAINTENANCE('Lilia koralowa', 'Nawożenie', 5);
    INSERT_MAINTENANCE('Lilia wodna', 'Obcięcie', 7);
    INSERT_MAINTENANCE('Lilia wodna', 'Przesiew', 3);
    INSERT_MAINTENANCE('Lilia wodna', 'Nasłonecznienie', 8);
    INSERT_MAINTENANCE('Lilia wodna', 'Nawożenie', 18);
    INSERT_MAINTENANCE('Bylica logowa', 'Podlewanie', 10);
    INSERT_MAINTENANCE('Bylica logowa', 'Obcięcie', 3);
    INSERT_MAINTENANCE('Bylica logowa', 'Przesiew', 3);
    INSERT_MAINTENANCE('Bylica logowa', 'Nasłonecznienie', 8);
    INSERT_MAINTENANCE('Bylica logowa', 'Nawożenie', 18);
    INSERT_MAINTENANCE('Bylica pylica', 'Podlewanie', 10);
    INSERT_MAINTENANCE('Bylica pylica', 'Obcięcie', 2);
    INSERT_MAINTENANCE('Bylica pylica', 'Przesiew', 4);
    INSERT_MAINTENANCE('Bylica pylica', 'Nasłonecznienie', 4);
    INSERT_MAINTENANCE('Bylica pylica', 'Nawożenie', 5);

END;
--SCHEDULES USED FOR SPECIES MANAGEMENT FOR WORKERS
BEGIN
    INSERT_SCHEDULE(1);
    INSERT_SCHEDULE(2);
    INSERT_SCHEDULE(3);
    INSERT_SCHEDULE(4);
    INSERT_SCHEDULE(5);
    INSERT_SCHEDULE(6);
    INSERT_SCHEDULE(7);
    INSERT_SCHEDULE(8);
    INSERT_SCHEDULE(9);
END;

--REALISATIONS MANAGED BY WORKERS
BEGIN
    INSERT_REALISATION(2, TO_DATE('2022/06/01', 'yyyy/mm/dd'));
    INSERT_REALISATION(3, TO_DATE('2022/08/01', 'yyyy/mm/dd'));
    INSERT_REALISATION(4, TO_DATE('2022/08/01', 'yyyy/mm/dd'));
    INSERT_REALISATION(5, TO_DATE('2012/08/01', 'yyyy/mm/dd'));
    INSERT_REALISATION(6, TO_DATE('2017/02/28', 'yyyy/mm/dd'));
    INSERT_REALISATION(7, TO_DATE('2011/03/28', 'yyyy/mm/dd'));
    INSERT_REALISATION(8, TO_DATE('2021/03/28', 'yyyy/mm/dd'));
END;

---------- REALISATION CASES
BEGIN
    INSERT_REALISATION(1, TO_DATE('2022/09/04', 'yyyy/mm/dd'));
END;

----------REALISATION BEFORE PREVIOUS REALISATION DATE
BEGIN
    UPDATE_REALISATION(1, TO_DATE('2022/09/02', 'yyyy/mm/dd'));
END;

----------REALISATION BEFORE SCHEDULED DATE
BEGIN
    UPDATE_REALISATION(1, TO_DATE('2022/09/13', 'yyyy/mm/dd'));
END;

----------PROPER REALISATION
BEGIN
    UPDATE_REALISATION(1, TO_DATE('2022/09/15', 'yyyy/mm/dd'));
END;



------NOT WORKING WORKER AND INSERTING PALLET CASE
BEGIN
    INSERT_WORKER('Piotr', 'Kowalski', '32', 'F');
END;

BEGIN
    INSERT_PALLET(21, 'Bylica pylica', 12, TO_DATE('2016/11/22', 'yyyy/mm/dd'));
END;