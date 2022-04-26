CREATE OR REPLACE TRIGGER schedule_trigger
    BEFORE INSERT
    ON SCHEDULE
    FOR EACH ROW
declare
    new_date      date;
    get_frequency number;
begin
    SELECT start_date INTO new_date FROM PALLETS WHERE PALLETS.PALLET_ID = :NEW.PALLET_ID;
    SELECT frequency INTO get_frequency FROM MAINTENANCE WHERE MAINTENANCE.MAINTENANCE_ID = :NEW.MAINTENANCE_ID;
    new_date := new_date + get_frequency;
    :NEW.SCHEDULED_DATE := new_date;
end;

CREATE OR REPLACE TRIGGER realisation_trigger
    BEFORE INSERT OR UPDATE
    ON REALISATION
    FOR EACH ROW
declare
    get_maintenance_id number;
    get_frequency      number;
    get_scheduled_date date;
    new_date           date;
begin
    SELECT MAINTENANCE_ID, SCHEDULED_DATE
    INTO get_maintenance_id, get_scheduled_date
    FROM SCHEDULE s
    WHERE :NEW.SCHEDULE_ID = s.SCHEDULE_ID;

    IF NOT :NEW.REALISATION_DATE > :OLD.REALISATION_DATE
    THEN
        RAISE_APPLICATION_ERROR('-20002', 'THE NEW DATE IS OLDER THAN PREVIOUS REALISATION DATE');
    END IF;

    SELECT frequency
    INTO get_frequency
    FROM MAINTENANCE
    WHERE MAINTENANCE_ID = get_maintenance_id;

    new_date := :NEW.REALISATION_DATE + get_frequency;

    UPDATE SCHEDULE SET SCHEDULED_DATE = new_date WHERE SCHEDULE_ID = :NEW.SCHEDULE_ID;
end;