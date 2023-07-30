CREATE OR REPLACE FUNCTION public.adding_chitmember_into_chits(name character varying, email character varying, chitname character varying,parentchitid integer)
RETURNS BOOLEAN LANGUAGE 'plpgsql' AS $BODY$

DECLARE
    _name character varying := name;
    _email character varying := email;
    _chitname character varying := chitname;
    _parentchildid integer := parentchitid;

BEGIN
    INSERT INTO chitmembers(name, email, isactive, chitname, parentchitid, noofchitspaid, received, amountreceived, roundnumber, amountpaidtillnow, createdat)
    VALUES (_name, _email, TRUE, _chitname, _parentchildid, 0, FALSE, null, null, 0, now());

    RETURN TRUE;

END;
$BODY$;