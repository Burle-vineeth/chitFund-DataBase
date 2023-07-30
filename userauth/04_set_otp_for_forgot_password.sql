CREATE OR REPLACE FUNCTION public.send_forgot_otp(email character varying, otp integer)
RETURNS BOOLEAN 
    LANGUAGE 'plpgsql' 
    AS $BODY$
DECLARE 
    _email character varying := email;
    _otp integer := otp;
    _count integer;
    _updateduser integer := 1;
    _updatedapp character varying := '04_set_otp_for_forgot_password.sql';

BEGIN
    SELECT COUNT(*) OVER() FROM users us WHERE us.email = _email AND us.isactive INTO _count;
    IF _count IS NULL THEN
        RETURN FALSE;
    END IF;

    UPDATE public.users usr SET otp = _otp,
    updatedat = now(),
    updateduser = _updateduser,
    updatedapp = _updatedapp
    WHERE usr.email = _email AND usr.isactive;
    RETURN TRUE;

END $BODY$;