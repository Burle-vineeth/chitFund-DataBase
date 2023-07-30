DO $$

DECLARE
    _updateduser integer := 1;
    _updatedapp character varying := '08_updateing_amount_column_in_chittype.sql';

BEGIN

    UPDATE chittype SET amount = 100000,
    updatedat = now(),
    updateduser = _updateduser,
    updatedapp = _updatedapp WHERE name = '1 lakh chit';

    UPDATE chittype SET amount = 200000,
    updatedat = now(),
    updateduser = _updateduser,
    updatedapp = _updatedapp WHERE name = '2 lakh chit';

    UPDATE chittype SET amount = 300000,
    updatedat = now(),
    updateduser = _updateduser,
    updatedapp = _updatedapp WHERE name = '3 lakh chit';

    UPDATE chittype SET amount = 500000,
    updatedat = now(),
    updateduser = _updateduser,
    updatedapp = _updatedapp WHERE name = '5 lakh chit';

    UPDATE chittype SET amount = 700000,
    updatedat = now(),
    updateduser = _updateduser,
    updatedapp = _updatedapp WHERE name = '7 lakh chit';

    UPDATE chittype SET amount = 1000000,
    updatedat = now(),
    updateduser = _updateduser,
    updatedapp = _updatedapp WHERE name = '10 lakh chit';

END $$;