CREATE VIEW v_symmetric_union
AS
(
WITH r AS (SELECT person_id FROM person_visits WHERE visit_date = '02.01.2022'),
     s AS (SELECT person_id FROM person_visits WHERE visit_date = '06.01.2022') (SELECT * FROM r EXCEPT SELECT * FROM s)
UNION
(SELECT * FROM s EXCEPT SELECT * FROM r)
)

-- select * from v_symmetric_union