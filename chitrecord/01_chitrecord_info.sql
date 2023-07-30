DO $$
BEGIN

CREATE TABLE chits(
    id bigserial not null,
    name varchar(255),
    leader varchar(255),
    isactive boolean,
    totalmembers integer,
    leaderemail varchar(255),
    chitcost integer,
    createdat date,
    endson date,
    duration integer,
    monthscompleted integer, 
    monthsremaining integer,
    commissionpercentg integer,
    commissionamount integer,
    primary key(id)
);

INSERT INTO tablenames(name) VALUES('chits');

END $$;