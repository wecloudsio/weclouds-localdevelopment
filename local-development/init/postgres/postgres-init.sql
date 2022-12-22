-- Creation of user table
CREATE TABLE IF NOT EXISTS "user"
(
    id                varchar(40) PRIMARY KEY,
    version           integer,
    token             varchar(5),
    creation_date     timestamp   NOT NULL,
    modification_date timestamp   NOT NULL,
    username          varchar(20) NOT NULL
);


-- Creation of cloud table
CREATE TABLE IF NOT EXISTS cloud
(
    id                varchar(40) PRIMARY KEY,
    version           integer,
    token             varchar(5),
    creation_date     timestamp   NOT NULL,
    modification_date timestamp   NOT NULL,
    owner_ref         varchar(40) NOT NULL,
    name              varchar(20) NOT NULL
);
