SELECT (SELECT name FROM person WHERE pv.person_id = id) AS person_name,
       (SELECT name FROM pizzeria WHERE pv.pizzeria_id = id) AS pizzeria_name
  FROM (SELECT person_id, pizzeria_id FROM person_visits WHERE visit_date BETWEEN '07.01.2022' AND '09.01.2022') AS pv
 ORDER BY person_name ASC, pizzeria_name DESC;