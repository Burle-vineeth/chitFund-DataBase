DROP FUNCTION IF EXISTS public.add_new_chit_into_existing_chits(character varying, character varying, character varying, integer, integer);
DROP FUNCTION IF EXISTS public.add_new_chit_into_existing_chits(character varying, character varying, character varying, integer, date, integer);

CREATE OR REPLACE FUNCTION public.add_new_chit_into_existing_chits(name character varying, leader character varying, leaderemail character varying, chitcost integer, endson date, commissionpercentg integer) RETURNS BOOLEAN 
LANGUAGE 'plpgsql' AS $BODY$

DECLARE
    _name character varying := name;
    _leader character varying := leader;
    _leaderemail character varying := leaderemail;
    _chitcost integer := chitcost;
    _commissionpercentg integer := commissionpercentg;
    _endson date := endson;
    _commissionamount integer;

BEGIN

    _commissionamount = (_commissionpercentg * chitcost) / 100;

    INSERT INTO chits (name, leader, isactive, totalmembers, leaderemail, chitcost, createdat, endson, duration, monthscompleted, monthsremaining, commissionpercentg, commissionamount)
    VALUES (_name, _leader, TRUE, 20, _leaderemail, _chitcost, now(), _endson, 20, 0, 20, _commissionpercentg, _commissionamount);
    RETURN TRUE;

END
$BODY$;