INSERT INTO person_order(id, person_id, menu_id , order_date)
VALUES ((SELECT id FROM person_order ORDER BY id DESC LIMIT 1) + 1, (SELECT id FROM person WHERE name = 'Denis'),
        (SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'),
        '24.02.2022'::date),
       ((SELECT id FROM person_order ORDER BY id DESC LIMIT 1) + 2, (SELECT id FROM person WHERE name = 'Irina'),
        (SELECT id FROM menu WHERE pizza_name = 'sicilian pizza'),
        '24.02.2022'::date);
