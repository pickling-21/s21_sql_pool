CREATE SEQUENCE seq_person_discounts START 1;
ALTER TABLE person_discounts ALTER COLUMN id SET DEFAULT nextval('seq_person_discounts');
SELECT setval('seq_person_discounts', (SELECT COUNT(*) FROM person_discounts));

-- https://stackoverflow.com/questions/9490014/adding-serial-to-existing-column-in-postgres