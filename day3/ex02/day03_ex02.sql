SELECT m.pizza_name, m.price, pz.name AS pizzeria_name
  FROM menu m
         LEFT JOIN person_order po
         ON m.id = po.menu_id
         JOIN pizzeria pz
         ON m.pizzeria_id = pz.id
 WHERE po.id IS NULL
 ORDER BY 1, 2;
