DROP FUNCTION IF EXISTS public.user_login_check(character varying, character varying);

CREATE OR REPLACE FUNCTION public.user_login_check(email character varying, password character varying) 
RETURNS BOOLEAN LANGUAGE 'plpgsql' AS $BODY$
DECLARE 
    _email character varying := email;
    _password character varying := password;
    _count integer;

BEGIN
    SELECT count(*) over() FROM users as u WHERE u.email = _email AND u.password = _password AND u.isactive INTO _count;
    -- RAISE EXCEPTION 'Print the message of exception %', now();
    IF _count IS NULL THEN 
    RETURN FALSE;
    ELSE 
    RETURN TRUE;
    END IF;
END;
$BODY$;
