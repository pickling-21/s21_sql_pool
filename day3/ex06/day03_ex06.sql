SELECT DISTINCT m.pizza_name, p.name AS pizzeria_name_1, p2.name AS pizzeria_name_2, m.price
  FROM menu m
         JOIN pizzeria p
         ON m.pizzeria_id = p.id
         JOIN pizzeria p2
         ON m.pizzeria_id != p2.id
         JOIN menu m2
         ON m.price = m2.price AND m.pizza_name = m2.pizza_name AND p2.id = m2.pizzeria_id
 WHERE p2.id < p.id
 ORDER BY 1


