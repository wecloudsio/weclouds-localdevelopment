-- Creation of user table
CREATE TABLE IF NOT EXISTS "user"
(
    id                text PRIMARY KEY,
    version           integer,
    token             text,
    creation_date     timestamp NOT NULL,
    modification_date timestamp NOT NULL,
    username          text      NOT NULL
);


-- Creation of cloud table
CREATE TABLE IF NOT EXISTS cloud
(
    id                         text PRIMARY KEY,
    optimistic_locking_counter integer,
    token                      text,
    creation_date              timestamp NOT NULL,
    modification_date          timestamp NOT NULL,
    project_group_id           text      NOT NULL,
    knowledge_source_uri       text,
    owner_id                   text      NOT NULL,
    name                       text      NOT NULL,
    purpose                    text
);

-- Creation of projectgroup table
CREATE TABLE IF NOT EXISTS projectgroup
(
    id                text PRIMARY KEY,
    version           integer,
    token             text,
    creation_date     timestamp NOT NULL,
    modification_date timestamp NOT NULL,
    owner_ref         text      NOT NULL,
    name              text      NOT NULL,
    description       text      NOT NULL
);
