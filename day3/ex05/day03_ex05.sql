SELECT pz.name
  FROM person p
         JOIN person_visits pv
         ON p.id = pv.person_id
         JOIN pizzeria pz
         ON pv.pizzeria_id = pz.id
 WHERE p.name = 'Andrey' EXCEPT
SELECT pz.name
  FROM person p
         JOIN person_order po
         ON p.id = po.person_id
         JOIN menu m
         ON po.menu_id = m.id
         JOIN pizzeria pz
         ON m.pizzeria_id = pz.id
 WHERE p.name = 'Andrey'
 ORDER BY 1