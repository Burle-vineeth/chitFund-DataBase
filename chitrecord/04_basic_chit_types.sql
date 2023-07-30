DO $$

DECLARE
    _members integer := 20;
    _commisionMini numeric := 2.5;
    _commissionMaxi numeric := 3;
    _duration integer := 20;
    _createduser integer := 1;
    _createdapp character varying := '04_basic_chit_types.sql';

BEGIN

    INSERT INTO chittype(name, isactive, members, commission, duration, createdat, createduser, createdapp)
    VALUES
    ('1 lakh chit', true, _members, _commisionMini, _duration, now(), _createduser, _createdapp),
    ('2 lakh chit', true, _members, _commisionMini, _duration, now(), _createduser, _createdapp),
    ('3 lakh chit', true, _members, _commisionMini, _duration, now(), _createduser, _createdapp),
    ('5 lakh chit', true, _members, _commissionMaxi, _duration, now(), _createduser, _createdapp),
    ('7 lakh chit', true, _members, _commissionMaxi, _duration, now(), _createduser, _createdapp),
    ('10 lakh chit', true, _members, _commissionMaxi, _duration, now(), _createduser, _createdapp);

END $$;