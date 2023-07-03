INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
VALUES ((SELECT id FROM person_visits ORDER BY id DESC LIMIT 1) + 1, (SELECT id FROM person WHERE name = 'Denis'),
        (SELECT id FROM pizzeria WHERE name = 'Dominos'),
        '2022-02-24'),
       ((SELECT id FROM person_visits ORDER BY id DESC LIMIT 1) + 2, (SELECT id FROM person WHERE name = 'Irina'),
        (SELECT id FROM pizzeria WHERE name = 'Dominos'),
        '2022-02-24');
