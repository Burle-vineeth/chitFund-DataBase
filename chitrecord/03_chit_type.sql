DO $$

DECLARE

BEGIN

    CREATE TABLE chittype(
        id bigserial not null,
        name character varying,
        isactive boolean,
        members integer,
        commission numeric,
        duration integer,
        createdat date,
        createduser integer,
        createdapp character varying,
        updatedat date,
        updateduser integer,
        updatedapp character varying,
        primary key(id)
    );
    INSERT INTO tablenames(name) VALUES('chittype');

END $$;