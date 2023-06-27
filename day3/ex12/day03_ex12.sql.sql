WITH max_po AS (SELECT MAX(id) FROM person_order), max_p AS (SELECT MAX(id) FROM person)
INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT gs + (SELECT * FROM max_po) AS id, id AS person_id,
       (SELECT id FROM menu WHERE pizza_name = 'greek pizza') AS menu_id, '25.02.2022'::date AS order_date
  FROM person p
         JOIN generate_series(1, (SELECT * FROM max_p)) AS gs
         ON p.id = gs;


SELECT * FROM person_order