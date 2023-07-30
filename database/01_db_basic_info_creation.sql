DO $$ 
BEGIN
CREATE TABLE tablenames(
    id bigserial not null, 
    name varchar(255) not null,
    info varchar(30),
    primary key(id)
);

END $$;