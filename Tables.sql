CREATE SEQUENCE worker_seq
START WITH 1
INCREMENT BY 1;

CREATE TABLE WORKERS
(
    worker_id number DEFAULT worker_seq.nextval PRIMARY KEY,
    name      varchar2(30) NOT NULL,
    surname   varchar2(50) NOT NULL,
    age       number       NOT NULL
);

CREATE TABLE STATUS
(
    status_id  number GENERATED ALWAYS AS IDENTITY (INCREMENT BY 1 START WITH 1) PRIMARY KEY,
    worker_id  number      NOT NULL,
    is_working varchar2(1) NOT NULL
);

CREATE TABLE PALLETS
(
    pallet_id  number GENERATED ALWAYS AS IDENTITY (INCREMENT BY 1 START WITH 1) PRIMARY KEY,
    worker_id  number       NOT NULL,
    species_id varchar2(50) NOT NULL,
    amount     number       NOT NULL,
    start_date date         NOT NULL
);

CREATE TABLE SPECIES
(
    species_id varchar2(50) PRIMARY KEY,
    plant_id   varchar2(50) NOT NULL,
    country    varchar2(50) NOT NULL
);

CREATE TABLE PLANTS
(
    plant_id varchar2(50) PRIMARY KEY,
    type_    varchar2(50) NOT NULL
);

CREATE TABLE MAINTENANCE
(
    maintenance_id number GENERATED ALWAYS AS IDENTITY (INCREMENT BY 1 START WITH 1) PRIMARY KEY,
    species_id     varchar2(50) NOT NULL,
    procedure_id   varchar2(30) NOT NULL,
    frequency      number       NOT NULL
);

CREATE TABLE SCHEDULE
(
    schedule_id    number GENERATED ALWAYS AS IDENTITY (INCREMENT BY 1 START WITH 1) PRIMARY KEY,
    pallet_id      number NOT NULL,
    maintenance_id number NOT NULL,
    scheduled_date date
);

CREATE TABLE PROCEDURES
(
    procedure_id varchar2(30) PRIMARY KEY,
    description  varchar2(500) NOT NULL
);

CREATE TABLE REALISATION
(
    realisation_id   number GENERATED ALWAYS AS IDENTITY (INCREMENT BY 1 START WITH 1) PRIMARY KEY,
    schedule_id      number NOT NULL,
    realisation_date date   NOT NULL
);