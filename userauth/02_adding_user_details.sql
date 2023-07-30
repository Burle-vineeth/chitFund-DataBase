DROP FUNCTION IF EXISTS public.add_user_to_users(character varying, character varying, character varying, boolean);

CREATE OR REPLACE FUNCTION public.add_user_to_users(
    name character varying,
    email character varying,
    password character varying,
    terms boolean
) RETURNS boolean LANGUAGE 'plpgsql' 
AS $BODY$
DECLARE 
    _name character varying := name;
    _email character varying := email;
    _password character varying := password;
    _terms boolean := terms;
BEGIN
    INSERT INTO users(name, email, password, terms, isactive, createdat, costspent)
    VALUES(_name, _email, _password, _terms, true, now(), 0 ); 
    RETURN true;
END;
$BODY$;