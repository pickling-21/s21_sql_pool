SELECT pz.name AS pizzeria_name
  FROM person AS p
         INNER JOIN person_visits pv
         ON p.id = pv.person_id
         INNER JOIN pizzeria pz
         ON pv.pizzeria_id = pz.id
         INNER JOIN menu m
         ON pz.id = m.pizzeria_id AND m.price < 800
 WHERE p.name = 'Dmitriy'
   AND pv.visit_date = '2022-01-08'