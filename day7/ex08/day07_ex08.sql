SELECT address, p2.name, COUNT(*) AS count_of_orders
  FROM person_order po
         JOIN person p
         ON po.person_id = p.id
         JOIN menu m
         ON po.menu_id = m.id
         JOIN pizzeria p2
         ON m.pizzeria_id = p2.id
 GROUP BY address, p2.name
 ORDER BY address, p2.name
