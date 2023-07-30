CREATE OR REPLACE FUNCTION public.reset_password(email character varying, password character varying, otp integer)
RETURNS BOOLEAN LANGUAGE 'plpgsql' AS $BODY$

DECLARE
    _email character varying := email;
    _password character varying := password;
    _otp integer := otp;
    _updateduser integer := 1;
    _updatedapp character varying := '06_reset_password.sql';
    _count integer;

BEGIN
    SELECT COUNT(*) OVER() FROM users us WHERE us.email = _email AND us.otp = _otp AND us.isactive INTO _count;

    IF _count IS NULL THEN 
        RETURN FALSE;
    END IF;

    UPDATE users usr SET password = _password,
    otp = NULL,
    updatedat = now(), 
    updateduser = _updateduser,
    updatedapp = _updatedapp
    WHERE usr.email = _email AND usr.otp = _otp AND usr.isactive;
    RETURN TRUE;

END $BODY$;