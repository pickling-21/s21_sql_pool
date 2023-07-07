INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
SELECT (SELECT MAX(id) FROM person_visits) + 1, (SELECT id FROM person WHERE name = 'Dmitriy'),
       (SELECT pizzeria_id FROM menu WHERE price < 800 AND pizzeria_id <> 4 LIMIT 1), '08.01.2022'::date;

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

-- SELECT * FROM mv_dmitriy_visits_and_eats
-- SELECT visit_date, pizzeria_id, p.name FROM person_visits JOIN person p ON person_visits.person_id = p.id WHERE visit_date ='08.01.2022'::date


