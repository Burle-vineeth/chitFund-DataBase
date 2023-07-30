DO $$

BEGIN
CREATE TABLE chitmembers(
    id bigserial not null,
    name varchar(255),
    email varchar(255),
    isactive boolean,
    chitname varchar(255),
    parentchitid integer,
    noofchitspaid integer,
    received boolean,
    amountreceived integer,
    roundnumber integer,
    amountpaidtillnow integer,
    createdat date,
    primary key(id)
);

INSERT INTO tablenames(name) VALUES ('chitmembers');

END $$;