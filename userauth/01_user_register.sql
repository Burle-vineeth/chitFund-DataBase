DO $$
BEGIN
CREATE TABLE users(
    id serial not null, 
    name varchar(255),
    email varchar(255) unique,
    password varchar(255),
    terms boolean,
    isactive boolean,
    createdat date,
    updatedat date,
    costspent integer,
    primary key(id)
);

INSERT INTO tablenames(name)
VALUES('users');


END $$;