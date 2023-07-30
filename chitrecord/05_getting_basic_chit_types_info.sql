DROP FUNCTION IF EXISTS public.getting_basic_chit_types(integer);
CREATE OR REPLACE FUNCTION public.getting_basic_chit_types(userId integer)
RETURNS TABLE(
    totalcount bigint,
    id bigint,
    name character varying, 
    isactive boolean, 
    members integer, 
    commission numeric, 
    duration integer,
    amount numeric) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE 
    ROWS 1000
    AS $BODY$

DECLARE
    _userId integer := userId;

BEGIN

    RETURN query
        SELECT count (*) over(), ct.id, ct.name, ct.isactive, ct.members, ct.commission, ct.duration, ct.amount FROM chittype ct GROUP BY ct.id ORDER BY ct.id;

END;
$BODY$;