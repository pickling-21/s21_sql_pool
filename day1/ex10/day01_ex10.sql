SELECT p.name AS person_name, m.pizza_name, pz.name AS pizzeria_name
  FROM person_visits AS pv
         JOIN person p
         ON pv.person_id = p.id
         JOIN pizzeria pz
         ON pv.pizzeria_id = pz.id
         JOIN person_order po
         ON p.id = po.person_id
         JOIN menu m
         ON m.id = po.menu_id
 ORDER BY 1, 2, 3