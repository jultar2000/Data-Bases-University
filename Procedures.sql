CREATE OR REPLACE PROCEDURE INSERT_PLANT(plantId IN VARCHAR2, plantType IN VARCHAR2)
AS
BEGIN
    INSERT INTO PLANTS(PLANT_ID, TYPE_) VALUES (plantId, plantType);
    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        raise_application_error(-20001, 'An error was encountered -' || SQLCODE || ' -ERROR- ' || SQLERRM);
END;


CREATE OR REPLACE PROCEDURE INSERT_SPECIES(speciesId IN VARCHAR2, plantId IN VARCHAR2, countryName IN VARCHAR2)
AS
BEGIN
    INSERT INTO SPECIES(SPECIES_ID, PLANT_ID, COUNTRY) VALUES (speciesId, plantId, countryName);
    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        raise_application_error(-20001, 'An error was encountered -' || SQLCODE || ' -ERROR- ' || SQLERRM);
END;


CREATE OR REPLACE PROCEDURE INSERT_WORKER(workerName VARCHAR2,
                                          workerSurname IN VARCHAR2,
                                          workerAge IN NUMBER,
                                          isWorking IN VARCHAR2)
AS
BEGIN
    IF NOT isWorking = 'F' OR isWorking = 'T'
    THEN
        RAISE_APPLICATION_ERROR('-20002', 'IS WORKING FIELD CAN BE ONLY F AS FALSE OR T AS TRUE.');
    END IF;

    INSERT INTO WORKERS(NAME, SURNAME, AGE) VALUES (workerName, workerSurname, workerAge);
    COMMIT;
    INSERT INTO STATUS(worker_id, is_working) VALUES (WORKER_SEQ.currval, isWorking);
    COMMIT;
EXCEPTION
    WHEN
        OTHERS THEN
        RAISE_APPLICATION_ERROR(-20001, 'An error was encountered -' || SQLCODE || ' -ERROR- ' || SQLERRM);
END;


CREATE OR REPLACE PROCEDURE INSERT_PALLET(workerId IN NUMBER, speciesId IN VARCHAR2,
                                          palletAmount IN NUMBER, palletDate IN DATE)
AS
BEGIN
    INSERT INTO PALLETS(WORKER_ID, SPECIES_ID, AMOUNT, START_DATE)
    VALUES (workerId, speciesId, palletAmount, palletDate);
    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        raise_application_error(-20001, 'An error was encountered -' || SQLCODE || ' -ERROR- ' || SQLERRM);
END;

CREATE OR REPLACE PROCEDURE INSERT_PROCEDURE(procedureId IN VARCHAR2, procedureDesc IN VARCHAR2)
AS
BEGIN
    INSERT INTO PROCEDURES(PROCEDURE_ID, DESCRIPTION)
    VALUES (procedureId, procedureDesc);
    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        raise_application_error(-20001, 'An error was encountered -' || SQLCODE || ' -ERROR- ' || SQLERRM);
END;

CREATE OR REPLACE PROCEDURE INSERT_MAINTENANCE(speciesId IN VARCHAR2, procedureId IN VARCHAR2, freq IN NUMBER)
AS
BEGIN
    INSERT INTO MAINTENANCE(SPECIES_ID, PROCEDURE_ID, FREQUENCY)
    VALUES (speciesId, procedureId, freq);
    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        raise_application_error(-20001, 'An error was encountered -' || SQLCODE || ' -ERROR- ' || SQLERRM);
END;

CREATE OR REPLACE PROCEDURE INSERT_SCHEDULE()
AS
BEGIN




END;


CREATE OR REPLACE PROCEDURE INSERT_REALISATION(scheduleId IN NUMBER, realisationDate IN DATE)
AS
BEGIN
    INSERT INTO REALISATION(SCHEDULE_ID, REALISATION_DATE)
    VALUES (scheduleId, realisationDate);
    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        raise_application_error(-20001, 'An error was encountered -' || SQLCODE || ' -ERROR- ' || SQLERRM);
END;