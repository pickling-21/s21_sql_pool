COMMENT ON TABLE person_discounts IS 'This table contains personal discount for each client who ordered pizza';
COMMENT ON COLUMN person_discounts.discount IS 'Size of client discount. Default is 0, no more then 100';
COMMENT ON COLUMN person_discounts.person_id IS 'Foreign key to person';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Foreign key to pizzeria';
COMMENT ON COLUMN person_discounts.id IS 'Primary key';