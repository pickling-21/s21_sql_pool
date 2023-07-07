SELECT p.name AS name, m.pizza_name, m.price, (m.price * (100 - discount)) / 100 AS discount_price,
       pz.name AS pizzeria_name
  FROM person_discounts
         JOIN person p
         ON person_discounts.person_id = p.id
         JOIN menu m
         ON person_discounts.pizzeria_id = m.pizzeria_id
         JOIN pizzeria pz
         ON m.pizzeria_id = pz.id
 ORDER BY 1, 2